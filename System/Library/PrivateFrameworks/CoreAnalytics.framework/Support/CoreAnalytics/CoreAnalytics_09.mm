void sub_1000A69AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A69B8(uint64_t a1)
{
  v2 = sqlite3_exec(*(a1 + 32), "\n      CREATE TABLE rollover_sessions\n      (\n       id STRING PRIMARY KEY NOT NULL,\n       config_uuid STRING,\n       state INTEGER,\n       start STRING,\n       end STRING\n     )\n    ", 0, 0, 0);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (!v3)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121CAC();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = sqlite3_errmsg(*(a1 + 32));
      sub_100121C74(v11, v20);
    }

LABEL_38:

    return 0;
  }

  v5 = sqlite3_exec(v3, "\n      CREATE TABLE rollovers\n      (\n       session_id STRING PRIMARY KEY NOT NULL REFERENCES rollover_sessions(id),\n       step INTEGER,\n       step_updated_at INTEGER,\n       reason STRING,\n       options JSON,\n       retries INTEGER\n     )\n    ", 0, 0, 0);
  v6 = *(a1 + 32);
  if (v5)
  {
    if (!v6)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121D44();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(*(a1 + 32));
      sub_100121D0C(v14, v20);
    }

    goto LABEL_38;
  }

  v7 = sqlite3_exec(v6, "\n      ALTER TABLE transform_states\n\t  ADD COLUMN rollover_session_id STRING REFERENCES rollover_sessions(id)\n\t", 0, 0, 0);
  v8 = *(a1 + 32);
  if (v7)
  {
    if (!v8)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121DDC();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15 = sqlite3_errmsg(*(a1 + 32));
      sub_100121DA4(v15, v20);
    }

    goto LABEL_38;
  }

  v9 = sqlite3_exec(v8, "\n        CREATE TABLE transform_metadata_new\n        (\n           transform_metadata_id INTEGER PRIMARY KEY ASC,\n           transform_type INTEGER,\n           transform_uuid STRING,\n           transform_budget_used INTEGER DEFAULT 0,\n           transform_event_count INTEGER DEFAULT 0,\n           transform_metadata_created_at TEXT DEFAULT (strftime('%s', 'now')),\n           rollover_session_id STRING REFERENCES rollover_sessions(id),\n           agg_session_id INTEGER REFERENCES agg_session(agg_session_id),\n           UNIQUE (transform_uuid, rollover_session_id)\n        )\n        ", 0, 0, 0);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (!v10)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121E74();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v17 = sqlite3_errmsg(*(a1 + 32));
      sub_100121E3C(v17, v20);
    }

    goto LABEL_38;
  }

  v12 = sqlite3_exec(v10, "\n       INSERT INTO transform_metadata_new (transform_metadata_id, transform_type, transform_uuid, transform_budget_used, transform_event_count, transform_metadata_created_at, agg_session_id) SELECT transform_metadata_id, transform_type, transform_uuid, transform_budget_used, transform_event_count, transform_metadata_created_at, agg_session_id\n         FROM transform_metadata;\n       DROP TABLE transform_metadata;\n       ALTER TABLE transform_metadata_new RENAME TO transform_metadata;\n    ", 0, 0, 0);
  v13 = *(a1 + 32);
  if (v12)
  {
    if (!v13)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121F0C();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v18 = sqlite3_errmsg(*(a1 + 32));
      sub_100121ED4(v18, v20);
    }

    goto LABEL_38;
  }

  if (sqlite3_exec(v13, "\n        DROP VIEW transform_metadata_and_states; CREATE VIEW transform_metadata_and_states AS\n           SELECT transform_metadata.*, transform_states.*\n           FROM transform_metadata\n           LEFT JOIN transform_states\n           ON transform_metadata.transform_metadata_id=transform_states.transform_metadata_id\n    \t   AND transform_metadata.rollover_session_id=transform_states.rollover_session_id\n    ", 0, 0, 0))
  {
    if (!*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10012145C();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = sqlite3_errmsg(*(a1 + 32));
      sub_100121424(v19, v20);
    }

    goto LABEL_38;
  }

  return sub_10007F970(a1, 7);
}

void sub_1000A6D84(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A6D90(uint64_t a1)
{
  v2 = sqlite3_exec(*(a1 + 32), "INSERT INTO agg_session(agg_session_period, agg_session_end_boundary) SELECT 0, strftime('%Y-%m-%dT%H:%M:%S', 'now') WHERE NOT EXISTS (SELECT 1 from agg_session LIMIT 1)", 0, 0, 0);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (v3)
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = sqlite3_errmsg(*(a1 + 32));
        sub_100121F6C(v6, v8);
      }

LABEL_5:

      return 0;
    }

    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (sqlite3_exec(v3, "UPDATE transform_metadata SET agg_session_id=(SELECT agg_session_id FROM agg_session WHERE agg_session_period=0 ORDER BY agg_session_start_timestamp DESC LIMIT 1) WHERE agg_session_id IS NULL;", 0, 0, 0))
  {
    if (*(a1 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*(a1 + 32));
        sub_100121F6C(v7, v8);
      }

      goto LABEL_5;
    }

    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_17:
    sub_100121FA4();
    return 0;
  }

  return sub_10007F970(a1, 8);
}

void sub_1000A6F3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A6F48(uint64_t a1)
{
  if (sqlite3_exec(*(a1 + 32), "DROP INDEX IF EXISTS IX_transform_metadata_transform_event_count; DROP INDEX IF EXISTS IX_agg_session_agg_session_end_boundary; DROP INDEX IF EXISTS UIX_queried_states_queried_state_name_queried_state_params; DROP INDEX IF EXISTS index1; DROP INDEX IF EXISTS index3;", 0, 0, 0))
  {
    if (*(a1 + 32))
    {
      v2 = qword_100192D80;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = sqlite3_errmsg(*(a1 + 32));
        sub_100121F6C(v4, &v5);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
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

void sub_1000A706C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A7078(uint64_t a1)
{
  if (sqlite3_exec(*(a1 + 32), "CREATE UNIQUE INDEX UIX_queried_states_queried_state_name_queried_state_params ON queried_states(queried_state_name, queried_state_params);", 0, 0, 0))
  {
    if (*(a1 + 32))
    {
      v2 = qword_100192D80;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = sqlite3_errmsg(*(a1 + 32));
        sub_100121BDC(v4, &v5);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100121C14();
    }

    return 0;
  }

  else
  {

    return sub_10007F970(a1, 10);
  }
}

void sub_1000A719C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A71A8(uint64_t a1)
{
  if (sqlite3_exec(*(a1 + 32), "\n      ALTER TABLE agg_session\n      ADD COLUMN is_active BOOLEAN DEFAULT 1\n    ", 0, 0, 0))
  {
    if (*(a1 + 32))
    {
      v2 = qword_100192D80;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = sqlite3_errmsg(*(a1 + 32));
        sub_100122004(v4, &v5);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012203C();
    }

    return 0;
  }

  else
  {

    return sub_10007F970(a1, 11);
  }
}

void sub_1000A72CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A72D8(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[State Store] DATABASE INITIALIZATION: begin schema migration", &v16, 2u);
  }

  if (!sub_10007F5F4(a1))
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v5, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A5580(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 1)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v6 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v6, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A57B8(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 2)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v7 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v7, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A5B64(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 3)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v8, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A6084(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 4)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v9 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v9, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A6338(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 5)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v10 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v10, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A6668(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 6)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v11 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v11, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A69B8(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 7)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v12 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v12, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A6D90(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) == 8)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) == 0)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v13 = sqlite3_errmsg(*(a1 + 32));
          sub_10012209C(v13, v18);
        }

        goto LABEL_108;
      }

      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (!sub_1000A6F48(a1))
    {
      goto LABEL_48;
    }

    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
  }

  if (sub_10007F5F4(a1) != 9)
  {
LABEL_40:
    if (sub_10007F5F4(a1) != 10)
    {
      return sub_10007F5F4(a1) == 11;
    }

    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100020468(&v16, (a1 + 32));
    if ((v17 & 0x100) != 0)
    {
      if (sub_1000A71A8(a1))
      {
        sub_1000242E4(&v16);
        sub_1000243D8(&v16);
        return sub_10007F5F4(a1) == 11;
      }

      goto LABEL_48;
    }

    if (*(a1 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg(*(a1 + 32));
        sub_10012209C(v15, v18);
      }

LABEL_108:

      goto LABEL_115;
    }

    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v16, (a1 + 32));
  if ((v17 & 0x100) == 0)
  {
    if (*(a1 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*(a1 + 32));
        sub_10012209C(v14, v18);
      }

      goto LABEL_108;
    }

    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

LABEL_114:
    sub_1001220D4();
    goto LABEL_115;
  }

  if (sub_1000A7078(a1))
  {
    sub_1000242E4(&v16);
    sub_1000243D8(&v16);
    goto LABEL_40;
  }

LABEL_48:
  sub_10005D07C(&v16);
LABEL_115:
  sub_1000243D8(&v16);
  return 0;
}

void sub_1000A7AB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000A7B94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100186F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

sqlite3_stmt **sub_1000A7BFC(uint64_t a1)
{
  v1 = **(a1 + 40);
  sub_10007FC24(v1 + 18, 0);
  sub_10007FC24(v1 + 19, 0);
  sub_10007FC24(v1 + 20, 0);
  sub_10007FC24(v1 + 21, 0);
  sub_10007FC24(v1 + 22, 0);
  sub_10007FC24(v1 + 23, 0);
  sub_10007FC24(v1 + 24, 0);
  sub_10007FC24(v1 + 25, 0);
  sub_10007FC24(v1 + 26, 0);
  sub_10007FC24(v1 + 27, 0);

  return sub_10007FC24(v1 + 28, 0);
}

BOOL sub_1000A7CB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT queried_state_name, queried_state_params, queried_state_value, queried_state_last_modified, queried_state_ttl FROM queried_states", 0, v9);
  v3 = *v1;
  v4 = v9[0];
  v9[0] = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(v9, 0);
  v5 = **v1;
  if (!v5)
  {
    if (*(v2 + 32))
    {
      v6 = qword_100192D80;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*(v2 + 32));
        sub_100122308(v7, v9);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122340();
    }
  }

  return v5 != 0;
}

uint64_t sub_1000A7DD0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    if (**(v1 + 16))
    {
      v6 = 1;
      **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
      **(v1 + 32) = sub_10000A5D0(v2, *(v1 + 8), 2);
      **(v1 + 40) = sub_100016AC4(v2, *(v1 + 8), 3);
      **(v1 + 48) = sub_100016AC4(v2, *(v1 + 8), 4);
    }

    else
    {
      v7 = qword_100192D80;
      v6 = 1;
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[State Store] WARNING: Iterate queried states weirdness: got a row but no state name? (iterate-queried-states)", v9, 2u);
      }
    }
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_1001223A0(v5, v9);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001223D8();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_1000A7FB4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*v1 + 160);
  if (*v3 || (sub_10007F8D4(*v1, "DELETE FROM queried_states WHERE queried_state_name=?1;", 1, v18), v4 = v18[0], v18[0] = 0, sub_10007FC24(v3, v4), sub_10007FC24(v18, 0), *(v2 + 160)))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v17, v3);
    v16 = 0;
    v6 = v1[1];
    v5 = (v1 + 1);
    sub_100023980(v2, v3, 1, v6, &v16);
    v7 = sub_100023B68(v2, v3, &v16);
    v8 = *(v2 + 32);
    if (v7 == 101)
    {
      v9 = sqlite3_changes(v8) > 0;
    }

    else
    {
      if (v8)
      {
        v10 = qword_100192D80;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *v5;
          if (*(v11 + 23) < 0)
          {
            v12 = *v11;
          }

          sqlite3_errmsg(*(v2 + 32));
          sub_100122438();
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122470(v5);
      }

      v9 = 0;
    }

    sub_100011B58(&v17);
  }

  else
  {
    if (*(v2 + 32))
    {
      v14 = qword_100192D80;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg(*(v2 + 32));
        sub_1001224F0(v15, v18);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122528();
    }

    return 0;
  }

  return v9;
}

uint64_t sub_1000A81E0(uint64_t a1)
{
  v1 = **(a1 + 40);
  v9 = 0;
  sub_10007F8D4(v1, "DELETE FROM queried_states;", 0, buf);
  v2 = *buf;
  *buf = 0;
  sub_10007FC24(&v9, v2);
  sub_10007FC24(buf, 0);
  if (!v9)
  {
    if (!*(v1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122528();
      }

      goto LABEL_18;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errmsg(*(v1 + 32));
      sub_1001224F0(v6, buf);
    }

    goto LABEL_9;
  }

  v3 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[State Store] Removing all queried states", buf, 2u);
  }

  *buf = 0;
  if (sub_100023B68(v1, &v9, buf) != 101)
  {
    if (!*(v1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001225C0();
      }

      goto LABEL_18;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(*(v1 + 32));
      sub_100122588(v7, buf);
    }

LABEL_9:

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  v4 = 1;
LABEL_19:
  sub_10007FC24(&v9, 0);
  return v4;
}

void sub_1000A83B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A83E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (**v1 || (sub_10007F8D4(*(v1 + 8), "SELECT transform_key, transform_value FROM transform_metadata_and_states WHERE transform_uuid=?1 AND rollover_session_id=?2 ORDER BY transform_state_id", 1, v10), v4 = *v1, v5 = v10[0], v10[0] = 0, sub_10007FC24(v4, v5), sub_10007FC24(v10, 0), v2 = *v1, **v1))
  {
    v6 = 1;
    sub_10000BE00(v3, v2, 1, *(v1 + 16));
    sub_10000BE00(v3, *v1, 2, *(v1 + 24));
  }

  else
  {
    if (*(v3 + 32))
    {
      v8 = qword_100192D80;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(*(v3 + 32));
        sub_1001226B8(v9, v10);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001226F0();
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1000A8534(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_100122750(v5, &v8);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122788();
      }
    }

    return 0;
  }

  return v6;
}

sqlite3_stmt **sub_1000A8664(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = 0xAAAAAAAAAAAAAAAALL;
  sub_100016760(&v3, *v1);
  return sub_100011B58(&v3);
}

BOOL sub_1000A86CC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_type, transform_uuid, transform_budget_used, transform_event_count, transform_metadata_created_at FROM transform_metadata ORDER BY transform_event_count DESC", 0, v9);
  v3 = *v1;
  v4 = v9[0];
  v9[0] = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(v9, 0);
  v5 = **v1;
  if (!v5)
  {
    if (*(v2 + 32))
    {
      v6 = qword_100192D80;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*(v2 + 32));
        sub_100122880(v7, v9);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001228B8();
    }
  }

  return v5 != 0;
}

uint64_t sub_1000A87EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    v6 = sub_10007F898(v2, *(v1 + 8), 0);
    v7 = *(v1 + 8);
    **(v1 + 16) = v6;
    v8 = 1;
    **(v1 + 24) = sub_10000A5D0(v2, v7, 1);
    **(v1 + 32) = sub_100016AC4(v2, *(v1 + 8), 2);
    **(v1 + 40) = sub_100016AC4(v2, *(v1 + 8), 3);
    v9 = sub_100016AC4(v2, *(v1 + 8), 4);
    if ((v9 & 0x8000000000000000) == 0)
    {
      **(v1 + 48) = 1000000 * v9;
    }
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_100122918(v5, &v11);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122950();
      }
    }

    return 0;
  }

  return v8;
}

BOOL sub_1000A8980(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_uuid, transform_budget_used, transform_event_count FROM transform_metadata WHERE rollover_session_id=?1 ORDER BY transform_event_count DESC LIMIT ?2", 0, v10);
  v3 = *v1;
  v4 = v10[0];
  v10[0] = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(v10, 0);
  v5 = **v1;
  if (v5)
  {
    sub_10000BE00(v2, *v1, 1, v1[2]);
    v6 = *v1;
    v10[0] = *v1[3];
    sub_10007F82C(v2, v6, 2, v10);
  }

  else if (*(v2 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(v2 + 32));
      sub_1001229B0(v8, v10);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_1001229E8();
  }

  return v5 != 0;
}

uint64_t sub_1000A8AD4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_100016AC4(v2, *(v1 + 8), 1);
    **(v1 + 32) = sub_100016AC4(v2, *(v1 + 8), 2);
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_100122A48(v5, &v8);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122A80();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_1000A8C2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_uuid, transform_budget_used, transform_event_count  FROM transform_metadata WHERE rollover_session_id=?1 ORDER BY transform_budget_used DESC LIMIT ?2", 0, v10);
  v3 = *v1;
  v4 = v10[0];
  v10[0] = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(v10, 0);
  v5 = **v1;
  if (v5)
  {
    sub_10000BE00(v2, *v1, 1, v1[2]);
    v6 = *v1;
    v10[0] = *v1[3];
    sub_10007F82C(v2, v6, 2, v10);
  }

  else if (*(v2 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(v2 + 32));
      sub_100122AE0(v8, v10);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100122B18();
  }

  return v5 != 0;
}

uint64_t sub_1000A8D80(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_100016AC4(v2, *(v1 + 8), 1);
    **(v1 + 32) = sub_100016AC4(v2, *(v1 + 8), 2);
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_100122B78(v5, &v8);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122BB0();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_1000A8ED8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_metadata.transform_uuid, agg_session.agg_session_start_timestamp FROM transform_metadata JOIN agg_session ON transform_metadata.agg_session_id = agg_session.agg_session_id WHERE agg_session.agg_session_period = ?1 AND rollover_session_id=?2", 1, v10);
  v3 = *v1;
  v4 = v10[0];
  v10[0] = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(v10, 0);
  v5 = *v1;
  v6 = **v1;
  if (v6)
  {
    v10[0] = *v1[2];
    sub_10007F82C(v2, v5, 1, v10);
    sub_10000BE00(v2, *v1, 2, v1[3]);
  }

  else if (*(v2 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(v2 + 32));
      sub_100122C10(v8, v10);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100122C48();
  }

  return v6 != 0;
}

uint64_t sub_1000A902C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    v6 = 1;
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_100122CA8(v5, &v8);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122CE0();
      }
    }

    return 0;
  }

  return v6;
}

BOOL sub_1000A916C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_10007F8D4(v2, "SELECT transform_metadata.transform_uuid, agg_session.agg_session_start_timestamp, agg_session.agg_session_end_boundary FROM transform_metadata INNER JOIN agg_session ON transform_metadata.agg_session_id = agg_session.agg_session_id WHERE rollover_session_id=?1", 1, v9);
  v3 = *v1;
  v4 = v9[0];
  v9[0] = 0;
  sub_10007FC24(v3, v4);
  sub_10007FC24(v9, 0);
  v5 = **v1;
  if (v5)
  {
    sub_10000BE00(v2, *v1, 1, v1[2]);
  }

  else if (*(v2 + 32))
  {
    v6 = qword_100192D80;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(*(v2 + 32));
      sub_100122D40(v7, v9);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100122D78();
  }

  return v5 != 0;
}

uint64_t sub_1000A92A0(uint64_t a1)
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
  }

  else
  {
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v2 + 32));
          sub_100122DD8(v5, &v8);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100122E10();
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1000A93F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v7, (v2 + 32));
  if ((v8 & 0x100) == 0)
  {
    if (*(v2 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = sqlite3_errmsg(*(v2 + 32));
        sub_100122E70(v5, v9);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122EA8();
    }

    goto LABEL_10;
  }

  if (!sub_1000A3838(v2, v1[1], v1[2]) || !sub_1000A3B4C(v2, v1[1], v1[2]))
  {
    sub_10005D07C(&v7);
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_11:
  sub_1000243D8(&v7);
  return v3;
}

uint64_t sub_1000A953C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v7, (v2 + 32));
  if ((v8 & 0x100) == 0)
  {
    if (*(v2 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = sqlite3_errmsg(*(v2 + 32));
        sub_100122F08(v5, v9);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122F40();
    }

    goto LABEL_10;
  }

  if ((sub_1000A3DA0(v2, v1[1]) & 1) == 0 || (sub_1000A3FA8(v2, v1[1]) & 1) == 0)
  {
    sub_10005D07C(&v7);
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_11:
  sub_1000243D8(&v7);
  return v3;
}

uint64_t sub_1000A9680(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v7, (v2 + 32));
  if ((v8 & 0x100) == 0)
  {
    if (*(v2 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = sqlite3_errmsg(*(v2 + 32));
        sub_100122FA0(v5, v9);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122FD8();
    }

    goto LABEL_10;
  }

  if (!sub_1000A41B0(v2, **(v1 + 8), *(v1 + 16)) || !sub_1000A4438(v2, **(v1 + 8), *(v1 + 16)))
  {
    sub_10005D07C(&v7);
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_11:
  sub_1000243D8(&v7);
  return v3;
}

uint64_t sub_1000A97CC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v7, (v2 + 32));
  if ((v8 & 0x100) == 0)
  {
    if (*(v2 + 32))
    {
      v4 = qword_100192D80;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = sqlite3_errmsg(*(v2 + 32));
        sub_100122FA0(v5, v9);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122FD8();
    }

    goto LABEL_10;
  }

  if (!sub_1000A46C0(v2, v1[1]) || !sub_1000A48B8(v2, v1[1]))
  {
    sub_10005D07C(&v7);
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_11:
  sub_1000243D8(&v7);
  return v3;
}

BOOL sub_1000A991C(uint64_t a1)
{
  v1 = 0;
  v2 = **(a1 + 40);
  v16 = xmmword_100140180;
  while (1)
  {
    v3 = *(&v16 + v1);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    sub_10007F8D4(v2, "DELETE FROM agg_session WHERE agg_session_period=?1 AND is_active = 0 AND agg_session_id NOT IN (SELECT agg_session_id FROM agg_session WHERE agg_session_period=?1 ORDER BY agg_session_start_timestamp DESC LIMIT 1);", 1, &v12);
    v4 = v12;
    if (!v12)
    {
      break;
    }

    v11 = 0;
    *buf = v3;
    sub_100023B24(v2, &v12, 1, buf, &v11);
    if (sub_100023B68(v2, &v12, &v11) != 101)
    {
      v5 = qword_100192D80;
      if (*(v2 + 32))
      {
        v6 = qword_100192D80;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = sqlite3_errmsg(*(v2 + 32));
          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[State Store] Failed to remove expired agg_sessions; %s", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001230D0(&v13, v14, v5);
      }
    }

    sub_10007FC24(&v12, 0);
    v1 += 4;
    if (v1 == 16)
    {
      return v4 != 0;
    }
  }

  if (*(v2 + 32))
  {
    v8 = qword_100192D80;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(v2 + 32));
      sub_100123038(v9, buf);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100123070();
  }

  sub_10007FC24(&v12, 0);
  return v4 != 0;
}

void sub_1000A9B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1000A9B68(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v12 = 0;
  sub_10007F8D4(v2, "UPDATE transform_states SET rollover_session_id=?1; UPDATE transform_metadata SET rollover_session_id=?1;", 1, v13);
  v3 = v13[0];
  v13[0] = 0;
  sub_10007FC24(&v12, v3);
  sub_10007FC24(v13, 0);
  if (v12)
  {
    v11 = 0;
    sub_100023980(v2, &v12, 1, v1[1], &v11);
    v4 = sub_100023B68(v2, &v12, &v11);
    v5 = v4 == 101;
    if (v4 != 101)
    {
      if (*(v2 + 32))
      {
        v6 = qword_100192D80;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = sqlite3_errmsg(*(v2 + 32));
          sub_100123110(v7, v13);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100123148();
      }
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      v8 = qword_100192D80;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(*(v2 + 32));
        sub_1001231A8(v9, v13);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001231E0();
    }

    v5 = 0;
  }

  sub_10007FC24(&v12, 0);
  return v5;
}

void sub_1000A9D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1000A9D48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v12 = 0;
  sub_10007F8D4(v2, " UPDATE transform_metadata SET rollover_session_id=?1 WHERE agg_session_id IN (SELECT agg_session_id FROM agg_session WHERE agg_session_period=?2); UPDATE transform_states SET rollover_session_id=?1 WHERE transform_metadata_id IN (SELECT transform_metadata_id FROM transform_metadata WHERE agg_session_id IN (SELECT agg_session_id FROM agg_session WHERE agg_session_period=?2));", 1, v13);
  v3 = v13[0];
  v13[0] = 0;
  sub_10007FC24(&v12, v3);
  sub_10007FC24(v13, 0);
  if (v12)
  {
    v11 = 0;
    sub_100023980(v2, &v12, 1, *(v1 + 8), &v11);
    v13[0] = **(v1 + 16);
    sub_100023B24(v2, &v12, 2, v13, &v11);
    v4 = sub_100023B68(v2, &v12, &v11);
    v5 = v4 == 101;
    if (v4 != 101)
    {
      if (*(v2 + 32))
      {
        v6 = qword_100192D80;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = sqlite3_errmsg(*(v2 + 32));
          sub_100123240(v7, v13);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100123278();
      }
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      v8 = qword_100192D80;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(*(v2 + 32));
        sub_1001231A8(v9, v13);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001231E0();
    }

    v5 = 0;
  }

  sub_10007FC24(&v12, 0);
  return v5;
}

void sub_1000A9F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

sqlite3_stmt **sub_1000A9F58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v14 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_10007F8D4(v4, "SELECT config_uuid FROM rollover_sessions WHERE id = ?1", 0, &v16);
  v5 = v16;
  *&v16 = 0;
  sub_10007FC24(&v14, v5);
  sub_10007FC24(&v16, 0);
  if (v14)
  {
    v13 = 0;
    sub_100023980(v4, &v14, 1, v3[1], &v13);
    if (sub_10000BE48(v4, &v14) == 100)
    {
      v6 = sub_10000A5D0(v4, &v14, 0);
      sub_10000459C(&__str, v6);
      sub_10000459C(__p, ",");
      sub_1000A2200(&__str, __p, &v16);
      sub_1000336AC(a2);
      *a2 = v16;
      a2[2] = v17;
      v17 = 0;
      v16 = 0uLL;
      v15 = &v16;
      sub_10002DE40(&v15);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (*(v4 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(v4 + 32));
      sub_10011F74C(v8, &v16);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_10011F784();
  }

  return sub_10007FC24(&v14, 0);
}

void sub_1000AA130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, sqlite3_stmt *a23)
{
  *(v25 - 64) = v23;
  sub_10002DE40((v25 - 64));
  sub_10007FC24(&a23, 0);
  _Unwind_Resume(a1);
}

void sub_1000AA198(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_1000336AC(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_10002DE40(&v5);
}

BOOL sub_1000AA23C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *v19 = 0u;
  memset(v20, 0, sizeof(v20));
  if (sub_1000A1EE0(v2, v19))
  {
    v18 = 0;
    sub_10007F8D4(v2, "SELECT session_id, step, step_updated_at, reason, options, retries FROM rollovers WHERE session_id = ?1", 0, __dst);
    v3 = __dst[0];
    __dst[0] = 0;
    sub_10007FC24(&v18, v3);
    sub_10007FC24(__dst, 0);
    if (v18)
    {
      v17 = 0;
      sub_100023980(v2, &v18, 1, v19, &v17);
      v4 = sub_10000BE48(v2, &v18);
      v5 = v4 == 100;
      if (v4 == 100)
      {
        v6 = sub_100016AC4(v2, &v18, 1);
        v7 = sub_100016AC4(v2, &v18, 2);
        v8 = sub_10000A5D0(v2, &v18, 3);
        v9 = sub_10000A5D0(v2, &v18, 4);
        v16 = v9;
        v10 = sub_10007F898(v2, &v18, 5);
        if (SBYTE7(v20[0]) < 0)
        {
          sub_1000078D8(__dst, v19[0], v19[1]);
        }

        else
        {
          *__dst = *v19;
          v23 = *&v20[0];
        }

        v24 = v6;
        v25 = v7;
        sub_10000459C(&__p, v8);
        if (v9)
        {
          v31[3] = 0;
          sub_10000ACE4(&v16, v31, 1, v28);
          sub_100004FBC(v31);
        }

        else
        {
          v28[0] = 0;
          v29 = 0;
          sub_10000298C(v28);
          sub_10000298C(v28);
        }

        v30 = v10;
        sub_1000AA630(v1[1], __dst);
        sub_10000298C(v28);
        sub_1000048FC(&v29, v28[0]);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    else
    {
      if (*(v2 + 32))
      {
        v13 = qword_100192D80;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sqlite3_errmsg(*(v2 + 32));
          sub_10011F74C(v14, __dst);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011F784();
      }

      v5 = 0;
    }

    sub_10007FC24(&v18, 0);
  }

  else
  {
    if (*(v2 + 32))
    {
      v11 = qword_100192D80;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_errmsg(*(v2 + 32));
        sub_1001232D8(v12, __dst);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100123310();
    }

    v5 = 0;
  }

  v31[0] = v20 + 1;
  sub_10002DE40(v31);
  if (SBYTE7(v20[0]) < 0)
  {
    operator delete(v19[0]);
  }

  return v5;
}

void sub_1000AA580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, sqlite3_stmt *a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40)
{
  sub_10007FC24(&a12, 0);
  sub_1000885DC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA630(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v5;
  v6 = *(a2 + 64);
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  v10[0] = v6;
  v11 = *(a2 + 9);
  sub_10000298C(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 9) = 0;
  sub_10000298C(v10);
  sub_10000298C(v10);
  v7 = *(a1 + 64);
  *(a1 + 64) = v10[0];
  v10[0] = v7;
  v8 = *(a1 + 72);
  *(a1 + 72) = v11;
  v11 = v8;
  sub_10000298C((a1 + 64));
  sub_10000298C(v10);
  sub_1000048FC(&v11, v10[0]);
  *(a1 + 80) = *(a2 + 20);
  return a1;
}

BOOL sub_1000AA768(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v21 = 0;
  sub_10007F8D4(v2, "SELECT id, config_uuid, state, start, end FROM rollover_sessions WHERE id=?1", 0, &__str);
  v3 = __str.__r_.__value_.__r.__words[0];
  __str.__r_.__value_.__r.__words[0] = 0;
  sub_10007FC24(&v21, v3);
  sub_10007FC24(&__str, 0);
  if (v21)
  {
    v20 = 0;
    sub_100023980(v2, &v21, 1, v1[1], &v20);
    v4 = sub_10000BE48(v2, &v21);
    v5 = v4 == 100;
    if (v4 == 100)
    {
      v6 = sub_10000A5D0(v2, &v21, 0);
      v7 = sub_10000A5D0(v2, &v21, 1);
      v8 = sub_10007F898(v2, &v21, 2);
      v9 = sub_100016AC4(v2, &v21, 3);
      v10 = sub_100016AC4(v2, &v21, 4);
      memset(v19, 170, sizeof(v19));
      sub_10000459C(&__str, v7);
      sub_10000459C(__p, ",");
      sub_1000A2200(&__str, __p, v19);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_10000459C(&__str, v6);
      v24 = 0uLL;
      v25 = 0;
      sub_10009D534(&v24, v19[0], v19[1], 0xAAAAAAAAAAAAAAABLL * ((v19[1] - v19[0]) >> 3));
      *&v26 = v9;
      *(&v26 + 1) = v10;
      v27 = v8;
      v11 = v1[2];
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v12 = *&__str.__r_.__value_.__l.__data_;
      *(v11 + 16) = *(&__str.__r_.__value_.__l + 2);
      *v11 = v12;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      sub_1000336AC(v11 + 24);
      *(v11 + 24) = v24;
      *(v11 + 40) = v25;
      v24 = 0uLL;
      v25 = 0;
      v13 = v27;
      *(v11 + 48) = v26;
      *(v11 + 64) = v13;
      v22 = &v24;
      sub_10002DE40(&v22);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v19;
      sub_10002DE40(&__str);
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      v14 = qword_100192D80;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg(*(v2 + 32));
        sub_10011F74C(v15, &__str);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10011F784();
    }

    v5 = 0;
  }

  sub_10007FC24(&v21, 0);
  return v5;
}

BOOL sub_1000AAADC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v26 = 0;
  sub_10007F8D4(v2, "INSERT OR REPLACE INTO rollover_sessions (id, config_uuid, state, start, end) VALUES (?1,?2,?3,?4,?5)", 1, &v28);
  v3 = v28.__r_.__value_.__r.__words[0];
  v28.__r_.__value_.__r.__words[0] = 0;
  sub_10007FC24(&v26, v3);
  sub_10007FC24(&v28, 0);
  if (v26)
  {
    v4 = v1[1];
    sub_10000459C(__p, ",");
    memset(&v28, 0, sizeof(v28));
    v5 = *(v4 + 24);
    if (*(v4 + 32) != v5)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = v5 + v6;
        v9 = *(v8 + 23);
        if (v9 >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        if (v9 >= 0)
        {
          v11 = *(v8 + 23);
        }

        else
        {
          v11 = *(v8 + 8);
        }

        std::string::append(&v28, v10, v11);
        v5 = *(v4 + 24);
        v12 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 32) - v5) >> 3);
        if (v7 != v12 - 1)
        {
          if ((v25 & 0x80u) == 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if ((v25 & 0x80u) == 0)
          {
            v14 = v25;
          }

          else
          {
            v14 = __p[1];
          }

          std::string::append(&v28, v13, v14);
          v5 = *(v4 + 24);
          v12 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 32) - v5) >> 3);
        }

        ++v7;
        v6 += 24;
      }

      while (v7 < v12);
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = 0;
    sub_100023980(v2, &v26, 1, v1[1], &v23);
    sub_100023980(v2, &v26, 2, &v28, &v23);
    v27[0] = *(v1[1] + 64);
    sub_100023B24(v2, &v26, 3, v27, &v23);
    v27[0] = *(v1[1] + 48);
    sub_100023B24(v2, &v26, 4, v27, &v23);
    v27[0] = *(v1[1] + 56);
    sub_100023B24(v2, &v26, 5, v27, &v23);
    v15 = sub_100023B68(v2, &v26, &v23);
    v16 = *(v2 + 32);
    if (v15 == 101)
    {
      v17 = sqlite3_last_insert_rowid(v16) != 0;
    }

    else
    {
      if (v16)
      {
        v20 = qword_100192D80;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = sqlite3_errmsg(*(v2 + 32));
          sub_100123370(v21, v27);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001233A8();
      }

      v17 = 0;
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      v18 = qword_100192D80;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_errmsg(*(v2 + 32));
        sub_100123408(v19, &v28);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100123440();
    }

    v17 = 0;
  }

  sub_10007FC24(&v26, 0);
  return v17;
}

void sub_1000AAE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, sqlite3_stmt *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_10007FC24(&a17, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AAE84(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v9 = 0;
  sub_10007F8D4(v2, "INSERT OR REPLACE INTO rollovers(session_id, step, step_updated_at, reason, options, retries)VALUES (?1,?2,?3,?4,?5,?6)", 1, __p);
  v3 = __p[0];
  __p[0] = 0;
  sub_10007FC24(&v9, v3);
  sub_10007FC24(__p, 0);
  if (v9)
  {
    v8 = 0;
    sub_100023980(v2, &v9, 1, v1[1], &v8);
    __p[0] = *(v1[1] + 24);
    sub_100023B24(v2, &v9, 2, __p, &v8);
    __p[0] = *(v1[1] + 32);
    sub_100023B24(v2, &v9, 3, __p, &v8);
    sub_100023980(v2, &v9, 4, v1[1] + 40, &v8);
    memset(__p, 170, sizeof(__p));
    v4 = v1[1] + 64;
    sub_100017DF0(__p);
  }

  if (*(v2 + 32))
  {
    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errmsg(*(v2 + 32));
      sub_100123408(v6, __p);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100123440();
  }

  sub_10007FC24(&v9, 0);
  return 0;
}

void sub_1000AB140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, sqlite3_stmt *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10007FC24(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1000AB190(uint64_t a1)
{
  v1 = **(a1 + 40);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *__p = 0u;
  memset(v15, 0, sizeof(v15));
  if (sub_1000A1EE0(v1, __p))
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    sub_10007F8D4(v1, "DELETE FROM rollovers WHERE session_id IN (?1)", 1, &v13);
    if (v13)
    {
      v12 = 0xAAAAAAAAAAAAAAAALL;
      sub_100016760(&v12, &v13);
      v11 = 0;
      sub_100023980(v1, &v13, 1, __p, &v11);
      v2 = sub_100023B68(v1, &v13, &v11);
      v3 = v2 == 101;
      if (v2 != 101)
      {
        if (*(v1 + 32))
        {
          v4 = qword_100192D80;
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v5 = sqlite3_errmsg(*(v1 + 32));
            sub_100123538(v5, v17);
          }
        }

        else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
        {
          sub_100123570();
        }
      }

      sub_100011B58(&v12);
    }

    else
    {
      if (*(v1 + 32))
      {
        v8 = qword_100192D80;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = sqlite3_errmsg(*(v1 + 32));
          sub_1001235D0(v9, v17);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100123608();
      }

      v3 = 0;
    }

    sub_10007FC24(&v13, 0);
  }

  else
  {
    if (*(v1 + 32))
    {
      v6 = qword_100192D80;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*(v1 + 32));
        sub_1001234A0(v7, v17);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001234D8();
    }

    v3 = 0;
  }

  v13 = v15 + 1;
  sub_10002DE40(&v13);
  if (SBYTE7(v15[0]) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1000AB3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, sqlite3_stmt *);
  va_copy(va2, va1);
  v7 = va_arg(va2, sqlite3_stmt *);

  sub_100011B58(va);
  sub_10007FC24(va1, 0);
  sub_1000885DC(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AB444(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v3;
  v53 = v3;
  v51 = v3;
  sub_10000459C(&v51, "transform_states");
  sub_10000459C(&v52 + 8, "transform_metadata");
  v4 = 0;
  while (1)
  {
    memset(v48, 170, 24);
    sub_10000459C(&v46, "UPDATE ");
    v5 = &v51 + v4;
    v6 = *(&v52 + v4 + 7);
    if (v6 >= 0)
    {
      v7 = &v51 + v4;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = v5[23];
    }

    else
    {
      v8 = *(v5 + 1);
    }

    v9 = std::string::append(&v46, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_10000459C(v44, " SET rollover_session_id=?3 WHERE rollover_session_id=?1 AND transform_metadata_id IN (SELECT tm.transform_metadata_id FROM transform_metadata AS tm LEFT JOIN agg_session ON tm.agg_session_id = agg_session.agg_session_id WHERE (agg_session.agg_session_end_boundary > ?2");
    if ((v45 & 0x80u) == 0)
    {
      v11 = v44;
    }

    else
    {
      v11 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v12 = v45;
    }

    else
    {
      v12 = v44[1];
    }

    v13 = std::string::append(&v47, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (*(*v1 + 4) == 1)
    {
      sub_10000459C(&v41, " AND agg_session.agg_session_period != ?4");
      v15 = HIBYTE(v43);
      v17 = v41;
      v16 = v42;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v15 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    if ((v15 & 0x80u) == 0)
    {
      v18 = &v41;
    }

    else
    {
      v18 = v17;
    }

    if ((v15 & 0x80u) == 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    v20 = std::string::append(&v49, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_10000459C(__p, ") AND rollover_session_id=?1)");
    if ((v40 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v40 & 0x80u) == 0)
    {
      v23 = v40;
    }

    else
    {
      v23 = __p[1];
    }

    v24 = std::string::append(&v50, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v48[2] = v24->__r_.__value_.__r.__words[2];
    *v48 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v41);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v47.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v26 = SHIBYTE(v48[2]) >= 0 ? v48 : v48[0];
    sub_10007F8D4(v2, v26, 1, &v47);
    if (!v47.__r_.__value_.__r.__words[0])
    {
      break;
    }

    v46.__r_.__value_.__r.__words[0] = 0;
    sub_100023980(v2, &v47, 1, v1[2], &v46);
    memset(&v50, 170, sizeof(v50));
    v27.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_100024608(v27.__d_.__rep_);
    sub_100023980(v2, &v47, 2, &v50, &v46);
    sub_100023980(v2, &v47, 3, v1[3], &v46);
    if (*(*v1 + 4) == 1)
    {
      v49.__r_.__value_.__r.__words[0] = **v1;
      sub_100023B24(v2, &v47, 4, &v49, &v46);
    }

    if (sub_100023B68(v2, &v47, &v46) != 101)
    {
      v33 = &v51 + v4;
      v34 = qword_100192D80;
      if (*(v2 + 32))
      {
        v35 = qword_100192D80;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          if (v33[23] < 0)
          {
            v36 = *v33;
          }

          sqlite3_errmsg(*(v2 + 32));
          sub_100123668();
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001236A0(v33 + 23, (&v51 + v4), v34);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      goto LABEL_74;
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    sub_10007FC24(&v47, 0);
    if (SHIBYTE(v48[2]) < 0)
    {
      operator delete(v48[0]);
    }

    v4 += 24;
    if (v4 == 48)
    {
      v28 = 1;
      goto LABEL_77;
    }
  }

  v29 = &v51 + v4;
  v30 = qword_100192D80;
  if (*(v2 + 32))
  {
    v31 = qword_100192D80;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      if (v29[23] < 0)
      {
        v32 = *v29;
      }

      sqlite3_errmsg(*(v2 + 32));
      sub_10012371C();
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100123754(v29 + 23, (&v51 + v4), v30);
  }

LABEL_74:
  sub_10007FC24(&v47, 0);
  if (SHIBYTE(v48[2]) < 0)
  {
    operator delete(v48[0]);
  }

  v28 = 0;
LABEL_77:
  for (i = 0; i != -48; i -= 24)
  {
    if (*(&v53 + i + 15) < 0)
    {
      operator delete(*(&v52 + i + 8));
    }
  }

  return v28;
}

void sub_1000AB95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v53 - 153) < 0)
  {
    operator delete(*(v53 - 176));
  }

  sub_10007FC24(&a33, 0);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  v55 = (v53 - 97);
  v56 = -48;
  v57 = (v53 - 97);
  while (1)
  {
    v58 = *v57;
    v57 -= 24;
    if (v58 < 0)
    {
      operator delete(*(v55 - 23));
    }

    v55 = v57;
    v56 += 24;
    if (!v56)
    {
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_1000ABAB4(uint64_t a1)
{
  v1 = **(a1 + 40);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v1, "UPDATE agg_session SET is_active = 0 WHERE agg_session_end_boundary <= ?1", 1, &v11);
  if (v11)
  {
    v10 = 0;
    memset(__p, 170, sizeof(__p));
    v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_100024608(v2.__d_.__rep_);
    sub_100023980(v1, &v11, 1, __p, &v10);
    v3 = sub_100023B68(v1, &v11, &v10);
    v4 = v3 == 101;
    if (v3 != 101)
    {
      if (*(v1 + 32))
      {
        v5 = qword_100192D80;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = sqlite3_errmsg(*(v1 + 32));
          sub_1001237D0(v6, v12);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100123808();
      }
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(v1 + 32))
    {
      v7 = qword_100192D80;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = sqlite3_errmsg(*(v1 + 32));
        sub_100123868(v8, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001238A0();
    }

    v4 = 0;
  }

  sub_10007FC24(&v11, 0);
  return v4;
}

void sub_1000ABC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, sqlite3_stmt *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10007FC24(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1000ABCC0(uint64_t a1)
{
  v1 = **(a1 + 40);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v1, "UPDATE agg_session SET is_active = 0", 1, &v10);
  if (v10)
  {
    v9 = 0;
    v2 = sub_100023B68(v1, &v10, &v9);
    v3 = v2 == 101;
    if (v2 != 101)
    {
      if (*(v1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = sqlite3_errmsg(*(v1 + 32));
          sub_100123900(v5, v11);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100123938();
      }
    }
  }

  else
  {
    if (*(v1 + 32))
    {
      v6 = qword_100192D80;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*(v1 + 32));
        sub_100123998(v7, v11);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001239D0();
    }

    v3 = 0;
  }

  sub_10007FC24(&v10, 0);
  return v3;
}

void sub_1000ABE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1000ABE70(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(v2, "UPDATE agg_session SET is_active = 0 WHERE agg_session_period = ?1", 1, &v11);
  if (v11)
  {
    v12[0] = **(v1 + 8);
    sub_10007F82C(v2, &v11, 1, v12);
    v10 = 0;
    v3 = sub_100023B68(v2, &v11, &v10);
    v4 = v3 == 101;
    if (v3 != 101)
    {
      if (*(v2 + 32))
      {
        v5 = qword_100192D80;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = sqlite3_errmsg(*(v2 + 32));
          sub_100123A30(v6, v12);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100123A68();
      }
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      v7 = qword_100192D80;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = sqlite3_errmsg(*(v2 + 32));
        sub_100123AC8(v8, v12);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100123B00();
    }

    v4 = 0;
  }

  sub_10007FC24(&v11, 0);
  return v4;
}

void sub_1000AC010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10007FC24(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_1000AC040(uint64_t a1)
{
  v1 = **(a1 + 40);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v16, (v1 + 32));
  if ((v17 & 0x100) != 0)
  {
    v2 = 0;
    v18 = xmmword_100140180;
    while (1)
    {
      v3 = *(&v18 + v2);
      v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v5;
      v19 = v5;
      v20 = v5;
      sub_100059918(v4.__d_.__rep_, &v19);
      rep = 0;
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          v12 = v19;
          v13 = v20;
          v14 = v21;
          v15 = v22;
          rep = sub_100059AF8(&v12).__d_.__rep_;
        }

        else if (v3 == 3)
        {
          v12 = v19;
          v13 = v20;
          v14 = v21;
          v15 = v22;
          rep = sub_100059BA0(&v12).__d_.__rep_;
        }
      }

      else if (v3)
      {
        if (v3 == 1)
        {
          v12 = v19;
          v13 = v20;
          v14 = v21;
          v15 = v22;
          rep = sub_100059A28(&v12).__d_.__rep_;
        }
      }

      else
      {
        v12 = v19;
        v13 = v20;
        v14 = v21;
        v15 = v22;
        rep = sub_10005999C(&v12).__d_.__rep_;
      }

      v11 = rep;
      v7 = sub_1000A4D88(v1, v3, &v11);
      if (!v7)
      {
        break;
      }

      v2 += 4;
      if (v2 == 16)
      {
        goto LABEL_23;
      }
    }

    sub_10005D07C(&v16);
  }

  else
  {
    if (*(v1 + 32))
    {
      v8 = qword_100192D80;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(*(v1 + 32));
        sub_100123B60(v9, &v19);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100123B98();
    }

    v7 = 0;
  }

LABEL_23:
  sub_1000243D8(&v16);
  return v7;
}

void sub_1000AC260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000243D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC288(uint64_t a1)
{
  v1 = **(a1 + 40);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v16, (v1 + 32));
  if ((v17 & 0x100) != 0)
  {
    v2 = 0;
    v18 = xmmword_100140180;
    while (1)
    {
      v3 = *(&v18 + v2);
      v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v5;
      v19 = v5;
      v20 = v5;
      sub_100059918(v4.__d_.__rep_, &v19);
      rep = 0;
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          v12 = v19;
          v13 = v20;
          v14 = v21;
          v15 = v22;
          rep = sub_100059AF8(&v12).__d_.__rep_;
        }

        else if (v3 == 3)
        {
          v12 = v19;
          v13 = v20;
          v14 = v21;
          v15 = v22;
          rep = sub_100059BA0(&v12).__d_.__rep_;
        }
      }

      else if (v3)
      {
        if (v3 == 1)
        {
          v12 = v19;
          v13 = v20;
          v14 = v21;
          v15 = v22;
          rep = sub_100059A28(&v12).__d_.__rep_;
        }
      }

      else
      {
        v12 = v19;
        v13 = v20;
        v14 = v21;
        v15 = v22;
        rep = sub_10005999C(&v12).__d_.__rep_;
      }

      v11 = rep;
      if (!sub_1000A4AB0(v1, v3) && !sub_1000A4D88(v1, v3, &v11))
      {
        break;
      }

      v2 += 4;
      if (v2 == 16)
      {
        v7 = 1;
        goto LABEL_24;
      }
    }

    sub_10005D07C(&v16);
  }

  else if (*(v1 + 32))
  {
    v8 = qword_100192D80;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(v1 + 32));
      sub_100123B60(v9, &v19);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100123B98();
  }

  v7 = 0;
LABEL_24:
  sub_1000243D8(&v16);
  return v7;
}

void sub_1000AC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000243D8(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000AC4EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = **(v1 + 8);
  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v12 = v5;
  sub_100059918(v4.__d_.__rep_, &v12);
  rep = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v8 = v12;
      v9 = v13;
      v10 = v14;
      v11 = v15;
      rep = sub_100059AF8(&v8).__d_.__rep_;
    }

    else if (v3 == 3)
    {
      v8 = v12;
      v9 = v13;
      v10 = v14;
      v11 = v15;
      rep = sub_100059BA0(&v8).__d_.__rep_;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v8 = v12;
      v9 = v13;
      v10 = v14;
      v11 = v15;
      rep = sub_100059A28(&v8).__d_.__rep_;
    }
  }

  else
  {
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
    rep = sub_10005999C(&v8).__d_.__rep_;
  }

  *&v12 = rep;
  return sub_1000A4D88(v2, v3, &v12);
}

uint64_t *sub_1000AC634(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

void sub_1000AC644(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void *sub_1000AC66C(void *result, uint64_t a2)
{
  *result = off_100187080;
  result[1] = a2;
  return result;
}

uint64_t sub_1000AC694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = a3;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v6;
  v12[1] = v6;
  sub_10000BD10(a4, off_100182088, v12);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v7;
  v16[1] = v7;
  v8 = sub_10000DEC4(v16, a4);
  sub_10000DCFC(v8);
  if (sub_10000DD7C(v12, v16))
  {
    v9 = *(a1 + 8);
    sub_100048E34(v15);
  }

  if (*sub_1000760D0(v12) != 2)
  {
    v11 = *(a1 + 8);
    sub_100048E34(v15);
  }

  return 1;
}

void sub_1000ACAAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000ACAB8(uint64_t a1)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v2;
  v14[1] = v2;
  sub_10000BD10(a1, off_1001820A8, v14);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v3;
  v12 = v3;
  sub_10000DEC4(&v11, a1);
  sub_10000DCFC(&v11);
  if (sub_10000DD7C(v14, &v11))
  {
    return 0;
  }

  v4 = sub_10000DB44(v14);
  LOBYTE(v11) = -86;
  sub_100032734(v4, &v11);
  if (v11)
  {
    return 0;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  v12 = v6;
  sub_10000BD10(a1, off_1001820B0, &v11);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v7;
  v9[1] = v7;
  sub_10000DEC4(v9, a1);
  sub_10000DCFC(v9);
  if (sub_10000DD7C(&v11, v9) || *sub_1000760D0(&v11) - 5 > 2)
  {
    return 1;
  }

  v8 = sub_10000DB44(&v11);
  LODWORD(v9[0]) = -1431655766;
  sub_100058D88(v8, v9);
  if ((LODWORD(v9[0]) - 1) >= 2)
  {
    return 1;
  }

  else
  {
    return LODWORD(v9[0]);
  }
}

void sub_1000ACC1C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000ACC68();
}

void sub_1000ACCC4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000ACD10();
}

void sub_1000ACD6C()
{
  v0 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[Sandboxing] Entering the sandbox", buf, 2u);
  }

  bzero(buf, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, buf, 0x400uLL))
  {
    v2 = qword_100192D38;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = __error();
      sub_100123CFC(v3, v6, v2);
    }

    exit(1);
  }

  v1 = realpath_DARWIN_EXTSN(buf, 0);
  if (!v1)
  {
    v4 = qword_100192D38;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      sub_100123CB0(v5, v6, v4);
    }

    exit(1);
  }

  free(v1);
}

void sub_1000ACFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000ACFC4()
{
  v0 = sub_10005D1A4();
  if (*(v0 + 23) < 0)
  {
    v0 = *v0;
  }

  result = open(v0, 0x1000000);
  if (result != -1)
  {
    v2 = result;
    if (fcntl(result, 63) != 4)
    {
      fcntl(v2, 64, 4);
    }

    return close(v2);
  }

  return result;
}

void sub_1000AD068()
{
  mach_service = xpc_connection_create_mach_service("com.apple.aggregated.addaily", 0, 0);
  if (mach_service)
  {
    connection = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_1001870B8);
    xpc_connection_resume(connection);
    empty = xpc_dictionary_create_empty();
    v2 = empty;
    if (empty)
    {
      xpc_dictionary_set_int64(empty, "operation", 3);
      xpc_connection_send_message(connection, v2);
    }

    mach_service = connection;
  }
}

uint64_t sub_1000AD128()
{
  if (objc_opt_class())
  {
    v0 = +[MCProfileConnection sharedConnection];
    v1 = [v0 isHealthDataSubmissionAllowed];

    v2 = 1;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_1000AD1E8(uint64_t a1)
{
  memset(&__p, 170, sizeof(__p));
  sub_10005D438(&__p);
  sub_100118274(&__p, 0);
  v2 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_INFO))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v7 = p_p;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[FwConfigWriter] Deleted framework config file at %s", buf, 0xCu);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1000AD2D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000AD3A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000AD3AC()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_1000AD4F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000AD500(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002B200();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000AD580(uint64_t a1)
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

__n128 sub_1000AD67C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001870E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1000AD6B4(uint64_t a1)
{
  memset(&v14, 170, sizeof(v14));
  sub_10005D438(&v14);
  sub_100118274(&v14, 0);
  if (v2)
  {
    v3 = qword_100192D78;
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_INFO))
    {
      v4 = &v14;
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v4 = v14.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[FwConfigWriter] Deleted framework config file at %s before writing a new one.", buf, 0xCu);
    }
  }

  sub_100117660(&v14, 0, buf);
  if (*buf < 2u)
  {
    memset(buf, 170, sizeof(buf));
    sub_1000ADF24(buf, &v14);
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v18 = -1431655766;
    v13 = 0;
    v15 = 0x1F09116A8;
    v5 = (*(**(a1 + 8) + 248))(*(a1 + 8));
    v6 = *(*(a1 + 16) + 16);
    v7 = (v5 + v6);
    v16 = v5 + v6;
    memset(v12, 170, sizeof(v12));
    LODWORD(v21) = 0;
    sub_1000AE318(v12, v7);
    v8 = (4 * v7 + 24);
    std::ostream::sentry::sentry();
    v9 = &buf[*(*buf - 24)];
    if ((v9[32] & 5) == 0)
    {
      v10 = *(v9 + 5);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v29 = v8;
      (*(*v10 + 40))(v20);
      if (v20[16] == -1)
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
      }
    }

    std::ostream::sentry::~sentry();
    LOBYTE(v21) = 10;
    sub_1000AE42C(buf);
    v11 = *(a1 + 8);
    sub_1000AE8A4(v20, **(a1 + 16), *(a1 + 16) + 8);
    *(&v22 + 1) = 0;
    operator new();
  }

  __assert_rtn("operator()", "FrameworkConfigurationWriter.cpp", 62, "boost::filesystem::exists(allowlistPath) == false");
}

void sub_1000ADDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::ostream::sentry::~sentry();
  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  std::ios::~ios();
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000ADED8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***sub_1000ADF24(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1000AE0B8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000AE0F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  memset(__b, 170, sizeof(__b));
  operator new();
}

void sub_1000AE2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  sub_10000786C(v12);
  sub_10000786C(v12);
  _Unwind_Resume(a1);
}

void *sub_1000AE318(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000326F8(result, a2);
  }

  return result;
}

void sub_1000AE410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AE42C(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000AE5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  if (a2)
  {
    std::ostream::sentry::~sentry();
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x1000AE564);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__p, 170, sizeof(__p));
      sub_1000AE7F4(__p, v12, __c);
      v13 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000AE7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000AE7F4(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000173E4();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void *sub_1000AE8A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_1000AE928(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_1000AE928(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10003C250(result, a4);
  }

  return result;
}

void sub_1000AE9C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_10002DE40(va);
  _Unwind_Resume(a1);
}

void *sub_1000AE9E0(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v14[0] = a1;
  v14[1] = &v12;
  v14[2] = &v13;
  v15 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_1000078D8(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = v13 + 24;
      v13 += 24;
      v6 = v9;
    }

    while (v9 != a3);
  }

  LOBYTE(v15) = 1;
  sub_10003C38C(v14);
  return v4;
}

void sub_1000AEAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C38C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1000AEB78(uint64_t a1, uint64_t a2)
{
  *a2 = off_100187158;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

size_t sub_1000AEBB0(uint64_t a1, const char **a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  *(**(a1 + 8) + 4 * *v4) = **(a1 + 24);
  v5 = *a2;
  ++*v4;
  strlen(v5);
  sub_1000AE42C(v3);
  sub_1000AE42C(*(a1 + 32));
  result = strlen(v5);
  **(a1 + 24) += result + 1;
  return result;
}

uint64_t sub_1000AEC7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000AED3C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001871E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1000AED6C(uint64_t a1, const char **a2, const std::string::value_type **a3)
{
  v4 = *a2;
  v5 = *a3;
  v9 = *a3;
  if (!strcmp(v4, "CoreAnalyticsFramework"))
  {
    v6 = *(a1 + 8);

    std::string::assign(v6, v5);
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0;
    sub_10000ACE4(&v9, v10, 1, &v7);
    sub_100004FBC(v10);
    sub_1000AEF40(*(a1 + 16), &v7);
    sub_10000298C(&v7);
    sub_1000048FC(&v8, v7);
  }
}

void sub_1000AEE78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  sub_10002C5F4(&a9);
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(a1);
    v13 = qword_100192D78;
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
    {
      sub_100123E20(v9, v12, v13);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000AEE04);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000AEEF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AEF40(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_10002CB3C(a1);
    sub_10000459C(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use push_back() with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(308, &v11, exception);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    result = sub_100016F28(v3, a2);
  }

  else
  {
    sub_10000FF70(*(v3 + 8), a2);
    result = v4 + 16;
    *(v3 + 8) = v4 + 16;
  }

  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1000AF118(uint64_t a1)
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

void sub_1000AF1B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100187278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000AF25C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

__n128 sub_1000AF3A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_100187320;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000AF3D8(uint64_t a1, const std::string::value_type **a2)
{
  v3 = *a2;
  v4 = **(a1 + 8);
  v5 = **(a1 + 16);
  if (v4 < 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 16) + 8) - v5) >> 3))
  {
    do
    {
      if ((std::string::compare((v5 + 24 * v4), v3) & 0x80000000) == 0)
      {
        break;
      }

      v6 = qword_100192D78;
      if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEBUG))
      {
        v10 = **(a1 + 16) + 24 * **(a1 + 8);
        if (*(v10 + 23) < 0)
        {
          v10 = *v10;
        }

        *buf = 136315138;
        v13 = v10;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[FwConfigWriter] Adding additionally requested event %s to the allowlist.", buf, 0xCu);
      }

      v7 = **(a1 + 16) + 24 * **(a1 + 8);
      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      sub_1000AD500(*(a1 + 24), v7);
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      v4 = *v8 + 1;
      *v8 = v4;
      v5 = *v9;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 3));
  }

  return sub_1000AD500(*(a1 + 24), v3);
}

uint64_t sub_1000AF564(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000AF758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AFA78(_Unwind_Exception *a1)
{
  v8 = v5;

  if ((*(v3 + 24) & 1) != 0 && *(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_1000AFD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000AFDA8(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[WirelessTrialStateRelay] WirelessTrialIdentifier: subscribeToTrial: trialCallbackReceived: %{public}s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained refreshWirelessTrialIdentifier];
}

void sub_1000AFF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AFFF4()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000459C(byte_100192C58, "wirelessTrialIdentifier");
  __cxa_atexit(&std::string::~string, byte_100192C58, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1000B00E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  sub_100043CD8(a1 + 16);
  return a1;
}

void sub_1000B011C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  sub_1000B0B8C(a1 + 16);
  *a1 = 0;
  v3 = IOReportCopyChannelsInCategories();
  if (v3)
  {
    v4 = v3;
    IOReportPrune();
    Subscription = IOReportCreateSubscription();
    if (Subscription)
    {
      v6 = Subscription;
      *(a1 + 8) = IOReportCreateSamples();
      CFRelease(v6);
    }

    CFRelease(v4);
    *a1 = 1;
  }
}

void sub_1000B0234(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = sub_1000B0604;
  v25 = sub_1000B0628;
  memset(v26, 0, sizeof(v26));
  if (*a1)
  {
    Value = CFDictionaryGetValue(*(a1 + 8), @"IOReportChannelGroups");
    if (!Value)
    {
      v14 = qword_100192D40;
      if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
      {
        sub_10012420C(a2, v14);
      }

      goto LABEL_35;
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
    v10 = CFDictionaryGetValue(Value, v9);
    if (v10)
    {
      if (*(a3 + 23) < 0)
      {
        if (!*(a3 + 8))
        {
LABEL_29:
          v15 = 0;
LABEL_30:
          IOReportIterate();
LABEL_31:
          if (v9)
          {
            CFRelease(v9);
          }

          if (v15)
          {
            CFRelease(v15);
          }

LABEL_35:
          v20 = v22;
          a4[1] = 0;
          a4[2] = 0;
          *a4 = 0;
          sub_10009D534(a4, v20[5], v20[6], 0xAAAAAAAAAAAAAAABLL * ((v20[6] - v20[5]) >> 3));
          goto LABEL_36;
        }

        v11 = *a3;
      }

      else
      {
        v11 = a3;
        if (!*(a3 + 23))
        {
          goto LABEL_29;
        }
      }

      v15 = CFStringCreateWithCString(kCFAllocatorDefault, v11, 0x8000100u);
      v16 = CFDictionaryGetValue(v10, @"IOReportChannelGroups");
      if (v16 && CFDictionaryGetValue(v16, v15))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = *a3;
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v28 = 2080;
      v29 = v19;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[IOReporter] ERROR: Could not find Channel Group(%s) - Subgroup (%s) pair.", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v12 = qword_100192D40;
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[IOReporter] ERROR: Channels not yet sampled.", buf, 2u);
    v13 = v22;
  }

  else
  {
    v13 = &v21;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_10009D534(a4, v13[5], v13[6], 0xAAAAAAAAAAAAAAABLL * ((v13[6] - v13[5]) >> 3));
LABEL_36:
  _Block_object_dispose(&v21, 8);
  *buf = v26;
  sub_10002DE40(buf);
}

void sub_1000B05C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  *(v8 - 96) = v7;
  sub_10002DE40((v8 - 96));
  _Unwind_Resume(a1);
}

__n128 sub_1000B0604(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1000B0834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B0858(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

unint64_t sub_1000B08E4(uint64_t a1, const void **a2)
{
  if ((*a1 & 1) == 0)
  {
    v8 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
    {
      sub_100124294(v8);
    }

    goto LABEL_7;
  }

  v4 = sub_10001E21C((a1 + 16), a2);
  if (!v4)
  {
    v5 = *(a1 + 8);
    IOReportIterate();
    v4 = sub_10001E21C((a1 + 16), a2);
    if (!v4)
    {
LABEL_7:
      LOBYTE(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

  v6 = v4[5];
  v7 = v6 & 0xFFFFFFFFFFFFFF00;
  return v7 | v6;
}

void sub_1000B0A04(uint64_t a1)
{
  v1 = *(a1 + 32);
  ChannelName = IOReportChannelGetChannelName();
  sub_1000B0858(ChannelName);
}

void sub_1000B0AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B0B2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001874E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B0B8C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100043D14(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **sub_1000B0BE8(void *a1, const void **a2)
{
  v4 = sub_10001357C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001706C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_1000B0E98(uint64_t a1)
{
  sub_10000298C((a1 + 40));
  sub_1000048FC((a1 + 48), *(a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1000B0F40(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a1[4];
    a1[3] = v3;
    a1[4] = v4;
    if (v5)
    {
      sub_10000786C(v5);
      v3 = a1[3];
    }

    (*(*v3 + 48))(v3);
    v10 = 0;
    v11 = 0;
    v6 = a1[1];
    v12 = 0;
    __p[0] = off_1001875E8;
    __p[1] = a1;
    __p[2] = &v10;
    __p[3] = __p;
    (*(*v6 + 24))(v6, __p);
    sub_1000B1640(__p);
    v7 = v10;
    for (i = v11; v7 != i; v7 = (v7 + 24))
    {
      memset(__p, 170, 24);
      if (*(v7 + 23) < 0)
      {
        sub_1000078D8(__p, *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        __p[2] = *(v7 + 2);
        *__p = v9;
      }

      (*(*a1[1] + 40))(a1[1], __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v10;
    sub_10002DE40(__p);
  }
}

void sub_1000B10F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000B1100(uint64_t a1)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  result = *(a1 + 24);
  if (result)
  {
    v3 = *(*result + 24);

    return v3();
  }

  return result;
}

uint64_t sub_1000B1194(uint64_t a1)
{
  if ((*(**(a1 + 8) + 40))(*(a1 + 8)))
  {
    return 1;
  }

  result = *(a1 + 24);
  if (result)
  {
    v3 = *(*result + 40);

    return v3();
  }

  return result;
}

uint64_t sub_1000B1234(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3) & v2;
  }

  return v2;
}

void *sub_1000B12B4(void *a1)
{
  *a1 = off_100187530;
  v2 = a1[4];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000786C(v3);
  }

  return a1;
}

void sub_1000B130C(void *a1)
{
  *a1 = off_100187530;
  v2 = a1[4];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000786C(v3);
  }

  operator delete();
}

void sub_1000B1440(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100187598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1000B1530(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001875E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000B1560(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 32) == 1)
  {
    v5 = result;
    (*(**(*(result + 8) + 24) + 16))(*(*(result + 8) + 24));
    v6 = *(v5 + 16);
    v7 = v6[1];
    if (v7 >= v6[2])
    {
      result = sub_100054548(v6, a2);
    }

    else
    {
      sub_1000544E8(v6, a2);
      result = v7 + 24;
    }

    v6[1] = result;
  }

  return result;
}

uint64_t sub_1000B15F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B1640(uint64_t a1)
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

BOOL sub_1000B16C0()
{
  result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_100017DF0(&__p);
  }

  return result;
}

BOOL sub_1000B17C0()
{
  result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_INFO);
  if (result)
  {
    sub_100017DF0(&__p);
  }

  return result;
}

BOOL sub_1000B18C0()
{
  result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_INFO);
  if (result)
  {
    sub_100017DF0(&__p);
  }

  return result;
}

BOOL sub_1000B19C0()
{
  result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100017DF0(&__p);
  }

  return result;
}

void sub_1000B1AC8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000B1B98(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B1CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B1CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_100192DA0;
  if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_DEBUG))
  {
    sub_100124304(v5);
  }

  return (*(**(a1 + 96) + 24))(*(a1 + 96), a3);
}

uint64_t sub_1000B1D54(uint64_t a1)
{
  *a1 = off_1001877A0;
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v5 = (a1 + 72);
  sub_1000B1F00(&v5);
  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100044430(a1 + 8);
  return a1;
}

void sub_1000B1E14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000B1E20(uint64_t a1)
{
  *a1 = off_1001877A0;
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v4 = (a1 + 72);
  sub_1000B1F00(&v4);
  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100044430(a1 + 8);
  operator delete();
}

void sub_1000B1EF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000B1F00(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1000B1F84(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

xpc_connection_t *sub_1000B1F84(xpc_connection_t *a1)
{
  if (xpc_get_type(*a1) == &_xpc_type_connection)
  {
    xpc_connection_cancel(*a1);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_1000B205C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000B2130);
  __cxa_rethrow();
}

void sub_1000B209C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000B20F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2130(uint64_t result)
{
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_1000B21F4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void *sub_1000B2234(void *a1, const void **a2, void *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  memset(__p, 170, sizeof(__p));
  v7 = __p;
  sub_100048378(__p, v6 + 4);
  if (SHIBYTE(__p[2]) < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, ".XPC");
  if (SHIBYTE(__p[2]) >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = dispatch_queue_create(v9, 0);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v10;
  if (v10)
  {
    v11 = v10;
    dispatch_retain(v10);
    dispatch_release(v11);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1001877A0;
  v12 = a1 + 4;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(v12, *a2, a2[1]);
  }

  else
  {
    v13 = *a2;
    a1[6] = a2[2];
    *v12 = v13;
  }

  a1[7] = xpc_null_create();
  a1[8] = dispatch_group_create();
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  v14 = a3[1];
  a1[12] = *a3;
  a1[13] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void *sub_1000B2400(void *a1, void *a2)
{
  sub_10000459C(__p, "com.apple.analyticsd");
  sub_1000B2234(a1, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000B248C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B24B0(uint64_t a1)
{
  v1 = a1 + 8;
  v3 = a1;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000B2EB0;
  block[3] = &unk_1001878E8;
  block[4] = v1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_1000B2558(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v4 = a1 + 8;
  v7 = a1;
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000B30A4;
  block[3] = &unk_100187938;
  block[4] = v4;
  block[5] = &v7;
  dispatch_sync(v5, block);
  v6 = *(a1 + 64);
  *a2 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }
}

void sub_1000B2620(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_1000B271C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000B272C(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 56)) == &_xpc_type_connection)
  {
    v2 = qword_100192DA0;
    if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_INFO))
    {
      v3 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v3 = *v3;
      }

      v7 = 136446210;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}s XPC Server] Suspending server", &v7, 0xCu);
    }

    xpc_connection_suspend(*(a1 + 56));
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    while (v5 != v4)
    {
      v6 = *v5++;
      xpc_connection_suspend(v6);
    }
  }
}

void sub_1000B281C(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_1000B2918(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000B2928(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 56)) == &_xpc_type_connection)
  {
    v2 = qword_100192DA0;
    if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_INFO))
    {
      v3 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v3 = *v3;
      }

      v7 = 136446210;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}s XPC Server] Resuming server", &v7, 0xCu);
    }

    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    while (v4 != v5)
    {
      v6 = *v4++;
      xpc_connection_resume(v6);
    }

    xpc_connection_resume(*(a1 + 56));
  }
}

xpc_object_t *sub_1000B2A20(xpc_object_t *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!xpc_equal(*v3, *a3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!xpc_equal(*i, *a3))
        {
          sub_1000B3258(v3++, i);
        }
      }
    }
  }

  return v3;
}

xpc_object_t *sub_1000B2ABC(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_1000B3258(v7++, v4++);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      sub_1000B1F84(--v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_1000B2B4C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1000B2B84(uint64_t a1)
{
  *a1 = off_1001877A0;
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v5 = (a1 + 72);
  sub_1000B1F00(&v5);
  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100044430(a1 + 8);
  return a1;
}

void sub_1000B2C44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000B2C50(uint64_t a1)
{
  *a1 = off_1001877A0;
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v4 = (a1 + 72);
  sub_1000B1F00(&v4);
  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100044430(a1 + 8);
  operator delete();
}

void sub_1000B2D24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000B2DB0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000B2E84);
  __cxa_rethrow();
}

void sub_1000B2DF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000B2E44(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2E84(uint64_t result)
{
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_1000B2EB0(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = (v1 + 32);
  if (*(v1 + 55) < 0)
  {
    v2 = *v2;
  }

  mach_service = xpc_connection_create_mach_service(v2, *(v1 + 24), 1uLL);
  if ((mach_service || (mach_service = xpc_null_create()) != 0) && xpc_get_type(mach_service) == &_xpc_type_connection)
  {
    xpc_retain(mach_service);
    v4 = mach_service;
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = xpc_null_create();
  v6 = *(v1 + 56);
  *(v1 + 56) = v4;
  xpc_release(v6);
  xpc_release(v5);
  xpc_release(mach_service);
  sub_100006028(&v10, (v1 + 8));
  v8 = v10;
  v7 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    sub_10000786C(v7);
  }

  dispatch_group_enter(*(v1 + 64));
  v9 = *(v1 + 56);
  v10 = _NSConcreteStackBlock;
  v11 = 1174405120;
  v12 = sub_1000188D4;
  v13 = &unk_100187908;
  v14 = v1;
  v15 = v8;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_connection_set_event_handler(v9, &v10);
  sub_1000B2928(v1);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1000B304C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B30A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (xpc_get_type(*(*v1 + 56)) == &_xpc_type_connection)
  {
    v3 = *(v2 + 56);

    xpc_connection_cancel(v3);
  }
}

void sub_1000B3100(uint64_t **a1)
{
  v1 = a1;
  sub_1000B272C(**a1);
  operator delete();
}

void sub_1000B31AC(uint64_t **a1)
{
  v1 = a1;
  sub_1000B2928(**a1);
  operator delete();
}

xpc_object_t *sub_1000B3258(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = xpc_null_create();
  v6 = *a2;
  *a2 = v4;
  sub_1000B32E4(a1, &v6);
  sub_1000B1F84(&v6);
  return a1;
}

void sub_1000B32D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000B32E4(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = *a1;
  *a1 = xpc_null_create();
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a1;
  *a1 = v5;
  xpc_release(v6);
  v7 = xpc_null_create();
  v8 = *a2;
  *a2 = v4;
  xpc_release(v8);
  xpc_release(v7);
}

void *sub_1000B3368(void *a1, void *a2)
{
  v4 = xpc_null_create();
  *a1 = v4;
  *a1 = *a2;
  *a2 = v4;
  return a1;
}

uint64_t sub_1000B33A8(uint64_t a1, xpc_object_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_10002C63C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_10008C978(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  sub_100018E14(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  sub_1000B34F0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1000B3560(&v14);
  return v13;
}

void sub_1000B34DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000B3560(va);
  _Unwind_Resume(a1);
}

void sub_1000B34F0(uint64_t a1, xpc_connection_t *a2, xpc_connection_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1000B3368(a4, v7++);
      a4 = v8 + 1;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1000B1F84(v6++);
    }
  }
}

uint64_t sub_1000B3560(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1000B1F84((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000B3674(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v19 = dispatch_queue_create("analyticsd.ClientManagerQueue", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v19;
  if (v19)
  {
    v20 = v19;
    dispatch_retain(v19);
    dispatch_release(v20);
  }

  *a1 = off_100187968;
  *(a1 + 32) = off_1001879C0;
  v22 = *a2;
  v21 = a2[1];
  *(a1 + 40) = off_100187A00;
  *(a1 + 48) = v22;
  *(a1 + 56) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = a3[1];
  *(a1 + 64) = *a3;
  *(a1 + 72) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a4[1];
  *(a1 + 80) = *a4;
  *(a1 + 88) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = a5[1];
  *(a1 + 96) = *a5;
  *(a1 + 104) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = a6[1];
  *(a1 + 112) = *a6;
  *(a1 + 120) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = a7[1];
  *(a1 + 128) = *a7;
  *(a1 + 136) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = a8[1];
  *(a1 + 144) = *a8;
  *(a1 + 152) = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = a9[1];
  *(a1 + 160) = *a9;
  *(a1 + 168) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = a10[1];
  *(a1 + 176) = *a10;
  *(a1 + 184) = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = a11[1];
  *(a1 + 192) = *a11;
  *(a1 + 200) = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  return a1;
}

void sub_1000B3874(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v4[0] = a2;
  v4[1] = a1;
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000BAEFC;
  block[3] = &unk_100187B60;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

void sub_1000B391C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v4[0] = a1;
  v4[1] = a2;
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000BB4F0;
  block[3] = &unk_100187BA0;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

void sub_1000B39C4(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000B3AE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000B3AFC(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, NSObject **a4@<X8>)
{
  v8 = dispatch_group_create();
  *a4 = v8;
  v9 = *a2;
  sub_10000FF70(v10, a3);
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v8);
  }

  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v12, (a1 + 8));
  operator new();
}

void sub_1000B3C90(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

uint64_t sub_1000B3CC8(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3, uint64_t *a4)
{
  if (xpc_get_type(*a2) == &_xpc_type_connection)
  {
    v8 = *a2;
    if (*(a4 + 23) < 0)
    {
      v9 = *a4;
    }

    v21 = xpc_connection_copy_entitlement_value();
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    v7 = applesauce::xpc::dyn_cast_or_default(&v21, 0, v10);
    if (v7)
    {
      goto LABEL_20;
    }

    v11 = qword_100192D60;
    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
    {
      pid = xpc_connection_get_pid(*a2);
      if (*(a4 + 23) >= 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = *a4;
      }

      *buf = 67109378;
      *&buf[4] = pid;
      LOWORD(v23[0]) = 2082;
      *(v23 + 2) = v17;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[ClientManager] ERROR: Client(%u) not entitled for entitlement: %{public}s", buf, 0x12u);
    }

    object = 0xAAAAAAAAAAAAAAAALL;
    reply = xpc_dictionary_create_reply(*a3);
    v13 = reply;
    if (reply)
    {
      object = reply;
    }

    else
    {
      v13 = xpc_null_create();
      object = v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (xpc_get_type(v13) == &_xpc_type_dictionary)
    {
      xpc_retain(v13);
      goto LABEL_15;
    }

LABEL_13:
    object = xpc_null_create();
LABEL_15:
    xpc_release(v13);
    v14 = object;
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v18 = xpc_string_create("not entitled");
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      *buf = &object;
      v23[0] = "error";
      sub_10001B168(buf, &v18, &v19);
      xpc_release(v19);
      v19 = 0;
      xpc_release(v18);
      v18 = 0;
      xpc_connection_send_message(*a2, object);
      v14 = object;
    }

    xpc_release(v14);
LABEL_20:
    xpc_release(v21);
    return v7;
  }

  return 0;
}

void sub_1000B3EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B3F68(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    object = reply;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
    if (!v5)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
LABEL_7:
  xpc_release(v5);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    __p = a3;
    v11 = "aggPeriod";
    sub_100001BC8(&__p, v6);
    if (xpc_get_type(v6[0]) != &_xpc_type_null)
    {
      __p = 0;
      v11 = 0;
      v12 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p);
      }

      sub_100015FF8(&v7);
      if (v8 < 0)
      {
        operator delete(v7);
      }
    }

    xpc_release(v6[0]);
    v6[0] = 0xAAAAAAAAAAAAAAAALL;
    v6[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v6, 0, 0, 0, 2);
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_1001247EC();
  }

  xpc_release(object);
}

void sub_1000B4294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B4358(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    v7 = reply;
  }

  else
  {
    v5 = xpc_null_create();
    v7 = v5;
    if (!v5)
    {
LABEL_5:
      v7 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
LABEL_7:
  xpc_release(v5);
  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    (*(**(a1 + 144) + 56))(*(a1 + 144));
    memset(v6, 170, 24);
    sub_100013CA0(&v8, 0, 0, 0, 2);
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_10012484C();
  }

  xpc_release(v7);
}

void sub_1000B4910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B4A10(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    object = reply;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
    if (!v5)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
LABEL_7:
  xpc_release(v5);
  type = xpc_get_type(object);
  v7 = qword_100192D60;
  if (type == &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ClientManager] MANAGE: list configs for debug purpose", buf, 2u);
    }

    v8[0] = 0xAAAAAAAAAAAAAAAALL;
    v8[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_1000EB160(*(a1 + 128), v8);
    sub_100017DF0(buf);
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_1001248AC();
  }

  xpc_release(object);
}

void sub_1000B4C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B4C8C(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  object = 0xAAAAAAAAAAAAAAAALL;
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v6 = reply;
    object = reply;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
    if (!v6)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v6);
LABEL_7:
  xpc_release(v6);
  type = xpc_get_type(object);
  v8 = qword_100192D60;
  if (type == &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ClientManager] MANAGE: get config-info for debug purpose", buf, 2u);
    }

    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    sub_1000EB27C(*(a1 + 128), &v12);
    if (v12)
    {
      sub_100017DF0(buf);
    }

    v10 = xpc_string_create("No active config");
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    *buf = &object;
    v16 = "error";
    sub_10001B168(buf, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, object);
    sub_10000298C(&v12);
    sub_1000048FC(&v13, v12);
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_10012490C();
  }

  xpc_release(object);
}

void sub_1000B4EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B4F6C(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    xdict = reply;
  }

  else
  {
    v5 = xpc_null_create();
    xdict = v5;
    if (!v5)
    {
LABEL_5:
      xdict = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
LABEL_7:
  xpc_release(v5);
  (*(**(a1 + 144) + 56))(*(a1 + 144));
  v8 = xpc_BOOL_create(1);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = &xdict;
  v7[1] = "commit";
  sub_10001B168(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(remote_connection, xdict);
  xpc_release(xdict);
}

void sub_1000B50AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B50F4(void *a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
  }

  else
  {
    xpc_null_create();
  }

  xpc_release(reply);
  sub_100045094(a1[18]);
  sub_1000EB698(a1[16]);
  v5 = dispatch_group_create();
  v6 = a1[3];
  v7 = dispatch_group_create();
  v8 = v7;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
    if (v8)
    {
      dispatch_retain(v8);
      dispatch_group_enter(v8);
    }

    operator new();
  }

  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v8);
  }

  operator new();
}

void sub_1000B5560(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B55F0(void *a1, uint64_t a2, xpc_object_t *a3)
{
  sub_1000EB4B8(a1[16], 1);
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
  }

  else
  {
    xpc_null_create();
  }

  xpc_release(reply);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v6 = a1[20];
  sub_10000459C(__p, "api");
  v7 = *a3;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000E525C(&object, v13);
  (*(*v6 + 16))(&v17, v6, __p, v13);
  sub_10000298C(v13);
  sub_1000048FC(&v14, v13[0]);
  xpc_release(object);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = a1[3];
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    xpc_null_create();
  }

  xpc_null_create();
  v9 = dispatch_group_create();
  v10 = v9;
  v11 = v17;
  if (v17)
  {
    dispatch_retain(v17);
    dispatch_group_enter(v11);
    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v10);
    }

    xpc_null_create();
    xpc_null_create();
    operator new();
  }

  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v10);
  }

  xpc_null_create();
  xpc_null_create();
  operator new();
}

void sub_1000B5920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B59DC(void *a1, uint64_t a2, xpc_object_t *a3)
{
  sub_1000EB4B8(a1[16], 0);
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
  }

  else
  {
    xpc_null_create();
  }

  xpc_release(reply);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v6 = a1[20];
  sub_10000459C(__p, "api");
  v7 = *a3;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000E525C(&object, v13);
  (*(*v6 + 16))(&v17, v6, __p, v13);
  sub_10000298C(v13);
  sub_1000048FC(&v14, v13[0]);
  xpc_release(object);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = a1[3];
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    xpc_null_create();
  }

  xpc_null_create();
  v9 = dispatch_group_create();
  v10 = v9;
  v11 = v17;
  if (v17)
  {
    dispatch_retain(v17);
    dispatch_group_enter(v11);
    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v10);
    }

    xpc_null_create();
    xpc_null_create();
    operator new();
  }

  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v10);
  }

  xpc_null_create();
  xpc_null_create();
  operator new();
}

void sub_1000B5D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B5DC8(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v7 = reply;
  }

  else
  {
    v7 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v8 = sub_1000BB3C8((a1 + 208), a2);
    if (v8)
    {
      v46 = 0xAAAAAAAAAAAAAAAALL;
      *buf = a3;
      *&buf[8] = "events";
      sub_1000B641C(buf, &v46);
      *buf = v46;
      if (v46)
      {
        xpc_retain(v46);
      }

      else
      {
        *buf = xpc_null_create();
      }

      sub_1000BAA28(&v44, buf, 0);
      xpc_release(*buf);
      sub_1000B64AC(&v46, &v42);
      v9 = v45;
      if (v45 != v43 || (v10 = v42, v44 != v42))
      {
        v36 = v7;
        while (1)
        {
          v41[0] = &v44;
          v41[1] = v9;
          memset(__p, 170, sizeof(__p));
          sub_1000B65A0(v41, object);
          memset(buf, 0, sizeof(buf));
          applesauce::xpc::dyn_cast_or_default();
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          xpc_release(object[0]);
          v12 = v8[8];
          v11 = v8[9];
          if (v12 == v11)
          {
LABEL_49:
            v27 = qword_100192D60;
            if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_DEBUG))
            {
              if (SHIBYTE(__p[2]) >= 0)
              {
                v33 = __p;
              }

              else
              {
                v33 = __p[0];
              }

              v34 = v8[3];
              *buf = 136315394;
              *&buf[4] = v33;
              *&buf[12] = 2048;
              *&buf[14] = v34;
              _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[EventStreamingObserver] creating observer for event '%s' for client id %llu", buf, 0x16u);
            }

            object[0] = 0xAAAAAAAAAAAAAAAALL;
            object[1] = 0xAAAAAAAAAAAAAAAALL;
            sub_100006028(buf, (a1 + 8));
            v28 = *&buf[8];
            if (*&buf[8])
            {
              v29 = *buf;
              atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
              sub_10000786C(v28);
              v37 = 0;
              v38 = 0;
              v30 = std::__shared_weak_count::lock(v28);
              v31 = v30;
              if (v30)
              {
                v32 = v29 + 40;
                if (!v29)
                {
                  v32 = 0;
                }

                atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v32 = 0;
              }

              v37 = v32;
              v38 = v30;
              std::__shared_weak_count::__release_weak(v28);
              if (v31)
              {
                sub_10000786C(v31);
              }
            }

            else
            {
              v37 = 0;
              v38 = 0;
            }

            sub_100049FAC(&v37, __p, v8 + 3);
          }

          v13 = 0;
          do
          {
            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v16 = sub_10004A3E8(v15);
            v17 = *(v16 + 23);
            if (v17 >= 0)
            {
              v18 = *(v16 + 23);
            }

            else
            {
              v18 = v16[1];
            }

            v19 = HIBYTE(__p[2]);
            if (SHIBYTE(__p[2]) < 0)
            {
              v19 = __p[1];
            }

            if (v18 != v19)
            {
              goto LABEL_34;
            }

            if (v17 < 0)
            {
              v16 = *v16;
            }

            v20 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
            if (memcmp(v16, v20, v18))
            {
LABEL_34:
              v21 = 0;
              if (!v14)
              {
                goto LABEL_36;
              }

LABEL_35:
              sub_10000786C(v14);
              goto LABEL_36;
            }

            v23 = qword_100192D60;
            if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_DEBUG))
            {
              v24 = sub_10004A3E8(v15);
              if (*(v24 + 23) >= 0)
              {
                v25 = v24;
              }

              else
              {
                v25 = *v24;
              }

              v26 = v8[3];
              *buf = 136315394;
              *&buf[4] = v25;
              *&buf[12] = 2048;
              *&buf[14] = v26;
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "[EventStreamingObserver] skipping existing observer for event '%s' for client id %llu", buf, 0x16u);
            }

            v21 = 1;
            v13 = 1;
            if (v14)
            {
              goto LABEL_35;
            }

LABEL_36:
            v12 += 2;
            if (v12 == v11)
            {
              v22 = 1;
            }

            else
            {
              v22 = v21;
            }
          }

          while ((v22 & 1) == 0);
          if ((v13 & 1) == 0)
          {
            goto LABEL_49;
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v9 = v45 + 1;
          v45 = v9;
          if (v9 == v43)
          {
            v10 = v42;
            if (v44 == v42)
            {
              v7 = v36;
              break;
            }
          }
        }
      }

      xpc_release(v10);
      xpc_release(v44);
      xpc_release(v46);
    }

    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, v7);
    goto LABEL_71;
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_10012496C();
  }

LABEL_71:
  xpc_release(v7);
}

void sub_1000B62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, xpc_object_t a29, uint64_t a30, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B641C(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_array)
  {
    xpc_retain(v4);
    goto LABEL_7;
  }

LABEL_5:
  *a2 = xpc_null_create();
LABEL_7:
  xpc_release(v4);
}

void sub_1000B64AC(xpc_object_t *a1@<X0>, void **a2@<X8>)
{
  v4 = *a1;
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  if (xpc_get_type(*a1) == &_xpc_type_array)
  {
    count = xpc_array_get_count(*a1);
  }

  else
  {
    count = 0;
  }

  sub_1000BAA28(a2, &object, count);
  xpc_release(object);
}

void sub_1000B6570(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

xpc_object_t sub_1000B65A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_1000B65E8(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    v20 = reply;
  }

  else
  {
    v5 = xpc_null_create();
    v20 = v5;
    if (!v5)
    {
LABEL_5:
      v20 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
LABEL_7:
  xpc_release(v5);
  if (xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(*a3, "string-config");
    if (string)
    {
      v17 = 0xAAAAAAAAAAAAAA00;
      v18 = 0;
      sub_10000298C(&v17);
      sub_10000298C(&v17);
      v22 = 0;
      sub_10000ACE4(&string, v21, 1, v15);
      sub_10000298C(v15);
      v6 = v17;
      LOBYTE(v17) = v15[0];
      v15[0] = v6;
      v7 = v18;
      v18 = v16;
      v16 = v7;
      sub_10000298C(&v17);
      sub_10000298C(v15);
      sub_1000048FC(&v16, v15[0]);
      sub_100004FBC(v21);
      __p = 0;
      v13 = 0;
      v14 = 0;
      v11 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v10 = v8;
      *v9 = v8;
      sub_10005D2C4();
    }

    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
    {
      sub_100124BC0();
    }
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_1001249CC();
  }

  xpc_release(v20);
}

void sub_1000B6B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B6C84(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v6 = reply;
    xdict = reply;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
LABEL_5:
      xdict = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v6);
LABEL_7:
  xpc_release(v6);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  *&buf = a3;
  *(&buf + 1) = "tasking-id";
  sub_100001BC8(&buf, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    buf = 0uLL;
    v19 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(buf);
    }

    *__p = v12;
    v16 = v13;
  }

  xpc_release(object);
  v7 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    v8 = __p;
    if (v16 < 0)
    {
      v8 = __p[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ClientManager] === Tasking notification received with taskingId: %{public}s! Locating and storing (but not activating) new configurations", &buf, 0xCu);
  }

  sub_1000EB698(*(a1 + 128));
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    v10 = xpc_BOOL_create(1);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    *&buf = &xdict;
    *(&buf + 1) = "tasking-notify";
    sub_10001B168(&buf, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    xpc_connection_send_message(remote_connection, xdict);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(xdict);
}

void sub_1000B6EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B6F40(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v5 = reply;
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(reply);
  string = xpc_dictionary_get_string(*a3, "key");
  v8[0] = a3;
  v8[1] = "value";
  sub_100001BC8(v8, &object);
  sub_1000E480C(&object, v10);
  sub_1000D3CCC(string, v10);
  sub_10000298C(v10);
  sub_1000048FC(&v11, v10[0]);
  xpc_release(object);
  remote_connection = xpc_dictionary_get_remote_connection(*a3);
  xpc_connection_send_message(remote_connection, v5);
  xpc_release(v5);
}

void sub_1000B706C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B70D0(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    v16 = reply;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  v16 = xpc_null_create();
LABEL_7:
  xpc_release(v5);
  string = xpc_dictionary_get_string(*a3, "key");
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D3B68(string, &v14);
  v11 = a3;
  v12 = "key";
  v10[0] = &v16;
  v10[1] = "key";
  sub_1000B72A0(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  sub_1000E5290(&v14, &v8);
  v11 = &v16;
  v12 = "value";
  sub_10001B168(&v11, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  remote_connection = xpc_dictionary_get_remote_connection(*a3);
  xpc_connection_send_message(remote_connection, v16);
  sub_10000298C(&v14);
  sub_1000048FC(&v15, v14);
  xpc_release(v16);
}

void sub_1000B7248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B72A0(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  object = 0xAAAAAAAAAAAAAAAALL;
  sub_100001BC8(a2, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10001B168(a1, &v5, a3);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
}

void sub_1000B734C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000B736C(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    v14 = reply;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
LABEL_5:
      v14 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
LABEL_7:
  xpc_release(v5);
  if (xpc_get_type(v14) == &_xpc_type_dictionary)
  {
    v13[0] = a3;
    v13[1] = "mmap-config";
    v12[0] = a3;
    v12[1] = "mmap-config-size";
    if (xpc_dictionary_get_value(*a3, "mmap-config"))
    {
      v11[0] = 0xAAAAAAAAAAAAAAAALL;
      v11[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_100001BC8(v12, &v8);
      v7 = applesauce::xpc::dyn_cast_or_default(&v8, 0, v6);
      sub_100001BC8(v13, &object);
      v10 = v7;
      sub_10008073C(&object, v11);
      xpc_release(object);
      object = 0;
      xpc_release(v8);
      object = 0xAAAAAAAAAAAAAAAALL;
      v10 = 0xAAAAAAAAAAAAAAAALL;
      sub_100111874();
    }

    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
    {
      sub_100124D40();
    }
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100124C20();
  }

  xpc_release(v14);
}

void sub_1000B7658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B7700(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v5 = reply;
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_BOOL(*a3, "should-clear-config-after-reboot");
    sub_1000D45FC(v6);
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, v5);
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100124DA0();
  }

  xpc_release(v5);
}

void sub_1000B780C(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v7 = reply;
  }

  else
  {
    v7 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
    {
      sub_100124E00();
    }

    goto LABEL_67;
  }

  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  v40 = a3;
  v41 = "state-name";
  sub_100001BC8(&v40, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    *__p = v36;
    v39 = v37;
  }

  xpc_release(object);
  v36 = 0xAAAAAAAAAAAAAA00;
  sub_10000298C(&v36);
  sub_10000298C(&v36);
  v40 = a3;
  v41 = "state";
  sub_100001BC8(&v40, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    sub_1000E525C(&object, v34);
    sub_10000298C(v34);
    v8 = v36;
    LOBYTE(v36) = v34[0];
    v34[0] = v8;
    v9 = *(&v36 + 1);
    *(&v36 + 1) = v35;
    v35 = v9;
    sub_10000298C(&v36);
    sub_10000298C(v34);
    sub_1000048FC(&v35, v34[0]);
  }

  xpc_release(object);
  object = 0xAAAAAAAAAAAAAA00;
  v33 = 0;
  sub_10000298C(&object);
  sub_10000298C(&object);
  v40 = a3;
  v41 = "state-parameters";
  sub_100001BC8(&v40, &v31);
  if (xpc_get_type(v31) != &_xpc_type_null)
  {
    sub_1000E525C(&v31, v29);
    sub_10000298C(v29);
    v10 = object;
    LOBYTE(object) = v29[0];
    v29[0] = v10;
    v11 = v33;
    v33 = v30;
    v30 = v11;
    sub_10000298C(&object);
    sub_10000298C(v29);
    sub_1000048FC(&v30, v29[0]);
  }

  xpc_release(v31);
  if (v39 < 0)
  {
    v15 = __p[1];
    if (__p[1] == 8 && (*__p[0] == 0x6E6F697461636F6CLL || *__p[0] == 0x656475746974616CLL))
    {
      goto LABEL_60;
    }

    if (__p[1] == 9)
    {
      if (*__p[0] == 0x64757469676E6F6CLL && *(__p[0] + 8) == 101)
      {
        goto LABEL_60;
      }

      v15 = __p[1];
    }

    if (v15 == 6 && *__p[0] == 1802658157 && *(__p[0] + 2) == 29797)
    {
      goto LABEL_60;
    }

    if (__p[1] != 17)
    {
      goto LABEL_64;
    }

    v18 = __p[0];
    goto LABEL_42;
  }

  if (HIBYTE(v39) <= 8u)
  {
    if (HIBYTE(v39) != 6)
    {
      if (HIBYTE(v39) != 8)
      {
        goto LABEL_64;
      }

      if (__p[0] == 0x656475746974616CLL || __p[0] == 0x6E6F697461636F6CLL)
      {
        goto LABEL_60;
      }

      goto LABEL_40;
    }

    v12 = WORD2(__p[0]);
    v13 = LODWORD(__p[0]) == 1802658157;
    v14 = 29797;
LABEL_55:
    if (!v13 || v12 != v14)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (HIBYTE(v39) == 9)
  {
    v12 = LOBYTE(__p[1]);
    v13 = __p[0] == 0x64757469676E6F6CLL;
    v14 = 101;
    goto LABEL_55;
  }

LABEL_40:
  if (HIBYTE(v39) != 17)
  {
    goto LABEL_64;
  }

  v18 = __p;
LABEL_42:
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  if (v19 != 0x6E456C616E676973 || v20 != 0x6E656D6E6F726976 || v21 != 116)
  {
    goto LABEL_64;
  }

LABEL_60:
  v25 = sub_10000459C(&v40, "com.apple.private.CoreAnalytics.QueryLocation.allow");
  v26 = sub_1000B3CC8(v25, a2, a3, &v40);
  v27 = v26;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
    if ((v27 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (v26)
  {
LABEL_64:
    (*(**(a1 + 112) + 24))(*(a1 + 112), __p, &object, &v36, -1, 0);
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, v7);
  }

LABEL_65:
  sub_10000298C(&object);
  sub_1000048FC(&v33, object);
  sub_10000298C(&v36);
  sub_1000048FC(&v36 + 1, v36);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_67:
  xpc_release(v7);
}

void sub_1000B7D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v25 - 73) < 0)
  {
    operator delete(*(v25 - 96));
  }

  sub_10002C5F4(&object);
  sub_10002C5F4(&a16);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_1000B7E48(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v7 = reply;
    v50 = reply;
  }

  else
  {
    v7 = xpc_null_create();
    v50 = v7;
    if (!v7)
    {
LABEL_5:
      v50 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v7);
LABEL_7:
  xpc_release(v7);
  v8 = v50;
  if (xpc_get_type(v50) != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
    {
      sub_100124E60();
    }

    goto LABEL_79;
  }

  __p[0] = 0;
  __p[1] = 0;
  v49 = 0;
  v51 = a3;
  v52 = "state-name";
  sub_100001BC8(&v51, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v46;
    v49 = v47;
  }

  xpc_release(object);
  v46 = 0xAAAAAAAAAAAAAA00;
  sub_10000298C(&v46);
  sub_10000298C(&v46);
  v51 = a3;
  v52 = "state-parameters";
  sub_100001BC8(&v51, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    sub_1000E525C(&object, v44);
    sub_10000298C(v44);
    v9 = v46;
    LOBYTE(v46) = v44[0];
    v44[0] = v9;
    v10 = *(&v46 + 1);
    *(&v46 + 1) = v45;
    v45 = v10;
    sub_10000298C(&v46);
    sub_10000298C(v44);
    sub_1000048FC(&v45, v44[0]);
  }

  xpc_release(object);
  if (v49 < 0)
  {
    v14 = __p[1];
    if (__p[1] == 8 && (*__p[0] == 0x6E6F697461636F6CLL || *__p[0] == 0x656475746974616CLL))
    {
      goto LABEL_61;
    }

    if (__p[1] == 9)
    {
      if (*__p[0] == 0x64757469676E6F6CLL && *(__p[0] + 8) == 101)
      {
        goto LABEL_61;
      }

      v14 = __p[1];
    }

    if (v14 == 6 && *__p[0] == 1802658157 && *(__p[0] + 2) == 29797)
    {
      goto LABEL_61;
    }

    if (__p[1] != 17)
    {
      goto LABEL_65;
    }

    v17 = __p[0];
    goto LABEL_43;
  }

  if (HIBYTE(v49) > 8u)
  {
    if (HIBYTE(v49) != 9)
    {
LABEL_41:
      if (HIBYTE(v49) != 17)
      {
        goto LABEL_65;
      }

      v17 = __p;
LABEL_43:
      v18 = *v17;
      v19 = v17[1];
      v20 = *(v17 + 16);
      if (v18 != 0x6E456C616E676973 || v19 != 0x6E656D6E6F726976 || v20 != 116)
      {
        goto LABEL_65;
      }

      goto LABEL_61;
    }

    v11 = LOBYTE(__p[1]);
    v12 = __p[0] == 0x64757469676E6F6CLL;
    v13 = 101;
  }

  else
  {
    if (HIBYTE(v49) != 6)
    {
      if (HIBYTE(v49) != 8)
      {
        goto LABEL_65;
      }

      if (__p[0] == 0x656475746974616CLL || __p[0] == 0x6E6F697461636F6CLL)
      {
        goto LABEL_61;
      }

      goto LABEL_41;
    }

    v11 = WORD2(__p[0]);
    v12 = LODWORD(__p[0]) == 1802658157;
    v13 = 29797;
  }

  if (!v12 || v11 != v13)
  {
LABEL_65:
    object = 0xAAAAAAAAAAAAAA00;
    v43 = 0;
    sub_10000298C(&object);
    sub_10000298C(&object);
    if (SHIBYTE(v49) < 0)
    {
      if (__p[1] != 3)
      {
        goto LABEL_74;
      }

      v27 = __p[0];
    }

    else
    {
      if (SHIBYTE(v49) != 3)
      {
        goto LABEL_74;
      }

      v27 = __p;
    }

    v28 = *v27;
    v29 = *(v27 + 2);
    if (v28 == 27745 && v29 == 108)
    {
      (*(**(a1 + 112) + 48))(&v51);
      v33 = v51;
      v34 = v52;
      if (v51 != v52)
      {
        do
        {
          v35 = *(a1 + 112);
          v38[0] = 0;
          v39 = 0;
          sub_10000298C(v38);
          sub_10000298C(v38);
          (*(*v35 + 16))(&v40, v35, v33, v38);
          sub_10001FE6C(&object, &v40);
          sub_10000298C(&v40);
          sub_1000048FC(&v41, v40);
          sub_10000298C(v38);
          sub_1000048FC(&v39, v38[0]);
          v33 += 24;
        }

        while (v33 != v34);
      }

      v40 = &v51;
      sub_10002DE40(&v40);
LABEL_75:
      sub_100017DF0(&v51);
    }

LABEL_74:
    (*(**(a1 + 112) + 16))(&v36);
    sub_10000298C(&v36);
    v31 = object;
    LOBYTE(object) = v36;
    LOBYTE(v36) = v31;
    v32 = v43;
    v43 = v37;
    v37 = v32;
    sub_10000298C(&object);
    sub_10000298C(&v36);
    sub_1000048FC(&v37, v36);
    goto LABEL_75;
  }

LABEL_61:
  v24 = sub_10000459C(&v51, "com.apple.private.CoreAnalytics.QueryLocation.allow");
  v25 = sub_1000B3CC8(v24, a2, a3, &v51);
  v26 = v25;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
    if (v26)
    {
      goto LABEL_65;
    }
  }

  else if (v25)
  {
    goto LABEL_65;
  }

  sub_10000298C(&v46);
  sub_1000048FC(&v46 + 1, v46);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v50;
LABEL_79:
  xpc_release(v8);
}

void sub_1000B8528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_10002C5F4(&object);
  sub_10002C5F4(&a22);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v30 - 120));
  _Unwind_Resume(a1);
}

void sub_1000B8650(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v4 = reply;
    v6 = reply;
  }

  else
  {
    v4 = xpc_null_create();
    v6 = v4;
    if (!v4)
    {
LABEL_5:
      v6 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v4);
LABEL_7:
  xpc_release(v4);
  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v5[0] = 0xAAAAAAAAAAAAAAAALL;
    v5[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v5, 0, 0, 0, 2);
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100124EC0();
  }

  xpc_release(v6);
}

void sub_1000B8888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B8910(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    if (v2[1] < v2[2])
    {
      sub_100006C9C(v2[1]);
    }

    sub_1000BCFB8(v2);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = sub_10002CB3C(a1);
  sub_10000459C(&v7, v4);
  v5 = std::string::insert(&v7, 0, "cannot use emplace_back() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v9 = v5->__r_.__value_.__r.__words[2];
  v8 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10002C9C4(311, &v8, exception);
}

void sub_1000B8AEC(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v6 = reply;
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    __p = a3;
    v16 = "state-name";
    sub_100001BC8(&__p, &object);
    if (xpc_get_type(object) != &_xpc_type_null)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }

      *v13 = v10;
      v14 = v11;
    }

    xpc_release(object);
    if (v14 >= 0)
    {
      v7 = HIBYTE(v14);
    }

    else
    {
      v7 = v13[1];
    }

    v8 = **(a1 + 112);
    if (v7)
    {
      (*(v8 + 40))();
    }

    else
    {
      (*(v8 + 32))();
    }

    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, v6);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100124F20();
  }

  xpc_release(v6);
}

void sub_1000B8CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v25);
  _Unwind_Resume(a1);
}

void sub_1000B8D7C(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v5 = reply;
    v10 = reply;
  }

  else
  {
    v5 = xpc_null_create();
    v10 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
LABEL_7:
    xpc_release(v5);
    memset(v9, 170, sizeof(v9));
    sub_100044ABC(*(a1 + 144), v9);
    v8 = 0xAAAAAAAAAAAAAA02;
    __p = v9[0];
    v6 = v9[1];
    sub_1000BD0FC();
  }

LABEL_5:
  v10 = xpc_null_create();
  goto LABEL_7;
}

void sub_1000B8F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B8FC8(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  v4 = sub_1000BB3C8((a1 + 208), a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[7] & 1) == 0)
    {
      v7[0] = a3;
      v7[1] = "process";
      sub_100001BC8(v7, &object);
      applesauce::xpc::dyn_cast_or_default(&v9, &object, "<unknown>", v6);
      if (*(v5 + 56) == 1)
      {
        if (*(v5 + 55) < 0)
        {
          operator delete(v5[4]);
        }

        *(v5 + 2) = v9;
        v5[6] = v10;
        HIBYTE(v10) = 0;
        LOBYTE(v9) = 0;
      }

      else
      {
        *(v5 + 2) = v9;
        v5[6] = v10;
        v10 = 0;
        v9 = 0uLL;
        *(v5 + 56) = 1;
      }

      xpc_release(object);
    }
  }
}

void sub_1000B90C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B90F0(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v5 = reply;
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_connection_send_message(*a2, v5);
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100124F80();
  }

  xpc_release(v5);
}

void sub_1000B91E4(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v6 = reply;
    object = reply;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
    if (!v6)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v6);
LABEL_7:
  xpc_release(v6);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v8[0] = a3;
    v8[1] = "name";
    memset(__p, 170, sizeof(__p));
    sub_100001BC8(v8, &v7);
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    xpc_release(v7);
    sub_100044E70(*(a1 + 144), __p, v8);
    sub_100017DF0(v11);
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100124FE0();
  }

  xpc_release(object);
}

void sub_1000B9414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B94C4(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v6 = reply;
    object = reply;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
    if (!v6)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v6);
LABEL_7:
  xpc_release(v6);
  v7 = object;
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    memset(__p, 170, sizeof(__p));
    v12[0] = a3;
    v12[1] = "name";
    sub_100001BC8(v12, &v13);
    p_object = 0;
    v17 = 0;
    v18 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(p_object);
    }

    xpc_release(v13);
    v8 = (*(**(a1 + 176) + 144))(*(a1 + 176), __p);
    v10 = xpc_BOOL_create(v8);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    p_object = &object;
    v17 = "event-used";
    sub_10001B168(&p_object, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, object);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = object;
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100125040();
  }

  xpc_release(v7);
}

void sub_1000B96B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B9754(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v6 = reply;
    object = reply;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
    if (!v6)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v6);
LABEL_7:
  xpc_release(v6);
  v7 = object;
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    memset(__p, 170, sizeof(__p));
    v12[0] = a3;
    v12[1] = "name";
    sub_100001BC8(v12, &v13);
    p_object = 0;
    v17 = 0;
    v18 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(p_object);
    }

    xpc_release(v13);
    v8 = sub_100044CB4(*(a1 + 144), __p);
    v10 = xpc_BOOL_create(v8);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    p_object = &object;
    v17 = "transform-persist";
    sub_10001B168(&p_object, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, object);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = object;
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_1001250A0();
  }

  xpc_release(v7);
}

void sub_1000B9928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B99C4(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v5 = reply;
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v6 = *a3;
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_1000E525C(&object, v9);
    sub_1000D3F7C(v9);
    sub_10000298C(v9);
    sub_1000048FC(&v10, v9[0]);
    xpc_release(object);
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, v5);
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100125100();
  }

  xpc_release(v5);
}

void sub_1000B9B84(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v6 = reply;
    object = reply;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
    if (!v6)
    {
LABEL_5:
      object = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v6);
LABEL_7:
  xpc_release(v6);
  v7 = object;
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    memset(__p, 170, sizeof(__p));
    v12[0] = a3;
    v12[1] = "name";
    sub_100001BC8(v12, &v13);
    p_object = 0;
    v17 = 0;
    v18 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(p_object);
    }

    xpc_release(v13);
    v8 = sub_100044BB4(*(a1 + 144), __p);
    v10 = xpc_BOOL_create(v8);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    p_object = &object;
    v17 = "transform-evict";
    sub_10001B168(&p_object, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*a3);
    xpc_connection_send_message(remote_connection, object);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = object;
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100125160();
  }

  xpc_release(v7);
}

void sub_1000B9D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

uint64_t sub_1000B9DF4(uint64_t result, void *a2)
{
  for (i = *(result + 224); i; i = *i)
  {
    if (i[3] == *a2)
    {
      message = 0xAAAAAAAAAAAAAAAALL;
      sub_10001B07C(&message);
      v4 = xpc_string_create("message-emit");
      if (!v4)
      {
        v4 = xpc_null_create();
      }

      __p[0] = &message;
      __p[1] = "notification";
      sub_10001B168(__p, &v4, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v4);
      v4 = 0;
      sub_100017DF0(__p);
    }
  }

  return result;
}

void sub_1000B9F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000B9FE0(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if (reply)
  {
    v4 = reply;
    v7 = reply;
  }

  else
  {
    v4 = xpc_null_create();
    v7 = v4;
    if (!v4)
    {
LABEL_5:
      v7 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    goto LABEL_5;
  }

  xpc_retain(v4);
LABEL_7:
  xpc_release(v4);
  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3802000000;
    v5[3] = sub_1000BA2CC;
    v5[4] = sub_1000BA324;
    v6[0] = 0xAAAAAAAAAAAAAAAALL;
    v6[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v6, 0, 0, 0, 2);
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_1001251C0();
  }

  xpc_release(v7);
}

void sub_1000BA254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

unsigned __int8 *sub_1000BA2CC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 40;
  *(a1 + 40) = *(a2 + 40);
  v3 = (a1 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_10000298C((a2 + 40));
  *v2 = 0;
  *(v2 + 8) = 0;

  return sub_10000298C(v3);
}

void sub_1000BA324(uint64_t a1)
{
  sub_10000298C((a1 + 40));
  v2 = *(a1 + 40);

  sub_1000048FC((a1 + 48), v2);
}

void sub_1000BA364(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  sub_1000AEF40(*(*(a1 + 32) + 8) + 40, a2);
  v4 = *(v3 + 48);
  sub_10000459C(&__p, "com.apple.coreanalytics.appUsage");
  sub_100019D5C(&__p, a2);
}

void sub_1000BA438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000786C(a16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BA470(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  if ((reply || (reply = xpc_null_create()) != 0) && xpc_get_type(reply) == &_xpc_type_dictionary)
  {
    xpc_retain(reply);
    v6 = reply;
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_release(reply);
  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v7 = *(a1 + 160);
    sub_10000459C(__p, "api");
    v8 = *a3;
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_1000E525C(&object, v14);
    (*(*v7 + 16))(&v18, v7, __p, v14);
    sub_10000298C(v14);
    sub_1000048FC(&v15, v14[0]);
    xpc_release(object);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(a1 + 24);
    if (*a3)
    {
      xpc_retain(*a3);
      if (v6)
      {
LABEL_16:
        xpc_retain(v6);
        goto LABEL_19;
      }
    }

    else
    {
      xpc_null_create();
      if (v6)
      {
        goto LABEL_16;
      }
    }

    xpc_null_create();
LABEL_19:
    v10 = dispatch_group_create();
    v11 = v10;
    v12 = v18;
    if (v18)
    {
      dispatch_retain(v18);
      dispatch_group_enter(v12);
      if (v11)
      {
        dispatch_retain(v11);
        dispatch_group_enter(v11);
      }

      xpc_null_create();
      xpc_null_create();
      operator new();
    }

    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v11);
    }

    xpc_null_create();
    xpc_null_create();
    operator new();
  }

  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_100125220();
  }

  xpc_release(v6);
}

void sub_1000BA7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000BA8AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  for (i = *(a1 + 224); i; i = *i)
  {
    v4 = i[8];
    v5 = i[9];
    while (v4 != v5)
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = sub_10004A3E8(v6);
      sub_1000BD5F0(a2, v8);
      if (v7)
      {
        sub_10000786C(v7);
      }

      v4 += 2;
    }
  }
}

void sub_1000BA940(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_100062180(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1000BA968(void *a1)
{
  sub_1000BAA74(a1);

  operator delete();
}

void sub_1000BA9A8(uint64_t a1)
{
  sub_1000BAA74((a1 - 32));

  operator delete();
}

void sub_1000BA9EC(uint64_t a1)
{
  sub_1000BAA74((a1 - 40));

  operator delete();
}

void **sub_1000BAA28(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void *sub_1000BAA74(void *a1)
{
  *a1 = off_100187968;
  a1[4] = off_1001879C0;
  a1[5] = off_100187A00;
  v2 = a1[34];
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_1000BAB94(a1 + 32, 0);
  sub_1000BABDC((a1 + 26));
  v3 = a1[25];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[17];
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = a1[15];
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    sub_10000786C(v9);
  }

  v10 = a1[11];
  if (v10)
  {
    sub_10000786C(v10);
  }

  v11 = a1[9];
  if (v11)
  {
    sub_10000786C(v11);
  }

  v12 = a1[7];
  if (v12)
  {
    sub_10000786C(v12);
  }

  sub_100044430((a1 + 1));
  return a1;
}

uint64_t sub_1000BAB94(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1000AD2E4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000BABDC(uint64_t a1)
{
  sub_1000BAC18(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000BAC18(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000BAC5C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1000BAC5C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1000131F8(&v3);
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_1000BACEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000BACF8(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_1000131F8(&v3);
  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1000BADFC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000BAED0);
  __cxa_rethrow();
}

void sub_1000BAE3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000BAE90(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BAED0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1000BAEFC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  string = xpc_dictionary_get_string(**v1, "com.apple.message.domain");
  v4 = string;
  if (string)
  {
    v5 = v2[33];
    if (!v5 || (v6 = strlen(string), (sub_100019BC4(v5, v4, v6) & 1) != 0))
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v10 = 0xAAAAAAAAAAAAAAAALL;
      v7 = **v1;
      sub_1000591F4();
    }
  }

  v8 = qword_100192D48;
  if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_INFO))
  {
    __p = 136446210;
    __p_4 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MT Shim] Dropping %{public}s as it isn't used in any transform (not in the config or budgeted?)", &__p, 0xCu);
  }
}

void sub_1000BB11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, int a19, __int16 a20, uint64_t a21, char a22, char a23, uint64_t a24)
{
  if (a11)
  {
    sub_10000786C(a11);
  }

  if (SHIBYTE(a21) < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a16);
  _Unwind_Resume(a1);
}

void sub_1000BB27C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 64);
    sub_1000131F8(&v3);
    if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    xpc_release(*(a2 + 16));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1000BB320(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000BB32C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1000131F8(&v3);
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_1000BB3BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t **sub_1000BB3C8(void *a1, xpc_object_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ (*a2 >> 32));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v2)
    {
      v8 = v5 % *&v2;
    }
  }

  else
  {
    v8 = v5 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = i[1];
    if (v11 == v5)
    {
      if (xpc_equal(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_1000BB4F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = sub_1000BB3C8(*v1 + 26, v1[1]);
  if (result)
  {
    v4 = result;
    v5 = result[8];
    for (i = result[9]; v5 != i; v5 += 2)
    {
      v7 = *v5;
      v8 = v5[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = v2[8];
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v9 = v2[8];
      }

      v11 = v7;
      v12 = v8;
      v10 = sub_10004A3E8(v7);
      (*(*v9 + 24))(v9, &v11, v10);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v8)
      {
        sub_10000786C(v8);
      }
    }

    return sub_1000BB638(v2 + 26, v4);
  }

  return result;
}

uint64_t sub_1000BB638(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100049E14(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_1000BB27C(&v6, v3);
  }

  return v2;
}

uint64_t *sub_1000BB6B0(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(*v1 + 176))
  {
    sub_1000BAB94((v2 + 256), 0);
    v3 = *(v2 + 176);
    sub_1000BA8AC(v2, __p);
    sub_1000AD194();
  }

  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
  {
    sub_10012558C();
  }

  sub_1000BAB94((v2 + 256), 0);
  sub_100046828(&v6);
  return sub_1000120B8(&v5);
}

void sub_1000BB93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100046828(&a11);
  sub_1000120B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000BB9CC(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_1000B9DF4(*v1, v1 + 1);
  sub_1000BBA60(&v4);
  return sub_1000120B8(&v3);
}

void sub_1000BBA44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000BBA60(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000BBA60(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 32);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    sub_10000298C((v1 + 16));
    sub_1000048FC((v1 + 24), *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_1000BBB44(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100187BD0;
  a2[1] = v2;
  return result;
}

void sub_1000BBBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BBC10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BBC5C(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_10002CB3C(a1);
    sub_10000459C(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(311, &v13, exception);
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 16))
  {
    v6 = sub_10001D0FC(v4, a2);
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    sub_10000298C(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(v5);
    v6 = v5 + 16;
  }

  *(v4 + 8) = v6;
  return v6 - 16;
}

void sub_1000BBDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

__n128 sub_1000BBEBC(uint64_t a1, uint64_t a2)
{
  *a2 = off_100187C50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1000BBEF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *(a1 + 16);
  **(a1 + 8) += *a5;
  *v5 += *a4;
  v6 = *(a1 + 24);
  sub_1000257AC(v7);
}

void sub_1000BC268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_10002C5F4(&a15);
  v43 = -128;
  v44 = v41;
  do
  {
    v44 = sub_10003E1D0(v44) - 32;
    v43 += 32;
  }

  while (v43);
  v45 = &a21;
  v46 = -64;
  do
  {
    v45 = sub_10003E1D0(v45) - 32;
    v46 += 32;
  }

  while (v46);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v47 = &a29;
  v48 = -64;
  do
  {
    v47 = sub_10003E1D0(v47) - 32;
    v48 += 32;
  }

  while (v48);
  v49 = &a37;
  v50 = -64;
  do
  {
    v49 = sub_10003E1D0(v49) - 32;
    v50 += 32;
  }

  while (v50);
  for (i = 32; i != -32; i -= 32)
  {
    sub_10003E1D0(&a41 + i);
  }

  _Unwind_Resume(a1);
}