-- depends_on: {{ ref("test_data_group_by") }}
{% if execute %}
  {%- set rounding = 2 -%}
  {{ dbt_profiler.get_profile(relation=ref("test_data_group_by"), rounding=rounding) }}
{% endif %}