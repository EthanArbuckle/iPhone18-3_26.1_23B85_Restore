@interface FLStoreMigrator
- (FLStoreMigrator)initWithExecutor:(id)a3;
- (int64_t)_schemaVersion;
- (void)_createCleanCurrentDatabase;
- (void)_createCurrentDatabaseWithTableSuffix:(id)a3;
- (void)_dropTables;
- (void)_migrateFujitailToCurrent;
- (void)_migrateSchema:(int64_t)a3 toSchema:(int64_t)a4;
- (void)_migrateToCurrentFrom:(int64_t)a3;
- (void)migrateSchemeIfNecessary;
@end

@implementation FLStoreMigrator

- (FLStoreMigrator)initWithExecutor:(id)a3
{
  v5 = a3;
  v6 = [(FLStoreMigrator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryExecutor, a3);
  }

  return v7;
}

- (void)migrateSchemeIfNecessary
{
  v3 = [(FLStoreMigrator *)self _schemaVersion];
  if (v3 != 23)
  {

    [(FLStoreMigrator *)self _migrateSchema:v3 toSchema:23];
  }
}

- (int64_t)_schemaVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryExecutor = self->_queryExecutor;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001E58;
  v5[3] = &unk_1000206F0;
  v5[4] = &v6;
  [(FLSQLiteExecutor *)queryExecutor performQuery:@"SELECT value FROM databaseProperties WHERE key='schemaVersion'" rowHandler:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_migrateSchema:(int64_t)a3 toSchema:(int64_t)a4
{
  v7 = _os_activity_create(&_mh_execute_header, "followup/migration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
  }

  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"pragma foreign_keys=off" rowHandler:0];
  queryExecutor = self->_queryExecutor;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000207C;
  v10[3] = &unk_100020718;
  v10[4] = self;
  v10[5] = a3;
  [(FLSQLiteExecutor *)queryExecutor performTransactionBlockAndWait:v10];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"pragma foreign_keys=on" rowHandler:0];
  os_activity_scope_leave(&state);
}

- (void)_createCleanCurrentDatabase
{
  [(FLStoreMigrator *)self _dropTables];

  [(FLStoreMigrator *)self _createCurrentDatabaseWithTableSuffix:&stru_100021020];
}

- (void)_migrateToCurrentFrom:(int64_t)a3
{
  if (a3 > 16)
  {
    if (a3 > 19)
    {
      if (a3 != 20)
      {
        if (a3 != 21)
        {
          if (a3 != 22)
          {
            return;
          }

          goto LABEL_44;
        }

LABEL_41:
        v62 = _FLLogSystem();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v82 = 21;
          v83 = 2048;
          v84 = 22;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
        }

        queryExecutor = self->_queryExecutor;
        v64 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021B58];
        [(FLSQLiteExecutor *)queryExecutor performQuery:v64];

        v65 = self->_queryExecutor;
        v66 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN account_id TEXT"];
        [(FLSQLiteExecutor *)v65 performQuery:v66];

        v67 = self->_queryExecutor;
        v68 = [NSString stringWithFormat:@"UPDATE items SET account_id=NULL"];
        [(FLSQLiteExecutor *)v67 performQuery:v68];

        v69 = self->_queryExecutor;
        v70 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN type_id TEXT"];
        [(FLSQLiteExecutor *)v69 performQuery:v70];

        v71 = self->_queryExecutor;
        v72 = [NSString stringWithFormat:@"UPDATE items SET type_id=NULL"];
        [(FLSQLiteExecutor *)v71 performQuery:v72];

LABEL_44:
        v73 = _FLLogSystem();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v82 = 22;
          v83 = 2048;
          v84 = 23;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
        }

        v74 = self->_queryExecutor;
        v75 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021B70];
        [(FLSQLiteExecutor *)v74 performQuery:v75];

        v76 = self->_queryExecutor;
        v77 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN collection_id TEXT"];
        [(FLSQLiteExecutor *)v76 performQuery:v77];

        v78 = self->_queryExecutor;
        v79 = [NSString stringWithFormat:@"UPDATE items SET collection_id=NULL"];
        [(FLSQLiteExecutor *)v78 performQuery:v79];

        return;
      }

LABEL_38:
      v55 = _FLLogSystem();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v82 = 20;
        v83 = 2048;
        v84 = 21;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
      }

      v56 = self->_queryExecutor;
      v57 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021B40];
      [(FLSQLiteExecutor *)v56 performQuery:v57];

      v58 = self->_queryExecutor;
      v59 = [NSString stringWithFormat:@"ALTER TABLE notifications ADD COLUMN subtitle_text TEXT"];
      [(FLSQLiteExecutor *)v58 performQuery:v59];

      v60 = self->_queryExecutor;
      v61 = [NSString stringWithFormat:@"UPDATE notifications SET subtitle_text=NULL"];
      [(FLSQLiteExecutor *)v60 performQuery:v61];

      goto LABEL_41;
    }

    if (a3 != 17)
    {
      if (a3 != 18)
      {
LABEL_35:
        v48 = _FLLogSystem();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v82 = 19;
          v83 = 2048;
          v84 = 20;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
        }

        v49 = self->_queryExecutor;
        v50 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021B28];
        [(FLSQLiteExecutor *)v49 performQuery:v50];

        v51 = self->_queryExecutor;
        v52 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN expiration_date INTEGER"];
        [(FLSQLiteExecutor *)v51 performQuery:v52];

        v53 = self->_queryExecutor;
        v54 = [NSString stringWithFormat:@"UPDATE items SET expiration_date=NULL"];
        [(FLSQLiteExecutor *)v53 performQuery:v54];

        goto LABEL_38;
      }

LABEL_31:
      v45 = _FLLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v82 = 18;
        v83 = 2048;
        v84 = 19;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
      }

      v46 = self->_queryExecutor;
      v47 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021B10];
      [(FLSQLiteExecutor *)v46 performQuery:v47];

      if (![(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"SELECT representing_bundle_path, bundle_icon_name, informative_footer_text FROM items"])
      {
        [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE items ADD COLUMN representing_bundle_path TEXT"];
        [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"UPDATE items SET representing_bundle_path=NULL"];
        [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE items ADD COLUMN bundle_icon_name TEXT"];
        [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"UPDATE items SET bundle_icon_name=NULL"];
        [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE items ADD COLUMN informative_footer_text TEXT"];
        [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"UPDATE items SET informative_footer_text=NULL"];
      }

      goto LABEL_35;
    }

LABEL_28:
    v38 = _FLLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v82 = 17;
      v83 = 2048;
      v84 = 18;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
    }

    v39 = self->_queryExecutor;
    v40 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021AF8];
    [(FLSQLiteExecutor *)v39 performQuery:v40];

    v41 = self->_queryExecutor;
    v42 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN category_identifier TEXT"];
    [(FLSQLiteExecutor *)v41 performQuery:v42];

    v43 = self->_queryExecutor;
    v44 = [NSString stringWithFormat:@"UPDATE items SET category_identifier='%@'", FLFollowUpNotificationDefaultCategory];
    [(FLSQLiteExecutor *)v43 performQuery:v44];

    goto LABEL_31;
  }

  if (a3 > 13)
  {
    if (a3 != 14)
    {
      if (a3 != 15)
      {
LABEL_25:
        v23 = _FLLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v82 = 16;
          v83 = 2048;
          v84 = 17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
        }

        v24 = self->_queryExecutor;
        v25 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021AE0];
        [(FLSQLiteExecutor *)v24 performQuery:v25];

        v26 = self->_queryExecutor;
        v27 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN representing_bundle_path TEXT"];
        [(FLSQLiteExecutor *)v26 performQuery:v27];

        v28 = self->_queryExecutor;
        v29 = [NSString stringWithFormat:@"UPDATE items SET representing_bundle_path=NULL"];
        [(FLSQLiteExecutor *)v28 performQuery:v29];

        v30 = self->_queryExecutor;
        v31 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN bundle_icon_name TEXT"];
        [(FLSQLiteExecutor *)v30 performQuery:v31];

        v32 = self->_queryExecutor;
        v33 = [NSString stringWithFormat:@"UPDATE items SET bundle_icon_name=NULL"];
        [(FLSQLiteExecutor *)v32 performQuery:v33];

        v34 = self->_queryExecutor;
        v35 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN informative_footer_text TEXT"];
        [(FLSQLiteExecutor *)v34 performQuery:v35];

        v36 = self->_queryExecutor;
        v37 = [NSString stringWithFormat:@"UPDATE items SET informative_footer_text=NULL"];
        [(FLSQLiteExecutor *)v36 performQuery:v37];

        goto LABEL_28;
      }

LABEL_22:
      v16 = _FLLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v82 = 15;
        v83 = 2048;
        v84 = 16;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
      }

      v17 = self->_queryExecutor;
      v18 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021AC8];
      [(FLSQLiteExecutor *)v17 performQuery:v18];

      v19 = self->_queryExecutor;
      v20 = [NSString stringWithFormat:@"ALTER TABLE items ADD COLUMN target_bundle_identifier TEXT"];
      [(FLSQLiteExecutor *)v19 performQuery:v20];

      v21 = self->_queryExecutor;
      v22 = [NSString stringWithFormat:@"UPDATE items SET target_bundle_identifier='%@'", FLFollowUpPreferencesBundleIdentifier];
      [(FLSQLiteExecutor *)v21 performQuery:v22];

      goto LABEL_25;
    }

LABEL_19:
    v11 = _FLLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v82 = 14;
      v83 = 2048;
      v84 = 15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
    }

    v12 = self->_queryExecutor;
    v13 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021AB0];
    [(FLSQLiteExecutor *)v12 performQuery:v13];

    v14 = self->_queryExecutor;
    v15 = [NSString stringWithFormat:@"ALTER TABLE notifications ADD COLUMN options BLOB"];
    [(FLSQLiteExecutor *)v14 performQuery:v15];

    goto LABEL_22;
  }

  if (a3 != 9)
  {
    if (a3 != 13)
    {
      return;
    }

    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v82 = 13;
      v83 = 2048;
      v84 = 14;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
    }

    v5 = self->_queryExecutor;
    v6 = [NSString stringWithFormat:@"UPDATE databaseProperties SET value='%@' WHERE key='schemaVersion'", &off_100021A98];
    [(FLSQLiteExecutor *)v5 performQuery:v6];

    v7 = self->_queryExecutor;
    v8 = +[NSDate date];
    [v8 timeIntervalSince1970];
    v10 = [NSString stringWithFormat:@"ALTER TABLE notifications ADD COLUMN creationDate INTEGER NOT NULL DEFAULT (%f)", v9];
    [(FLSQLiteExecutor *)v7 performQuery:v10];

    goto LABEL_19;
  }

  v80 = _FLLogSystem();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v82 = 9;
    v83 = 2048;
    v84 = 23;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Migrating from %lld to %lld", buf, 0x16u);
  }

  [(FLStoreMigrator *)self _migrateFujitailToCurrent];
}

- (void)_migrateFujitailToCurrent
{
  v3 = [(FLSQLiteExecutor *)self->_queryExecutor database];
  if (sqlite3_create_function_v2(v3, [off_100026770 UTF8String], 1, 2049, 0, sub_100002EA4, 0, 0, 0))
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100010254(v4);
    }
  }

  [(FLStoreMigrator *)self _createCurrentDatabaseWithTableSuffix:@"_tmp"];
  queryExecutor = self->_queryExecutor;
  v6 = [NSString stringWithFormat:@"INSERT INTO items_tmp (uuid, title, body, show_in_settings, style, persist_when_activated, persist_when_dismissed, user_info, client_identifier, extension_identifier, group_identifier, target_bundle_identifier, representing_bundle_path, bundle_icon_name, informative_footer_text, category_identifier) SELECT uuid, title, body, show_in_settings, style, persist_when_activated, persist_when_dismissed, user_info, client_identifier, NULL, '%@', '%@', NULL, NULL, NULL, '%@' FROM items", FLGroupIdentifierDevice, FLFollowUpPreferencesBundleIdentifier, FLFollowUpNotificationDefaultCategory];
  [(FLSQLiteExecutor *)queryExecutor performInsertQuery:v6];

  [(FLSQLiteExecutor *)self->_queryExecutor performInsertQuery:@"INSERT INTO actions_tmp (label, url, launch_url, launch_arguments, item_id, action_identifier) SELECT label, url, launch_url, fl_convert_la_userinfo(launch_arguments), item_id, NULL FROM actions"];
  v7 = self->_queryExecutor;
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = [NSString stringWithFormat:@"INSERT INTO notifications_tmp (item_id, title, body, unlock_label, relevance_date, activate_action_id, dismiss_action_id, clear_action_id, frequency, creationDate) SELECT item_id, title, body, unlock_label, %f, activate_action_id, dismiss_action_id, clear_action_id, 0, %f from notifications", v10, v12];
  [(FLSQLiteExecutor *)v7 performInsertQuery:v13];

  [(FLStoreMigrator *)self _dropTables];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE databaseProperties_tmp RENAME TO databaseProperties"];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE notifications_tmp RENAME TO notifications"];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE actions_tmp RENAME TO actions"];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"ALTER TABLE items_tmp RENAME TO items"];
}

- (void)_createCurrentDatabaseWithTableSuffix:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010298(v5);
  }

  queryExecutor = self->_queryExecutor;
  v7 = [NSString stringWithFormat:@"CREATE TABLE databaseProperties%@ (key TEXT PRIMARY KEY, value TEXT)", v4];
  [(FLSQLiteExecutor *)queryExecutor performQuery:v7];

  v8 = [NSString stringWithFormat:@"INSERT INTO databaseProperties%@ (key, value) VALUES ('schemaVersion', '%@')", v4, &off_100021B70];
  [(FLSQLiteExecutor *)self->_queryExecutor performInsertQuery:v8];
  v9 = self->_queryExecutor;
  v10 = [NSString stringWithFormat:@"CREATE TABLE notifications%@ (id INTEGER PRIMARY KEY, item_id INTEGER REFERENCES items(id) ON DELETE CASCADE, title TEXT, subtitle_text TEXT, body TEXT, unlock_label TEXT, relevance_date INTEGER, activate_action_id INTEGER REFERENCES actions(id) ON DELETE CASCADE, dismiss_action_id INTEGER REFERENCES actions(id) ON DELETE CASCADE, clear_action_id INTEGER REFERENCES actions(id) ON DELETE CASCADE, frequency INTEGER, creationDate INTEGER, options BLOB)", v4];
  [(FLSQLiteExecutor *)v9 performQuery:v10];

  v11 = self->_queryExecutor;
  v12 = [NSString stringWithFormat:@"CREATE TABLE actions%@ (id INTEGER PRIMARY KEY, item_id INTEGER REFERENCES items(id) ON DELETE CASCADE, label TEXT, url TEXT, launch_url TEXT, launch_arguments BLOB, action_identifier TEXT)", v4];
  [(FLSQLiteExecutor *)v11 performQuery:v12];

  v13 = self->_queryExecutor;
  v14 = [NSString stringWithFormat:@"CREATE TABLE items%@ (id INTEGER PRIMARY KEY, uuid TEXT, client_identifier TEXT, title TEXT, body TEXT, show_in_settings INTEGER, style INTEGER, persist_when_activated INTEGER, persist_when_dismissed INTEGER, user_info BLOB, extension_identifier TEXT, group_identifier TEXT, collection_id TEXT, target_bundle_identifier TEXT, representing_bundle_path TEXT, bundle_icon_name TEXT, informative_footer_text TEXT, category_identifier TEXT, expiration_date INTEGER, account_id TEXT, type_id TEXT, UNIQUE(uuid))", v4];

  [(FLSQLiteExecutor *)v13 performQuery:v14];
}

- (void)_dropTables
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000102DC(v3);
  }

  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"DROP TABLE IF EXISTS databaseProperties"];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"DROP TABLE IF EXISTS notifications"];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"DROP TABLE IF EXISTS actions"];
  [(FLSQLiteExecutor *)self->_queryExecutor performQuery:@"DROP TABLE IF EXISTS items"];
}

@end