@interface NPSDatabase
- (BOOL)_openDBAtPath:(id)path;
- (BOOL)getMessageType:(int *)type forMessageID:(id)d;
- (BOOL)removeMessageFromMessageTypeTable:(id)table;
- (BOOL)setMessageType:(int)type forMessageID:(id)d;
- (NPSDatabase)initWithPath:(id)path;
- (int)_getSchemaVersion;
- (void)dealloc;
- (void)flushStashedSettingsSyncData;
- (void)getFileBackupDataForMessage:(id)message handler:(id)handler;
- (void)getSettingsBackupDataForMessage:(id)message handler:(id)handler;
- (void)getSettingsSyncDataForMessage:(id)message handler:(id)handler;
- (void)getStashedSettingsSyncDataWithHandler:(id)handler;
- (void)invalidate;
- (void)messageWasDelivered:(id)delivered;
- (void)messageWasPurged:(id)purged;
- (void)purgePendingOutgoingMessages;
- (void)sentFileBackupMessage:(id)message forFileAtPath:(id)path;
- (void)sentSettingsBackupMessage:(id)message forContainer:(id)container domain:(id)domain keys:(id)keys;
- (void)sentSettingsSyncMessage:(id)message forDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled;
- (void)stashSettingsSyncData:(id)data forDomain:(id)domain key:(id)key isTwoWaySync:(BOOL)sync timestamp:(double)timestamp;
- (void)untrackFileBackupMessageForFileAtPath:(id)path;
- (void)untrackSettingsBackupMessageForContainer:(id)container domain:(id)domain keys:(id)keys;
- (void)untrackSettingsSyncMessagesForDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled;
@end

@implementation NPSDatabase

- (NPSDatabase)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = NPSDatabase;
  v5 = [(NPSDatabase *)&v10 init];
  if (v5 && ([pathCopy stringByStandardizingPath], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NPSDatabase _openDBAtPath:](v5, "_openDBAtPath:", v6), v6, !v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)dealloc
{
  [(NPSDatabase *)self invalidate];
  v3.receiver = self;
  v3.super_class = NPSDatabase;
  [(NPSDatabase *)&v3 dealloc];
}

- (void)invalidate
{
  if (self->_db)
  {
    sqlite3_finalize(self->_getMessageTypeForMessageID);
    sqlite3_finalize(self->_setMessageTypeForMessageID);
    sqlite3_finalize(self->_setMessageIDForSettingSync);
    sqlite3_finalize(self->_setMessageIDForSettingBackup);
    sqlite3_finalize(self->_setMessageIDForFileBackup);
    sqlite3_finalize(self->_untrackSettingsSyncMessage);
    sqlite3_finalize(self->_untrackSettingsBackupMessage);
    sqlite3_finalize(self->_untrackFileBackupMessage);
    sqlite3_finalize(self->_untrackSettingsSyncForMessageID);
    sqlite3_finalize(self->_untrackSettingsBackupForMessageID);
    sqlite3_finalize(self->_untrackFileBackupForMessageID);
    sqlite3_finalize(self->_removeMessageFromMessageTypeTable);
    sqlite3_finalize(self->_setNullMessageIDForSettingSync);
    sqlite3_finalize(self->_setNullMessageIDForSettingBackup);
    sqlite3_finalize(self->_setNullMessageIDForFileBackup);
    sqlite3_finalize(self->_getSettingsSyncForMessageID);
    sqlite3_finalize(self->_getSettingsBackupForMessageID);
    sqlite3_finalize(self->_getFileBackupForMessageID);
    sqlite3_finalize(self->_getSettingsSyncWithNullMessageID);
    sqlite3_finalize(self->_getSettingsBackupWithNullMessageID);
    sqlite3_finalize(self->_getFileBackupWithNullMessageID);
    sqlite3_finalize(self->_stashSettingsSyncData);
    sqlite3_finalize(self->_getStashedSettingSyncData);
    sqlite3_finalize(self->_flushStashedSettingSyncData);
    sqlite3_finalize(self->_purgeMessageTypeTable);
    sqlite3_finalize(self->_purgeSettingsSyncTable);
    sqlite3_finalize(self->_purgeSettingsBackupTable);
    sqlite3_finalize(self->_purgeFileBackupTable);
    sqlite3_close(self->_db);
    self->_db = 0;
  }
}

- (BOOL)setMessageType:(int)type forMessageID:(id)d
{
  sub_100019E88(self->_setMessageTypeForMessageID, 1, d);
  sqlite3_bind_int(self->_setMessageTypeForMessageID, 2, type);
  v6 = sqlite3_step(self->_setMessageTypeForMessageID);
  sqlite3_reset(self->_setMessageTypeForMessageID);
  sqlite3_clear_bindings(self->_setMessageTypeForMessageID);
  if ((v6 & 0xFFFFFFFE) != 0x64)
  {
    v7 = sqlite3_errmsg(self->_db);
    v8 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "(nil)";
      if (v7)
      {
        v9 = v7;
      }

      v11[0] = 67109378;
      v11[1] = v6;
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", v11, 0x12u);
    }

    if (v6 >= 102 && v6 <= 0xEu && ((1 << v6) & 0x4D70) != 0)
    {
      sub_10001F0F8(v6);
    }
  }

  return (v6 & 0xFFFFFFFE) == 100;
}

- (BOOL)getMessageType:(int *)type forMessageID:(id)d
{
  sub_100019E88(self->_getMessageTypeForMessageID, 1, d);
  v6 = sqlite3_step(self->_getMessageTypeForMessageID);
  if (v6 == 101)
  {
    goto LABEL_12;
  }

  v7 = v6;
  if (v6 == 100)
  {
    *type = sqlite3_column_int(self->_getMessageTypeForMessageID, 0);
    v8 = 1;
    goto LABEL_13;
  }

  v9 = sqlite3_errmsg(self->_db);
  v10 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "(nil)";
    if (v9)
    {
      v11 = v9;
    }

    v13[0] = 67109378;
    v13[1] = v7;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", v13, 0x12u);
  }

  if (v7 < 102)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 0;
  if (v7 <= 0xEu && ((1 << v7) & 0x4D70) != 0)
  {
    sub_10001F0F8(v7);
    goto LABEL_12;
  }

LABEL_13:
  sqlite3_reset(self->_getMessageTypeForMessageID);
  sqlite3_clear_bindings(self->_getMessageTypeForMessageID);
  return v8;
}

- (BOOL)removeMessageFromMessageTypeTable:(id)table
{
  sub_100019E88(self->_removeMessageFromMessageTypeTable, 1, table);
  v4 = sqlite3_step(self->_removeMessageFromMessageTypeTable);
  v5 = v4 & 0xFFFFFFFE;
  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v6 = v4;
    v7 = sqlite3_errmsg(self->_db);
    v8 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "(nil)";
      if (v7)
      {
        v9 = v7;
      }

      v13[0] = 67109378;
      v13[1] = v6;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", v13, 0x12u);
    }

    if (v6 >= 102 && v6 <= 0xEu && ((1 << v6) & 0x4D70) != 0)
    {
      sub_10001F0F8(v6);
    }
  }

  sqlite3_reset(self->_removeMessageFromMessageTypeTable);
  sqlite3_clear_bindings(self->_removeMessageFromMessageTypeTable);
  return v5 == 100;
}

- (void)sentSettingsSyncMessage:(id)message forDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  messageCopy = message;
  domainCopy = domain;
  keysCopy = keys;
  v13 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (!v13)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = keysCopy;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          sub_100019E88(self->_setMessageIDForSettingSync, 1, domainCopy);
          sub_100019E88(self->_setMessageIDForSettingSync, 2, v23);
          sub_100019E88(self->_setMessageIDForSettingSync, 3, messageCopy);
          sqlite3_bind_int(self->_setMessageIDForSettingSync, 4, enabledCopy);
          v24 = sqlite3_step(self->_setMessageIDForSettingSync);
          sqlite3_reset(self->_setMessageIDForSettingSync);
          sqlite3_clear_bindings(self->_setMessageIDForSettingSync);
          if ((v24 - 102) <= 0xFFFFFFFD)
          {
            v30 = sqlite3_errmsg(self->_db);
            v31 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              v32 = "(nil)";
              if (v30)
              {
                v32 = v30;
              }

              *buf = 67109378;
              v39 = v24;
              v40 = 2080;
              v41 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
            }

            if (v24 >= 102 && v24 <= 0xEu && ((1 << v24) & 0x4D70) != 0)
            {
              sub_10001F0F8(v24);
            }

            sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v33);

            goto LABEL_39;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    if (!messageCopy || [(NPSDatabase *)self setMessageType:0 forMessageID:messageCopy, v33])
    {
      v25 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION", v33);
      if (!v25)
      {
        goto LABEL_39;
      }

      v26 = v25;
      v27 = sqlite3_errmsg(self->_db);
      v28 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v29 = "(nil)";
        if (v27)
        {
          v29 = v27;
        }

        *buf = 67109378;
        v39 = v26;
        v40 = 2080;
        v41 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
      }

      if (v26 >= 102 && v26 <= 0xEu && ((1 << v26) & 0x4D70) != 0)
      {
        sub_10001F0F8(v26);
      }
    }

    sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
    goto LABEL_39;
  }

  v14 = v13;
  v15 = sqlite3_errmsg(self->_db);
  v16 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "(nil)";
    if (v15)
    {
      v17 = v15;
    }

    *buf = 67109378;
    v39 = v14;
    v40 = 2080;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
  }

  if (v14 >= 102 && v14 <= 0xEu && ((1 << v14) & 0x4D70) != 0)
  {
    sub_10001F0F8(v14);
  }

LABEL_39:
}

- (void)untrackSettingsSyncMessagesForDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  domainCopy = domain;
  keysCopy = keys;
  v10 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v10)
  {
    v11 = v10;
    v12 = sqlite3_errmsg(self->_db);
    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "(nil)";
      if (v12)
      {
        v14 = v12;
      }

      *buf = 67109378;
      v38 = v11;
      v39 = 2080;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v11 >= 102 && v11 <= 0xEu && ((1 << v11) & 0x4D70) != 0)
    {
      sub_10001F0F8(v11);
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = keysCopy;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          sub_100019E88(self->_untrackSettingsSyncMessage, 1, domainCopy);
          sub_100019E88(self->_untrackSettingsSyncMessage, 2, v22);
          sqlite3_bind_int(self->_untrackSettingsSyncMessage, 3, enabledCopy);
          v23 = sqlite3_step(self->_untrackSettingsSyncMessage);
          sqlite3_reset(self->_untrackSettingsSyncMessage);
          sqlite3_clear_bindings(self->_untrackSettingsSyncMessage);
          if ((v23 - 102) <= 0xFFFFFFFD)
          {
            v29 = sqlite3_errmsg(self->_db);
            v30 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              v31 = "(nil)";
              if (v29)
              {
                v31 = v29;
              }

              *buf = 67109378;
              v38 = v23;
              v39 = 2080;
              v40 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
            }

            if (v23 >= 102 && v23 <= 0xEu && ((1 << v23) & 0x4D70) != 0)
            {
              sub_10001F0F8(v23);
            }

            sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v32);

            goto LABEL_41;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v24 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION", v32);
    if (v24)
    {
      v25 = v24;
      v26 = sqlite3_errmsg(self->_db);
      v27 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v28 = "(nil)";
        if (v26)
        {
          v28 = v26;
        }

        *buf = 67109378;
        v38 = v25;
        v39 = 2080;
        v40 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
      }

      if (v25 >= 102 && v25 <= 0xEu && ((1 << v25) & 0x4D70) != 0)
      {
        sub_10001F0F8(v25);
      }

      sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
    }
  }

LABEL_41:
}

- (void)sentSettingsBackupMessage:(id)message forContainer:(id)container domain:(id)domain keys:(id)keys
{
  messageCopy = message;
  containerCopy = container;
  domainCopy = domain;
  keysCopy = keys;
  v14 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v14)
  {
    v15 = v14;
    v16 = sqlite3_errmsg(self->_db);
    v17 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "(nil)";
      if (v16)
      {
        v18 = v16;
      }

      *buf = 67109378;
      v43 = v15;
      v44 = 2080;
      v45 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v15 >= 102 && v15 <= 0xEu && ((1 << v15) & 0x4D70) != 0)
    {
      sub_10001F0F8(v15);
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = keysCopy;
    v19 = keysCopy;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      if (containerCopy)
      {
        v23 = containerCopy;
      }

      else
      {
        v23 = &stru_10003DCC0;
      }

      while (2)
      {
        v24 = containerCopy;
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          sub_100019E88(self->_setMessageIDForSettingBackup, 1, v23);
          sub_100019E88(self->_setMessageIDForSettingBackup, 2, domainCopy);
          sub_100019E88(self->_setMessageIDForSettingBackup, 3, v26);
          sub_100019E88(self->_setMessageIDForSettingBackup, 4, messageCopy);
          v27 = sqlite3_step(self->_setMessageIDForSettingBackup);
          sqlite3_reset(self->_setMessageIDForSettingBackup);
          sqlite3_clear_bindings(self->_setMessageIDForSettingBackup);
          if ((v27 - 102) <= 0xFFFFFFFD)
          {
            v33 = sqlite3_errmsg(self->_db);
            v34 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              v35 = "(nil)";
              if (v33)
              {
                v35 = v33;
              }

              *buf = 67109378;
              v43 = v27;
              v44 = 2080;
              v45 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
            }

            containerCopy = v24;
            if (v27 >= 102 && v27 <= 0xEu && ((1 << v27) & 0x4D70) != 0)
            {
              sub_10001F0F8(v27);
            }

            sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");

            goto LABEL_41;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
        containerCopy = v24;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    if (messageCopy && ![(NPSDatabase *)self setMessageType:1 forMessageID:messageCopy])
    {
      sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
LABEL_41:
      keysCopy = v36;
    }

    else
    {
      v28 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
      keysCopy = v36;
      if (v28)
      {
        v29 = v28;
        v30 = sqlite3_errmsg(self->_db);
        v31 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v32 = "(nil)";
          if (v30)
          {
            v32 = v30;
          }

          *buf = 67109378;
          v43 = v29;
          v44 = 2080;
          v45 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
        }

        if (v29 >= 102 && v29 <= 0xEu && ((1 << v29) & 0x4D70) != 0)
        {
          sub_10001F0F8(v29);
        }

        sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
      }
    }
  }
}

- (void)untrackSettingsBackupMessageForContainer:(id)container domain:(id)domain keys:(id)keys
{
  containerCopy = container;
  domainCopy = domain;
  keysCopy = keys;
  v11 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v11)
  {
    v12 = v11;
    v13 = sqlite3_errmsg(self->_db);
    v14 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "(nil)";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 67109378;
      v37 = v12;
      v38 = 2080;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v12 >= 102 && v12 <= 0xEu && ((1 << v12) & 0x4D70) != 0)
    {
      sub_10001F0F8(v12);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = keysCopy;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          sub_100019E88(self->_untrackSettingsBackupMessage, 1, containerCopy);
          sub_100019E88(self->_untrackSettingsBackupMessage, 2, domainCopy);
          sub_100019E88(self->_untrackSettingsBackupMessage, 3, v21);
          v22 = sqlite3_step(self->_untrackSettingsBackupMessage);
          sqlite3_reset(self->_untrackSettingsBackupMessage);
          sqlite3_clear_bindings(self->_untrackSettingsBackupMessage);
          if ((v22 - 102) <= 0xFFFFFFFD)
          {
            v28 = sqlite3_errmsg(self->_db);
            v29 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              v30 = "(nil)";
              if (v28)
              {
                v30 = v28;
              }

              *buf = 67109378;
              v37 = v22;
              v38 = 2080;
              v39 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
            }

            if (v22 >= 102 && v22 <= 0xEu && ((1 << v22) & 0x4D70) != 0)
            {
              sub_10001F0F8(v22);
            }

            sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v31);

            goto LABEL_37;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v23 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION", v31);
    if (v23)
    {
      v24 = v23;
      v25 = sqlite3_errmsg(self->_db);
      v26 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v27 = "(nil)";
        if (v25)
        {
          v27 = v25;
        }

        *buf = 67109378;
        v37 = v24;
        v38 = 2080;
        v39 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
      }

      if (v24 >= 102 && v24 <= 0xEu && ((1 << v24) & 0x4D70) != 0)
      {
        sub_10001F0F8(v24);
      }

      sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
    }
  }

LABEL_37:
}

- (void)sentFileBackupMessage:(id)message forFileAtPath:(id)path
{
  messageCopy = message;
  pathCopy = path;
  v8 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (!v8)
  {
    sub_100019E88(self->_setMessageIDForFileBackup, 1, pathCopy);
    sub_100019E88(self->_setMessageIDForFileBackup, 2, messageCopy);
    v15 = sqlite3_step(self->_setMessageIDForFileBackup);
    sqlite3_reset(self->_setMessageIDForFileBackup);
    sqlite3_clear_bindings(self->_setMessageIDForFileBackup);
    if ((v15 - 102) > 0xFFFFFFFD)
    {
      if (messageCopy && ![(NPSDatabase *)self setMessageType:2 forMessageID:messageCopy])
      {
LABEL_30:
        sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v21, v22);
        goto LABEL_31;
      }

      v19 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
      if (!v19)
      {
        goto LABEL_31;
      }

      v15 = v19;
      v20 = sqlite3_errmsg(self->_db);
      v17 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "(nil)";
        if (v20)
        {
          v18 = v20;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v16 = sqlite3_errmsg(self->_db);
      v17 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "(nil)";
        if (v16)
        {
          v18 = v16;
        }

LABEL_25:
        LODWORD(v21) = 67109378;
        HIDWORD(v21) = v15;
        LOWORD(v22) = 2080;
        *(&v22 + 2) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v21, 0x12u);
      }
    }

    if (v15 >= 102 && v15 <= 0xEu && ((1 << v15) & 0x4D70) != 0)
    {
      sub_10001F0F8(v15);
    }

    goto LABEL_30;
  }

  v9 = v8;
  v10 = sqlite3_errmsg(self->_db);
  v11 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "(nil)";
    if (v10)
    {
      v12 = v10;
    }

    LODWORD(v21) = 67109378;
    HIDWORD(v21) = v9;
    LOWORD(v22) = 2080;
    *(&v22 + 2) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v21, 0x12u);
  }

  if (v9 >= 102 && v9 <= 0xEu && ((1 << v9) & 0x4D70) != 0)
  {
    sub_10001F0F8(v9);
  }

LABEL_31:
}

- (void)untrackFileBackupMessageForFileAtPath:(id)path
{
  pathCopy = path;
  v5 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_errmsg(self->_db);
    v8 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "(nil)";
      if (v7)
      {
        v9 = v7;
      }

      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v6;
      LOWORD(v20) = 2080;
      *(&v20 + 2) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v19, 0x12u);
    }

    if (v6 >= 102 && v6 <= 0xEu && ((1 << v6) & 0x4D70) != 0)
    {
      sub_10001F0F8(v6);
    }

    goto LABEL_29;
  }

  sub_100019E88(self->_untrackFileBackupMessage, 1, pathCopy);
  v12 = sqlite3_step(self->_untrackFileBackupMessage);
  sqlite3_reset(self->_untrackFileBackupMessage);
  sqlite3_clear_bindings(self->_untrackFileBackupMessage);
  db = self->_db;
  if ((v12 - 102) > 0xFFFFFFFD)
  {
    v17 = sub_10001A5D0(db, "COMMIT TRANSACTION");
    if (!v17)
    {
      goto LABEL_29;
    }

    v12 = v17;
    v18 = sqlite3_errmsg(self->_db);
    v15 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v16 = "(nil)";
    if (v18)
    {
      v16 = v18;
    }
  }

  else
  {
    v14 = sqlite3_errmsg(db);
    v15 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v16 = "(nil)";
    if (v14)
    {
      v16 = v14;
    }
  }

  LODWORD(v19) = 67109378;
  HIDWORD(v19) = v12;
  LOWORD(v20) = 2080;
  *(&v20 + 2) = v16;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v19, 0x12u);
LABEL_24:
  if (v12 >= 102 && v12 <= 0xEu && ((1 << v12) & 0x4D70) != 0)
  {
    sub_10001F0F8(v12);
  }

  sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v19, v20);
LABEL_29:
}

- (void)messageWasDelivered:(id)delivered
{
  deliveredCopy = delivered;
  v5 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_errmsg(self->_db);
    v8 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "(nil)";
      if (v7)
      {
        v9 = v7;
      }

      *buf = 67109378;
      v27 = v6;
      v28 = 2080;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v6 >= 102 && v6 <= 0xEu && ((1 << v6) & 0x4D70) != 0)
    {
      sub_10001F0F8(v6);
    }

    goto LABEL_43;
  }

  v25 = 0;
  if ([(NPSDatabase *)self getMessageType:&v25 forMessageID:deliveredCopy])
  {
    if (v25 >= 3)
    {
      abort();
    }

    v12 = *(&self->_untrackSettingsSyncForMessageID + v25);
    sub_100019E88(v12, 1, deliveredCopy);
    v13 = sqlite3_step(v12);
    if ((v13 & 0xFFFFFFFE) == 0x64)
    {
      if ([(NPSDatabase *)self removeMessageFromMessageTypeTable:deliveredCopy])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v14 = v13;
      v15 = sqlite3_errmsg(self->_db);
      v16 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v17 = "(nil)";
        if (v15)
        {
          v17 = v15;
        }

        *buf = 67109378;
        v27 = v14;
        v28 = 2080;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
      }

      if (v14 >= 102 && v14 <= 0xEu && ((1 << v14) & 0x4D70) != 0)
      {
        sub_10001F0F8(v14);
      }
    }

    sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
LABEL_32:
    sqlite3_reset(v12);
    sqlite3_clear_bindings(v12);
  }

  v20 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
  if (v20)
  {
    v21 = v20;
    v22 = sqlite3_errmsg(self->_db);
    v23 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "(nil)";
      if (v22)
      {
        v24 = v22;
      }

      *buf = 67109378;
      v27 = v21;
      v28 = 2080;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v21 >= 102 && v21 <= 0xEu && ((1 << v21) & 0x4D70) != 0)
    {
      sub_10001F0F8(v21);
    }

    sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
  }

LABEL_43:
}

- (void)messageWasPurged:(id)purged
{
  purgedCopy = purged;
  v5 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_errmsg(self->_db);
    v8 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "(nil)";
      if (v7)
      {
        v9 = v7;
      }

      *buf = 67109378;
      v27 = v6;
      v28 = 2080;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v6 >= 102 && v6 <= 0xEu && ((1 << v6) & 0x4D70) != 0)
    {
      sub_10001F0F8(v6);
    }

    goto LABEL_43;
  }

  v25 = 0;
  if ([(NPSDatabase *)self getMessageType:&v25 forMessageID:purgedCopy])
  {
    if (v25 >= 3)
    {
      abort();
    }

    v12 = *(&self->_setNullMessageIDForSettingSync + v25);
    sub_100019E88(v12, 1, purgedCopy);
    v13 = sqlite3_step(v12);
    if ((v13 & 0xFFFFFFFE) == 0x64)
    {
      if ([(NPSDatabase *)self removeMessageFromMessageTypeTable:purgedCopy])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v14 = v13;
      v15 = sqlite3_errmsg(self->_db);
      v16 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v17 = "(nil)";
        if (v15)
        {
          v17 = v15;
        }

        *buf = 67109378;
        v27 = v14;
        v28 = 2080;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
      }

      if (v14 >= 102 && v14 <= 0xEu && ((1 << v14) & 0x4D70) != 0)
      {
        sub_10001F0F8(v14);
      }
    }

    sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
LABEL_32:
    sqlite3_reset(v12);
    sqlite3_clear_bindings(v12);
  }

  v20 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
  if (v20)
  {
    v21 = v20;
    v22 = sqlite3_errmsg(self->_db);
    v23 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "(nil)";
      if (v22)
      {
        v24 = v22;
      }

      *buf = 67109378;
      v27 = v21;
      v28 = 2080;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v21 >= 102 && v21 <= 0xEu && ((1 << v21) & 0x4D70) != 0)
    {
      sub_10001F0F8(v21);
    }

    sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
  }

LABEL_43:
}

- (void)getSettingsSyncDataForMessage:(id)message handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v23 = messageCopy;
  if (messageCopy)
  {
    getSettingsSyncForMessageID = self->_getSettingsSyncForMessageID;
    sub_100019E88(getSettingsSyncForMessageID, 1, messageCopy);
  }

  else
  {
    getSettingsSyncForMessageID = self->_getSettingsSyncWithNullMessageID;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = sqlite3_step(getSettingsSyncForMessageID);
    if (v10 != 100)
    {
      break;
    }

    v11 = sub_10001C214(getSettingsSyncForMessageID, 0);
    v12 = sub_10001C214(getSettingsSyncForMessageID, 1);
    if (sqlite3_column_int(getSettingsSyncForMessageID, 2))
    {
      if (v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = objc_opt_new();
        v8 = v13;
      }
    }

    else if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = objc_opt_new();
      v9 = v13;
    }

    v14 = v13;
    v15 = [v14 objectForKeyedSubscript:{v11, handlerCopy, v23}];
    if (!v15)
    {
      v15 = objc_opt_new();
      [v14 setObject:v15 forKeyedSubscript:v11];
    }

    [v15 addObject:v12];
  }

  v16 = v10;
  if (v10 != 101)
  {
    v17 = sqlite3_errmsg(self->_db);
    v18 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "(nil)";
      if (v17)
      {
        v19 = v17;
      }

      *buf = 67109378;
      v29 = v16;
      v30 = 2080;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v16 >= 102 && v16 <= 0xEu && ((1 << v16) & 0x4D70) != 0)
    {
      sub_10001F0F8(v16);
    }
  }

  sqlite3_reset(getSettingsSyncForMessageID);
  sqlite3_clear_bindings(getSettingsSyncForMessageID);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001C254;
  v26[3] = &unk_10003D210;
  v20 = handlerCopy;
  v27 = v20;
  [v9 enumerateKeysAndObjectsUsingBlock:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001C268;
  v24[3] = &unk_10003D210;
  v25 = v20;
  v21 = v20;
  [v8 enumerateKeysAndObjectsUsingBlock:v24];
}

- (void)getSettingsBackupDataForMessage:(id)message handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if (messageCopy)
  {
    getSettingsBackupForMessageID = self->_getSettingsBackupForMessageID;
    sub_100019E88(getSettingsBackupForMessageID, 1, messageCopy);
  }

  else
  {
    getSettingsBackupForMessageID = self->_getSettingsBackupWithNullMessageID;
  }

  v8 = 0;
  while (1)
  {
    v9 = sqlite3_step(getSettingsBackupForMessageID);
    if (v9 != 100)
    {
      break;
    }

    v10 = sub_10001C214(getSettingsBackupForMessageID, 0);
    v11 = sub_10001C214(getSettingsBackupForMessageID, 1);
    v12 = sub_10001C214(getSettingsBackupForMessageID, 2);
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    v13 = [v8 objectForKeyedSubscript:v10];
    if (!v13)
    {
      v13 = objc_opt_new();
      [v8 setObject:v13 forKeyedSubscript:v10];
    }

    v14 = [v13 objectForKeyedSubscript:v11];
    if (!v14)
    {
      v14 = objc_opt_new();
      [v13 setObject:v14 forKeyedSubscript:v11];
    }

    [v14 addObject:v12];
  }

  v15 = v9;
  if (v9 != 101)
  {
    v16 = sqlite3_errmsg(self->_db);
    v17 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "(nil)";
      if (v16)
      {
        v18 = v16;
      }

      *buf = 67109378;
      v24 = v15;
      v25 = 2080;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v15 >= 102 && v15 <= 0xEu && ((1 << v15) & 0x4D70) != 0)
    {
      sub_10001F0F8(v15);
    }
  }

  sqlite3_reset(getSettingsBackupForMessageID);
  sqlite3_clear_bindings(getSettingsBackupForMessageID);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001C554;
  v21[3] = &unk_10003D260;
  v22 = handlerCopy;
  v19 = handlerCopy;
  [v8 enumerateKeysAndObjectsUsingBlock:v21];
}

- (void)getFileBackupDataForMessage:(id)message handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if (messageCopy)
  {
    getFileBackupForMessageID = self->_getFileBackupForMessageID;
    sub_100019E88(getFileBackupForMessageID, 1, messageCopy);
  }

  else
  {
    getFileBackupForMessageID = self->_getFileBackupWithNullMessageID;
  }

  v9 = 0;
  while (1)
  {
    v10 = sqlite3_step(getFileBackupForMessageID);
    if (v10 != 100)
    {
      break;
    }

    v11 = sub_10001C214(getFileBackupForMessageID, 0);
    if (!v9)
    {
      v9 = objc_opt_new();
    }

    [v9 addObject:v11];
  }

  v12 = v10;
  if (v10 != 101)
  {
    v13 = sqlite3_errmsg(self->_db);
    v14 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "(nil)";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 67109378;
      v27 = v12;
      v28 = 2080;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
    }

    if (v12 >= 102 && v12 <= 0xEu && ((1 << v12) & 0x4D70) != 0)
    {
      sub_10001F0F8(v12);
    }
  }

  sqlite3_reset(getFileBackupForMessageID);
  sqlite3_clear_bindings(getFileBackupForMessageID);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        handlerCopy[2](handlerCopy, *(*(&v21 + 1) + 8 * i));
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

- (void)stashSettingsSyncData:(id)data forDomain:(id)domain key:(id)key isTwoWaySync:(BOOL)sync timestamp:(double)timestamp
{
  syncCopy = sync;
  dataCopy = data;
  domainCopy = domain;
  keyCopy = key;
  v15 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v15)
  {
    v16 = v15;
    v17 = sqlite3_errmsg(self->_db);
    v18 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "(nil)";
      if (v17)
      {
        v19 = v17;
      }

      LODWORD(v30) = 67109378;
      HIDWORD(v30) = v16;
      LOWORD(v31) = 2080;
      *(&v31 + 2) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v30, 0x12u);
    }

    if (v16 >= 102 && v16 <= 0xEu && ((1 << v16) & 0x4D70) != 0)
    {
      sub_10001F0F8(v16);
    }

    goto LABEL_28;
  }

  sub_100019E88(self->_stashSettingsSyncData, 1, domainCopy);
  sub_100019E88(self->_stashSettingsSyncData, 2, keyCopy);
  stashSettingsSyncData = self->_stashSettingsSyncData;
  v21 = dataCopy;
  v22 = v21;
  if (v21)
  {
    sqlite3_bind_blob(stashSettingsSyncData, 3, [v21 bytes], objc_msgSend(v21, "length"), 0);
  }

  else
  {
    sqlite3_bind_null(stashSettingsSyncData, 3);
  }

  sqlite3_bind_int(self->_stashSettingsSyncData, 4, syncCopy);
  sqlite3_bind_double(self->_stashSettingsSyncData, 5, timestamp);
  v23 = sqlite3_step(self->_stashSettingsSyncData);
  if ((v23 - 102) > 0xFFFFFFFD)
  {
    sqlite3_reset(self->_stashSettingsSyncData);
    sqlite3_clear_bindings(self->_stashSettingsSyncData);
    v28 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
    if (!v28)
    {
      goto LABEL_28;
    }

    v24 = v28;
    v29 = sqlite3_errmsg(self->_db);
    v26 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v27 = "(nil)";
    if (v29)
    {
      v27 = v29;
    }
  }

  else
  {
    v24 = v23;
    v25 = sqlite3_errmsg(self->_db);
    v26 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v27 = "(nil)";
    if (v25)
    {
      v27 = v25;
    }
  }

  LODWORD(v30) = 67109378;
  HIDWORD(v30) = v24;
  LOWORD(v31) = 2080;
  *(&v31 + 2) = v27;
  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v30, 0x12u);
LABEL_23:
  if (v24 >= 102 && v24 <= 0xEu && ((1 << v24) & 0x4D70) != 0)
  {
    sub_10001F0F8(v24);
  }

  sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v30, v31);
LABEL_28:
}

- (void)getStashedSettingsSyncDataWithHandler:(id)handler
{
  handlerCopy = handler;
  while (1)
  {
    v5 = sqlite3_step(self->_getStashedSettingSyncData);
    if (v5 != 100)
    {
      break;
    }

    v6 = sub_10001C214(self->_getStashedSettingSyncData, 0);
    v7 = sub_10001C214(self->_getStashedSettingSyncData, 1);
    getStashedSettingSyncData = self->_getStashedSettingSyncData;
    v9 = sqlite3_column_bytes(getStashedSettingSyncData, 2);
    v10 = sqlite3_column_blob(getStashedSettingSyncData, 2);
    if (v9 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = [NSData dataWithBytes:v10 length:v9];
    }

    v12 = sqlite3_column_int(self->_getStashedSettingSyncData, 3) != 0;
    if (sqlite3_column_double(self->_getStashedSettingSyncData, 4) == 0.0)
    {
      v13.n128_f64[0] = 0.0;
    }

    else
    {
      v13.n128_f64[0] = 1.0;
    }

    handlerCopy[2](handlerCopy, v6, v7, v11, v12, v13);
  }

  v14 = v5;
  if (v5 != 101)
  {
    v15 = sqlite3_errmsg(self->_db);
    v16 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "(nil)";
      if (v15)
      {
        v17 = v15;
      }

      v20[0] = 67109378;
      v20[1] = v14;
      v21 = 2080;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", v20, 0x12u);
    }

    if (v14 >= 102 && v14 <= 0xEu && ((1 << v14) & 0x4D70) != 0)
    {
      sub_10001F0F8(v14);
    }
  }

  sqlite3_reset(self->_getStashedSettingSyncData);
  sqlite3_clear_bindings(self->_getStashedSettingSyncData);
}

- (void)flushStashedSettingsSyncData
{
  v3 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (v3)
  {
    v4 = v3;
    v5 = sqlite3_errmsg(self->_db);
    v6 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "(nil)";
      if (v5)
      {
        v7 = v5;
      }

      LODWORD(v17) = 67109378;
      HIDWORD(v17) = v4;
      LOWORD(v18) = 2080;
      *(&v18 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v17, 0x12u);
    }

    if (v4 >= 102 && v4 <= 0xEu && ((1 << v4) & 0x4D70) != 0)
    {
      sub_10001F0F8(v4);
    }

    return;
  }

  v10 = sqlite3_step(self->_flushStashedSettingSyncData);
  if ((v10 - 102) > 0xFFFFFFFD)
  {
    sqlite3_reset(self->_flushStashedSettingSyncData);
    sqlite3_clear_bindings(self->_flushStashedSettingSyncData);
    v15 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
    if (!v15)
    {
      return;
    }

    v11 = v15;
    v16 = sqlite3_errmsg(self->_db);
    v13 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v14 = "(nil)";
    if (v16)
    {
      v14 = v16;
    }
  }

  else
  {
    v11 = v10;
    v12 = sqlite3_errmsg(self->_db);
    v13 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v14 = "(nil)";
    if (v12)
    {
      v14 = v12;
    }
  }

  LODWORD(v17) = 67109378;
  HIDWORD(v17) = v11;
  LOWORD(v18) = 2080;
  *(&v18 + 2) = v14;
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v17, 0x12u);
LABEL_24:
  if (v11 >= 102 && v11 <= 0xEu && ((1 << v11) & 0x4D70) != 0)
  {
    sub_10001F0F8(v11);
  }

  sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION", v17, v18);
}

- (void)purgePendingOutgoingMessages
{
  v3 = sub_10001A5D0(self->_db, "BEGIN EXCLUSIVE TRANSACTION");
  if (!v3)
  {
    v10 = 0;
    v11 = *&self->_purgeSettingsBackupTable;
    *buf = *&self->_purgeMessageTypeTable;
    *&buf[16] = v11;
    while (1)
    {
      v12 = *&buf[v10];
      v13 = sqlite3_step(v12);
      if ((v13 & 0xFFFFFFFE) != 0x64)
      {
        break;
      }

      sqlite3_reset(v12);
      sqlite3_clear_bindings(v12);
      v10 += 8;
      if (v10 == 32)
      {
        v14 = sub_10001A5D0(self->_db, "COMMIT TRANSACTION");
        if (!v14)
        {
          return;
        }

        v15 = v14;
        v16 = sqlite3_errmsg(self->_db);
        v17 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v18 = "(nil)";
          if (v16)
          {
            v18 = v16;
          }

          v24 = 67109378;
          v25 = v15;
          v26 = 2080;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v24, 0x12u);
        }

        if (v15 < 102 || v15 > 0xEu || ((1 << v15) & 0x4D70) == 0)
        {
LABEL_38:
          sub_10001A5D0(self->_db, "ROLLBACK TRANSACTION");
          return;
        }

LABEL_37:
        sub_10001F0F8(v15);
        goto LABEL_38;
      }
    }

    v15 = v13;
    v19 = sqlite3_errmsg(self->_db);
    v20 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "(nil)";
      if (v19)
      {
        v21 = v19;
      }

      v24 = 67109378;
      v25 = v15;
      v26 = 2080;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v24, 0x12u);
    }

    if (v15 < 102 || v15 > 0xEu || ((1 << v15) & 0x4D70) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v4 = v3;
  v5 = sqlite3_errmsg(self->_db);
  v6 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "(nil)";
    if (v5)
    {
      v7 = v5;
    }

    *buf = 67109378;
    *&buf[4] = v4;
    *&buf[8] = 2080;
    *&buf[10] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", buf, 0x12u);
  }

  if (v4 >= 102 && v4 <= 0xEu && ((1 << v4) & 0x4D70) != 0)
  {
    sub_10001F0F8(v4);
  }
}

- (int)_getSchemaVersion
{
  if (sqlite3_table_column_metadata(self->_db, 0, "meta", 0, 0, 0, 0, 0, 0))
  {
    return 0;
  }

  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_db, "SELECT COUNT(*) FROM meta", 25, &ppStmt, 0);
  if (!v5)
  {
    v10 = sqlite3_step(ppStmt);
    v3 = 0;
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    if (v10 == 101)
    {
      goto LABEL_27;
    }

    if (v10 == 100)
    {
      v3 = sqlite3_column_int(ppStmt, 0);
    }

    else
    {
      v12 = sqlite3_errmsg(self->_db);
      v13 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "Unknown Error";
        if (v12)
        {
          v14 = v12;
        }

        *buf = 67109378;
        v17 = v11;
        v18 = 2080;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error fetching schema version: %d (%s)", buf, 0x12u);
      }

      if (v11 >= 102)
      {
        v3 = 0;
        if (v11 > 0xEu || ((1 << v11) & 0x4D70) == 0)
        {
          goto LABEL_27;
        }

        sub_10001F0F8(v11);
      }

      v3 = 0;
    }

LABEL_27:
    sqlite3_finalize(ppStmt);
    return v3;
  }

  v6 = v5;
  if (v5 == 1)
  {
    return 0;
  }

  v7 = sqlite3_errmsg(self->_db);
  v8 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Unknown Error";
    if (v7)
    {
      v9 = v7;
    }

    *buf = 67109378;
    v17 = v6;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error fetching schema version: %d (%s)", buf, 0x12u);
  }

  if (v6 < 102)
  {
    return 0;
  }

  v3 = 0;
  if (v6 <= 0xEu && ((1 << v6) & 0x4D70) != 0)
  {
    sub_10001F0F8(v6);
    return 0;
  }

  return v3;
}

- (BOOL)_openDBAtPath:(id)path
{
  pathCopy = path;
  v5 = sqlite3_open_v2([pathCopy fileSystemRepresentation], &self->_db, 4194310, 0);
  if (v5 || !self->_db)
  {
    v6 = nps_daemon_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      db = self->_db;
      if (db)
      {
        v8 = sqlite3_errmsg(db);
      }

      else
      {
        v8 = "";
      }

      v155 = 138412802;
      *v156 = pathCopy;
      *&v156[8] = 1024;
      *&v156[10] = v5;
      v157 = 2080;
      v158 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error opening SQLite3 DB at (%@): (%d) %s", &v155, 0x1Cu);
    }

    if (v5 >= 102 && v5 <= 0xEu && ((1 << v5) & 0x4D70) != 0)
    {
      sub_10001F0F8(v5);
    }

    v9 = self->_db;
    if (v9)
    {
      sqlite3_close(v9);
      v10 = 0;
      self->_db = 0;
      goto LABEL_279;
    }
  }

  v11 = [pathCopy copy];
  path = self->_path;
  self->_path = v11;

  sub_10001A5D0(self->_db, "PRAGMA journal_mode=WAL;");
  sqlite3_busy_timeout(self->_db, 60000);
  sqlite3_extended_result_codes(self->_db, 1);
  _getSchemaVersion = [(NPSDatabase *)self _getSchemaVersion];
  if (_getSchemaVersion > 1)
  {
    if (_getSchemaVersion != 2)
    {
      if (_getSchemaVersion != 3)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (_getSchemaVersion)
    {
      if (_getSchemaVersion != 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_10001A5D0(self->_db, "CREATE TABLE IF NOT EXISTS meta (version INTEGER PRIMARY KEY AUTOINCREMENT, tstamp REAL)");
      sub_10001A5D0(self->_db, "CREATE TABLE IF NOT EXISTS sync_msgs (domain TEXT NOT NULL, key TEXT NOT NULL, messageID TEXT, PRIMARY KEY(domain, key))");
      sub_10001A5D0(self->_db, "CREATE TABLE IF NOT EXISTS backup_msgs (container TEXT NOT NULL DEFAULT (''), domain TEXT NOT NULL, key TEXT NOT NULL, messageID TEXT, PRIMARY KEY(container, domain, key))");
      sub_10001A5D0(self->_db, "CREATE TABLE IF NOT EXISTS msgs_type (messageID TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL)");
      sub_10001A5D0(self->_db, "CREATE INDEX sync_msgs_messageID_idx ON sync_msgs (messageID ASC)");
      sub_10001A5D0(self->_db, "CREATE INDEX backup_msgs_messageID_idx ON backup_msgs (messageID ASC)");
      sub_10001A5D0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
    }

    sub_10001A5D0(self->_db, "CREATE TABLE IF NOT EXISTS file_backup_msgs (path TEXT NOT NULL, messageID TEXT, PRIMARY KEY(path))");
    sub_10001A5D0(self->_db, "CREATE INDEX file_backup_msgs_messageID_idx ON file_backup_msgs (messageID ASC)");
    sub_10001A5D0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
  }

  sub_10001A5D0(self->_db, "CREATE TABLE IF NOT EXISTS stashed_sync_msgs (domain TEXT NOT NULL, key TEXT NOT NULL, data BLOB, two_way_sync INTEGER, timestamp DOUBLE, PRIMARY KEY(domain, key))");
  sub_10001A5D0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_25:
  sub_10001A5D0(self->_db, "ALTER TABLE sync_msgs ADD COLUMN cloudEnabled INTEGER");
  sub_10001A5D0(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
LABEL_26:
  v14 = sqlite3_prepare_v2(self->_db, "SELECT type FROM msgs_type WHERE messageID=?", -1, &self->_getMessageTypeForMessageID, 0);
  if (v14)
  {
    v15 = v14;
    v16 = sqlite3_errmsg(self->_db);
    v17 = nps_daemon_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "(nil)";
      if (v16)
      {
        v18 = v16;
      }

      v155 = 67109378;
      *v156 = v15;
      *&v156[4] = 2080;
      *&v156[6] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v15 >= 102 && v15 <= 0xEu && ((1 << v15) & 0x4D70) != 0)
    {
      sub_10001F0F8(v15);
    }
  }

  v19 = sqlite3_prepare_v2(self->_db, "INSERT INTO msgs_type (messageID, type) VALUES (?, ?)", -1, &self->_setMessageTypeForMessageID, 0);
  if (v19)
  {
    v20 = v19;
    v21 = sqlite3_errmsg(self->_db);
    v22 = nps_daemon_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "(nil)";
      if (v21)
      {
        v23 = v21;
      }

      v155 = 67109378;
      *v156 = v20;
      *&v156[4] = 2080;
      *&v156[6] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v20 >= 102 && v20 <= 0xEu && ((1 << v20) & 0x4D70) != 0)
    {
      sub_10001F0F8(v20);
    }
  }

  v24 = sqlite3_prepare_v2(self->_db, "INSERT OR REPLACE INTO sync_msgs (domain, key, messageID, cloudEnabled) VALUES (?, ?, ?, ?)", -1, &self->_setMessageIDForSettingSync, 0);
  if (v24)
  {
    v25 = v24;
    v26 = sqlite3_errmsg(self->_db);
    v27 = nps_daemon_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = "(nil)";
      if (v26)
      {
        v28 = v26;
      }

      v155 = 67109378;
      *v156 = v25;
      *&v156[4] = 2080;
      *&v156[6] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v25 >= 102 && v25 <= 0xEu && ((1 << v25) & 0x4D70) != 0)
    {
      sub_10001F0F8(v25);
    }
  }

  v29 = sqlite3_prepare_v2(self->_db, "INSERT OR REPLACE INTO backup_msgs (container, domain, key, messageID) VALUES (?, ?, ?, ?)", -1, &self->_setMessageIDForSettingBackup, 0);
  if (v29)
  {
    v30 = v29;
    v31 = sqlite3_errmsg(self->_db);
    v32 = nps_daemon_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = "(nil)";
      if (v31)
      {
        v33 = v31;
      }

      v155 = 67109378;
      *v156 = v30;
      *&v156[4] = 2080;
      *&v156[6] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v30 >= 102 && v30 <= 0xEu && ((1 << v30) & 0x4D70) != 0)
    {
      sub_10001F0F8(v30);
    }
  }

  v34 = sqlite3_prepare_v2(self->_db, "INSERT OR REPLACE INTO file_backup_msgs (path, messageID) VALUES (?, ?)", -1, &self->_setMessageIDForFileBackup, 0);
  if (v34)
  {
    v35 = v34;
    v36 = sqlite3_errmsg(self->_db);
    v37 = nps_daemon_log;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = "(nil)";
      if (v36)
      {
        v38 = v36;
      }

      v155 = 67109378;
      *v156 = v35;
      *&v156[4] = 2080;
      *&v156[6] = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v35 >= 102 && v35 <= 0xEu && ((1 << v35) & 0x4D70) != 0)
    {
      sub_10001F0F8(v35);
    }
  }

  v39 = sqlite3_prepare_v2(self->_db, "DELETE FROM sync_msgs WHERE domain=? AND key=? AND cloudEnabled=?", -1, &self->_untrackSettingsSyncMessage, 0);
  if (v39)
  {
    v40 = v39;
    v41 = sqlite3_errmsg(self->_db);
    v42 = nps_daemon_log;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = "(nil)";
      if (v41)
      {
        v43 = v41;
      }

      v155 = 67109378;
      *v156 = v40;
      *&v156[4] = 2080;
      *&v156[6] = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v40 >= 102 && v40 <= 0xEu && ((1 << v40) & 0x4D70) != 0)
    {
      sub_10001F0F8(v40);
    }
  }

  v44 = sqlite3_prepare_v2(self->_db, "DELETE FROM backup_msgs WHERE container=? AND domain=? AND key=?", -1, &self->_untrackSettingsBackupMessage, 0);
  if (v44)
  {
    v45 = v44;
    v46 = sqlite3_errmsg(self->_db);
    v47 = nps_daemon_log;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = "(nil)";
      if (v46)
      {
        v48 = v46;
      }

      v155 = 67109378;
      *v156 = v45;
      *&v156[4] = 2080;
      *&v156[6] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v45 >= 102 && v45 <= 0xEu && ((1 << v45) & 0x4D70) != 0)
    {
      sub_10001F0F8(v45);
    }
  }

  v49 = sqlite3_prepare_v2(self->_db, "DELETE FROM file_backup_msgs WHERE path=?", -1, &self->_untrackFileBackupMessage, 0);
  if (v49)
  {
    v50 = v49;
    v51 = sqlite3_errmsg(self->_db);
    v52 = nps_daemon_log;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = "(nil)";
      if (v51)
      {
        v53 = v51;
      }

      v155 = 67109378;
      *v156 = v50;
      *&v156[4] = 2080;
      *&v156[6] = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v50 >= 102 && v50 <= 0xEu && ((1 << v50) & 0x4D70) != 0)
    {
      sub_10001F0F8(v50);
    }
  }

  v54 = sqlite3_prepare_v2(self->_db, "DELETE FROM sync_msgs WHERE messageID=?", -1, &self->_untrackSettingsSyncForMessageID, 0);
  if (v54)
  {
    v55 = v54;
    v56 = sqlite3_errmsg(self->_db);
    v57 = nps_daemon_log;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = "(nil)";
      if (v56)
      {
        v58 = v56;
      }

      v155 = 67109378;
      *v156 = v55;
      *&v156[4] = 2080;
      *&v156[6] = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v55 >= 102 && v55 <= 0xEu && ((1 << v55) & 0x4D70) != 0)
    {
      sub_10001F0F8(v55);
    }
  }

  v59 = sqlite3_prepare_v2(self->_db, "DELETE FROM backup_msgs WHERE messageID=?", -1, &self->_untrackSettingsBackupForMessageID, 0);
  if (v59)
  {
    v60 = v59;
    v61 = sqlite3_errmsg(self->_db);
    v62 = nps_daemon_log;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = "(nil)";
      if (v61)
      {
        v63 = v61;
      }

      v155 = 67109378;
      *v156 = v60;
      *&v156[4] = 2080;
      *&v156[6] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v60 >= 102 && v60 <= 0xEu && ((1 << v60) & 0x4D70) != 0)
    {
      sub_10001F0F8(v60);
    }
  }

  v64 = sqlite3_prepare_v2(self->_db, "DELETE FROM file_backup_msgs WHERE messageID=?", -1, &self->_untrackFileBackupForMessageID, 0);
  if (v64)
  {
    v65 = v64;
    v66 = sqlite3_errmsg(self->_db);
    v67 = nps_daemon_log;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = "(nil)";
      if (v66)
      {
        v68 = v66;
      }

      v155 = 67109378;
      *v156 = v65;
      *&v156[4] = 2080;
      *&v156[6] = v68;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v65 >= 102 && v65 <= 0xEu && ((1 << v65) & 0x4D70) != 0)
    {
      sub_10001F0F8(v65);
    }
  }

  v69 = sqlite3_prepare_v2(self->_db, "DELETE FROM msgs_type WHERE messageID=?", -1, &self->_removeMessageFromMessageTypeTable, 0);
  if (v69)
  {
    v70 = v69;
    v71 = sqlite3_errmsg(self->_db);
    v72 = nps_daemon_log;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = "(nil)";
      if (v71)
      {
        v73 = v71;
      }

      v155 = 67109378;
      *v156 = v70;
      *&v156[4] = 2080;
      *&v156[6] = v73;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v70 >= 102 && v70 <= 0xEu && ((1 << v70) & 0x4D70) != 0)
    {
      sub_10001F0F8(v70);
    }
  }

  v74 = sqlite3_prepare_v2(self->_db, "UPDATE sync_msgs SET messageID=NULL WHERE messageID=?", -1, &self->_setNullMessageIDForSettingSync, 0);
  if (v74)
  {
    v75 = v74;
    v76 = sqlite3_errmsg(self->_db);
    v77 = nps_daemon_log;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = "(nil)";
      if (v76)
      {
        v78 = v76;
      }

      v155 = 67109378;
      *v156 = v75;
      *&v156[4] = 2080;
      *&v156[6] = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v75 >= 102 && v75 <= 0xEu && ((1 << v75) & 0x4D70) != 0)
    {
      sub_10001F0F8(v75);
    }
  }

  v79 = sqlite3_prepare_v2(self->_db, "UPDATE backup_msgs SET messageID=NULL WHERE messageID=?", -1, &self->_setNullMessageIDForSettingBackup, 0);
  if (v79)
  {
    v80 = v79;
    v81 = sqlite3_errmsg(self->_db);
    v82 = nps_daemon_log;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = "(nil)";
      if (v81)
      {
        v83 = v81;
      }

      v155 = 67109378;
      *v156 = v80;
      *&v156[4] = 2080;
      *&v156[6] = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v80 >= 102 && v80 <= 0xEu && ((1 << v80) & 0x4D70) != 0)
    {
      sub_10001F0F8(v80);
    }
  }

  v84 = sqlite3_prepare_v2(self->_db, "UPDATE file_backup_msgs SET messageID=NULL WHERE messageID=?", -1, &self->_setNullMessageIDForFileBackup, 0);
  if (v84)
  {
    v85 = v84;
    v86 = sqlite3_errmsg(self->_db);
    v87 = nps_daemon_log;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = "(nil)";
      if (v86)
      {
        v88 = v86;
      }

      v155 = 67109378;
      *v156 = v85;
      *&v156[4] = 2080;
      *&v156[6] = v88;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v85 >= 102 && v85 <= 0xEu && ((1 << v85) & 0x4D70) != 0)
    {
      sub_10001F0F8(v85);
    }
  }

  v89 = sqlite3_prepare_v2(self->_db, "SELECT domain, key, cloudEnabled FROM sync_msgs WHERE messageID=?", -1, &self->_getSettingsSyncForMessageID, 0);
  if (v89)
  {
    v90 = v89;
    v91 = sqlite3_errmsg(self->_db);
    v92 = nps_daemon_log;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = "(nil)";
      if (v91)
      {
        v93 = v91;
      }

      v155 = 67109378;
      *v156 = v90;
      *&v156[4] = 2080;
      *&v156[6] = v93;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v90 >= 102 && v90 <= 0xEu && ((1 << v90) & 0x4D70) != 0)
    {
      sub_10001F0F8(v90);
    }
  }

  v94 = sqlite3_prepare_v2(self->_db, "SELECT container, domain, key FROM backup_msgs WHERE messageID=?", -1, &self->_getSettingsBackupForMessageID, 0);
  if (v94)
  {
    v95 = v94;
    v96 = sqlite3_errmsg(self->_db);
    v97 = nps_daemon_log;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = "(nil)";
      if (v96)
      {
        v98 = v96;
      }

      v155 = 67109378;
      *v156 = v95;
      *&v156[4] = 2080;
      *&v156[6] = v98;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v95 >= 102 && v95 <= 0xEu && ((1 << v95) & 0x4D70) != 0)
    {
      sub_10001F0F8(v95);
    }
  }

  v99 = sqlite3_prepare_v2(self->_db, "SELECT path FROM file_backup_msgs WHERE messageID=?", -1, &self->_getFileBackupForMessageID, 0);
  if (v99)
  {
    v100 = v99;
    v101 = sqlite3_errmsg(self->_db);
    v102 = nps_daemon_log;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = "(nil)";
      if (v101)
      {
        v103 = v101;
      }

      v155 = 67109378;
      *v156 = v100;
      *&v156[4] = 2080;
      *&v156[6] = v103;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v100 >= 102 && v100 <= 0xEu && ((1 << v100) & 0x4D70) != 0)
    {
      sub_10001F0F8(v100);
    }
  }

  v104 = sqlite3_prepare_v2(self->_db, "SELECT domain, key, cloudEnabled FROM sync_msgs WHERE messageID IS NULL", -1, &self->_getSettingsSyncWithNullMessageID, 0);
  if (v104)
  {
    v105 = v104;
    v106 = sqlite3_errmsg(self->_db);
    v107 = nps_daemon_log;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = "(nil)";
      if (v106)
      {
        v108 = v106;
      }

      v155 = 67109378;
      *v156 = v105;
      *&v156[4] = 2080;
      *&v156[6] = v108;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v105 >= 102 && v105 <= 0xEu && ((1 << v105) & 0x4D70) != 0)
    {
      sub_10001F0F8(v105);
    }
  }

  v109 = sqlite3_prepare_v2(self->_db, "SELECT container, domain, key FROM backup_msgs WHERE messageID IS NULL", -1, &self->_getSettingsBackupWithNullMessageID, 0);
  if (v109)
  {
    v110 = v109;
    v111 = sqlite3_errmsg(self->_db);
    v112 = nps_daemon_log;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v113 = "(nil)";
      if (v111)
      {
        v113 = v111;
      }

      v155 = 67109378;
      *v156 = v110;
      *&v156[4] = 2080;
      *&v156[6] = v113;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v110 >= 102 && v110 <= 0xEu && ((1 << v110) & 0x4D70) != 0)
    {
      sub_10001F0F8(v110);
    }
  }

  v114 = sqlite3_prepare_v2(self->_db, "SELECT path FROM file_backup_msgs WHERE messageID IS NULL", -1, &self->_getFileBackupWithNullMessageID, 0);
  if (v114)
  {
    v115 = v114;
    v116 = sqlite3_errmsg(self->_db);
    v117 = nps_daemon_log;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = "(nil)";
      if (v116)
      {
        v118 = v116;
      }

      v155 = 67109378;
      *v156 = v115;
      *&v156[4] = 2080;
      *&v156[6] = v118;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v115 >= 102 && v115 <= 0xEu && ((1 << v115) & 0x4D70) != 0)
    {
      sub_10001F0F8(v115);
    }
  }

  v119 = sqlite3_prepare_v2(self->_db, "INSERT OR REPLACE INTO stashed_sync_msgs (domain, key, data) VALUES (?, ?, ?)", -1, &self->_stashSettingsSyncData, 0);
  if (v119)
  {
    v120 = v119;
    v121 = sqlite3_errmsg(self->_db);
    v122 = nps_daemon_log;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = "(nil)";
      if (v121)
      {
        v123 = v121;
      }

      v155 = 67109378;
      *v156 = v120;
      *&v156[4] = 2080;
      *&v156[6] = v123;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v120 >= 102 && v120 <= 0xEu && ((1 << v120) & 0x4D70) != 0)
    {
      sub_10001F0F8(v120);
    }
  }

  v124 = sqlite3_prepare_v2(self->_db, "SELECT domain, key, data, two_way_sync, timestamp FROM stashed_sync_msgs", -1, &self->_getStashedSettingSyncData, 0);
  if (v124)
  {
    v125 = v124;
    v126 = sqlite3_errmsg(self->_db);
    v127 = nps_daemon_log;
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v128 = "(nil)";
      if (v126)
      {
        v128 = v126;
      }

      v155 = 67109378;
      *v156 = v125;
      *&v156[4] = 2080;
      *&v156[6] = v128;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v125 >= 102 && v125 <= 0xEu && ((1 << v125) & 0x4D70) != 0)
    {
      sub_10001F0F8(v125);
    }
  }

  v129 = sqlite3_prepare_v2(self->_db, "DELETE FROM stashed_sync_msgs", -1, &self->_flushStashedSettingSyncData, 0);
  if (v129)
  {
    v130 = v129;
    v131 = sqlite3_errmsg(self->_db);
    v132 = nps_daemon_log;
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      v133 = "(nil)";
      if (v131)
      {
        v133 = v131;
      }

      v155 = 67109378;
      *v156 = v130;
      *&v156[4] = 2080;
      *&v156[6] = v133;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v130 >= 102 && v130 <= 0xEu && ((1 << v130) & 0x4D70) != 0)
    {
      sub_10001F0F8(v130);
    }
  }

  v134 = sqlite3_prepare_v2(self->_db, "DELETE FROM msgs_type", -1, &self->_purgeMessageTypeTable, 0);
  if (v134)
  {
    v135 = v134;
    v136 = sqlite3_errmsg(self->_db);
    v137 = nps_daemon_log;
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v138 = "(nil)";
      if (v136)
      {
        v138 = v136;
      }

      v155 = 67109378;
      *v156 = v135;
      *&v156[4] = 2080;
      *&v156[6] = v138;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v135 >= 102 && v135 <= 0xEu && ((1 << v135) & 0x4D70) != 0)
    {
      sub_10001F0F8(v135);
    }
  }

  v139 = sqlite3_prepare_v2(self->_db, "DELETE FROM sync_msgs", -1, &self->_purgeSettingsSyncTable, 0);
  if (v139)
  {
    v140 = v139;
    v141 = sqlite3_errmsg(self->_db);
    v142 = nps_daemon_log;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      v143 = "(nil)";
      if (v141)
      {
        v143 = v141;
      }

      v155 = 67109378;
      *v156 = v140;
      *&v156[4] = 2080;
      *&v156[6] = v143;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v140 >= 102 && v140 <= 0xEu && ((1 << v140) & 0x4D70) != 0)
    {
      sub_10001F0F8(v140);
    }
  }

  v144 = sqlite3_prepare_v2(self->_db, "DELETE FROM backup_msgs", -1, &self->_purgeSettingsBackupTable, 0);
  if (v144)
  {
    v145 = v144;
    v146 = sqlite3_errmsg(self->_db);
    v147 = nps_daemon_log;
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      v148 = "(nil)";
      if (v146)
      {
        v148 = v146;
      }

      v155 = 67109378;
      *v156 = v145;
      *&v156[4] = 2080;
      *&v156[6] = v148;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
    }

    if (v145 >= 102 && v145 <= 0xEu && ((1 << v145) & 0x4D70) != 0)
    {
      sub_10001F0F8(v145);
    }
  }

  v149 = sqlite3_prepare_v2(self->_db, "DELETE FROM file_backup_msgs", -1, &self->_purgeFileBackupTable, 0);
  if (!v149)
  {
    goto LABEL_275;
  }

  v150 = v149;
  v151 = sqlite3_errmsg(self->_db);
  v152 = nps_daemon_log;
  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
  {
    v153 = "(nil)";
    if (v151)
    {
      v153 = v151;
    }

    v155 = 67109378;
    *v156 = v150;
    *&v156[4] = 2080;
    *&v156[6] = v153;
    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "SQL Error: (%d) %s", &v155, 0x12u);
  }

  if (v150 >= 102)
  {
    v10 = 1;
    if (v150 <= 0xEu && ((1 << v150) & 0x4D70) != 0)
    {
      sub_10001F0F8(v150);
    }
  }

  else
  {
LABEL_275:
    v10 = 1;
  }

LABEL_279:

  return v10;
}

@end