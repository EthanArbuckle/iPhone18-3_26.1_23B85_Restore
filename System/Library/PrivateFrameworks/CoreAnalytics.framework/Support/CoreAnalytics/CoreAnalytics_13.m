void sub_100101E50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_100101E5C(uint64_t a1)
{
  v2 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_configs_config_id ON configs(config_id)", 0, 0, 0);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v4)
      {
        v5 = sqlite3_errmsg(v3);
        sub_10010C0D8(v5, v18);
      }
    }

    else if (v4)
    {
      sub_10010C110();
    }

    return 0;
  }

  v6 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_config_transforms_transform_id_config_id ON config_transforms(transform_id, config_id)", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v8)
      {
        v9 = sqlite3_errmsg(v7);
        sub_10010C170(v9, v18);
      }
    }

    else if (v8)
    {
      sub_10010C1A8();
    }

    return 0;
  }

  v10 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_configs_config_last_enabled ON configs(config_last_enabled)", 0, 0, 0);
  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v12)
      {
        v13 = sqlite3_errmsg(v11);
        sub_10010C208(v13, v18);
      }
    }

    else if (v12)
    {
      sub_10010C240();
    }

    return 0;
  }

  if (sqlite3_exec(*(a1 + 32), "\n        DROP VIEW composed_transforms_view; CREATE VIEW composed_transforms_view AS\n                   SELECT transforms.*, sampling.*, CASE WHEN (transforms.sampling_id IS NULL OR disable_sampling=1) THEN 100.0 ELSE sampling_def_perc END as derived_sampling_perc, configs.config_last_enabled AS transform_started_aggregating_timestamp\n                   FROM transforms\n                   LEFT JOIN sampling\n                      ON transforms.sampling_id=sampling.sampling_id\n                   LEFT JOIN configs\n                      ON configs.config_id=(\n                          SELECT MIN(config_transforms.config_id)\n                          FROM config_transforms\n                          WHERE transforms.transform_id=config_transforms.transform_id\n                      )\n    ", 0, 0, 0))
  {
    v14 = *(a1 + 32);
    v15 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v15)
      {
        v16 = sqlite3_errmsg(v14);
        sub_10010C2A0(v16, v18);
      }
    }

    else if (v15)
    {
      sub_10010C2D8();
    }

    return 0;
  }

  return sub_10007F970(a1, 6);
}

void sub_1001020B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1001020C0(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: modifying for V7 schema", v24, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         ALTER TABLE configs ADD COLUMN config_common_dimensions STRING\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!result)
      {
        return result;
      }

      v6 = sqlite3_errmsg(v4);
      sub_10010C338(v6, v24);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_10010C370();
    }
  }

  else
  {
    v7 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW eligible_eventdef_view; CREATE VIEW eligible_eventdef_view AS\n          SELECT eventdefs.eventdef_id, event_uuid, event_name, event_type, event_defType, event_config\n          FROM eventdefs\n          INNER JOIN config_eventdefs\n               ON config_eventdefs.eventdef_id=eventdefs.eventdef_id\n          WHERE config_eventdefs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1)\n    ", 0, 0, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (!result)
        {
          return result;
        }

        v9 = sqlite3_errmsg(v8);
        sub_10010C3D0(v9, v24);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        sub_10010C408();
      }
    }

    else
    {
      v10 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW eligible_transforms_view; CREATE VIEW eligible_transforms_view AS\n           SELECT transforms.transform_id, transform_uuid, transform_def, transform_enableIf, transform_sampling\n           FROM transforms\n           INNER JOIN config_transforms\n                ON config_transforms.transform_id=transforms.transform_id\n           WHERE config_transforms.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1)\n    ", 0, 0, 0);
      v11 = *(a1 + 32);
      if (v10)
      {
        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (!result)
          {
            return result;
          }

          v12 = sqlite3_errmsg(v11);
          sub_10010C468(v12, v24);
        }

        else
        {
          if (!result)
          {
            return result;
          }

          sub_10010C4A0();
        }
      }

      else
      {
        v13 = sqlite3_exec(*(a1 + 32), "\n         DROP VIEW eligible_modify_eventdef_view; CREATE VIEW eligible_modify_eventdef_view AS\n           SELECT modify_eventdefs.modify_eventdef_id, modify_event_uuid, modify_event_name, modify_event_type, modify_event_defType, modify_event_config\n           FROM modify_eventdefs\n           INNER JOIN config_modify_eventdefs\n                ON config_modify_eventdefs.modify_eventdef_id=modify_eventdefs.modify_eventdef_id\n           WHERE config_modify_eventdefs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1)\n    ", 0, 0, 0);
        v14 = *(a1 + 32);
        if (v13)
        {
          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (!result)
            {
              return result;
            }

            v15 = sqlite3_errmsg(v14);
            sub_10010C500(v15, v24);
          }

          else
          {
            if (!result)
            {
              return result;
            }

            sub_10010C538();
          }
        }

        else
        {
          v16 = sqlite3_exec(*(a1 + 32), "\n           DROP VIEW eligible_transforms_view; CREATE VIEW eligible_transforms_view AS\n           SELECT composed_transforms_view.*\n           FROM composed_transforms_view\n           INNER JOIN config_transforms\n                ON composed_transforms_view.transform_id=config_transforms.transform_id\n           WHERE config_transforms.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1)\n    ", 0, 0, 0);
          v17 = *(a1 + 32);
          if (v16)
          {
            result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
            if (v17)
            {
              if (!result)
              {
                return result;
              }

              v18 = sqlite3_errmsg(v17);
              sub_10010C598(v18, v24);
            }

            else
            {
              if (!result)
              {
                return result;
              }

              sub_10010C5D0();
            }
          }

          else
          {
            v19 = sqlite3_exec(*(a1 + 32), "\n           DROP VIEW eligible_external_configs_view; CREATE VIEW eligible_external_configs_view AS\n           SELECT composed_external_configs_view.*\n           FROM composed_external_configs_view\n           INNER JOIN config_external_configs\n                ON composed_external_configs_view.external_config_id=config_external_configs.external_config_id\n           WHERE config_external_configs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1)\n    ", 0, 0, 0);
            v20 = *(a1 + 32);
            if (v19)
            {
              result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
              if (v20)
              {
                if (!result)
                {
                  return result;
                }

                v21 = sqlite3_errmsg(v20);
                sub_10010C630(v21, v24);
              }

              else
              {
                if (!result)
                {
                  return result;
                }

                sub_10010C668();
              }
            }

            else
            {
              if (!sqlite3_exec(*(a1 + 32), "\n        DROP VIEW composed_transforms_view; CREATE VIEW composed_transforms_view AS\n                   SELECT transforms.*, sampling.*, configs.*, CASE WHEN (transforms.sampling_id IS NULL OR disable_sampling=1) THEN 100.0 ELSE sampling_def_perc END as derived_sampling_perc, configs.config_last_enabled AS transform_started_aggregating_timestamp\n                   FROM transforms\n                   LEFT JOIN sampling\n                      ON transforms.sampling_id=sampling.sampling_id\n                   LEFT JOIN configs\n                      ON configs.config_id=(\n                          SELECT MIN(config_transforms.config_id)\n                          FROM config_transforms\n                          WHERE transforms.transform_id=config_transforms.transform_id\n                      )\n    ", 0, 0, 0))
              {
                return sub_10007F970(a1, 7);
              }

              v22 = *(a1 + 32);
              result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
              if (v22)
              {
                if (!result)
                {
                  return result;
                }

                v23 = sqlite3_errmsg(v22);
                sub_10010C2A0(v23, v24);
              }

              else
              {
                if (!result)
                {
                  return result;
                }

                sub_10010C2D8();
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_100102430(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_10010243C(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: modifying for V8 schema", v12, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n     \tCREATE VIEW transforms_with_derived_sampling AS\n        \tSELECT *, CASE WHEN (transforms.sampling_id IS NULL OR disable_sampling=1) THEN 100.0 ELSE sampling_def_perc END as derived_sampling_perc\n        \tFROM transforms\n        \tLEFT JOIN sampling\n           \t\tON transforms.sampling_id=sampling.sampling_id\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!result)
      {
        return result;
      }

      v6 = sqlite3_errmsg(v4);
      sub_10010C6C8(v6, v12);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_10010C700();
    }
  }

  else
  {
    v7 = sqlite3_exec(*(a1 + 32), "\n        CREATE VIEW configs_transforms_view AS\n\t        SELECT *, configs.config_last_enabled AS transform_started_aggregating_timestamp\n    \t    FROM config_transforms\n        \tINNER JOIN transforms_with_derived_sampling\n        \t\tON transforms_with_derived_sampling.transform_id=config_transforms.transform_id\n        \tINNER JOIN configs\n        \t\tON configs.config_id=config_transforms.config_id\n    ", 0, 0, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (!result)
        {
          return result;
        }

        v9 = sqlite3_errmsg(v8);
        sub_10010C760(v9, v12);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        sub_10010C798();
      }
    }

    else
    {
      if (!sqlite3_exec(*(a1 + 32), "\n    \tDROP VIEW composed_transforms_view;\n    \tCREATE VIEW composed_transforms_view AS\n           SELECT *, configs.config_last_enabled AS transform_started_aggregating_timestamp FROM transforms_with_derived_sampling\n           LEFT JOIN configs\n           ON configs.config_id=(\n               SELECT MIN(config_transforms.config_id)\n               FROM config_transforms\n               WHERE transforms_with_derived_sampling.transform_id=config_transforms.transform_id) AND configs.config_last_enabled IS NOT NULL\n    ", 0, 0, 0))
      {
        return sub_10007F970(a1, 8);
      }

      v10 = *(a1 + 32);
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (!result)
        {
          return result;
        }

        v11 = sqlite3_errmsg(v10);
        sub_10010C2A0(v11, v12);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        sub_10010C2D8();
      }
    }
  }

  return 0;
}

void sub_10010261C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_100102628(uint64_t a1)
{
  if (sqlite3_exec(*(a1 + 32), "DROP INDEX IF EXISTS IX_config_eventdefs_config_id_eventdef_id; DROP INDEX IF EXISTS IX_configs_config_last_enabled; DROP INDEX IF EXISTS IX_configs_config_id;DROP INDEX IF EXISTS IX_modify_eventdefs_modify_event_name; DROP INDEX IF EXISTS IX_config_eventdefs_eventdef_id; DROP INDEX IF EXISTS IX_transform_events_event_id; DROP INDEX IF EXISTS IX_config_transforms_transform_id; DROP INDEX IF EXISTS IX_disabled_external_configs_external_config_id; DROP INDEX IF EXISTS IX_external_configs_sampling_id; DROP INDEX IF EXISTS IX_transforms_sampling_id; DROP INDEX IF EXISTS IX_sampling_sampled_out_disable_sampling; DROP INDEX IF EXISTS IX_config_modify_eventdefs_modify_eventdef_id;", 0, 0, 0))
  {
    v2 = *(a1 + 32);
    v3 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      if (v3)
      {
        v4 = sqlite3_errmsg(v2);
        sub_100121F6C(v4, &v6);
      }
    }

    else if (v3)
    {
      sub_100121FA4();
    }

    return 0;
  }

  else
  {

    return sub_10007F970(a1, 9);
  }
}

void sub_100102730(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_10010273C(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: begin schema migration", &v15, 2u);
  }

  if (!sub_10007F5F4(a1))
  {
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v15, (a1 + 32));
    if ((v16 & 0x100) == 0)
    {
      v4 = *(a1 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        if (!v5)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      if (!v5)
      {
        goto LABEL_86;
      }

LABEL_79:
      v14 = sqlite3_errmsg(v4);
      sub_10010C7F8(v14, v17);
      goto LABEL_86;
    }

    if (!sub_1000FF928(a1))
    {
      goto LABEL_40;
    }

    sub_1000242E4(&v15);
    sub_1000243D8(&v15);
  }

  if (sub_10007F5F4(a1) != 1)
  {
    goto LABEL_8;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v6 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v6)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v6)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!sub_1001005A0(a1))
  {
    goto LABEL_40;
  }

  sub_1000242E4(&v15);
  sub_1000243D8(&v15);
LABEL_8:
  if (sub_10007F5F4(a1) != 2)
  {
    goto LABEL_12;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v7)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v7)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!sub_1001007F0(a1))
  {
    goto LABEL_40;
  }

  sub_1000242E4(&v15);
  sub_1000243D8(&v15);
LABEL_12:
  if (sub_10007F5F4(a1) != 3)
  {
    goto LABEL_16;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v8 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v8)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v8)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!sub_100100918(a1))
  {
    goto LABEL_40;
  }

  sub_1000242E4(&v15);
  sub_1000243D8(&v15);
LABEL_16:
  if (sub_10007F5F4(a1) != 4)
  {
    goto LABEL_20;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v9 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v9)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!sub_100100BCC(a1))
  {
    goto LABEL_40;
  }

  sub_1000242E4(&v15);
  sub_1000243D8(&v15);
LABEL_20:
  if (sub_10007F5F4(a1) != 5)
  {
    goto LABEL_24;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v10)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v10)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!sub_100101E5C(a1))
  {
    goto LABEL_40;
  }

  sub_1000242E4(&v15);
  sub_1000243D8(&v15);
LABEL_24:
  if (sub_10007F5F4(a1) != 6)
  {
    goto LABEL_28;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v11 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v11)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v11)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!sub_1001020C0(a1))
  {
    goto LABEL_40;
  }

  sub_1000242E4(&v15);
  sub_1000243D8(&v15);
LABEL_28:
  if (sub_10007F5F4(a1) != 7)
  {
LABEL_32:
    if (sub_10007F5F4(a1) != 8)
    {
      return sub_10007F5F4(a1) == 9;
    }

    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v15, (a1 + 32));
    if ((v16 & 0x100) != 0)
    {
      if (sub_100102628(a1))
      {
        sub_1000242E4(&v15);
        sub_1000243D8(&v15);
        return sub_10007F5F4(a1) == 9;
      }

      goto LABEL_40;
    }

    v4 = *(a1 + 32);
    v13 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_86;
      }

      goto LABEL_79;
    }

    if (!v13)
    {
      goto LABEL_86;
    }

LABEL_85:
    sub_10010C830();
    goto LABEL_86;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v15, (a1 + 32));
  if ((v16 & 0x100) == 0)
  {
    v4 = *(a1 + 32);
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (!v12)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (!v12)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (sub_10010243C(a1))
  {
    sub_1000242E4(&v15);
    sub_1000243D8(&v15);
    goto LABEL_32;
  }

LABEL_40:
  sub_10005D07C(&v15);
LABEL_86:
  sub_1000243D8(&v15);
  return 0;
}

void sub_100102CF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100102DD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10018B1F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

sqlite3_stmt **sub_100102E3C(uint64_t a1)
{
  v1 = **(a1 + 40);
  sub_10007FC24((v1 + 120), 0);

  return sub_10007FC24((v1 + 136), 0);
}

BOOL sub_100102E84(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "SELECT 1 FROM configs WHERE config_uuid=?1;", 0, &v12);
  if (v12)
  {
    sub_10000BE00(v2, &v12, 1, v1[1]);
    v3 = sub_10000BE48(v2, &v12);
    v4 = v3 == 100;
    if ((v3 & 0xFFFFFFFE) != 0x64)
    {
      v5 = *(v2 + 32);
      v6 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v6)
        {
          v7 = sqlite3_errmsg(v5);
          sub_10010C890(v7, v13);
        }
      }

      else if (v6)
      {
        sub_10010C8C8();
      }
    }
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v9)
      {
        v10 = sqlite3_errmsg(v8);
        sub_10010C890(v10, v13);
      }
    }

    else if (v9)
    {
      sub_10010C8C8();
    }

    v4 = 0;
  }

  sub_10007FC24(&v12, 0);
  return v4;
}

void sub_100102FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100103014(uint64_t a1)
{
  v1 = **(a1 + 40);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v1, "UPDATE configs SET config_enabled=0;", 0, &v11);
  if (!v11)
  {
    v4 = *(v1 + 32);
    v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v5)
      {
        v6 = sqlite3_errmsg(v4);
        sub_10010C9C0(v6, buf);
      }
    }

    else if (v5)
    {
      sub_10010C9F8();
    }

    goto LABEL_16;
  }

  *buf = 0;
  if (sub_100023B68(v1, &v11, buf) != 101)
  {
    v7 = *(v1 + 32);
    v8 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v8)
      {
        v9 = sqlite3_errmsg(v7);
        sub_10010C928(v9, buf);
      }
    }

    else if (v8)
    {
      sub_10010C960();
    }

LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] Deactivated all device configurations", buf, 2u);
  }

  v3 = 1;
LABEL_17:
  sub_10007FC24(&v11, 0);
  return v3;
}

void sub_1001031B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1001031D4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "UPDATE configs SET config_enabled=1 WHERE config_uuid=?1;", 0, &v24);
  if (!v24)
  {
    v10 = *(v2 + 32);
    v11 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v11)
      {
        v12 = sqlite3_errmsg(v10);
        sub_10010CD34(v12, buf);
      }
    }

    else if (v11)
    {
      sub_10010CD6C();
    }

    goto LABEL_36;
  }

  v23 = 0;
  v4 = v1[1];
  v3 = v1 + 1;
  sub_100023980(v2, &v24, 1, v4, &v23);
  if (sub_100023B68(v2, &v24, &v23) != 101)
  {
    v13 = *(v2 + 32);
    v14 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v15 = sqlite3_errmsg(v13);
        sub_10010CA58(v15, buf);
      }
    }

    else if (v14)
    {
      sub_10010CA90();
    }

    goto LABEL_36;
  }

  sub_10007F8D4(v2, "SELECT COUNT(*) FROM configs WHERE config_uuid=?1", 0, buf);
  v5 = *buf;
  *buf = 0;
  sub_10007FC24(&v24, v5);
  sub_10007FC24(buf, 0);
  if (!v24)
  {
    v16 = *(v2 + 32);
    v17 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v17)
      {
        v18 = sqlite3_errmsg(v16);
        sub_10010CC9C(v18, buf);
      }
    }

    else if (v17)
    {
      sub_10010CCD4();
    }

    goto LABEL_36;
  }

  sub_10000BE00(v2, &v24, 1, *v3);
  if (sub_10000BE48(v2, &v24) != 100)
  {
    v19 = *(v2 + 32);
    v20 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v20)
      {
        v21 = sqlite3_errmsg(v19);
        sub_10010CAF0(v21, buf);
      }
    }

    else if (v20)
    {
      sub_10010CB28();
    }

    goto LABEL_36;
  }

  v6 = sub_100016AC4(v2, &v24, 0);
  v7 = qword_100192D80;
  if (!v6)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10010CB88(v3);
    }

    goto LABEL_36;
  }

  if (v6 != 1)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10010CC08(v3);
    }

LABEL_36:
    v9 = 0;
    goto LABEL_37;
  }

  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v3;
    if (*(*v3 + 23) < 0)
    {
      v8 = *v8;
    }

    *buf = 136446210;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Config Store] Activated device configuration with uuid '%{public}s'", buf, 0xCu);
  }

  v9 = 1;
LABEL_37:
  sub_10007FC24(&v24, 0);
  return v9;
}

void sub_100103510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

sqlite3_stmt **sub_10010353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  *a2 = 0xAAAAAAAAAAAAAA00;
  *(a2 + 8) = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);
  v20 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v4, "SELECT config_header FROM configs WHERE config_uuid=?1", 0, &v20);
  if (v20)
  {
    sub_10000BE00(v4, &v20, 1, v3[1]);
    v5 = sub_10000BE48(v4, &v20);
    if (v5 == 101)
    {
      return sub_10007FC24(&v20, 0);
    }

    if (v5 != 100)
    {
      goto LABEL_6;
    }

    v19 = sub_10000A5D0(v4, &v20, 0);
    if (v19)
    {
      v22[2] = 0;
      sub_10000ACE4(&v19, v21, 1, v17);
      sub_100004FBC(v21);
      sub_10000298C(v17);
      v6 = *a2;
      *a2 = v17[0];
      v17[0] = v6;
      v7 = *(a2 + 8);
      *(a2 + 8) = v18;
      v18 = v7;
      sub_10000298C(a2);
      sub_10000298C(v17);
      sub_1000048FC(&v18, v17[0]);
      if (*a2 == 1)
      {
LABEL_6:
        v8 = *(v4 + 32);
        v9 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          if (v9)
          {
            v10 = sqlite3_errmsg(v8);
            sub_10010CE8C(v10, v21);
          }
        }

        else if (v9)
        {
          sub_10010CEC4();
        }

        return sub_10007FC24(&v20, 0);
      }

      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10010CDCC();
      }

      v21[0] = 0;
      v22[0] = 0;
      sub_10000298C(v21);
      sub_10000298C(v21);
      sub_10000298C(v21);
      v14 = *a2;
      *a2 = v21[0];
      v21[0] = v14;
      v15 = *(a2 + 8);
      *(a2 + 8) = v22[0];
      v22[0] = v15;
      sub_10000298C(a2);
      sub_10000298C(v21);
      sub_1000048FC(v22, v21[0]);
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10010CE2C();
    }
  }

  else
  {
    v11 = *(v4 + 32);
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v12)
      {
        v13 = sqlite3_errmsg(v11);
        sub_10010CE8C(v13, v21);
      }
    }

    else if (v12)
    {
      sub_10010CEC4();
    }
  }

  return sub_10007FC24(&v20, 0);
}

void sub_100103800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007FC24(va, 0);
  sub_10002C5F4(v4);
  _Unwind_Resume(a1);
}

BOOL sub_100103870(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT config_header FROM configs WHERE config_enabled=1;", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010CF24(v6);
      }
    }

    else if (v7)
    {
      sub_10010CF9C();
    }
  }

  return v5 != 0;
}

BOOL sub_100103960(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    v15 = sub_10000A5D0(v2, *(v1 + 8), 0);
    if (v15)
    {
      v17[2] = 0;
      sub_10000ACE4(&v15, buf, 1, v13);
      sub_100004FBC(buf);
      v6 = *(v1 + 24);
      sub_10000298C(v13);
      v7 = *v6;
      *v6 = v13[0];
      v13[0] = v7;
      v8 = *(v6 + 8);
      *(v6 + 8) = v14;
      v14 = v8;
      sub_10000298C(v6);
      sub_10000298C(v13);
      sub_1000048FC(&v14, v13[0]);
      if (**(v1 + 24) == 1)
      {
        return 1;
      }

      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10010CDCC();
      }

      buf[0] = 0;
      v17[0] = 0;
      sub_10000298C(buf);
      sub_10000298C(buf);
      v10 = *(v1 + 24);
      sub_10000298C(buf);
      v11 = *v10;
      *v10 = buf[0];
      buf[0] = v11;
      v12 = *(v10 + 8);
      *(v10 + 8) = v17[0];
      v17[0] = v12;
      sub_10000298C(v10);
      sub_10000298C(buf);
      sub_1000048FC(v17, buf[0]);
    }

    else
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10010CE2C();
    }
  }

  else if (v3 == 101)
  {
    if (**(v1 + 16) == *(*(v1 + 16) + 8))
    {
      v4 = qword_100192D80;
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Config Store] No activated config currently set", buf, 2u);
    }
  }

  else
  {
    v9 = *(v2 + 32);
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (!result)
      {
        return result;
      }

      sub_10010D03C(v9);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_10010D0B4();
    }
  }

  return 0;
}

void sub_100103BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100004FBC(va1);
  if (a2 == 1)
  {
    sub_10010CFFC(a1, a2, va);
    JUMPOUT(0x100103A3CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100103C1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT config_uuid FROM configs WHERE config_enabled=1;", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010CF24(v6);
      }
    }

    else if (v7)
    {
      sub_10010CF9C();
    }
  }

  return v5 != 0;
}

BOOL sub_100103D0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    v6 = sub_10000A5D0(v2, *(v1 + 8), 0);
    if (v6)
    {
      v7 = *(v1 + 16);
      sub_10000459C(__p, v6);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      if (v9 >= v8)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v7) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10002C63C();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v7) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v30 = v7;
        if (v15)
        {
          sub_10002E2FC(v7, v15);
        }

        v16 = 24 * v12;
        v17 = *__p;
        *(v16 + 16) = v25;
        *v16 = v17;
        __p[1] = 0;
        v25 = 0;
        __p[0] = 0;
        v18 = 24 * v12 + 24;
        v19 = *(v7 + 8) - *v7;
        v20 = 24 * v12 - v19;
        memcpy((v16 - v19), *v7, v19);
        v21 = *v7;
        *v7 = v20;
        *buf = v21;
        v27 = v21;
        *(v7 + 8) = v18;
        v28 = v21;
        v22 = *(v7 + 16);
        *(v7 + 16) = 0;
        v29 = v22;
        sub_10002E354(buf);
        v23 = SHIBYTE(v25);
        *(v7 + 8) = v18;
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v10 = *__p;
        *(v9 + 16) = v25;
        *v9 = v10;
        *(v7 + 8) = v9 + 24;
      }

      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10010D114();
        return 0;
      }
    }
  }

  else if (v3 == 101)
  {
    if (**(v1 + 16) != *(*(v1 + 16) + 8))
    {
      return 0;
    }

    v4 = qword_100192D80;
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Config Store] No activated config currently set", buf, 2u);
      return 0;
    }
  }

  else
  {
    v11 = *(v2 + 32);
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (result)
      {
        sub_10010D174(v11);
        return 0;
      }
    }

    else if (result)
    {
      sub_10010D1EC();
      return 0;
    }
  }

  return result;
}

void sub_100103F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3_stmt **sub_100103FC8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "INSERT INTO disabled_transforms (transform_id,disable_reason) VALUES ((SELECT transform_id FROM transforms WHERE transform_uuid=?1), budgeted);", 0, &v11);
  if (v11)
  {
    v10 = 0;
    sub_100023980(v2, &v11, 1, v1[1], &v10);
    if (sub_100023B68(v2, &v11, &v10) != 101)
    {
      v3 = *(v2 + 32);
      v4 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        if (v4)
        {
          v5 = sqlite3_errmsg(v3);
          sub_10010D24C(v5, v12);
        }
      }

      else if (v4)
      {
        sub_10010D284();
      }
    }
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        v8 = sqlite3_errmsg(v6);
        sub_10010D2E4(v8, v12);
      }
    }

    else if (v7)
    {
      sub_10010D31C();
    }
  }

  return sub_10007FC24(&v11, 0);
}

void sub_100104124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_100104148(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "SELECT transform_id FROM enabled_transforms_view WHERE transform_uuid=?1 LIMIT 1;", 0, &v12);
  if (v12)
  {
    sub_10000BE00(v2, &v12, 1, v1[1]);
    v3 = sub_10000BE48(v2, &v12);
    v4 = v3 == 100;
    if ((v3 & 0xFFFFFFFE) != 0x64)
    {
      v5 = *(v2 + 32);
      v6 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v6)
        {
          v7 = sqlite3_errmsg(v5);
          sub_10010D37C(v7, v13);
        }
      }

      else if (v6)
      {
        sub_10010D3B4();
      }
    }
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v9)
      {
        v10 = sqlite3_errmsg(v8);
        sub_10010D414(v10, v13);
      }
    }

    else if (v9)
    {
      sub_10010D44C();
    }

    v4 = 0;
  }

  sub_10007FC24(&v12, 0);
  return v4;
}

void sub_1001042B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

void sub_1001042D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (sqlite3_exec(*(*v1 + 32), "DELETE FROM disabled_transforms WHERE (disable_reason=budgeted OR disable_reason IS NULL);", 0, 0, 0))
  {
    v3 = *(v2 + 32);
    v4 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v4)
      {
        sub_10010D4AC(v3);
      }
    }

    else if (v4)
    {
      sub_10010D524();
    }
  }
}

uint64_t sub_100104364(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "UPDATE sampling SET disable_sampling=?1;", 0, &v13);
  if (!v13)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        v8 = sqlite3_errmsg(v6);
        sub_10010D61C(v8, buf);
      }
    }

    else if (v7)
    {
      sub_10010D654();
    }

    goto LABEL_16;
  }

  *buf = **(v1 + 8);
  sub_10007F82C(v2, &v13, 1, buf);
  *buf = 0;
  if (sub_100023B68(v2, &v13, buf) != 101)
  {
    v9 = *(v2 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        v11 = sqlite3_errmsg(v9);
        sub_10010D584(v11, buf);
      }
    }

    else if (v10)
    {
      sub_10010D5BC();
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v3 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    v4 = **(v1 + 8);
    *buf = 67240192;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Config Store] Set disable sampling override to %{public}d", buf, 8u);
  }

  v5 = 1;
LABEL_17:
  sub_10007FC24(&v13, 0);
  return v5;
}

void sub_100104534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_100104558(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "SELECT COUNT(*) FROM enabled_event_names_view WHERE event_name=?1", 0, &v11);
  if (!v11)
  {
    v4 = *(v2 + 32);
    v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v5)
      {
        v6 = sqlite3_errmsg(v4);
        sub_10010D74C(v6, v12);
      }
    }

    else if (v5)
    {
      sub_10010D784();
    }

    goto LABEL_14;
  }

  sub_10000BE00(v2, &v11, 1, v1[1]);
  if (sub_10000BE48(v2, &v11) != 100)
  {
    v7 = *(v2 + 32);
    v8 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v8)
      {
        v9 = sqlite3_errmsg(v7);
        sub_10010D6B4(v9, v12);
      }
    }

    else if (v8)
    {
      sub_10010D6EC();
    }

LABEL_14:
    v3 = 1;
    goto LABEL_15;
  }

  v3 = sub_10007F898(v2, &v11, 0) > 0;
LABEL_15:
  sub_10007FC24(&v11, 0);
  return v3;
}

void sub_1001046CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1001046F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000BE98(&v11, "com.apple.analyticsd.store-config");
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  (*(**v1 + 16))(&v9);
  if (v9)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v12, (v2 + 32));
    if ((v13 & 0x100) != 0)
    {
      v3 = sub_1000FAA44(v2, &v9);
      if (v3)
      {
        v14 = v3;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v4 = *v1;
        operator new();
      }

      sub_10005D07C(&v12);
    }

    else
    {
      v5 = *(v2 + 32);
      v6 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v6)
        {
          v7 = sqlite3_errmsg(v5);
          sub_10010D7E4(v7, &v14);
        }
      }

      else if (v6)
      {
        sub_10010D81C();
      }
    }

    sub_1000243D8(&v12);
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_10010D8E8();
  }

  sub_10000298C(&v9);
  sub_1000048FC(&v10, v9);
  sub_10001C368(&v11);
  return 0;
}

void sub_1001049C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_1000243D8(va2);
  sub_10002C5F4(va);
  sub_10001C368(va1);
  _Unwind_Resume(a1);
}

__n128 sub_100104A84(uint64_t a1, uint64_t a2)
{
  *a2 = off_10018B4A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100104ABC(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v14[0] = *a3;
  v15 = *(a3 + 8);
  sub_10000298C(a3);
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000298C(v14);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *v6 + 1;
  *v6 = v8;
  if (((v8 << 14) | ((23593 * v8) >> 2)) <= 0x28Fu)
  {
    if (sqlite3_db_cacheflush(*(v7 + 32)))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_FAULT))
      {
        v11 = sqlite3_errmsg(*(v7 + 32));
        sub_10010D948(v11, v16);
      }

      v9 = 0;
      goto LABEL_26;
    }

    HIDWORD(v12) = 652835029 * **(a1 + 8);
    LODWORD(v12) = HIDWORD(v12);
    if ((v12 >> 4) <= 0x20C49B)
    {
      sub_10001B898(0);
    }
  }

  v9 = 1;
  if (v5 > 4)
  {
    if (v5 <= 6)
    {
      if (v5 == 5)
      {
        v10 = sub_1000FEF90(v7, *(a1 + 24), v14);
      }

      else
      {
        v10 = sub_1000FF020(v7, *(a1 + 24), v14);
      }

      goto LABEL_25;
    }

    if (v5 == 7)
    {
      v10 = sub_1000FF804(v7, *(a1 + 24), v14);
      goto LABEL_25;
    }

    if (v5 == 8)
    {
      v10 = sub_1000FF410(v7, *(a1 + 24), v14);
      goto LABEL_25;
    }
  }

  else
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v10 = sub_1000FEB0C(v7, *(a1 + 24), v14);
      }

      else
      {
        v10 = sub_1000FEB9C(v7, *(a1 + 24), v14);
      }

      goto LABEL_25;
    }

    if (v5 == 1)
    {
      v10 = sub_1000FE3B0(v7, *(a1 + 24), v14);
      goto LABEL_25;
    }

    if (v5 == 2)
    {
      v10 = sub_1000FE718(v7, *(a1 + 24), v14);
LABEL_25:
      v9 = v10;
    }
  }

LABEL_26:
  sub_10000298C(v14);
  sub_1000048FC(&v15, v14[0]);
  return v9;
}

uint64_t sub_100104D2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100104D78(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

sqlite3_stmt **sub_100104DF8(sqlite3_stmt **a1)
{
  sub_10007FC24(a1 + 20, 0);
  sub_10007FC24(a1 + 19, 0);
  sub_10007FC24(a1 + 18, 0);
  sub_10007FC24(a1 + 17, 0);
  sub_10007FC24(a1 + 16, 0);
  sub_10007FC24(a1 + 15, 0);
  sub_10007FC24(a1 + 14, 0);
  sub_10007FC24(a1 + 13, 0);
  sub_10007FC24(a1 + 12, 0);
  sub_10007FC24(a1 + 11, 0);
  sub_10007FC24(a1 + 10, 0);
  sub_10007FC24(a1 + 9, 0);
  sub_10007FC24(a1 + 8, 0);
  sub_10007FC24(a1 + 7, 0);
  sub_10007FC24(a1 + 6, 0);
  sub_10007FC24(a1 + 5, 0);
  sub_10007FC24(a1 + 4, 0);
  sub_10007FC24(a1 + 3, 0);
  sub_10007FC24(a1 + 2, 0);
  sub_10007FC24(a1 + 1, 0);
  return a1;
}

void sub_100104F0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = (*v3 + 128);
  if (*v5 || (sub_10007F8D4(*v3, "SELECT transform_def, derived_sampling_perc FROM configs_transforms_view WHERE transform_uuid=?1 AND config_uuid=?2;", 1, &v13), v6 = v13, v13 = 0, sub_10007FC24(v5, v6), sub_10007FC24(&v13, 0), *(v4 + 128)))
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v13, v5);
    sub_10000BE00(v4, v5, 1, v3[1]);
    sub_10000BE00(v4, v5, 2, v3[2]);
    if (sub_10000BE48(v4, v5) == 100)
    {
      v7 = sub_10000A5D0(v4, v5, 0);
      sub_10000927C(v4, v5, 1);
      v9 = v8;
      sub_10000459C(a2, v7);
      *(a2 + 24) = v9;
    }

    else
    {
      v10 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Config Store] ERROR: No results for transform uuid query", buf, 2u);
      }

      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    sub_100011B58(&v13);
  }

  else
  {
    v11 = *(v4 + 32);
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v12)
      {
        sub_10010D98C(v11);
      }
    }

    else if (v12)
    {
      sub_10010DA08();
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

void sub_1001050F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100011B58(va);
  _Unwind_Resume(a1);
}

double sub_100105110(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  v3 = v5;
  *(v2 + 16) = v6;
  *v2 = v3;
  result = v7;
  *(v2 + 24) = v7;
  return result;
}

BOOL sub_1001051A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_def FROM enabled_transforms_view", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010DA68(v6);
      }
    }

    else if (v7)
    {
      sub_10010DAE0();
    }
  }

  return v5 != 0;
}

uint64_t sub_100105298(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    if (**(v1 + 16))
    {
      return 1;
    }

    else
    {
      v7 = qword_100192D80;
      v6 = 1;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Config Store] WARNING: Event query weirdness: got a row but no definition? (all-enabled-transforms)", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010DB40(v4);
        }
      }

      else if (v5)
      {
        sub_10010DBB8();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_1001053E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_def FROM disabled_transforms_view", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010DC18(v6);
      }
    }

    else if (v7)
    {
      sub_10010DC90();
    }
  }

  return v5 != 0;
}

uint64_t sub_1001054D4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    if (**(v1 + 16))
    {
      return 1;
    }

    else
    {
      v7 = qword_100192D80;
      v6 = 1;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Config Store] WARNING: Event query weirdness: got a row but no definition? (all-disabled-transforms)", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010DCF0(v4);
        }
      }

      else if (v5)
      {
        sub_10010DD68();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_100105620(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT event_name FROM enabled_event_names_view", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010DF78(v6);
      }
    }

    else if (v7)
    {
      sub_10010DFF0();
    }
  }

  return v5 != 0;
}

uint64_t sub_100105710(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    if (**(v1 + 16))
    {
      return 1;
    }

    else
    {
      v7 = qword_100192D80;
      v6 = 1;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Config Store] WARNING: Active-Event query weirdness: got a row but no definition? (all-active-events)", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010E050(v4);
        }
      }

      else if (v5)
      {
        sub_10010E0C8();
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10010585C(uint64_t a1)
{
  v1 = **(a1 + 40);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v1, "SELECT COUNT(*) FROM enabled_event_names_view", 0, &v7);
  if (!v7)
  {
    v3 = *(v1 + 32);
    v4 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v4)
      {
        v5 = sqlite3_errmsg(v3);
        sub_10010E128(v5, v8);
      }
    }

    else if (v4)
    {
      sub_10010E160();
    }

    goto LABEL_9;
  }

  if (sub_10000BE48(v1, &v7) != 100)
  {
LABEL_9:
    v2 = 0;
    goto LABEL_10;
  }

  v2 = sub_10007F898(v1, &v7, 0);
LABEL_10:
  sub_10007FC24(&v7, 0);
  return v2;
}

void sub_100105968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100105988(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

BOOL sub_1001059C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT event_name, event_type, event_defType, event_config FROM eligible_eventdef_view", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010E1C0(v6);
      }
    }

    else if (v7)
    {
      sub_10010E238();
    }
  }

  return v5 != 0;
}

uint64_t sub_100105AB4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
    **(v1 + 32) = sub_10000A5D0(v2, *(v1 + 8), 2);
    **(v1 + 40) = sub_10000A5D0(v2, *(v1 + 8), 3);
    if (!**(v1 + 40))
    {
      v7 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Config Store] WARNING: All-eventdefs query weirdness: got a row but no definition?", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010E298(v4);
        }
      }

      else if (v5)
      {
        sub_10010E310();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_100105C48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT event_name, event_defType, event_config FROM eligible_eventdef_view WHERE event_type = ?1", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (v5)
  {
    sub_10000BE00(v2, *v1, 1, v1[2]);
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010E370(v6);
      }
    }

    else if (v7)
    {
      sub_10010E3E8();
    }
  }

  return v5 != 0;
}

uint64_t sub_100105D4C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  v3 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
  {
    v4 = *v1;
    if (*(*v1 + 23) < 0)
    {
      v4 = *v4;
    }

    v11 = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Config Store] Iterating all eventdefs of type %s", &v11, 0xCu);
  }

  v5 = sub_10000BE48(v2, *(v1 + 16));
  if (v5 == 100)
  {
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 16), 0);
    v8 = 1;
    **(v1 + 32) = sub_10000A5D0(v2, *(v1 + 16), 1);
    **(v1 + 40) = sub_10000A5D0(v2, *(v1 + 16), 2);
    if (!**(v1 + 40))
    {
      v9 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[Config Store] WARNING: eventdef-with-type query weirdness: got a row but no definition?", &v11, 2u);
      }
    }
  }

  else
  {
    if (v5 != 101)
    {
      v6 = *(v2 + 32);
      v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v7)
        {
          sub_10010E448(v6);
        }
      }

      else if (v7)
      {
        sub_10010E4C0();
      }
    }

    return 0;
  }

  return v8;
}

BOOL sub_100105F18(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT modify_event_name, modify_event_defType, modify_event_config FROM eligible_modify_eventdef_view WHERE modify_event_type = ?1;", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (v5)
  {
    sub_10000BE00(v2, *v1, 1, v1[2]);
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010E520(v6);
      }
    }

    else if (v7)
    {
      sub_10010E598();
    }
  }

  return v5 != 0;
}

uint64_t sub_10010601C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
    **(v1 + 32) = sub_10000A5D0(v2, *(v1 + 8), 2);
    if (!**(v1 + 16))
    {
      v7 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Config Store] WARNING: modify-events-with-type query weirdness: got a row but no name?", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010E5F8(v4);
        }
      }

      else if (v5)
      {
        sub_10010E670();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_100106198(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT external_config_kind, external_config_def FROM enabled_external_configs_view", 0, &v9);
  v3 = *v1;
  v4 = v9;
  v9 = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(&v9, 0);
  v5 = **v1;
  if (!v5)
  {
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        sub_10010E880(v6);
      }
    }

    else if (v7)
    {
      sub_10010E8F8();
    }
  }

  return v5 != 0;
}

uint64_t sub_100106288(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
    if (!**(v1 + 24))
    {
      v7 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Config Store] WARNING: All-external-configs query weirdness: got a row but no definition?", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      v4 = *(v2 + 32);
      v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v5)
        {
          sub_10010E958(v4);
        }
      }

      else if (v5)
      {
        sub_10010E9D0();
      }
    }

    return 0;
  }

  return v6;
}

sqlite3_stmt **sub_1001063EC(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] Debug dump current database state", buf, 2u);
  }

  v47 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v1, "SELECT config_uuid, config_enabled, config_last_enabled, config_last_disabled FROM configs;", 0, &v47);
  if (v47)
  {
    while (sub_10000BE48(v1, &v47) == 100)
    {
      v3 = sub_10000A5D0(v1, &v47, 0);
      v4 = sub_10007F898(v1, &v47, 1);
      v5 = sub_10000A5D0(v1, &v47, 2);
      v6 = sub_10000A5D0(v1, &v47, 3);
      v7 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        if (v3)
        {
          v8 = v3;
        }

        else
        {
          v8 = "(null)";
        }

        *buf = 136446978;
        *&buf[4] = v8;
        if (v5)
        {
          v9 = v5;
        }

        else
        {
          v9 = "(null)";
        }

        v54 = 1024;
        *v55 = v4 != 0;
        if (v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = "(null)";
        }

        *&v55[4] = 2082;
        *&v55[6] = v9;
        v56 = 2082;
        v57 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Config Store] - Config: uuid=%{public}s, enabled=%d, lastEnabled=%{public}s, lastDisabled=%{public}s", buf, 0x26u);
      }
    }
  }

  else
  {
    v11 = *(v1 + 32);
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v12)
      {
        v13 = sqlite3_errmsg(v11);
        sub_10010EA30(v13, v52);
      }
    }

    else if (v12)
    {
      sub_10010EA68();
    }
  }

  sub_10007F8D4(v1, "SELECT COUNT(*) FROM events;", 0, buf);
  v14 = *buf;
  *buf = 0;
  sub_10007FC24(&v47, v14);
  sub_10007FC24(buf, 0);
  if (v47)
  {
    if (sub_10000BE48(v1, &v47) == 100)
    {
      v15 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        v16 = sub_100016AC4(v1, &v47, 0);
        *buf = 134217984;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Config Store] - Events: count=%lld", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = *(v1 + 32);
    v18 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v18)
      {
        v19 = sqlite3_errmsg(v17);
        sub_10010EAC8(v19, v51);
      }
    }

    else if (v18)
    {
      sub_10010EB00();
    }
  }

  sub_10007F8D4(v1, "SELECT event_id, event_name FROM events;", 0, buf);
  v20 = *buf;
  *buf = 0;
  sub_10007FC24(&v47, v20);
  sub_10007FC24(buf, 0);
  if (v47)
  {
    while (sub_10000BE48(v1, &v47) == 100)
    {
      v21 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_100016AC4(v1, &v47, 0);
        v23 = sub_10000A5D0(v1, &v47, 1);
        *buf = 134218242;
        *&buf[4] = v22;
        v54 = 2082;
        *v55 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Config Store]   :: %lld -> %{public}s", buf, 0x16u);
      }
    }
  }

  else
  {
    v24 = *(v1 + 32);
    v25 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v25)
      {
        v26 = sqlite3_errmsg(v24);
        sub_10010EAC8(v26, v50);
      }
    }

    else if (v25)
    {
      sub_10010EB00();
    }
  }

  sub_10007F8D4(v1, "SELECT COUNT(*) FROM transforms;", 0, buf);
  v27 = *buf;
  *buf = 0;
  sub_10007FC24(&v47, v27);
  sub_10007FC24(buf, 0);
  if (v47)
  {
    if (sub_10000BE48(v1, &v47) == 100)
    {
      v28 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_100016AC4(v1, &v47, 0);
        *buf = 134217984;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Config Store] - Transforms: count=%lld", buf, 0xCu);
      }
    }
  }

  else
  {
    v30 = *(v1 + 32);
    v31 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v31)
      {
        v32 = sqlite3_errmsg(v30);
        sub_10010EB60(v32, v49);
      }
    }

    else if (v31)
    {
      sub_10010EB98();
    }
  }

  sub_10007F8D4(v1, "SELECT transform_id, transform_uuid FROM transforms;", 0, buf);
  v33 = *buf;
  *buf = 0;
  sub_10007FC24(&v47, v33);
  sub_10007FC24(buf, 0);
  if (v47)
  {
    while (sub_10000BE48(v1, &v47) == 100)
    {
      v34 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        v35 = sub_100016AC4(v1, &v47, 0);
        v36 = sub_10000A5D0(v1, &v47, 1);
        *buf = 134218242;
        *&buf[4] = v35;
        v54 = 2082;
        *v55 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[Config Store]   :: %lld : %{public}s", buf, 0x16u);
      }
    }
  }

  else
  {
    v37 = *(v1 + 32);
    v38 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v38)
      {
        v39 = sqlite3_errmsg(v37);
        sub_10010EAC8(v39, buf);
      }
    }

    else if (v38)
    {
      sub_10010EB00();
    }
  }

  sub_10007F8D4(v1, "SELECT COUNT(*) FROM transform_events;", 0, v48);
  v40 = *v48;
  *v48 = 0;
  sub_10007FC24(&v47, v40);
  sub_10007FC24(v48, 0);
  if (v47)
  {
    if (sub_10000BE48(v1, &v47) == 100)
    {
      v41 = qword_100192D80;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        v42 = sub_100016AC4(v1, &v47, 0);
        *v48 = 134217984;
        *&v48[4] = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[Config Store] - Event-Transform Map: count=%lld", v48, 0xCu);
      }
    }
  }

  else
  {
    v43 = *(v1 + 32);
    v44 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v44)
      {
        v45 = sqlite3_errmsg(v43);
        sub_10010EBF8(v45, v48);
      }
    }

    else if (v44)
    {
      sub_10010EC30();
    }
  }

  return sub_10007FC24(&v47, 0);
}

void sub_100106B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

void sub_100106B90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100106BB0()
{
  v0 = __cxa_guard_acquire(&qword_100192F08);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192830, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F08);
  }
}

void sub_100106C08()
{
  v0 = __cxa_guard_acquire(&qword_100192F10);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192870, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F10);
  }
}

void sub_100106C60()
{
  v0 = __cxa_guard_acquire(&qword_100192F18);
  if (v0)
  {
    sub_10002A874(v0, &unk_1001928B0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F18);
  }
}

void sub_100106CB8()
{
  v0 = __cxa_guard_acquire(&qword_100192F20);
  if (v0)
  {
    sub_10002A874(v0, &unk_1001928F0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F20);
  }
}

void sub_100106D10()
{
  v0 = __cxa_guard_acquire(&qword_100192F28);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192930, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F28);
  }
}

void sub_100106D68()
{
  v0 = __cxa_guard_acquire(&qword_100192F30);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192970, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F30);
  }
}

void sub_100106DC0()
{
  v0 = __cxa_guard_acquire(&qword_100192F38);
  if (v0)
  {
    sub_10002A874(v0, &unk_1001929B0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F38);
  }
}

void sub_100106E18()
{
  v0 = __cxa_guard_acquire(&qword_100192F40);
  if (v0)
  {
    sub_10002A874(v0, &unk_1001929F0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F40);
  }
}

void sub_100106E70()
{
  v0 = __cxa_guard_acquire(&qword_100192F48);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192A30, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F48);
  }
}

void sub_100106EC8()
{
  v0 = __cxa_guard_acquire(&qword_100192F50);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192A70, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F50);
  }
}

void sub_100106F20()
{
  v0 = __cxa_guard_acquire(&qword_100192F58);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192AB0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192F58);
  }
}

void sub_100106F78(char *a1, uint64_t *a2)
{
  sub_10002A33C(a1, a2, __stack_chk_guard);
  sub_10002A330();
  sub_10002A1DC(&_mh_execute_header, v2, v3, "[Config Store] ERROR: Config header with uuid '%{public}s' failed to insert new row[null database]", v4);
}

void sub_100106FE4(char *a1, uint64_t *a2)
{
  sub_10002A33C(a1, a2, __stack_chk_guard);
  sub_10002A330();
  sub_10002A1DC(&_mh_execute_header, v2, v3, "[Config Store] ERROR: Config header with uuid '%{public}s' has parent that is not present; cannot insert yet.", v4);
}

void sub_100107050(char *a1, uint64_t *a2)
{
  sub_10002A33C(a1, a2, __stack_chk_guard);
  sub_10002A330();
  sub_10002A1DC(&_mh_execute_header, v2, v3, "[Config Store] ERROR: Config header with uuid '%{public}s' inserted but failed to return row id", v4);
}

void sub_1001071B4(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100107814(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100107A20(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100107CB8(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100107FD8(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001082C0(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10010CB88(uint64_t **a1)
{
  if (*(*a1 + 23) < 0)
  {
    v1 = **a1;
  }

  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10010CC08(uint64_t **a1)
{
  if (*(*a1 + 23) < 0)
  {
    v1 = **a1;
  }

  sub_10002A330();
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Config Store] ERROR: Activation of device configuration with uuid '%{public}s' enabled %lld configs?", v4, 0x16u);
}

void sub_10010CF24(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed to prepare get-active-header statement; %s", v3, v4, v5, v6, v7);
}

void sub_10010CFFC(void *a1, uint64_t a2, uint64_t a3)
{
  __cxa_begin_catch(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000298C(a3);
  sub_10000298C(a3);
  __cxa_end_catch();
}

void sub_10010D03C(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed to execute get-active-header statement; %s", v3, v4, v5, v6, v7);
}

void sub_10010D174(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed to execute get-active-config-uuid statement; %s", v3, v4, v5, v6, v7);
}

void sub_10010D4AC(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] Failed to reenable all budgeted transforms; %s", v3, v4, v5, v6, v7);
}

void sub_10010D98C(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing transform-with-uuid query; %s", v3, v4, v5, v6, v7);
}

void sub_10010DA68(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database enabled-transform query; %s", v3, v4, v5, v6, v7);
}

void sub_10010DB40(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] Failed during enabled-transform-query; %s", v3, v4, v5, v6, v7);
}

void sub_10010DC18(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database disabled-transform query; %s", v3, v4, v5, v6, v7);
}

void sub_10010DCF0(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during disabled-transform-query; %s", v3, v4, v5, v6, v7);
}

void sub_10010DDC8(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed to create event-query statement; %s", v3, v4, v5, v6, v7);
}

void sub_10010DEA0(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during event-query; %s", v3, v4, v5, v6, v7);
}

void sub_10010DF78(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database all-active-events query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E050(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during all-active-events; %s", v3, v4, v5, v6, v7);
}

void sub_10010E1C0(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database all-active-eventdefs query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E298(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during all-eventdefs; %s", v3, v4, v5, v6, v7);
}

void sub_10010E370(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database active-eventdefs-for-type query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E448(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during eventdef-with-type; %s", v3, v4, v5, v6, v7);
}

void sub_10010E520(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] Error preparing database eligible-modify-events query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E5F8(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] Failed during eligible-modify-events-with-type query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E6D0(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database active-modify-eventdefs query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E7A8(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during modify-eventdef query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E880(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Error preparing database all-active-external-configs query; %s", v3, v4, v5, v6, v7);
}

void sub_10010E958(sqlite3 *a1)
{
  sqlite3_errmsg(a1);
  sub_1000828C8();
  sub_100106B90(&_mh_execute_header, v1, v2, "[Config Store] ERROR: Failed during all-external-configs; %s", v3, v4, v5, v6, v7);
}

void sub_10010F134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_10010F230(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 4;
  v4 = sub_10010F370(&v5, &v7);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_10010F334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10010F370(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    if (*a2 - 5 <= 2)
    {
      v11 = -86;
      sub_100032734(a1, &v11);
      v9[0] = 5;
      v10 = v11;
      sub_10000298C(v9);
      sub_10000298C(v9);
      v5 = sub_10010F370(v9, a2);
      sub_10000298C(v9);
      v6 = v9[0];
LABEL_12:
      sub_1000048FC(&v10, v6);
      return v5;
    }
  }

  else if ((v4 - 5) <= 2 && *a2 == 4)
  {
    v11 = -86;
    sub_100032734(a2, &v11);
    v9[0] = 5;
    v10 = v11;
    sub_10000298C(v9);
    sub_10000298C(v9);
    v5 = sub_10010F370(a1, v9);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_12;
  }

  return sub_10001D7F8(a1, a2);
}

void sub_10010F528(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 4;
  v4 = sub_10010F668(&v5, &v7);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_10010F62C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10010F668(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    if (*a2 - 5 <= 2)
    {
      v11 = -86;
      sub_100032734(a1, &v11);
      v9[0] = 5;
      v10 = v11;
      sub_10000298C(v9);
      sub_10000298C(v9);
      v5 = sub_10010F668(v9, a2);
      sub_10000298C(v9);
      v6 = v9[0];
LABEL_10:
      sub_1000048FC(&v10, v6);
      return v5;
    }
  }

  else if ((v4 - 5) <= 2 && *a2 == 4)
  {
    v11 = -86;
    sub_100032734(a2, &v11);
    v9[0] = 5;
    v10 = v11;
    sub_10000298C(v9);
    sub_10000298C(v9);
    v5 = sub_10010F668(a1, v9);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_10;
  }

  return sub_10001D7F8(a2, a1) ^ 1;
}

void sub_10010F7F0(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 4;
  v4 = sub_10010F930(&v5, &v7);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_10010F8F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10010F930(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    if (*a2 - 5 <= 2)
    {
      v11 = -86;
      sub_100032734(a1, &v11);
      v9[0] = 5;
      v10 = v11;
      sub_10000298C(v9);
      sub_10000298C(v9);
      v5 = sub_10010F930(v9, a2);
      sub_10000298C(v9);
      v6 = v9[0];
LABEL_12:
      sub_1000048FC(&v10, v6);
      return v5;
    }
  }

  else if ((v4 - 5) <= 2 && *a2 == 4)
  {
    v11 = -86;
    sub_100032734(a2, &v11);
    v9[0] = 5;
    v10 = v11;
    sub_10000298C(v9);
    sub_10000298C(v9);
    v5 = sub_10010F930(a1, v9);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_12;
  }

  return sub_10001D7F8(a2, a1);
}

void sub_10010FAE8(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 4;
  v4 = sub_10010FC28(&v5, &v7);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_10010FBEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10010FC28(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    if (*a2 - 5 <= 2)
    {
      v11 = -86;
      sub_100032734(a1, &v11);
      v9[0] = 5;
      v10 = v11;
      sub_10000298C(v9);
      sub_10000298C(v9);
      v5 = sub_10010FC28(v9, a2);
      sub_10000298C(v9);
      v6 = v9[0];
LABEL_10:
      sub_1000048FC(&v10, v6);
      return v5;
    }
  }

  else if ((v4 - 5) <= 2 && *a2 == 4)
  {
    v11 = -86;
    sub_100032734(a2, &v11);
    v9[0] = 5;
    v10 = v11;
    sub_10000298C(v9);
    sub_10000298C(v9);
    v5 = sub_10010FC28(a1, v9);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_10;
  }

  return sub_10001D7F8(a1, a2) ^ 1;
}

void sub_10010FDB0(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 4;
  v4 = sub_10010FEF0(&v5, &v7);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_10010FEB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10010FEF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    if (*a2 - 5 <= 2)
    {
      v11 = -86;
      sub_100032734(a1, &v11);
      v9[0] = 5;
      v10 = v11;
      sub_10000298C(v9);
      sub_10000298C(v9);
      v5 = sub_10010FEF0(v9, a2);
      sub_10000298C(v9);
      v6 = v9[0];
LABEL_12:
      sub_1000048FC(&v10, v6);
      return v5;
    }
  }

  else if ((v4 - 5) <= 2 && *a2 == 4)
  {
    v11 = -86;
    sub_100032734(a2, &v11);
    v9[0] = 5;
    v10 = v11;
    sub_10000298C(v9);
    sub_10000298C(v9);
    v5 = sub_10010FEF0(a1, v9);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_12;
  }

  return sub_10000EC1C(a1, a2);
}

void sub_1001100A8(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 4;
  v4 = sub_1001101E8(&v5, &v7);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_1001101AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001101E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    if (*a2 - 5 <= 2)
    {
      v11 = -86;
      sub_100032734(a1, &v11);
      v9[0] = 5;
      v10 = v11;
      sub_10000298C(v9);
      sub_10000298C(v9);
      v5 = sub_1001101E8(v9, a2);
      sub_10000298C(v9);
      v6 = v9[0];
LABEL_10:
      sub_1000048FC(&v10, v6);
      return v5;
    }
  }

  else if ((v4 - 5) <= 2 && *a2 == 4)
  {
    v11 = -86;
    sub_100032734(a2, &v11);
    v9[0] = 5;
    v10 = v11;
    sub_10000298C(v9);
    sub_10000298C(v9);
    v5 = sub_1001101E8(a1, v9);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_10;
  }

  return sub_10000EC1C(a1, a2) ^ 1;
}

void sub_100110374(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001103B0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001103EC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_100110428(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_100110464(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001104A0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_10011097C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100110A78(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_1000DD9EC((a2 + 3), (v3 + 40));
  }

  else
  {
    sub_10000FF70(v4, (v3 + 40));
    result = (v4 + 16);
    a2[4] = (v4 + 16);
  }

  a2[4] = result;
  return result;
}

void sub_100110AE4(uint64_t a1, uint64_t **a2)
{
  v2 = **a2;
  v3 = a2[4];
  if (v3 < a2[5])
  {
    sub_100006C9C(v3);
  }

  sub_1000BCFB8(a2 + 3);
}

void sub_100110B60(uint64_t a1, uint64_t a2)
{
  memset(&v16, 170, sizeof(v16));
  sub_1000170E4(a2, &v16);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v3;
  v15 = v3;
  sub_1000176A8(a2, &v16, &v14);
  v4 = *(a2 + 8);
  v5 = v14;
  if (v14 == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Operation 'deleteEventField' tried to delete field on non-existent event");
  }

  *&v13[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v13 = v6;
  *&v13[16] = v6;
  sub_1000173FC(*v14 + 40, &v14 + 1, v13);
  v7 = *v5;
  *&v12[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v8;
  *&v12[16] = v8;
  sub_100016ED8(v12, v7 + 40);
  sub_1000137F8(v12);
  if (!sub_100013878(v13, v12))
  {
    v9 = *v5;
    *v12 = *v13;
    *&v12[8] = *&v13[8];
    *&v12[24] = *&v13[24];
    sub_1000410CC((v9 + 40), v12, v11);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(*(&v14 + 1));
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_100110D04(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100110D64(uint64_t a1, uint64_t a2)
{
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  sub_100022D90(a2, &v32);
  if (v32)
  {
    if (*a2 == *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Operation 'mergeEventMap' tried to merge but had no event");
    }

    v3 = **a2;
    v31 = &v32;
    sub_100023420(&v31, &v23);
    sub_100023508(&v31, v19);
    while (!sub_100013878(&v23, v19))
    {
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v18[16] = v4;
      *v18 = v4;
      v17 = v4;
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      if (SHIBYTE(v28) < 0)
      {
        sub_1000078D8(&v17, v27, *(&v27 + 1));
      }

      else
      {
        v17 = v27;
        *v18 = v28;
      }

      if (SHIBYTE(v30) < 0)
      {
        sub_1000078D8(&v18[8], v29, *(&v29 + 1));
      }

      else
      {
        *&v18[8] = v29;
        *&v18[24] = v30;
      }

      v5 = sub_10001CF44(&v13);
      v11[0] = *v5;
      v12 = *(v5 + 1);
      sub_10000298C(v5);
      *v5 = 0;
      *(v5 + 1) = 0;
      sub_10000298C(v11);
      v6 = sub_100024F24(&v13);
      v7 = sub_10002325C(v3 + 40, v6);
      sub_10000298C(v11);
      v8 = *v7;
      *v7 = v11[0];
      v11[0] = v8;
      v9 = *(v7 + 8);
      *(v7 + 8) = v12;
      v12 = v9;
      sub_10000298C(v7);
      sub_10000298C(v11);
      sub_1000048FC(&v12, v11[0]);
      if ((v18[31] & 0x80000000) != 0)
      {
        operator delete(*&v18[8]);
      }

      if ((v18[7] & 0x80000000) != 0)
      {
        operator delete(v17);
      }

      sub_100012BFC(&v23);
      *&v26 = v26 + 1;
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19[7]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

  sub_10000298C(&v32);
  sub_1000048FC(&v33, v32);
}

void sub_1001110AC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001110E8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_100111124(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_100111160(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_10011119C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001111D8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001113E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_100111440(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114C2C(a2, &v6);
  sub_100075544(&v6, v5);
  v3[0] = 4;
  v4 = sub_100111800(v5, &__p.__r_.__value_.__l.__data_) != 0;
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_100010440(v5, v5[1]);
  sub_10000298C(&v6);
  sub_1000048FC(&v7, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10011155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, char *a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_10002C5F4(&a10);
  sub_100010440(&a12, a13);
  sub_10002C5F4(&a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001115BC(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114C2C(a2, &v10);
  sub_100075544(&v10, &v8);
  v3 = sub_10000F260(&v8, &__p.__r_.__value_.__l.__data_);
  if (&v9 == v3)
  {
    v6[0] = 0;
    v7 = 0;
    sub_10000298C(v6);
    sub_10000298C(v6);
    sub_10000F8A4(a2 + 24, v6);
    sub_10000298C(v6);
    sub_1000048FC(&v7, v6[0]);
  }

  else
  {
    v4 = *(a2 + 32);
    if (v4 >= *(a2 + 40))
    {
      v5 = sub_100016F28(a2 + 24, (v3 + 56));
    }

    else
    {
      sub_10000FF70(*(a2 + 32), (v3 + 56));
      v5 = v4 + 16;
      *(a2 + 32) = v4 + 16;
    }

    *(a2 + 32) = v5;
  }

  sub_100010440(&v8, v9);
  sub_10000298C(&v10);
  sub_1000048FC(&v11, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100111718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, char *a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = v23;
  *(v22 + 32) = v24;
  sub_100010440(&a12, a13);
  sub_10002C5F4(&a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10011178C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1001117C8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

uint64_t sub_100111800(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!sub_10000BFA4(a1, a2, v2 + 4))
      {
        if (!sub_10000BFA4(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void sub_1001119A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100111D44(a1, v3);
  *a2 = v3[0];
  *(a2 + 8) = v4;
  sub_10000298C(v3);
  v3[0] = 0;
  v4 = 0;
  sub_10000298C(a2);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
}

void sub_100111A40(void *a1)
{
  v1 = sub_1000F0B30(a1);
  *v1 = off_10018BD28;
  *(v1 + 1) = 0u;
  *(v1 + 3) = 0u;
  operator new();
}

uint64_t sub_100111B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000786C(v2);
  }

  return nullsub_13(a1);
}

void sub_100111B50(uint64_t a1)
{
  sub_100111B0C(a1);

  operator delete();
}

void sub_100111B88(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  *a3 = 0;
  sub_10000298C(a3);
  sub_10000298C(a3);
  *(a3 + 16) = 0;
  v6 = *(a1 + 32);
  if (v6 != a2)
  {
    v7 = memchr(a2, 10, v6 - a2);
    if (v7)
    {
      v6 = v7;
    }

    v14 = 0;
    sub_10005900C(a2, v6, v13, 1, v11);
    sub_100004FBC(v13);
    sub_10000298C(v11);
    v8 = *a3;
    *a3 = v11[0];
    v11[0] = v8;
    v9 = *(a3 + 8);
    *(a3 + 8) = v12;
    v12 = v9;
    sub_10000298C(a3);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
    if (v6 == *(a1 + 32))
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 + 1;
    }

    *(a3 + 16) = v10;
  }
}

void sub_100111CB4(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100004FBC(va1);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    LOBYTE(v6) = 0;
    v8 = 0;
    sub_10000298C(va);
    sub_10000298C(va);
    __cxa_end_catch();
    JUMPOUT(0x100111C28);
  }

  sub_10003E1D0(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100111D08(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  *(a1 + 16) = 0;
  return a1;
}

void sub_100111D44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v37, 170, sizeof(v37));
  sub_100111B88(a1, *(a1 + 24), v37);
  if (!v37[2])
  {
    goto LABEL_15;
  }

  if (LOBYTE(v37[0]) != 1)
  {
    goto LABEL_15;
  }

  sub_10003EA28(v37, "transforms", v35);
  v32 = v37;
  v33 = 0uLL;
  v34 = 0x8000000000000000;
  sub_1000137F8(&v32);
  if (!sub_100013878(v35, &v32))
  {
    goto LABEL_15;
  }

  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = v3;
  v35[1] = v3;
  sub_10003EA28(v37, "header", v35);
  v32 = v37;
  v33 = 0uLL;
  v34 = 0x8000000000000000;
  sub_1000137F8(&v32);
  if (sub_100013878(v35, &v32))
  {
    goto LABEL_15;
  }

  if (*sub_100040F6C(v35) != 1)
  {
    goto LABEL_15;
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v4;
  v33 = v4;
  v5 = sub_100040F6C(v35);
  sub_10003EA28(v5, "uuid", &v32);
  v6 = sub_100040F6C(v35);
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v7;
  v30 = v7;
  sub_100016ED8(&v29, v6);
  sub_1000137F8(&v29);
  if (sub_100013878(&v32, &v29))
  {
    goto LABEL_15;
  }

  if (*sub_10001CF44(&v32) == 3)
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v8;
    v30 = v8;
    v9 = sub_100040F6C(v35);
    sub_10003EA28(v9, "name", &v29);
    v10 = sub_100040F6C(v35);
    v28 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v11;
    v27 = v11;
    sub_100016ED8(&v26, v10);
    sub_1000137F8(&v26);
    if (sub_100013878(&v29, &v26))
    {
      goto LABEL_17;
    }

    if (*sub_10001CF44(&v29) != 3)
    {
      goto LABEL_17;
    }

    v28 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v12;
    v27 = v12;
    v13 = sub_100040F6C(v35);
    sub_10003EA28(v13, "builtOnDate", &v26);
    v14 = sub_100040F6C(v35);
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v15;
    v24 = v15;
    sub_100016ED8(&v23, v14);
    sub_1000137F8(&v23);
    if (sub_100013878(&v26, &v23))
    {
      goto LABEL_17;
    }

    if (*sub_10001CF44(&v26) != 3)
    {
      goto LABEL_17;
    }

    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v16;
    v24 = v16;
    v17 = sub_100040F6C(v35);
    sub_10003EA28(v17, "version", &v23);
    v18 = sub_100040F6C(v35);
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[0] = v19;
    v21[1] = v19;
    sub_100016ED8(v21, v18);
    sub_1000137F8(v21);
    if (sub_100013878(&v23, v21) || *sub_10001CF44(&v23) != 3)
    {
LABEL_17:
      sub_100111D08(a2);
    }

    else
    {
      v20 = sub_10001CF44(v35);
      sub_100112F60(a2, v20, &v37[2]);
    }
  }

  else
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(a2);
    sub_10000298C(a2);
    *(a2 + 16) = 0;
  }

  sub_10000298C(v37);
  sub_1000048FC(&v37[1], LOBYTE(v37[0]));
}

void sub_1001120AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1001120B8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100111D44(a1, v6);
  LOBYTE(v8) = v6[0];
  v9 = *(&v6[0] + 1);
  sub_10000298C(v6);
  LOBYTE(v6[0]) = 0;
  *(&v6[0] + 1) = 0;
  sub_10000298C(&v8);
  sub_10000298C(v6);
  sub_1000048FC(v6 + 1, LOBYTE(v6[0]));
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v3;
  v6[1] = v3;
  sub_10003EA28(&v8, "parentUuid", v6);
  v5[0] = &v8;
  memset(&v5[1], 0, 24);
  v5[4] = 0x8000000000000000;
  sub_1000137F8(v5);
  if (sub_100013878(v6, v5) || *sub_10001CF44(v6) != 3)
  {
    sub_10000459C(a2, "");
  }

  else
  {
    v4 = sub_10001CF44(v6);
    sub_100010390(v4, a2);
  }

  sub_10000298C(&v8);
  sub_1000048FC(&v9, v8);
}

void sub_1001121FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100112208(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100111D44(a1, v6);
  LOBYTE(v8) = v6[0];
  v9 = *(&v6[0] + 1);
  sub_10000298C(v6);
  LOBYTE(v6[0]) = 0;
  *(&v6[0] + 1) = 0;
  sub_10000298C(&v8);
  sub_10000298C(v6);
  sub_1000048FC(v6 + 1, LOBYTE(v6[0]));
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v3;
  v6[1] = v3;
  sub_10003EA28(&v8, "uuid", v6);
  v5[0] = &v8;
  memset(&v5[1], 0, 24);
  v5[4] = 0x8000000000000000;
  sub_1000137F8(v5);
  if (sub_100013878(v6, v5) || *sub_10001CF44(v6) != 3)
  {
    sub_10000459C(a2, "");
  }

  else
  {
    v4 = sub_10001CF44(v6);
    sub_100010390(v4, a2);
  }

  sub_10000298C(&v8);
  sub_1000048FC(&v9, v8);
}

void sub_10011234C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100112358()
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v1 = v0;
  v2 = v0;
  sub_10005D2C4();
}

void sub_1001128E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::ostream::~ostream();
    std::ios::~ios();
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100112948(uint64_t a1, uint64_t a2)
{
  memset(v22, 170, 24);
  sub_100111D44(a1, v22);
  v4 = *&v22[16];
  if (v22[0] != 1 || *&v22[16] == 0)
  {
    sub_10000298C(v22);
    v6 = v22[0];
    v7 = &v22[8];
    goto LABEL_7;
  }

  v8 = sub_100112EE0(a2, 0);
  sub_10000298C(v22);
  sub_1000048FC(&v22[8], v22[0]);
  if (!v8)
  {
    return 0;
  }

  if (v4 != *(a1 + 32))
  {
    while (1)
    {
      memset(v23, 170, sizeof(v23));
      sub_100111B88(a1, v4, v23);
      v4 = v23[2];
      if (!v23[2])
      {
LABEL_36:
        sub_10000298C(v23);
        v6 = LOBYTE(v23[0]);
        v7 = &v23[1];
LABEL_7:
        sub_1000048FC(v7, v6);
        return 0;
      }

      *&v22[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v22 = v9;
      *&v22[16] = v9;
      sub_10003EA28(v23, "addTransform", v22);
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 1);
        goto LABEL_30;
      }

      sub_10003EA28(v23, "removeTransforms", &__p);
      v10 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v10;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 2);
        goto LABEL_30;
      }

      sub_10003EA28(v23, "addEvent", &__p);
      v11 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v11;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 3);
        goto LABEL_30;
      }

      sub_10003EA28(v23, "removeEvents", &__p);
      v12 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v12;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 4);
        goto LABEL_30;
      }

      sub_10003EA28(v23, "addModifyEvent", &__p);
      v13 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v13;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 5);
        goto LABEL_30;
      }

      sub_10003EA28(v23, "removeModifyEvents", &__p);
      v14 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v14;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 6);
        goto LABEL_30;
      }

      sub_10003EA28(v23, "addExternalConfiguration", &__p);
      v15 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v15;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        break;
      }

      sub_10003EA28(v23, "removeExternalConfigurations", &__p);
      v16 = __p;
      *&v22[8] = v20;
      *&v22[24] = v21;
      *&v21 = 0;
      v20 = 0uLL;
      __p = v23;
      *(&v21 + 1) = 0x8000000000000000;
      *v22 = v16;
      sub_1000137F8(&__p);
      if (!sub_100013878(v22, &__p))
      {
        sub_10001CF44(v22);
        v17 = sub_100112EE0(a2, 8);
LABEL_30:
        if ((v17 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }

      if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
      {
        sub_100017DF0(&__p);
      }

      if (!sub_100112EE0(a2, 9))
      {
        goto LABEL_36;
      }

LABEL_31:
      sub_10000298C(v23);
      sub_1000048FC(&v23[1], LOBYTE(v23[0]));
      if (v4 == *(a1 + 32))
      {
        return 1;
      }
    }

    sub_10001CF44(v22);
    v17 = sub_100112EE0(a2, 7);
    goto LABEL_30;
  }

  return 1;
}

void sub_100112ED0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100112EE0(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002B200();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100112F60(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_10000298C(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(a1);
  *(a1 + 16) = *a3;
  return a1;
}

void sub_100112FE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10018BD80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100113064(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10018BDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001130C4(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_100113144(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100113144(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100113200(a1, a2, v5, &v4, a3);
  if (!result)
  {
    memset(&v5[1], 170, 24);
    sub_1001133A8();
  }

  return result;
}

uint64_t *sub_100113200(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_100113444(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100113460(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100113460(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__n128 sub_100113540(uint64_t a1, uint64_t a2)
{
  *a2 = off_10018BE20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100113578(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (v4 != 9)
  {
    v3[0] = 0xAAAAAAAAAAAAAAAALL;
    v3[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v3, 0, 0, 0, 1);
  }

  return 1;
}

void sub_100113734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10011377C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100113838(void *a1, unsigned __int8 *a2)
{
  v4 = sub_1000F0B30(a1);
  *v4 = off_10018BEA0;
  sub_10000FF70(v4 + 8, a2);
  return a1;
}

uint64_t sub_100113890(uint64_t a1)
{
  sub_10000298C((a1 + 8));
  sub_1000048FC((a1 + 16), *(a1 + 8));

  return nullsub_13(a1);
}

void sub_1001138DC(uint64_t a1)
{
  sub_100113890(a1);

  operator delete();
}

unsigned __int8 *sub_100113914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 8;
  if (*(a1 + 8) == 1)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v4;
    v17[1] = v4;
    sub_10000BD10(a1 + 8, off_1001820A0, v17);
    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v5;
    v15 = v5;
    sub_10000DEC4(&v14, v3);
    sub_10000DCFC(&v14);
    if (sub_10000DD7C(v17, &v14))
    {
      goto LABEL_9;
    }

    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v6;
    v15 = v6;
    v7 = sub_1000760D0(v17);
    sub_100015F0C(v7, "uuid", &v14);
    v8 = sub_1000760D0(v17);
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[0] = v9;
    v12[1] = v9;
    sub_10000DEC4(v12, v8);
    sub_10000DCFC(v12);
    if (sub_10000DD7C(&v14, v12) || *sub_10000DB44(&v14) != 3)
    {
LABEL_9:
      *a2 = 0;
      *(a2 + 8) = 0;
      sub_10000298C(a2);
      return sub_10000298C(a2);
    }

    else
    {
      v10 = sub_10000DB44(v17);
      return sub_10000FF70(a2, v10);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(a2);

    return sub_10000298C(a2);
  }
}

void sub_100113ACC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

std::string *sub_100113AD8@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = a1 + 8;
  if (*(a1 + 8) != 1)
  {
    return sub_10000459C(a2, "");
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v4;
  v17[1] = v4;
  sub_10000BD10(a1 + 8, off_1001820A0, v17);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v5;
  v15 = v5;
  sub_10000DEC4(&v14, v3);
  sub_10000DCFC(&v14);
  if (sub_10000DD7C(v17, &v14))
  {
    return sub_10000459C(a2, "");
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v7;
  v15 = v7;
  v8 = sub_1000760D0(v17);
  sub_100015F0C(v8, "parentUuid", &v14);
  v9 = sub_1000760D0(v17);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v10;
  v12[1] = v10;
  sub_10000DEC4(v12, v9);
  sub_10000DCFC(v12);
  if (sub_10000DD7C(&v14, v12) || *sub_10000DB44(&v14) != 3)
  {
    return sub_10000459C(a2, "");
  }

  v11 = sub_10000DB44(&v14);
  return sub_100010390(v11, a2);
}

void sub_100113C5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

std::string *sub_100113C68@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = a1 + 8;
  if (*(a1 + 8) != 1)
  {
    return sub_10000459C(a2, "");
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v4;
  v17[1] = v4;
  sub_10000BD10(a1 + 8, off_1001820A0, v17);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v5;
  v15 = v5;
  sub_10000DEC4(&v14, v3);
  sub_10000DCFC(&v14);
  if (sub_10000DD7C(v17, &v14))
  {
    return sub_10000459C(a2, "");
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v7;
  v15 = v7;
  v8 = sub_1000760D0(v17);
  sub_100015F0C(v8, "uuid", &v14);
  v9 = sub_1000760D0(v17);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v10;
  v12[1] = v10;
  sub_10000DEC4(v12, v9);
  sub_10000DCFC(v12);
  if (sub_10000DD7C(&v14, v12) || *sub_10000DB44(&v14) != 3)
  {
    return sub_10000459C(a2, "");
  }

  v11 = sub_10000DB44(&v14);
  return sub_100010390(v11, a2);
}

void sub_100113DEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100113DF8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  sub_100113914(a1, &v27);
  if (v27 == 1 && !sub_100112EE0(a2, 0))
  {
    sub_10000298C(&v27);
    sub_1000048FC(&v27 + 1, v27);
    return 0;
  }

  sub_10000298C(&v27);
  sub_1000048FC(&v27 + 1, v27);
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v4;
  v28 = v4;
  sub_10000BD10(v2, off_100182088, &v27);
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v5;
  v25 = v5;
  sub_10000DEC4(&v24, v2);
  sub_10000DCFC(&v24);
  if (!sub_10000DD7C(&v27, &v24) && *sub_10000DB44(&v27) == 2)
  {
    v6 = sub_10000DB44(&v27);
    v26 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v7;
    v25 = v7;
    sub_10000DEC4(&v24, v6);
    sub_10000DF14(&v24);
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v8;
    v22 = v8;
    sub_10000DEC4(&v21, v6);
    sub_10000DCFC(&v21);
    while (!sub_10000DD7C(&v24, &v21))
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      v20 = 0xAAAAAAAAAAAAAAAALL;
      v9 = sub_10000DB44(&v24);
      sub_10000FF70(&v19, v9);
      v10 = sub_100112EE0(a2, 1);
      sub_10000298C(&v19);
      sub_1000048FC(&v20, v19);
      if (!v10)
      {
        return 0;
      }

      sub_100012BFC(&v24);
    }
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v11;
  v28 = v11;
  sub_10000BD10(v2, off_100182090, &v27);
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v12;
  v25 = v12;
  sub_10000DEC4(&v24, v2);
  sub_10000DCFC(&v24);
  if (!sub_10000DD7C(&v27, &v24) && *sub_10000DB44(&v27) == 2)
  {
    v13 = sub_10000DB44(&v27);
    v26 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v14;
    v25 = v14;
    sub_10000DEC4(&v24, v13);
    sub_10000DF14(&v24);
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v15;
    v22 = v15;
    sub_10000DEC4(&v21, v13);
    sub_10000DCFC(&v21);
    while (!sub_10000DD7C(&v24, &v21))
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      v20 = 0xAAAAAAAAAAAAAAAALL;
      v16 = sub_10000DB44(&v24);
      sub_10000FF70(&v19, v16);
      v17 = sub_100112EE0(a2, 7);
      sub_10000298C(&v19);
      sub_1000048FC(&v20, v19);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      sub_100012BFC(&v24);
    }
  }

  return 1;
}

void sub_100114104(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10011411C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  *(result + *(v2 - 88)) = a2[1];
  return result;
}

void sub_1001141A8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 16))(&v3);
  sub_10011425C(&v3, a2);
  sub_10000298C(&v3);
  sub_1000048FC(&v3.__r_.__value_.__l.__size_, v3.__r_.__value_.__s.__data_[0]);
}

void sub_100114248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

std::string *sub_10011425C@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  if (result->__r_.__value_.__s.__data_[0] != 1)
  {
    goto LABEL_5;
  }

  v3 = result;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v4;
  v9[1] = v4;
  sub_100015F0C(result, "uuid", v9);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v5;
  v7[1] = v5;
  sub_10000DEC4(v7, v3);
  sub_10000DCFC(v7);
  result = sub_10000DD7C(v9, v7);
  if (result)
  {
    goto LABEL_5;
  }

  result = sub_10000DB44(v9);
  if (result->__r_.__value_.__s.__data_[0] == 3)
  {
    v6 = sub_10000DB44(v9);
    return sub_100010390(v6, a2);
  }

  else
  {
LABEL_5:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  return result;
}

uint64_t sub_100114348(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1001141A8(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*a1 + 72))(a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_5:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_10011441C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100114428(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1001141A8(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*a1 + 88))(a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_5:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1001144FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_100114508(uint64_t a1, void *a2)
{
  memset(v11, 170, sizeof(v11));
  (*(*a1 + 104))(v11);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v3;
  v12[1] = v3;
  v13 = 0xAAAAAAAAFFFFFFFFLL;
  sub_100114680(v12, v11[0], v11[1]);
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 1;
    goto LABEL_16;
  }

  v5 = *a2 + 16;
  while (1)
  {
    memset(&__p, 170, sizeof(__p));
    sub_1001141A8(*(v5 - 16), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      break;
    }

    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_15;
    }

LABEL_7:
    v6 = sub_10001E21C(v12, &__p.__r_.__value_.__l.__data_);
    v7 = v6 != 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v6)
    {
      v8 = v5 == v4;
      v5 += 16;
      if (!v8)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_7;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_15:
  v7 = 0;
LABEL_16:
  sub_100043CD8(v12);
  *&v12[0] = v11;
  sub_10002DE40(v12);
  return v7;
}

void sub_100114670(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100114680(uint64_t a1, const void **a2, const void **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_1000436B8(a1, v5);
      v5 += 3;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t sub_1001147E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = a2 + 24;
  if (*(a2 + 24) == v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected integer");
    goto LABEL_9;
  }

  v6 = *(v2 - 16);
  v4 = (v2 - 16);
  v5 = v6;
  if (!v6)
  {
    sub_100013F0C(a2 + 24, v4);
    return 0;
  }

  if ((v5 - 5) >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected integer");
LABEL_9:
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(v4, &v11);
  v8 = v11;
  sub_100013F0C(v3, (*(a2 + 32) - 16));
  return v8;
}

unsigned __int8 *sub_10011491C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = a1 + 24;
  if (*(a1 + 24) == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected number type");
    goto LABEL_10;
  }

  v8 = *(v3 - 16);
  v6 = (v3 - 16);
  v7 = v8;
  if ((v8 - 5) > 2)
  {
    if (v7 == 4)
    {
      v13 = -86;
      sub_100032734(v6, &v13);
      v11 = v13;
      sub_100013F0C(v4, (*(a1 + 32) - 16));
      *a2 = 5;
      *(a2 + 8) = v11;
      sub_10000298C(a2);
      return sub_10000298C(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected number type");
LABEL_10:
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  sub_10000FF70(a2, v6);
  v9 = (*(a1 + 32) - 16);

  return sub_100013F0C(v4, v9);
}

uint64_t sub_100114AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = a2 + 24;
  if (*(a2 + 24) == v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected BOOL type");
    goto LABEL_9;
  }

  v7 = *(v2 - 16);
  v5 = (v2 - 16);
  v6 = v7;
  if (v7 != 4)
  {
    if ((v6 - 5) <= 2)
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = 0xAAAAAAAAAAAAAAAALL;
      sub_10000FF70(&v11, v5);
      sub_100013F0C(v3, (*(a2 + 32) - 16));
      v8 = sub_1000F29B4(&v11, 0);
      sub_10000298C(&v11);
      sub_1000048FC(&v12, v11);
      return v8 & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected BOOL type");
LABEL_9:
  }

  LOBYTE(v11) = -86;
  sub_100032734(v5, &v11);
  v8 = v11;
  sub_100013F0C(v3, (*(a2 + 32) - 16));
  return v8 & 1;
}

uint64_t sub_100114C2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = a1 + 24;
  if (*(a1 + 24) == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected map");
    goto LABEL_8;
  }

  if (*(v4 - 16) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected map");
LABEL_8:
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = 1;
  *(a2 + 8) = *(v4 - 8);
  sub_10000298C((v4 - 16));
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  sub_10000298C(a2);
  v6 = (*(a1 + 32) - 16);

  return sub_100013F0C(v3, v6);
}

uint64_t sub_100114D2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = a1 + 24;
  if (*(a1 + 24) == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected string/null");
LABEL_11:
  }

  v5 = *(v4 - 16);
  if (*(v4 - 16))
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected string/null");
    goto LABEL_11;
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = v5;
  *(a2 + 8) = *(v4 - 8);
  sub_10000298C((v4 - 16));
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  sub_10000298C(a2);
  v8 = (*(a1 + 32) - 16);

  return sub_100013F0C(v3, v8);
}

void sub_100114E4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10018BF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100114EAC(uint64_t a1)
{
  sub_100114EE8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100114EE8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000E766C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100114F2C(uint64_t a1, uint64_t a2, const char *a3)
{
  sub_100115720(a3, a2, &v7);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = &off_10018BFD8;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v5;
  return a1;
}

void sub_100114FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100114F2C(a1, a4, a2);
  *v6 = off_10018BF80;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_1000078D8(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_100115F44(&v11);
  return a1;
}

void sub_100115098(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_100115F44(&a10);
  __cxa_end_catch();
  JUMPOUT(0x100115080);
}

void sub_1001150D0(_Unwind_Exception *a1)
{
  sub_100115F44(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_100114F2C(a1, a5, a2);
  *v8 = off_10018BF80;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  sub_100115D90(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  sub_100115F44(&v12);
  return a1;
}

void sub_1001151A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_100115F44(&a10);
  __cxa_end_catch();
  JUMPOUT(0x100115184);
}

void sub_1001151D8(_Unwind_Exception *a1)
{
  sub_100115F44(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void boost::filesystem::filesystem_error::~filesystem_error(boost::filesystem::filesystem_error *this)
{
  *this = off_10018BF80;
  sub_100115F44(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = off_10018BF80;
  sub_100115F44(this + 5);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    sub_100115EFC((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t sub_100115440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13[0] = 0;
    if ((qword_100192790 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = a1 != 0;
    }

    else
    {
      v9 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v10 = 2;
    LODWORD(v13[0]) = a1;
    if (v9)
    {
      v10 = 3;
    }

    v13[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v13[2] = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, v13);
  }

  if ((qword_100192790 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1001155AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v15[0] = 0;
    if ((qword_100192790 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v10 = a1 != 0;
    }

    else
    {
      v10 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v11 = 2;
    LODWORD(v15[0]) = a1;
    if (v10)
    {
      v11 = 3;
    }

    v15[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v15[2] = v11;
    boost::filesystem::filesystem_error::filesystem_error(exception, a5, a2, a3, v15);
  }

  if ((qword_100192790 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v8 = 2;
  if (result)
  {
    v8 = 3;
  }

  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a4 + 16) = v8;
  return result;
}

void sub_100115720(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v6 = strlen(a1);
    std::string::append(a3, a1, v6);
    std::string::append(a3, ": ", 2uLL);
  }

  sub_100115830(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001157CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100115808(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::string *sub_100115830@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1000C1CEC(a1, a2);
  std::string::append(a2, " [", 2uLL);
  sub_100115984(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 16) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(a1 + 16);
    if (v6 <= 3)
    {
      v7 = off_10018BFF0;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_100115B50(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_100115944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100115984@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_100115CBC(a2, "std:");
      v5 = (*(**(a1 + 1) + 16))(*(a1 + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      sub_100115D64(__s, 0x20uLL, ":%d", v7, v8, v9, v10, v11, *a1);
      v12 = strlen(__s);
      return std::string::append(a2, __s, v12);
    }

    v14 = *(a1 + 1);
  }

  else
  {
    v14 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v15 = (**v14)(v14);
  sub_100115CBC(a2, v15);
  v21 = *a1;
  if (*(a1 + 2) == 1)
  {
    v21 += 1000 * (*(a1 + 1) % 0x1FFFF7uLL);
  }

  sub_100115D64(__s, 0x20uLL, ":%d", v16, v17, v18, v19, v20, v21);
  v22 = strlen(__s);
  return std::string::append(a2, __s, v22);
}

void sub_100115B30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100115B50(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100115CBC(a2, *a1);
    sprintf(__s, ":%ld", *(a1 + 16));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(a1 + 20))
    {
      sprintf(__s, ":%ld", *(a1 + 20));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = *(a1 + 8);
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
  }

  else
  {

    sub_100115CBC(a2, "(unknown source location)");
  }
}

void sub_100115CA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100115CBC(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000173E4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_100115D90(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000078D8((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_100115E24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100115E40(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100115EFC(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100115E40(a1, __s, v4);
}

uint64_t *sub_100115F44(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

DIR *sub_100115FB8@<X0>(DIR **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  result = *a1;
  if (*a1 && (*a1 = 0, result = closedir(result), result))
  {
    v7 = *__error();

    return sub_10011604C(a3, v7, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_10011604C(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    v6 = a2 != 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  *a1 = v4;
  if (v6)
  {
    v7 = 3;
  }

  a1[1] = a3;
  a1[2] = v7;
  return a1;
}

atomic_uint **sub_1001160EC(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (a4)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v32[0] = 0;
      v9 = operator new(0x40uLL, &std::nothrow);
      if (v9)
      {
        *v9 = 0;
        v9[1] = 0;
        *(v9 + 8) = 0;
        *(v9 + 1) = 0u;
        *(v9 + 36) = 0xFFFFLL;
        *(v9 + 11) = 0xFFFF;
        v9[6] = 0;
        v9[7] = 0;
        v29 = v9;
        atomic_fetch_add(v9, 1u);
        v10 = v9;
        v11 = v32[0];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v29 = v11;
      v32[0] = v10;
      sub_10011761C(&v29);
      v13 = v32[0];
      if (!v32[0])
      {
        sub_100127900(a4);
        return sub_10011761C(v32);
      }
    }

    else
    {
      v32[0] = 0;
      v12 = operator new(0x40uLL);
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 8) = 0;
      *(v12 + 1) = 0u;
      *(v12 + 36) = 0xFFFFLL;
      *(v12 + 11) = 0xFFFF;
      v12[6] = 0;
      v12[7] = 0;
      v29 = v12;
      atomic_fetch_add(v12, 1u);
      v29 = v32[0];
      v32[0] = v12;
      sub_10011761C(&v29);
      v13 = v32[0];
    }

    memset(&v32[1], 0, 15);
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = opendir(v14);
    *(v13 + 6) = v15;
    if (v15)
    {
      v16 = 1;
      v17 = 46;
    }

    else
    {
      v18 = *__error();
      v29 = 0;
      if (qword_100192790 >> 1 == 0x595588BD12BF6FE8)
      {
        v19 = v18 != 0;
      }

      else
      {
        v19 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v18);
      }

      v20 = 2;
      LODWORD(v29) = v18;
      if (v19)
      {
        v20 = 3;
      }

      v30 = &boost::system::detail::system_cat_holder<void>::instance;
      v31 = v20;
      if (v20)
      {
        __str.__r_.__value_.__r.__words[0] = 13;
        __str.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
        v24 = sub_100116B7C(&v29, &__str);
        if ((a3 & 1) == 0 || (v24 & 1) == 0)
        {
          v25 = v29;
          if (v31 == 1)
          {
            v25 = v29 + 1000 * (v30 % 0x1FFFF7);
          }

          if (v25)
          {
            sub_100115440(v25, a2, a4, "boost::filesystem::directory_iterator::construct");
          }

          else if (a4)
          {
            *a4 = 0;
            a4[1] = 0;
            a4[2] = 0;
          }
        }

        return sub_10011761C(v32);
      }

      v17 = 0;
      v16 = 0;
    }

    v21 = v32[0];
    if (*(v32[0] + 6))
    {
      v22 = *a1;
      *a1 = v32[0];
      v32[0] = v22;
      __p.__r_.__value_.__r.__words[0] = v17;
      __p.__r_.__value_.__l.__size_ = v32[1];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v32[1] + 7);
      *(&__p.__r_.__value_.__s + 23) = v16;
      if (*(a2 + 23) < 0)
      {
        sub_1000078D8(&__str, *a2, *(a2 + 8));
      }

      else
      {
        __str = *a2;
      }

      sub_10011884C(&__str, &__p);
      std::string::operator=((v21 + 2), &__str);
      *&v23 = 0xFFFF00000000;
      *(&v23 + 1) = 0xFFFF00000000;
      *(v21 + 2) = v23;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v15)
        {
          return sub_10011761C(v32);
        }

        goto LABEL_32;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_32:
        sub_1001165F8(a1, a4);
      }
    }

    return sub_10011761C(v32);
  }

  return sub_100115440(2, a2, a4, "boost::filesystem::directory_iterator::construct");
}

void sub_1001164FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, atomic_uint *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v19)
    {
      if (qword_100192AF8 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *v19 = 12;
      v19[1] = &boost::system::detail::generic_cat_holder<void>::instance;
      v19[2] = v23;
      a19 = *v20;
      *v20 = 0;
      sub_10011761C(&a19);
      __cxa_end_catch();
      JUMPOUT(0x100116414);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1001164ECLL);
}

void sub_1001165E4(void *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  JUMPOUT(0x1001164F4);
}

void sub_1001165F8(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  memset(&__src, 0, sizeof(__src));
  v26 = 0;
  v27 = 0;
  v4 = *a1;
  v5 = *(*a1 + 48);
  while (1)
  {
    *v20 = 0;
    *__error() = 0;
    if (sysconf(91) < 0)
    {
      *__error() = 0;
      v8 = readdir(v5);
      *v20 = v8;
      if (v8)
      {
LABEL_14:
        sub_100115EFC(&__src, v8->d_name);
        memset(&__p, 0, sizeof(__p));
        v26 = 0;
        v27 = 0;
        goto LABEL_15;
      }

      v7 = *__error();
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *(v4 + 56);
      if (!v6)
      {
        v14 = sub_100117568();
        v15 = malloc(v14 + 25);
        *(v4 + 56) = v15;
        if (!v15)
        {
          v7 = 12;
LABEL_31:
          *&__p.__r_.__value_.__l.__data_ = 0uLL;
          if (qword_100192790 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7))
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = v7;
          __p.__r_.__value_.__l.__size_ = &boost::system::detail::system_cat_holder<void>::instance;
          __p.__r_.__value_.__r.__words[2] = v9;
          goto LABEL_9;
        }

        v6 = v15;
        bzero(v15, v14 + 25);
      }

      v7 = readdir_r(v5, v6, v20);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    v8 = *v20;
    if (*v20)
    {
      goto LABEL_14;
    }

    sub_100115FB8((v4 + 48), (v4 + 56), &__p);
    LODWORD(v7) = __p.__r_.__value_.__l.__data_;
    v9 = __p.__r_.__value_.__r.__words[2];
LABEL_9:
    v26 = *(__p.__r_.__value_.__r.__words + 4);
    v27 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
    if ((v9 & 1) != 0 && (v9 != 1 || v7))
    {
      v23 = *a1;
      v18 = v23;
      *a1 = 0;
      sub_1000C200C((v18 + 8), &__p);
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        *v20 = v7;
        *&v20[4] = v26;
        v21 = v27;
        v22 = v9;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::directory_iterator::operator++", &__p, v20);
      }

      *a2 = v7;
      *(a2 + 4) = v26;
      *(a2 + 12) = v27;
      *(a2 + 16) = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      p_p = &v23;
      goto LABEL_42;
    }

LABEL_15:
    v4 = *a1;
    v5 = *(*a1 + 48);
    if (!v5)
    {
      __p.__r_.__value_.__r.__words[0] = *a1;
      *a1 = 0;
      p_p = &__p;
LABEL_42:
      sub_10011761C(p_p);
      goto LABEL_46;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (p_src->__r_.__value_.__s.__data_[0] != 46)
    {
      break;
    }

    v11 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
    v12 = v11->__r_.__value_.__s.__data_[1];
    if (v12)
    {
      if (v12 != 46)
      {
        break;
      }

      v13 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
      if (v13->__r_.__value_.__s.__data_[2])
      {
        break;
      }
    }
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000078D8(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __src;
  }

  sub_100118D9C((v4 + 8));
  sub_10011884C(v4 + 8, &__p);
  *&v17 = 0xFFFF00000000;
  *(&v17 + 1) = 0xFFFF00000000;
  *(v4 + 32) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void sub_100116A90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_100116AC8@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_100115CBC(a2, v4);
}

const char *sub_100116B14(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t sub_100116B7C(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[2];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_100116CF0(a1);
      v7 = v6;
      v16[0] = v5;
      v16[1] = v6;
      v14 = sub_100116E18(a2);
      v15 = v8;
      if (((*(*v7 + 32))(v7, v5, &v14) & 1) == 0)
      {
        return (*(*v15 + 40))(v15, v16, v14);
      }

      return 1;
    }

    v10 = a1[1];
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  if (((*v10)[2])(v10, *a1, a2))
  {
    return 1;
  }

  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = &boost::system::detail::generic_cat_holder<void>::instance;
  }

  v12 = *a2;
  v13 = (*v11)[3];

  return v13();
}

unint64_t sub_100116CF0(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = *a1;
      v2 = a1[1];
      v4 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v3) = *a1;
      v5 = a1[1];
      v6 = *(v5 + 8);
      if (v6 == 0xB2AB117A257EDFD1)
      {
        std::system_category();
      }

      else if (v6 == 0xB2AB117A257EDFD0)
      {
        std::generic_category();
      }

      else if (!atomic_load_explicit((v5 + 16), memory_order_acquire))
      {
        v7 = operator new(0x10uLL);
        v8 = 0;
        *v7 = &off_10018C078;
        v7[1] = v5;
        atomic_compare_exchange_strong((v5 + 16), &v8, v7);
        if (v8)
        {
          (*(*v7 + 8))(v7);
          v4 = 0;
          return v4 | v3;
        }
      }

      v4 = 0;
    }
  }

  else
  {
    std::system_category();
    v4 = 0;
    LODWORD(v3) = 0;
  }

  return v4 | v3;
}

uint64_t sub_100116E18(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 8);
  if (v3 == 0xB2AB117A257EDFD1)
  {
    std::system_category();
    return v2;
  }

  if (v3 != 0xB2AB117A257EDFD0)
  {
    if (!atomic_load_explicit((v1 + 16), memory_order_acquire))
    {
      v5 = operator new(0x10uLL);
      v6 = 0;
      *v5 = &off_10018C078;
      v5[1] = v1;
      atomic_compare_exchange_strong((v1 + 16), &v6, v5);
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  else
  {
LABEL_4:
    std::generic_category();
  }

  return v2;
}

void sub_100116F08(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete(v1);
}

uint64_t sub_100116F58(uint64_t a1)
{
  v3[0] = (*(**(a1 + 8) + 8))(*(a1 + 8));
  v3[1] = v1;
  return sub_100116E18(v3);
}

uint64_t sub_100116FAC(void *a1, uint64_t a2, int *a3)
{
  v6 = *(a3 + 1);
  if (v6 == a1)
  {
    v8 = a1[1];
    v18 = *a3;
    v19 = v8;
    return ((*v8)[2])(v8, a2, &v18);
  }

  explicit = std::generic_category();
  if (v6 == explicit)
  {
    goto LABEL_13;
  }

  if (qword_100192AF8 != 0xB2AB117A257EDFD0)
  {
    if (qword_100192AF8 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(&qword_100192B00, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v9 = 0;
        *explicit = &off_10018C078;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(&qword_100192B00, &v9, explicit);
        if (v9)
        {
          (*(*explicit + 8))(explicit);
          explicit = v9;
        }
      }
    }
  }

  if (v6 == explicit)
  {
LABEL_13:
    v18 = *a3;
    v19 = &boost::system::detail::generic_cat_holder<void>::instance;
    goto LABEL_14;
  }

  v10 = *(a3 + 1);
  v11 = **v10;
  if (v12)
  {
    v13 = v12[1];
    v18 = *a3;
    v19 = v13;
LABEL_14:
    v8 = a1[1];
    return ((*v8)[2])(v8, a2, &v18);
  }

  v15 = (*(*a1 + 24))(a1, a2);
  return *(a3 + 1) == v16 && *a3 == v15;
}

uint64_t sub_1001171B0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  if (v6 == a1)
  {
    v10 = *a2;
    v11 = *(a1 + 8);
    v32 = 0;
    if (v11[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v12 = v10 != 0;
      v13 = v11;
    }

    else
    {
      v12 = ((*v11)[6])(v11, v10);
      v13 = *(a1 + 8);
    }

    v14 = v12 == 0;
    v15 = 2;
    if (!v14)
    {
      v15 = 3;
    }

    LODWORD(v32) = v10;
    v33 = v11;
    v34 = v15;
    return ((*v13)[3])(v13, &v32, a3);
  }

  explicit = std::generic_category();
  v8 = qword_100192AF8;
  if (v6 == explicit)
  {
    goto LABEL_20;
  }

  v9 = explicit;
  if (qword_100192AF8 != 0xB2AB117A257EDFD0)
  {
    if (qword_100192AF8 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(&qword_100192B00, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v16 = 0;
        *explicit = &off_10018C078;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(&qword_100192B00, &v16, explicit);
        if (v16)
        {
          (*(*explicit + 8))(explicit);
          explicit = v16;
        }
      }
    }
  }

  if (v6 == explicit)
  {
    v8 = qword_100192AF8;
LABEL_20:
    v23 = *a2;
    v32 = 0;
    if (v8 >> 1 == 0x595588BD12BF6FE8)
    {
      v24 = v23 != 0;
    }

    else
    {
      v24 = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v23);
    }

    v25 = 2;
    if (v24)
    {
      v25 = 3;
    }

    LODWORD(v32) = v23;
    v33 = &boost::system::detail::generic_cat_holder<void>::instance;
    v34 = v25;
    goto LABEL_36;
  }

  v17 = *(a2 + 1);
  v18 = **v17;
  if (v19)
  {
    v20 = *a2;
    v21 = v19[1];
    v32 = 0;
    if (v21[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v22 = v20 != 0;
    }

    else
    {
      v22 = ((*v21)[6])(v21, v20);
    }

    v31 = 2;
    if (v22)
    {
      v31 = 3;
    }

    LODWORD(v32) = v20;
    v33 = v21;
    v34 = v31;
LABEL_36:
    v13 = *(a1 + 8);
    return ((*v13)[3])(v13, &v32, a3);
  }

  v26 = *(a1 + 8);
  v27 = v26 == &boost::system::detail::generic_cat_holder<void>::instance;
  v28 = v26[1] == qword_100192AF8;
  if (!qword_100192AF8)
  {
    v28 = v27;
  }

  if (!v28)
  {
    return 0;
  }

  v29 = *(*v9 + 40);

  return v29(v9, a2, a3);
}

uint64_t sub_100117568()
{
  if ((atomic_load_explicit(&qword_100192F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100192F68))
  {
    qword_100192F60 = sub_1001175DC();
    __cxa_guard_release(&qword_100192F68);
  }

  return qword_100192F60;
}

uint64_t sub_1001175DC()
{
  *__error() = 0;
  v0 = pathconf("/", 5);
  if (v0 <= 0x400)
  {
    v1 = 1024;
  }

  else
  {
    v1 = v0;
  }

  if (v0 >= 0)
  {
    return v1;
  }

  else
  {
    return 1024;
  }
}

atomic_uint **sub_10011761C(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = sub_100077898(v2);
    operator delete(v3);
  }

  return a1;
}

int *sub_100117660@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_100192790 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_100192790 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v4, v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 5;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 2;
      if (v8 == 11)
      {
        v11 = 8;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 11)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 7;
    }

    else
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_50:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

int *sub_1001178CC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = lstat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_100192790 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_100192790 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::symlink_status", v4, v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 <= 4)
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_57;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    else
    {
      v9 = v23.st_mode & 0xFFF;
      if ((v23.st_mode - 4096) >> 12 > 8)
      {
        v10 = 4;
        if (v8 == 11)
        {
          v11 = 8;
        }

        else
        {
          v11 = 10;
        }

        if (v8 == 11)
        {
          v12 = v23.st_mode & 0xFFF;
        }

        else
        {
          v12 = 0xFFFF;
        }

        v13 = v8 == 9;
      }

      else
      {
        v10 = 5;
        if (v8 == 7)
        {
          v11 = 2;
        }

        else
        {
          v11 = 10;
        }

        if (v8 == 7)
        {
          v12 = v23.st_mode & 0xFFF;
        }

        else
        {
          v12 = 0xFFFF;
        }

        v13 = v8 == 5;
      }
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_57:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

uint64_t sub_100117B48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (a2)
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    if (stat(v6, &v12) < 0)
    {
      v8 = *__error();
      goto LABEL_17;
    }

    st_mode = v12.st_mode;
    if ((v12.st_mode & 0xF000) != 0x4000)
    {
      v8 = 20;
LABEL_17:
      sub_1001155AC(v8, a1, a2, a3, "boost::filesystem::create_directory");
      return 0;
    }
  }

  else
  {
    st_mode = 511;
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (mkdir(v9, st_mode))
  {
    v10 = *__error();
    memset(&v12, 0, 24);
    sub_100117660(a1, &v12, &v13);
    if (v13 != 3)
    {
      sub_100115440(v10, a1, a3, "boost::filesystem::create_directory");
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100117C54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    sub_100118BC4(a1, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000078D8(&__dst, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v28;
    }

    v27 = v29;
    if (*(a1 + 23) < 0)
    {
      sub_1000078D8(&v25, *a1, *(a1 + 8));
    }

    else
    {
      v25 = *a1;
    }

    v6 = sub_1001191A8();
    v7 = sub_100119248();
    v23 = 0uLL;
    v24 = 0;
    sub_10011868C(&v25, __p);
    while (1)
    {
      sub_100118ED4(&v25);
      if (!v8)
      {
LABEL_28:
        v10 = 1;
        goto LABEL_29;
      }

      v9 = HIBYTE(v22);
      if (v22 < 0)
      {
        v9 = __p[1];
      }

      if (v9 && sub_100118BE0(__p, v6) && sub_100118BE0(__p, v7))
      {
        sub_100117660(&v25, &v23, &v20);
        if (v20 == 3)
        {
          goto LABEL_28;
        }

        if (!v20)
        {
          break;
        }
      }

      sub_100119524(&__dst);
      sub_100118D9C(&v25);
      sub_10011868C(&v25, &v18);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v18;
      v22 = v19;
    }

    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v18 = v23;
      v19 = v24;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::create_directories", a1, &v25, &v18);
    }

    v10 = 0;
    *a2 = v23;
    a2[2] = v24;
LABEL_29:
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
      if (!v10)
      {
LABEL_51:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        return v10 & 1;
      }
    }

    else if (!v10)
    {
      goto LABEL_51;
    }

    LOBYTE(v10) = 0;
    while (v27 != v29 || *(&v27 + 1) != *(&v29 + 1))
    {
      sub_10011884C(&v25, &__dst);
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (sub_100118BE0(&__dst, v6))
        {
          if (sub_100118BE0(&__dst, v7))
          {
            LOBYTE(v10) = sub_100117B48(&v25, 0, &v23);
            if ((v24 & 1) != 0 && (v24 != 1 || v23))
            {
              if (!a2)
              {
                v16 = __cxa_allocate_exception(0x30uLL);
                *__p = v23;
                v22 = v24;
                boost::filesystem::filesystem_error::filesystem_error(v16, "boost::filesystem::create_directories", a1, &v25, __p);
              }

              LOBYTE(v10) = 0;
              *a2 = v23;
              a2[2] = v24;
              goto LABEL_51;
            }
          }
        }
      }

      sub_10011928C(&__dst);
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    v14 = __cxa_allocate_exception(0x30uLL);
    v28.__r_.__value_.__r.__words[0] = 0;
    if ((qword_100192AF8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 22))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v28.__r_.__value_.__l.__data_) = 22;
    v28.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v28.__r_.__value_.__r.__words[2] = v15;
    boost::filesystem::filesystem_error::filesystem_error(v14, "boost::filesystem::create_directories", a1, &v28);
  }

  if ((qword_100192AF8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 22))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  LOBYTE(v10) = 0;
  *a2 = 22;
  a2[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a2[2] = v5;
  return v10 & 1;
}

void sub_1001180D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10011818C(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v6) < 0)
  {
    sub_10012797C();
    return 0;
  }

  else if ((v6.st_mode & 0xF000) == 0x4000)
  {
    v8 = 0;
    sub_1001160EC(&v8, v3, 0, a2);
    v7 = 0;
    if (v8)
    {
      v4 = *(v8 + 6) == 0;
    }

    else
    {
      v4 = 1;
    }

    sub_10011761C(&v7);
    sub_10011761C(&v8);
  }

  else
  {
    return v6.st_size == 0;
  }

  return v4;
}

double sub_100118274(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v11 = 0uLL;
  v12 = 0;
  sub_1001178CC(a1, &v11, &v9);
  if (v9 != 1)
  {
    if (v9 == 3)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      if (rmdir(v6))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9)
      {
        if (*(a1 + 23) >= 0)
        {
          v5 = a1;
        }

        else
        {
          v5 = *a1;
        }

        if (!unlink(v5))
        {
          return result;
        }

LABEL_15:
        v7 = *__error();
        if (v7 != 2 && v7 != 20)
        {
          sub_100115440(v7, a1, a2, "boost::filesystem::remove");
        }

        return result;
      }

      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v9 = v11;
        v10 = v12;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove", a1, &v9);
      }

      result = *&v11;
      *a2 = v11;
      a2[2] = v12;
    }
  }

  return result;
}

uint64_t sub_1001183D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return sub_1001183E0(a1, a2);
}

uint64_t sub_1001183E0(uint64_t a1, void *a2)
{
  v22 = 0uLL;
  v23 = 0;
  sub_1001178CC(a1, &v22, &v20);
  result = 0;
  v5 = v20;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v20 = v22;
        v21 = v23;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove_all", a1, &v20);
      }

      *a2 = v22;
      a2[2] = v23;
      return -1;
    }

    if (v20 == 3)
    {
      *&v22 = 0;
      sub_1001160EC(&v22, a1, 0, a2);
      if (a2)
      {
        v6 = a2[2];
        if ((v6 & 1) != 0 && (v6 != 1 || *a2))
        {
          sub_10011761C(&v22);
          return -1;
        }
      }

      *&v20 = 0;
      v7 = v22;
      if (v22)
      {
        v8 = 0;
        v9 = 0;
        while (v7 && *(v7 + 48) || v9 && *(v9 + 48))
        {
          v8 += sub_1001183E0(v7 + 8, a2);
          if (a2 && (v10 = a2[2], (v10 & 1) != 0) && (v10 != 1 || *a2) || (sub_1001165F8(&v22, a2), a2) && (v11 = a2[2], (v11 & 1) != 0) && (v11 != 1 || *a2))
          {
            v12 = 0;
            goto LABEL_29;
          }

          v9 = v20;
          v7 = v22;
          if (v22 == v20)
          {
            break;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v12 = 1;
LABEL_29:
      sub_10011761C(&v20);
      sub_10011761C(&v22);
      if ((v12 & 1) == 0)
      {
        return -1;
      }
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 1)
    {
      goto LABEL_39;
    }

    if (v5 == 3)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (rmdir(v13))
      {
LABEL_36:
        v14 = __error();
        v15 = 0;
        v16 = *v14;
        if (v16 == 2 || v16 == 20)
        {
LABEL_40:
          if (a2)
          {
LABEL_41:
            v17 = a2[2];
            if ((v17 & 1) != 0 && (v17 != 1 || *a2))
            {
              return -1;
            }
          }

          return v15 + v8;
        }

        sub_100115440(v16, a1, a2, "boost::filesystem::remove");
LABEL_39:
        v15 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (*(a1 + 23) >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      if (unlink(v18))
      {
        goto LABEL_36;
      }
    }

    v15 = 1;
    if (a2)
    {
      goto LABEL_41;
    }

    return v15 + v8;
  }

  return result;
}

_BYTE *sub_10011868C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v4 = sub_1001191B4(a1);
  v5 = v2[23];
  if (v5 < 0)
  {
    v6 = v2;
    v2 = *v2;
    v5 = *(v6 + 1);
  }

  return sub_100052DF0(a2, &v2[v5 - v4], &v2[v5], v4);
}

void sub_1001186E4(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    if (a1 == a2)
    {
      if (v2 < 0)
      {
        sub_1000078D8(__p, *a2, v4);
      }

      else
      {
        *__p = *a2;
        v12 = *(a2 + 16);
      }

      sub_1001186E4(a1, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v8 = *a2;
      if ((v2 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (*v9 != 47)
      {
        sub_1001187EC(a1);
        v2 = *(a2 + 23);
        v8 = *a2;
        v4 = *(a2 + 8);
        v3 = *(a2 + 23);
      }

      if (v3 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = v8;
      }

      if (v3 >= 0)
      {
        v4 = v2;
      }

      std::string::append(a1, v10, v4);
    }
  }
}

void sub_1001187D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001187EC(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return 0;
    }

    v2 = a1 + v1;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(a1, 47);
      return v1;
    }

    return 0;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1 + v1;
    goto LABEL_6;
  }

  return v1;
}

void sub_10011884C(uint64_t a1, const std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = a2;
    if (a1 == a2)
    {
      if (v3 < 0)
      {
        sub_1000078D8(__n, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        *__n = *&a2->__r_.__value_.__l.__data_;
        v15 = a2->__r_.__value_.__r.__words[2];
      }

      sub_10011884C(a1, __n);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__n[0]);
      }
    }

    else
    {
      if (v3 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2->__r_.__value_.__r.__words[0];
      }

      __n[0] = 0;
      if (sub_100118A10(v6, size, __n) < size)
      {
LABEL_25:
        std::string::operator=(a1, v5);
        return;
      }

      v16 = 0;
      v7 = *(a1 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v8 = a1;
      }

      sub_100118A10(v8, v7, &v16);
      v9 = __n[0];
      if (__n[0])
      {
        if (__n[0] != v16)
        {
          goto LABEL_25;
        }

        v10 = a1;
        if (*(a1 + 23) < 0)
        {
          v10 = *a1;
        }

        v11 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
        v12 = v5->__r_.__value_.__r.__words[0];
        v13 = v11 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
        if (memcmp(v10, v13, __n[0]))
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v11) = *(&v5->__r_.__value_.__s + 23);
        v12 = v5->__r_.__value_.__r.__words[0];
      }

      if ((v11 & 0x80u) != 0)
      {
        v5 = v12;
      }

      if (v5->__r_.__value_.__s.__data_[v9] != 47)
      {
        sub_1001187EC(a1);
      }

      std::string::append(a1, v5 + v9, size - v9);
    }
  }

  else if (sub_1001191B4(a1))
  {

    std::string::push_back(a1, 47);
  }
}

void sub_1001189F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_100118A10(_BYTE *__s, size_t a2, size_t *a3)
{
  *a3 = 0;
  if (a2 && *__s == 47)
  {
    if (a2 == 1 || __s[1] != 47)
    {
      return 0;
    }

    v4 = a2 - 2;
    if (a2 != 2)
    {
      v5 = __s + 2;
      if (__s[2] == 47)
      {
        return 0;
      }

      v7 = memchr(v5, 47, v4);
      v8 = v7 - v5;
      if (!v7)
      {
        v8 = v4;
      }

      a2 = v8 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

size_t sub_100118AAC@<X0>(size_t result@<X0>, std::string *a2@<X8>)
{
  v2 = result;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2[1].__r_.__value_.__r.__words[0] = result;
  v4 = *(result + 23);
  v5 = *(result + 8);
  if (v4 >= 0)
  {
    v6 = *(result + 23);
  }

  else
  {
    v6 = *(result + 8);
  }

  a2[1].__r_.__value_.__l.__size_ = 0;
  if (v4 < 0)
  {
    if (!v5)
    {
      return result;
    }

    v14.__r_.__value_.__r.__words[0] = 0;
    result = *result;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v14.__r_.__value_.__r.__words[0] = 0;
  }

  result = sub_100118A10(result, v6, &v14);
  v7 = v14.__r_.__value_.__r.__words[0];
  if (v14.__r_.__value_.__r.__words[0])
  {
    goto LABEL_10;
  }

  v8 = result;
  if (result < v6)
  {
    a2[1].__r_.__value_.__l.__size_ = result;
    v7 = 1;
    goto LABEL_13;
  }

  v9 = *(v2 + 23);
  v10 = v9 < 0;
  if (v9 >= 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = *v2;
  }

  if (v10)
  {
    v7 = *(v2 + 8);
  }

  else
  {
    v7 = *(v2 + 23);
  }

  if (!v7)
  {
LABEL_25:
    if (!v7)
    {
      return result;
    }

LABEL_10:
    v8 = 0;
LABEL_13:
    result = std::string::basic_string(&v14, v2, v8, v7, &v15);
    *a2 = v14;
    return result;
  }

  v12 = 0;
  while (*(v11 + v12) != 47)
  {
    if (v7 == ++v12)
    {
      goto LABEL_25;
    }
  }

  if (v12 == -1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 != v12)
  {
    v7 = v13;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100118BC4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = result;
  v2 = *(result + 23);
  if (v2 < 0)
  {
    v2 = *(result + 8);
  }

  a2[4] = v2;
  return result;
}

uint64_t sub_100118BE0(size_t a1, size_t a2)
{
  sub_100118AAC(a1, &v11);
  memset(v10, 0, 24);
  v10[3] = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v10[4] = v4;
  sub_100118AAC(a2, &__p);
  memset(v8, 0, 24);
  v8[3] = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  v8[4] = v5;
  v6 = sub_100118C98(&v11, v10, &__p, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t sub_100118C98(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((sub_100119254(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((sub_100119254(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      sub_10011928C(a1);
      sub_10011928C(a3);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

std::string *sub_100118D9C(std::string *a1)
{
  v2 = sub_100118DF4(a1);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    v4 = a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v4 = a1 + v3;
    v5 = a1;
  }

  std::string::erase(a1, v2, v4 - (v5 + v2));
  return a1;
}

size_t sub_100118DF4(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v17 = 0;
  v3 = sub_100118A10(a1, v2, &v17);
  v4 = v1[23];
  v5 = *v1;
  if (v2 >= v17)
  {
    v6 = v17;
  }

  else
  {
    v6 = v2;
  }

  if (v4 >= 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = *v1;
  }

  v8 = v7 - 1;
  v9 = v2;
  while (v9 > v17)
  {
    v10 = v9 - 1;
    v11 = v8[v9--];
    if (v11 == 47)
    {
      v6 = v10 + 1;
      break;
    }
  }

  if (v6 >= v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = v6;
  }

  if (v4 >= 0)
  {
    v13 = v1;
  }

  else
  {
    v13 = *v1;
  }

  v14 = v13 - 1;
  v15 = v6;
  while (v15 > v17)
  {
    if (v14[v15] != 47)
    {
      return v15;
    }

    if (v3 == --v15)
    {
      if (v2 == v6)
      {
        return v3;
      }

      else
      {
        return v3 + 1;
      }
    }
  }

  if (v2 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

size_t sub_100118ED4(_BYTE *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v3 = sub_100118A10(a1, v2, &v11);
  result = v11;
  v5 = v1[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(v1 + 1);
    if (v3 >= v6)
    {
LABEL_16:
      v10 = *(v1 + 1);
      return result;
    }
  }

  else
  {
    v6 = v1[23];
    if (v3 >= v5)
    {
      return result;
    }
  }

  v7 = v3 + 1;
  if (v6 <= v3 + 1)
  {
    result = v3 + 1;
  }

  else
  {
    result = v6;
  }

  while (v7 < v6)
  {
    v8 = v1;
    if ((v5 & 0x80000000) != 0)
    {
      v8 = *v1;
    }

    v9 = v8[v7++];
    if (v9 != 47)
    {
      result = v7 - 1;
      break;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

_BYTE *sub_100118F88@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v4 = *(v2 + 1);
  }

  v27 = 0;
  result = sub_100118A10(a1, v4, &v27);
  if (result >= v4)
  {
    LOBYTE(v6) = v2[23];
  }

  else
  {
    v6 = v2[23];
    v7 = v2;
    if (v6 < 0)
    {
      v7 = *v2;
    }

    if (v7[v4 - 1] == 47)
    {
      v8 = *v2;
      if (v6 >= 0)
      {
        v8 = v2;
      }

      v9 = v8 - 2;
      v10 = v4;
      while (1)
      {
        v11 = (v10 - 1);
        if (v10 - 1 <= result)
        {
          break;
        }

        v12 = v9[v10--];
        if (v12 != 47)
        {
          if (result != v11)
          {
            goto LABEL_16;
          }

          break;
        }
      }

      v4 = 1;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_16:
  if (v27 == v4)
  {
    result = 0;
    if ((v6 & 0x80) == 0)
    {
LABEL_19:

      return sub_100052DF0(a2, &result[v2], &result[v2 + v4], v4);
    }

LABEL_18:
    v2 = *v2;
    goto LABEL_19;
  }

  v13 = *v2;
  if (v4 >= v27)
  {
    v14 = v27;
  }

  else
  {
    v14 = v4;
  }

  if ((v6 & 0x80u) == 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = *v2;
  }

  v16 = v15 - 1;
  v17 = v4;
  while (v17 > v27)
  {
    v18 = v17 - 1;
    v19 = v16[v17--];
    if (v19 == 47)
    {
      v14 = v18 + 1;
      break;
    }
  }

  v4 -= v14;
  if (v4)
  {
LABEL_47:
    result = v14;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14 <= v27)
  {
    goto LABEL_46;
  }

  v20 = (v14 - 1);
  v21 = (v6 & 0x80u) == 0 ? v2 : *v2;
  if (v20[v21] != 47)
  {
    goto LABEL_46;
  }

  if (v20 >= result)
  {
    v20 = result;
  }

  v22 = v21 - 2;
  v23 = v14;
  while (1)
  {
    v24 = (v23 - 1);
    if (v23 - 1 <= result)
    {
      break;
    }

    v25 = v22[v23--];
    if (v25 != 47)
    {
      goto LABEL_45;
    }
  }

  v24 = v20;
LABEL_45:
  if (v24 == result)
  {
LABEL_46:
    v4 = 0;
    goto LABEL_47;
  }

  if (byte_100192F8F < 0)
  {
    v26 = xmmword_100192F78;

    return sub_1000078D8(a2, v26, *(&v26 + 1));
  }

  else
  {
    *a2 = xmmword_100192F78;
    *(a2 + 16) = unk_100192F88;
  }

  return result;
}

size_t sub_1001191B4(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v10 = 0;
  sub_100118A10(a1, v2, &v10);
  if (v2 >= v10)
  {
    v3 = v10;
  }

  else
  {
    v3 = v2;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  v5 = v4 - 1;
  v6 = v2;
  while (v6 > v10)
  {
    v7 = v6 - 1;
    v8 = v5[v6--];
    if (v8 == 47)
    {
      v3 = v7 + 1;
      return v2 - v3;
    }
  }

  return v2 - v3;
}

uint64_t sub_100119254(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_100119780(a1, v2, v5, v6);
}

void sub_10011928C(std::string *this)
{
  v1 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if (v3 < 0)
  {
    v4 = *(data + 1);
  }

  else
  {
    v4 = data[23];
  }

  v5 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    if (v1->__r_.__value_.__l.__size_)
    {
      goto LABEL_13;
    }
  }

  else if (*(&v1->__r_.__value_.__s + 23))
  {
    goto LABEL_13;
  }

  size = v1[1].__r_.__value_.__l.__size_;
  if (size + 1 == v4)
  {
    v7 = data;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = *data;
    }

    if (v7[size] == 47)
    {
      v1[1].__r_.__value_.__l.__size_ = v4;
      return;
    }
  }

LABEL_13:
  if ((v5 & 0x80000000) != 0)
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v9 = v1[1].__r_.__value_.__l.__size_ + v1->__r_.__value_.__l.__size_;
    v1[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v4)
    {
LABEL_63:
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v9 = v1[1].__r_.__value_.__l.__size_ + v5;
    v1[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v4)
    {
LABEL_15:
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v10 = data;
  if (data[23] < 0)
  {
    v10 = *data;
  }

  if (v10[v9] == 47)
  {
    v24 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v11 = sub_100118A10(data, v4, &v24);
    v9 = *p_size;
    if (*p_size == v11)
    {
      v12 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
      if (v12 < 0)
      {
        if (v1->__r_.__value_.__l.__size_ == v24)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
          goto LABEL_28;
        }
      }

      else if (v24 == v12)
      {
        *(&v1->__r_.__value_.__s + 23) = 1;
LABEL_28:
        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    for (data = v1[1].__r_.__value_.__l.__data_; v4 != v9; *p_size = ++v9)
    {
      v13 = data;
      if (data[23] < 0)
      {
        v13 = *data;
      }

      if (v13[v9] != 47)
      {
        goto LABEL_46;
      }
    }

    v14 = v4 - 1 >= v11 ? v11 : v4 - 1;
    v15 = data[23] >= 0 ? data : *data;
    v16 = v15 - 2;
    v17 = v4;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v11)
      {
        break;
      }

      v19 = v16[v17--];
      if (v19 != 47)
      {
        goto LABEL_45;
      }
    }

    v18 = v14;
LABEL_45:
    v9 = v4;
    if (v18 != v11)
    {
      v1[1].__r_.__value_.__l.__size_ = v4 - 1;
      if ((SHIBYTE(v1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_63;
    }
  }

LABEL_46:
  v20 = data[23];
  if (v20 < 0)
  {
    v21 = *data;
    v22 = *(data + 1);
  }

  else
  {
    v21 = data;
    v22 = data[23];
  }

  if (v22 <= v9)
  {
    goto LABEL_56;
  }

  v23 = v9;
  while (v21[v23] != 47)
  {
    if (v22 == ++v23)
    {
      goto LABEL_56;
    }
  }

  if (v22 == v23 || v23 == -1)
  {
LABEL_56:
    v23 = v4;
  }

  if ((v20 & 0x80000000) != 0)
  {
    data = *data;
  }

  sub_10006B17C(v1, &data[v9], &data[v23], v23 - v9);
}

void sub_100119524(std::string *a1)
{
  v1 = a1;
  data = a1[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = data;
    data = *data;
    v3 = *(v4 + 1);
  }

  v31 = 0;
  v5 = sub_100118A10(data, v3, &v31);
  size = v1[1].__r_.__value_.__l.__size_;
  if (v5 >= v3 || size != v5)
  {
    if (v3 >= 2 && size == v3)
    {
      v9 = v1[1].__r_.__value_.__l.__data_;
      v10 = v3 - 1;
      v11 = v9;
      if (v9[23] < 0)
      {
        v11 = *v9;
      }

      if (v11[v10] == 47)
      {
        if (v10 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = v3 - 1;
        }

        if (v9[23] < 0)
        {
          v9 = *v9;
        }

        v13 = v9 - 2;
        while (1)
        {
          v14 = v3 - 1;
          if (v3 - 1 <= v5)
          {
            break;
          }

          v15 = v13[v3--];
          if (v15 != 47)
          {
            goto LABEL_25;
          }
        }

        v14 = v12;
LABEL_25:
        if (v14 != v5)
        {
          v1[1].__r_.__value_.__l.__size_ = v10;
          if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
          {
            *v1->__r_.__value_.__l.__data_ = 0;
            v1->__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            v1->__r_.__value_.__s.__data_[0] = 0;
            *(&v1->__r_.__value_.__s + 23) = 0;
          }

          return;
        }
      }
    }

    v16 = v31;
    v17 = size + 1;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v31)
      {
        break;
      }

      if (v17 - v5 == 2)
      {
        v1[1].__r_.__value_.__l.__size_ = v5;
        if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v1->__r_.__value_.__s + 23) = 1;
        }

        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }

      v19 = v1[1].__r_.__value_.__l.__data_;
      v20 = v19;
      if (v19[23] < 0)
      {
        v20 = *v19;
      }

      v21 = v20[v17-- - 2];
      if (v21 != 47)
      {
        v22 = *v19;
        if (v19[23] >= 0)
        {
          v22 = v1[1].__r_.__value_.__l.__data_;
        }

        v23 = v18 - 1;
        v24 = v18;
        while (1)
        {
          v25 = v24;
          if (v23 + 1 <= v31)
          {
            break;
          }

          v26 = v22[v23--];
          --v24;
          if (v26 == 47)
          {
            v27 = v23 + 2;
            goto LABEL_47;
          }
        }

        v27 = v31;
LABEL_47:
        v1[1].__r_.__value_.__l.__size_ = v27;
        if (v19[23] < 0)
        {
          v19 = *v19;
        }

        if (v16 <= v25)
        {
          v16 = v25;
        }

        v29 = v18 - v16;
        v28 = &v19[v27];
        v30 = &v19[v18];
        goto LABEL_41;
      }
    }
  }

  v1[1].__r_.__value_.__l.__size_ = 0;
  v28 = v1[1].__r_.__value_.__l.__data_;
  if (v28[23] < 0)
  {
    v28 = *v28;
  }

  v29 = v31;
  v30 = &v28[v31];
LABEL_41:

  sub_10006B17C(v1, v28, v30, v29);
}

uint64_t sub_100119744(uint64_t a1)
{
  if (qword_100192FA8)
  {
    std::locale::~locale(qword_100192FA8);
    operator delete(v2);
  }

  qword_100192FA8 = 0;
  return a1;
}

uint64_t sub_100119780(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t sub_1001197E0()
{
  __cxa_atexit(sub_100119744, &unk_100192F70, &_mh_execute_header);
  sub_100115CBC(&xmmword_100192F78, ".");
  __cxa_atexit(sub_10005D170, &xmmword_100192F78, &_mh_execute_header);
  sub_100115CBC(qword_100192F90, "..");

  return __cxa_atexit(sub_10005D170, qword_100192F90, &_mh_execute_header);
}

void sub_100119980(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 23);
  sub_10002A824();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100119AA0()
{
  sub_10002A16C();
  sub_10002A824();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100119B24()
{
  sub_10002A16C();
  sub_10002A824();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100119C20()
{
  sub_10002A16C();
  sub_10002A824();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100119EB4(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136446210;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[Transform Factory] ERROR: Invalid buffered transform type %{public}s", &v3, 0xCu);
}

void sub_100119F3C(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Transform Factory] ERROR: Transform specification for '%s' could not be created. Ignored.", &v2, 0xCu);
}

void sub_10011AA14(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 231) < 0)
  {
    v2 = *a2;
  }

  sub_10002A824();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10011AAF8(uint8_t *buf, uint64_t **a2, uint64_t ***a3, os_log_t log)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  *buf = 136315138;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "CONFIG UUID: %s", buf, 0xCu);
}

void sub_10011AB50(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136446210;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[RolloverManager] ERROR: Last rollover was partial, but rollover reason from rollover is missing. Using default reason %{public}s", &v3, 0xCu);
}

void sub_10011ABD8(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 231) < 0)
  {
    v2 = *a2;
  }

  sub_10002A824();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10011AC58(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "NEW Rollover Session ID: %s", &v3, 0xCu);
}

void sub_10011AD0C(const char **a1, uint64_t a2, os_log_t log)
{
  v3 = "unknown";
  if (*a1)
  {
    v3 = *a1;
  }

  v4 = (a2 + 32);
  if (*(a2 + 55) < 0)
  {
    v4 = *v4;
  }

  v5 = 136446466;
  v6 = v3;
  v7 = 2082;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[Device Config] ERROR: Failed to load config: error='%{public}s', path='%{public}s'", &v5, 0x16u);
}

void sub_10011AEA0(uint64_t *a1)
{
  sub_10002A1C8(a1, __stack_chk_guard);
  sub_10003C700();
  sub_10003C720(&_mh_execute_header, v1, v2, "[MotionStateResolver] raw-device-orientation: %s %{public}s");
}

void sub_10011AF94(uint64_t *a1)
{
  sub_10002A1C8(a1, __stack_chk_guard);
  sub_10003C700();
  sub_10003C720(&_mh_execute_header, v1, v2, "[MotionStateResolver] device-orientation: %s %{public}s");
}

void sub_10011B088(char a1, uint64_t a2, NSObject *a3)
{
  v3 = "true";
  if ((a1 & 1) == 0)
  {
    v3 = "false";
  }

  v4 = "(baseline)";
  if ((a2 & 1) == 0)
  {
    v4 = "";
  }

  *v5 = 136315394;
  *&v5[4] = v3;
  *&v5[12] = 2082;
  *&v5[14] = v4;
  sub_10003C720(&_mh_execute_header, a2, a3, "[MotionStateResolver] device-orientation-lock: %s %{public}s", *v5, *&v5[8], *&v5[16]);
}

void sub_10011B130(uint64_t *a1)
{
  v1 = sub_10002A1C8(a1, __stack_chk_guard);
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  v7 = 136315138;
  v8 = v6;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] motionState: %s", &v7, 0xCu);
}

void sub_10011B204(unsigned int a1, std::string *this, _BYTE *a3)
{
  std::string::push_back(this, (a1 >> 18) | 0xF0);
  std::string::push_back(this, (a1 >> 12) & 0x3F | 0x80);
  std::string::push_back(this, (a1 >> 6) & 0x3F | 0x80);
  *a3 = a1 & 0x3F | 0x80;
}

uint64_t sub_10011B3A8(unsigned __int8 **a1, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v12 = xmmword_1001409A0;
  do
  {
    v8 = *(&v12 + v7);
    result = sub_100003460(a1);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  return result;
}

void *sub_10011B6CC(void *result)
{
  do
  {
    v1 = result[1];
    if (v1)
    {
      result[1] = v1[2];
      v1[2] = result;
    }

    else
    {
      v1 = result[2];
      *result = 0;
      result[1] = 0;
      result[2] = 0;
    }

    result = v1;
  }

  while (v1);
  return result;
}

void sub_10011B8F8(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v3 = *a2;
  sub_10002A85C();
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[EventStreamingObserver] Adding observer for event '%s' for client %llu", v5, 0x16u);
}

void sub_10011B984(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    v1 = *(a1 + 24);
  }

  v2 = *(a1 + 48);
  sub_10002A85C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[EventStreamingObserver] Destroyed observer for event '%s' for client %llu", v4, 0x16u);
}

void sub_10011BA24(std::__shared_weak_count **a1, uint64_t a2, std::__shared_weak_count **a3, std::__shared_weak_count **a4)
{
  v7 = *a1;
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    sub_10000786C(v8);
  }

  if (*a3)
  {
    sub_10000786C(*a3);
  }

  if (*a4)
  {
    sub_10000786C(*a4);
  }
}

void sub_10011BB64(uint64_t a1, int a2, os_log_t log)
{
  v3 = (*a1 + 16);
  if (*(*a1 + 39) < 0)
  {
    v3 = *v3;
  }

  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[EventBroker] %d subscribers notified of event %s", v4, 0x12u);
}

void sub_10011BC00(uint64_t a1, void *a2, os_log_t log)
{
  if (*(a1 + 47) < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[EventBroker] ERROR: invalid regular expression: %s", &v3, 0xCu);
}

void sub_10011BCAC(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 136315394;
  v5 = a1 + 8;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[KernelEventToJson] Error: Unable to deserialize event %s: %{public}@", &v4, 0x16u);
}

void sub_10011BD3C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MTEventToJson] Setting Message to %s", &v3, 0xCu);
}

void sub_10011BDB8(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MTEventToJson] Converting string %s to double %f", &v3, 0x16u);
}

void sub_10011BE44(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10002A1DC(&_mh_execute_header, a2, a3, "[Config Store] Transaction failed to start; %s", a2);
}

void sub_10011BEE4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10002A1DC(&_mh_execute_header, a2, a3, "[SQL Transaction] Transaction failed to rollback; %s", a2);
}

void sub_10011BF84(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10002A1DC(&_mh_execute_header, a2, a3, "[SQL Transaction] Transaction failed to end; %s", a2);
}

void sub_10011C118(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Platform] ERROR: Failed to retrieve current CPU uptime: %i", v2, 8u);
}

void sub_10011C200()
{
  v0 = __cxa_guard_acquire(&qword_100191D70);
  if (v0)
  {
    sub_10002A874(v0, &unk_100191D30, &_mh_execute_header);

    __cxa_guard_release(&qword_100191D70);
  }
}

void sub_10011C258()
{
  if (__cxa_guard_acquire(&qword_100191DA8))
  {
    off_100191D78 = &off_100191D78;
    off_100191D80 = &off_100191D78;
    qword_100191DA0 = 0;
    qword_100191D98 = 0;
    qword_100191D88 = 0;
    unk_100191D90 = &qword_100191D98;
    __cxa_atexit(sub_1000609DC, &off_100191D78, &_mh_execute_header);

    __cxa_guard_release(&qword_100191DA8);
  }
}

void sub_10011C2D4()
{
  v0 = __cxa_guard_acquire(&qword_100191E30);
  if (v0)
  {
    qword_100191E18 = 0;
    unk_100191E20 = 0;
    qword_100191E28 = 0;
    sub_10002A1F8(v0, &qword_100191E18, &_mh_execute_header);
    __cxa_guard_release(&qword_100191E30);
  }
}

void sub_10011C320()
{
  v0 = __cxa_guard_acquire(&qword_100191DF0);
  if (v0)
  {
    sub_10002A874(v0, &unk_100191DB0, &_mh_execute_header);

    __cxa_guard_release(&qword_100191DF0);
  }
}

void sub_10011C378()
{
  v0 = __cxa_guard_acquire(&qword_100191E10);
  if (v0)
  {
    qword_100191DF8 = 0;
    unk_100191E00 = 0;
    qword_100191E08 = 0;
    sub_10002A1F8(v0, &qword_100191DF8, &_mh_execute_header);

    __cxa_guard_release(&qword_100191E10);
  }
}

void sub_10011C404(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10011C5A4(uint64_t *a1)
{
  v6 = *a1;
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011C688(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[StateCache] Invalidating all cache entries for state: %s", &v3, 0xCu);
}

void sub_10011C710(uint64_t a1, void *a2, os_log_t log)
{
  if (*(a1 + 79) < 0)
  {
    a2 = *a2;
  }

  v3 = 136380675;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error: Path is not a directory or doesn't exist. %{private}s", &v3, 0xCu);
}

void sub_10011C798(uint8_t *buf, uint64_t *a2, void *a3, os_log_t log)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *buf = 136380675;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found config file %{private}s", buf, 0xCu);
}

void sub_10011C8A4()
{
  if (__cxa_guard_acquire(&qword_100192378))
  {
    __cxa_atexit(sub_100079040, &unk_1001922F8, &_mh_execute_header);

    __cxa_guard_release(&qword_100192378);
  }
}

void sub_10011CFC8(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] Failed to set journaling mode[null database]", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D01C(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] Failed to disable legacy alter table[null database]", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D070(uint64_t a1)
{
  v2 = sub_1000805E4(a1);
  sub_1000805B4(v2, v3, v4, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] State database is corrupted! DB Integrity check failed. Status = %{public}d[null database]", v5, 0x12u);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D0CC(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] Failed to retrieve database version query[null database]", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D120(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] Error preparing database version query[null database]", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D174(uint64_t a1)
{
  v2 = sub_1000805E4(a1);
  sub_1000805B4(v2, v3, v4, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] Failed to update schema version to V%{public}d[null database]", v5, 0x12u);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D1D0(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] DATABASE INITIALIZATION: wiping database", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D224(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] Failed to truncate database during clear[null database]", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D278(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] Failed to check database integrity after database clear[null database]", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D2CC(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1000805D8(v3, v7, 4.8751e-34);
  sub_10002A1DC(&_mh_execute_header, v8, v9, "[Sqlite Store %{public}s] ## DATABASE WIPE: Wipe failed", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011D390(os_log_t log)
{
  v1 = 138412290;
  v2 = @"(en)[^/]+";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[WiFiStateRelay] ERROR: Failed to create key on interface pattern for entity: %@ during registration", &v1, 0xCu);
}

void sub_10011D414(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[WiFiStateRelay] ERROR: Failed to create key on interface for entity: %@", &v1, 0xCu);
}

void sub_10011D490(NSObject **a1, mach_error_t a2)
{
  if (sub_1000828D4(a1))
  {
    mach_error_string(a2);
    sub_1000828C8();
    sub_1000828B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_10011D520(NSObject **a1)
{
  if (sub_1000828D4(a1))
  {
    sub_1000828B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_10011D59C(NSObject **a1)
{
  if (sub_1000828D4(a1))
  {
    sub_1000828B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_10011D618(os_log_t *a1)
{
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_100082898(&_mh_execute_header, v1, v2, "[KernelClient] servicePublished no io_service_t", v3, v4, v5, v6, 0);
  }

  sub_10002A8AC(0x2C7u);
}

void sub_10011D6A0(NSObject **a1, mach_error_t a2)
{
  if (sub_100082918(a1))
  {
    mach_error_string(a2);
    sub_1000828C8();
    sub_10002A224(&_mh_execute_header, v3, v4, "[KernelClient] IOServiceOpen failed %{public}s", v5, v6, v7, v8, v9);
  }

  sub_10008290C();
}

void sub_10011D730(NSObject **a1, mach_error_t a2)
{
  if (sub_100082918(a1))
  {
    mach_error_string(a2);
    sub_1000828C8();
    sub_10002A224(&_mh_execute_header, v3, v4, "[KernelClient] _registerSharedDataQueueEventHandler failed %{public}s", v5, v6, v7, v8, v9);
  }

  sub_10008290C();
}

void sub_10011D7C0(os_log_t *a1)
{
  v1 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[KernelClient] Start no io_service_t", v2, 2u);
  }

  sub_10002A8AC(0x2C7u);
}

void sub_10011D854(mach_error_t a1)
{
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_ERROR))
  {
    mach_error_string(a1);
    sub_1000828C8();
    sub_10002A224(&_mh_execute_header, v2, v3, "[KernelClient] _registerSharedDataQueueEventHandler failed %{public}s", v4, v5, v6, v7, v8);
  }

  sub_10008290C();
}

void sub_10011D900()
{
  if (sub_1000828F0(&qword_100192D38))
  {
    sub_100082898(&_mh_execute_header, v0, v1, "[KernelClient] _registerSharedDataQueueEventHandler bad _asyncEventSource", v2, v3, v4, v5, 0);
  }

  sub_10002A8AC(0x2BEu);
}

void sub_10011D988()
{
  if (sub_1000828F0(&qword_100192D38))
  {
    sub_100082898(&_mh_execute_header, v0, v1, "[KernelClient] _registerSharedDataQueueEventHandler bad _responseQueue", v2, v3, v4, v5, 0);
  }

  sub_10002A8AC(0x2BEu);
}

void sub_10011DA10()
{
  if (sub_1000828F0(&qword_100192D38))
  {
    sub_100082898(&_mh_execute_header, v0, v1, "[KernelClient] _registerSharedDataQueueEventHandler bad _queuePort", v2, v3, v4, v5, 0);
  }

  sub_10002A8AC(0x2BEu);
}

void sub_10011DA98(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[KernelClient] IODataQueueMemory malformed\n", buf, 2u);
}

void sub_10011DBE0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[AppUsage] ERROR: Failed to query knowledge store: %@", buf, 0xCu);
}

void sub_10011DC38(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[AppUsage] Stopping iteration with %@ that ends in the future at %@", buf, 0x16u);
}

void sub_10011DCA8(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[AppUsage] Skipping event for %@ due to missing start or end date", buf, 0xCu);
}

void sub_10011DD04(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (invalid magic number) %u", v2, 8u);
}

void sub_10011DD7C(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = -258926936;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (invalid version) %u", v1, 8u);
}

void sub_10011DE00(int a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (fw end offset [%u] > mmap size [%zu])", v3, 0x12u);
}

void sub_10011DEF8(void *a1, NSObject *a2)
{
  v2 = *a1 / 1000000;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "START: %lld", &v3, 0xCu);
}

void sub_10011DF80(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_100089A24(&_mh_execute_header, v3, v4, "LOGHEADER: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011DFD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Sink] ERROR: failed to create CA log file: error %@", &v2, 0xCu);
}

void sub_10011E17C(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_100089A24(&_mh_execute_header, v3, v4, "CDS: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10011E2C8(NSObject *a1)
{
  v2 = 136315138;
  v3 = getenv("USER");
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "ERROR: Unrecognized user: '%s'", &v2, 0xCu);
}

void sub_10011E3C0(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Home directory is not setup. Waiting to see if it gets repaired...", buf, 2u);
}

void sub_10011E4CC(id *a1)
{
  v2 = *a1;
  *a1 = 0;
}

void sub_10011E500(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[TrialStateRelay] Trial: Extension token is null", buf, 2u);
}

void sub_10011E540(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[TrialStateRelay] Trial: sandbox extension token query returned: %@", buf, 0xCu);
}

void sub_10011E750(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[IOReporter] ERROR: Invalid defType: %s", &v2, 0xCu);
}

void sub_10011E8A0()
{
  sub_10009B9E8();
  sub_10009B9DC(v1, v2, 5.7779e-34);
  sub_10002A1DC(&_mh_execute_header, v3, v4, "[TelephonyStateRelay] data subscription context is null, %@", v5);
}

void sub_10011E8E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[TelephonyStateRelay] Received unexpected CT notification %@", &v2, 0xCu);
}

void sub_10011E9BC()
{
  sub_10009B9E8();
  sub_10009B9DC(v1, v2, 5.7779e-34);
  sub_10002A1DC(&_mh_execute_header, v3, v4, "[TelephonyStateRelay], failed to get signal strength info, %@", v5);
}

void sub_10011EA00(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[TelephonyStateRelay] Initial radio state: %d", v3, 8u);
}

void sub_10011EDDC(char a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109376;
  HIDWORD(v3) = a1 & 1;
  LOWORD(v4) = 1024;
  *(&v4 + 2) = *(a2 + 176);
  sub_10009B9F4(&_mh_execute_header, a2, a3, "[TelephonyStateRelay] Handling display status changed callback with status=%{BOOL}d, system=%u", v3, v4);
}

void sub_10011EEC8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[TelephonyStateRelay] Radio state changed to: %d", v2, 8u);
}

void sub_10011EF40(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[TelephonyStateRelay] Decoded an unexpected value for cellHighThroughputState: %d", v3, 8u);
}

void sub_10011EFBC(unsigned __int8 *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  LOWORD(v4) = 1024;
  HIWORD(v4) = a2;
  sub_10009B9F4(&_mh_execute_header, a2, a3, "[TelephonyStateRelay] Changing SatelliteStatus from %u to %u", 67109376, v4);
}

void sub_10011F03C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10011F050(os_log_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[KernelDriverMatch] configureNotificationsForMatchingDict failed", v4, 2u);
  }

  sub_10009BA7C(a2);
}

void sub_10011F0EC(os_log_t *a1)
{
  v1 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[KernelDriverMatch] scanServices failed _devicePort", v2, 2u);
  }
}

BOOL sub_10011F17C(os_log_t *a1, int *a2, int *a3)
{
  v5 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[KernelDriverMatch] scanServices failed", v8, 2u);
  }

  v6 = *a2;
  *a3 = *a2;
  return v6 == 0;
}

void sub_10011F2B0(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[RolloverSessionManager::createAndSaveNewRolloverSession] Created New Rollover Session: %s", &v3, 0xCu);
}

void sub_10011F39C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ModifyEventManager] ERROR: Queried state is not wrapped in an object. Cannot populate event fields without the key for that state.", buf, 2u);
}

void sub_10011F408(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ModifyEventManager] ERROR: Invalid type for event modification: %s", &v2, 0xCu);
}

void sub_10011F4E4()
{
  v0 = __cxa_guard_acquire(&qword_100192C20);
  if (v0)
  {
    sub_10002A874(v0, &unk_1001925C0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C20);
  }
}

void sub_10011F53C()
{
  v0 = __cxa_guard_acquire(&qword_100192C28);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192600, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C28);
  }
}

void sub_10011F594()
{
  v0 = __cxa_guard_acquire(&qword_100192C30);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192640, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C30);
  }
}

void sub_10011F5EC()
{
  v0 = __cxa_guard_acquire(&qword_100192C38);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192680, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C38);
  }
}

void sub_10011F644()
{
  v0 = __cxa_guard_acquire(&qword_100192C40);
  if (v0)
  {
    sub_10002A874(v0, &unk_1001926C0, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C40);
  }
}

void sub_10011F69C()
{
  v0 = __cxa_guard_acquire(&qword_100192C48);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192700, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C48);
  }
}

void sub_10011F6F4()
{
  v0 = __cxa_guard_acquire(&qword_100192C50);
  if (v0)
  {
    sub_10002A874(v0, &unk_100192740, &_mh_execute_header);

    __cxa_guard_release(&qword_100192C50);
  }
}

void sub_10011F7E4(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011F8EC(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011F9F4(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011FAFC(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011FC04(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10012009C(uint64_t a1)
{
  v2 = sub_1000AC634(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_10002A1DC(&_mh_execute_header, v3, v4, "[State Store] Failed to remove transforms states for aggregation period='%s'[null database]", v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100120194(uint64_t a1)
{
  v2 = sub_1000AC634(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_10002A1DC(&_mh_execute_header, v3, v4, "[State Store] Failed to remove transforms metadata for aggregation period='%s'[null database]", v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100120584(uint64_t a1)
{
  v2 = sub_1000AC634(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_10002A1DC(&_mh_execute_header, v3, v4, "[State Store] Failed to insert aggregation session for aggregation period='%s'[null database]", v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100122134(uint64_t **a1, uint64_t *a2)
{
  if (*(*a1 + 23) < 0)
  {
    v2 = **a1;
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_10002A330();
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[State Store] Failed to insert queried_state for stateName='%s' and params='%s'[null database]", v6, 0x16u);
}

void sub_100122438()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8752e-34);
  sub_1000AC644(&_mh_execute_header, "[State Store] Failed to remove queried_states (name='%{public}s'); %s", v3, v4);
}

void sub_100122470(uint64_t **a1)
{
  if (*(*a1 + 23) < 0)
  {
    v1 = **a1;
  }

  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001230D0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[State Store] Failed to remove expired agg_sessions[null database]", buf, 2u);
}

void sub_100123668()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8151e-34);
  sub_1000AC644(&_mh_execute_header, "[State Store] Failed to update unexpired %s rollover session id; %s", v3, v4);
}

void sub_1001236A0(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  sub_10002A1DC(&_mh_execute_header, a2, a3, "[State Store] Failed to update unexpired %s rollover session id[null database]", &v3);
}

void sub_10012371C()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8151e-34);
  sub_1000AC644(&_mh_execute_header, "[State Store] Error preparing database %s update query; %s", v3, v4);
}

void sub_100123754(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  sub_10002A1DC(&_mh_execute_header, a2, a3, "[State Store] Error preparing database %s update query[null database]", &v3);
}

void sub_100123BF8()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8752e-34);
  sub_1000AC644(&_mh_execute_header, "[State Store] Failed to create transaction for writing state for transform %{public}s; %s", v3, v4);
}

void sub_100123C30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    v2 = *v1;
  }

  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100123CB0(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[Sandboxing] failed to resolve temporary directory: %{darwin.errno}d", buf, 8u);
}

void sub_100123CFC(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[Sandboxing] failed to initialize temporary directory: %{darwin.errno}d", buf, 8u);
}

void sub_100123D48(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  v2 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
  {
    v3 = (*(*v1 + 16))(v1);
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[FwConfigWriter] ERROR: failed to delete framework config. Exception: %s", &v4, 0xCu);
  }
}

void sub_100123E20(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = (*(*a2 + 16))(a2);
  v6 = 136315394;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[FwConfigWriter] ERROR: failed to parse external config of kind: %s, Exception: %s", &v6, 0x16u);
}

void sub_10012420C(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[IOReporter] ERROR: Channels Group (%s) not found.", &v3, 0xCu);
}

void sub_100124374(uint64_t a1)
{
  v1 = sub_10002A25C(a1, __stack_chk_guard);
  if (v4 < 0)
  {
    v3 = *v3;
  }

  v5 = (*(v1 + 80) - *(v1 + 72)) >> 3;
  v6 = 136446466;
  v7 = v3;
  v8 = 2048;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}s XPC Server] Setting new client connection handler. %zu active connections", &v6, 0x16u);
}

void sub_10012440C(uint64_t a1)
{
  sub_10002A25C(a1, __stack_chk_guard);
  if (v3 < 0)
  {
    v2 = *v2;
  }

  v4 = 136446210;
  v5 = v2;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[%{public}s XPC Connection] Received xpc object of unexpected type", &v4, 0xCu);
}

void sub_10012448C()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}s XPC Connection] managed connection recieved unknown error: %s", v3, 0x16u);
}

void sub_1001244D0()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8752e-34);
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}s XPC Connection] managed connection recieved connection interrupted: %s", v3, 0x16u);
}

void sub_100124514()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8752e-34);
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}s XPC Connection] managed connection recieved connection invalidated: %s", v3, 0x16u);
}

void sub_100124558(uint64_t a1)
{
  sub_10002A25C(a1, __stack_chk_guard);
  if (v3 < 0)
  {
    v2 = *v2;
  }

  v4 = 136446210;
  v5 = v2;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[%{public}s XPC Server] received xpc object of unexpected type", &v4, 0xCu);
}

void sub_1001245D8()
{
  sub_1000AC660();
  sub_10002A8BC(v0, v1, v2, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}s XPC Server] recieved unknown error: %s", v3, 0x16u);
}

void sub_10012461C()
{
  sub_1000828C8();
  sub_10002A218();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10012469C(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10012470C(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10012477C(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  sub_10002A218();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100124A2C(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  v2 = qword_100192D60;
  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    (*(*v1 + 16))(v1);
    sub_1000828C8();
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[ClientManager] ERROR: set-dev tasking config provided but was not valid; ignoring request: %s", v3, 0xCu);
  }
}

void sub_100125280(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_1000828C8();
  v6 = 2080;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s %s", v5, 0x16u);
}

void sub_100125314()
{
  sub_1000828C8();
  sub_10002A218();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100125384()
{
  sub_1000828C8();
  sub_10002A218();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_100125694(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i64[0];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i64[0] = v2;
  }

  if (v2 == -1)
  {
    return -1;
  }

  v6 = v2;
  sub_100003650(&a1[3].i64[1], &v6);
  result = a1[1].i64[0];
  if (result == 10)
  {
    v5 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v5;
  }

  return result;
}

void sub_1001257D8(unsigned int *a1, NSObject *a2)
{
  sub_1000C1CEC(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  *buf = 136446210;
  v6 = p_p;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ConfigUtils] ERROR: Remove task config from disk: failed (%{public}s)", buf, 0xCu);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100125890(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  sub_10002A218();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

uint64_t sub_100125914(uint64_t a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = sub_100125694(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back((a1 + 80), *a2);
      result = sub_100125694(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

uint64_t sub_100125978(int64x2_t *a1, uint64_t *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v12 = xmmword_1001409A0;
  do
  {
    v8 = *(&v12 + v7);
    result = sub_100125694(a1);
    v10 = *a2;
    if ((*a2 - 48) > 9)
    {
      if ((v10 - 65) >= 6)
      {
        if ((v10 - 97) >= 6)
        {
          v6 = -1;
          goto LABEL_10;
        }

        v11 = -87;
      }

      else
      {
        v11 = -55;
      }
    }

    else
    {
      v11 = -48;
    }

    v6 += (v11 + v10) << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_10:
  *a3 = v6;
  return result;
}

void sub_100125A98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  std::string::push_back((a3 + 80), *(a3 + 16));
  v9 = &a1[a4];
  while (1)
  {
    sub_100125694(a3);
    v10 = *(a3 + 16);
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back((a3 + 80), v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  *(a3 + 104) = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void sub_100125BA0(uint64_t **a1)
{
  if (*(*a1 + 23) < 0)
  {
    v1 = **a1;
  }

  sub_10002A218();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100125ED0(uint64_t a1, NSObject *a2)
{
  v4 = sub_100016734(a1);
  if (*(v4 + 23) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  v6 = sub_10001C33C(a1);
  if (*(v6 + 23) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *v6;
  }

  v8 = 136315394;
  v9 = v5;
  v10 = 2080;
  v11 = v7;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[Transform] transform %s - %s was not initialized when being checked for a budget exceeded", &v8, 0x16u);
}

void sub_100125F9C(char *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2082;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[LocationRelay] Location manager updated authorization for accuracy %f: %{public}s", buf, 0x16u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1001260A4(os_log_t log)
{
  v1 = 136315138;
  v2 = "MarketErrorNoLocation";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[LocationManager] Encountered error while querying market: %s", &v1, 0xCu);
}

void sub_100126128(os_log_t log)
{
  v1 = 136315138;
  v2 = "MarketErrorNoneFound";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[LocationManager] Encountered error while introspecting market: %s", &v1, 0xCu);
}

void sub_1001261AC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[TrialHelper] experiments query returned: %@", buf, 0xCu);
}

void sub_100126204(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[TrialHelper] rollout query returned: %@", buf, 0xCu);
}

void sub_10012625C(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 128) & 1) != 0 && *(a1 + 127) < 0)
  {
    v2 = *a2;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v3, v4, "[NetworkingStateResolver] Initial baseband firmware version: %s", v5);
}

void sub_1001262E4(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] primaryNetworkInterface: %s", v6);
}

void sub_100126354(char *a1)
{
  v1 = *a1;
  sub_1000D38C8();
  sub_1000D38AC(&_mh_execute_header, v2, v3, "[NetworkingStateResolver] wiFiLQM: %d", v4, v5, v6, v7, v8);
}

void sub_1001263C0(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] wiFiRadioTechResult: %s", v6);
}

void sub_100126430(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[WirelessTrialStateRelay] WirelessTrialIdentifier: [NetworkingStateResolver] wirelessTrialIdentifier: %s", v6);
}

void sub_1001264A0(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] cellularRAT: %s", v6);
}

void sub_100126510(char *a1)
{
  v1 = *a1;
  sub_1000D38C8();
  sub_1000D38AC(&_mh_execute_header, v2, v3, "[NetworkingStateResolver] cellularSignalBars: %d", v4, v5, v6, v7, v8);
}

void sub_10012657C(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] subscriberCarrierName: %s", v6);
}

void sub_1001265EC(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] subscriberCarrierBundleVersion: %s", v6);
}

void sub_10012665C(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] subscriberCarrierCountry: %s", v6);
}

void sub_1001266CC(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] servingCarrierName: %s", v6);
}

void sub_10012673C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1000D38C8();
  sub_1000D38AC(&_mh_execute_header, v2, v3, "[NetworkingStateResolver] isDualSim: %{BOOL}d", v4, v5, v6, v7, v8);
}

void sub_1001267A8(uint64_t a1)
{
  sub_1000D38A0(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A26C();
  sub_10002A8F0(&_mh_execute_header, v4, v5, "[NetworkingStateResolver] cellularInternetConnection: %s", v6);
}

void sub_100126818(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000D38C8();
  sub_1000D38AC(&_mh_execute_header, v2, v3, "[NetworkingStateResolver] cellularLQM: %d", v4, v5, v6, v7, v8);
}

void sub_100126884(uint64_t a1, NSObject *a2)
{
  if (*(a1 + 8))
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[NetworkingStateResolver] cellularHighThroughput: %s", &v3, 0xCu);
}

void sub_100126918(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000D38C8();
  sub_1000D38AC(&_mh_execute_header, v2, v3, "[NetworkingStateResolver] radioState: %d", v4, v5, v6, v7, v8);
}

void sub_100126984(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[NetworkingStateResolver] Baseband firmware version changed to %s", &v3, 0xCu);
}

void sub_100126A0C()
{
  if (__cxa_guard_acquire(&qword_100192E20))
  {
    qword_100192E18 = 0;
    __cxa_atexit(sub_100090FEC, &qword_100192E18, &_mh_execute_header);

    __cxa_guard_release(&qword_100192E20);
  }
}

void sub_100126AC0(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136380675;
  *(v3 + 4) = v9;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[DaemonState] fetched gm availability info: %{private}s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_100126B24(uint64_t *a1)
{
  v2 = sub_10002A894(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136380675;
  *(v3 + 4) = v9;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[DaemonState] fetched apple itunes account info: %{private}s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_100126B88()
{
  if (__cxa_guard_acquire(&qword_100192E08))
  {
    byte_100192E28 = 0;
    qword_100192E30 = 0;
    sub_10000298C(&byte_100192E28);
    sub_10000298C(&byte_100192E28);
    __cxa_atexit(sub_10002C5F4, &byte_100192E28, &_mh_execute_header);

    __cxa_guard_release(&qword_100192E08);
  }
}

void sub_100126C28()
{
  if (__cxa_guard_acquire(&qword_100192E10))
  {
    unk_100192E48 = 0;
    xmmword_100192E38 = 0uLL;
    __cxa_atexit(&std::string::~string, &xmmword_100192E38, &_mh_execute_header);

    __cxa_guard_release(&qword_100192E10);
  }
}

void sub_100126CB4(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DaemonState] %s parameters parsed (%lu bytes)", buf, 0x16u);
}

void sub_100126D0C(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = *(*a1 + 16);
  v6 = a2;
  v7 = v5(a1);
  v8 = **a3;
  v9 = 136315394;
  v10 = v7;
  v11 = 2082;
  v12 = v8;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[DaemonState] ERROR: Exception (json: %s) removing parameters for key '%{public}s'", &v9, 0x16u);
}

void sub_100126ED4(uint64_t *a1)
{
  sub_10002A910(a1);
  (*(*v1 + 16))(v1);
  sub_10002A278();
  sub_1000D7F28(&_mh_execute_header, v2, v3, "[LegacyWipe] Failed to remove legacy allowlist %{public}s (boost: %{public}s): ", v4, v5, v6, v7, v8);
}

void sub_100126F70(uint64_t *a1)
{
  sub_10002A910(a1);
  (*(*v1 + 16))(v1);
  sub_10002A278();
  sub_1000D7F28(&_mh_execute_header, v2, v3, "[LegacyWipe] Failed to remove legacy config %{public}s (boost: %{public}s): ", v4, v5, v6, v7, v8);
}

void sub_10012700C(uint64_t *a1)
{
  sub_10002A910(a1);
  (*(*v1 + 16))(v1);
  sub_10002A278();
  sub_1000D7F28(&_mh_execute_header, v2, v3, "[LegacyWipe] Failed to remove_all legacy journal path %{public}s (boost: %{public}s): ", v4, v5, v6, v7, v8);
}

void sub_1001270A8(uint64_t *a1)
{
  sub_10002A910(a1);
  (*(*v1 + 16))(v1);
  sub_10002A278();
  sub_1000D7F28(&_mh_execute_header, v2, v3, "[LegacyWipe] Failed to remove_all legacy markov path %{public}s (boost: %{public}s): ", v4, v5, v6, v7, v8);
}

void sub_100127144(uint64_t *a1)
{
  sub_10002A910(a1);
  (*(*v1 + 16))(v1);
  sub_10002A278();
  sub_1000D7F28(&_mh_execute_header, v2, v3, "[LegacyWipe] Failed to remove legacy budget usage path %{public}s (boost: %{public}s): ", v4, v5, v6, v7, v8);
}

void sub_1001271E0(uint64_t *a1)
{
  sub_10002A910(a1);
  (*(*v1 + 16))(v1);
  sub_10002A278();
  sub_1000D7F28(&_mh_execute_header, v2, v3, "[LegacyWipe] Failed to remove legacy budget usage temp path %{public}s (boost: %{public}s): ", v4, v5, v6, v7, v8);
}

void sub_10012727C()
{
  if (__cxa_guard_acquire(&qword_100192E58))
  {
    unk_100192E80 = 0u;
    xmmword_100192E70 = 0u;
    dword_100192E90 = 1065353216;
    __cxa_atexit(sub_1000D874C, &xmmword_100192E70, &_mh_execute_header);

    __cxa_guard_release(&qword_100192E58);
  }
}

void sub_100127300()
{
  if (__cxa_guard_acquire(&qword_100192E68))
  {
    qword_100192E60 = dispatch_queue_create("com.apple.CoreAnalytics::Tracer", 0);

    __cxa_guard_release(&qword_100192E68);
  }
}

void sub_10012735C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[RTCReporter] Sending payload %@ to RTCReporting.", buf, 0xCu);
}

void sub_1001273B4(uint64_t a1, NSObject *a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v2 = *v2;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[RTCReporter] Creating RTCReporting session for %s service.", &v3, 0xCu);
}

void sub_10012751C(uint64_t a1, NSObject *a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v2 = *v2;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[RTCReporter] Releasing RTCReporter for %s service.", &v3, 0xCu);
}

void sub_1001276F4(const char *a1, NSObject *a2)
{
  if (a1)
  {
    if (a1[23] < 0)
    {
      a1 = *a1;
    }
  }

  else
  {
    a1 = "";
  }

  v2 = 136315394;
  v3 = "isDualSim";
  v4 = 2080;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[CD] GetTelephonyInfo: %s unknown: %s", &v2, 0x16u);
}

void sub_1001278A4(void *a1, uint64_t a2)
{
  __cxa_begin_catch(a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);

  __cxa_end_catch();
}

void sub_100127900(void *a1)
{
  sub_10002A928();
  if (v2 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12) & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = 12;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a1[2] = v3;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

void std::logic_error::~logic_error(std::logic_error *this)
{
  std::logic_error::~logic_error(this);
}

{
  std::logic_error::~logic_error(this);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);
}

{
  std::runtime_error::~runtime_error(this);
}

void std::invalid_argument::~invalid_argument(std::invalid_argument *this)
{
  std::invalid_argument::~invalid_argument(this);
}

{
  std::invalid_argument::~invalid_argument(this);
}

uint64_t std::istream::~istream()
{
  return std::istream::~istream();
}

{
  return std::istream::~istream();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}