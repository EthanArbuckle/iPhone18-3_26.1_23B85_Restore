@interface MKMessageMigrator
- (BOOL)_import2:(id)a3;
- (BOOL)_import:(id)a3;
- (BOOL)_performSimpleQuery:(id)a3;
- (MKMessageMigrator)init;
- (id)chatIDForMessage:(id)a3 forHandleIDs:(id)a4 withGroup:(id)a5;
- (id)handleID:(id)a3;
- (id)handleIDs:(id)a3;
- (id)insertAttachment:(id)a3 withMessage:(id)a4;
- (id)insertChatForMessage:(id)a3 forHandleIDs:(id)a4 withGroup:(id)a5;
- (id)insertHandle:(id)a3;
- (id)insertMessage:(id)a3 forHandleID:(id)a4 withGroup:(id)a5;
- (id)joinAttachment:(id)a3 message:(id)a4;
- (id)joinChat:(id)a3 handle:(id)a4;
- (id)joinChat:(id)a3 message:(id)a4 date:(int64_t)a5;
- (void)close;
- (void)dealloc;
- (void)delete;
- (void)delete:(id)a3;
- (void)deleteKV;
- (void)deleteKV:(id)a3;
- (void)dropTrigger:(id)a3;
- (void)dropTriggers;
- (void)import;
- (void)import:(id)a3;
- (void)importDataEncodedInJSON:(id)a3;
- (void)notify;
- (void)open;
- (void)query:(id)a3;
- (void)updateClient;
@end

@implementation MKMessageMigrator

- (MKMessageMigrator)init
{
  v11.receiver = self;
  v11.super_class = MKMessageMigrator;
  v2 = [(MKMigrator *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    accountGUID = v2->_accountGUID;
    v2->_accountGUID = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groups = v2->_groups;
    v2->_groups = v6;

    v2->_database = 0;
    v8 = objc_alloc_init(_TtC12MigrationKit18MessageTransformer);
    transformer = v2->_transformer;
    v2->_transformer = v8;

    [(MKMigrator *)v2 setType:10];
    [(MKMessageMigrator *)v2 open];
  }

  return v2;
}

- (void)dealloc
{
  [(MKMessageMigrator *)self close];
  v3.receiver = self;
  v3.super_class = MKMessageMigrator;
  [(MKMessageMigrator *)&v3 dealloc];
}

- (void)open
{
  v3 = NSHomeDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"/Library/SMS/sms.db"];

  if (sqlite3_open([v4 UTF8String], &self->_database))
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MKApplicationDatabase *)self open:v5];
    }
  }
}

- (void)close
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_database)
  {
    if ([(MKMigrator *)v2 importCount])
    {
      [(MKMessageMigrator *)v2 begin];
      [(MKMessageMigrator *)v2 updateClient];
      v3 = +[MKLog log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "attempted sms.db version update to legacy schema", buf, 2u);
      }

      [(MKMessageMigrator *)v2 commit];
    }

    v4 = +[MKLog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_2592D2000, v4, OS_LOG_TYPE_INFO, "closing sms.db", v5, 2u);
    }

    sqlite3_close(v2->_database);
    v2->_database = 0;
    [(MKMessageMigrator *)v2 notify];
  }

  objc_sync_exit(v2);
}

- (void)notify
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.imdpersistenceagent.notification.mergecompleted", 0, 0, 1u);
}

- (void)import
{
  [(MKMessageMigrator *)self close];
  v3.receiver = self;
  v3.super_class = MKMessageMigrator;
  [(MKMigrator *)&v3 import];
}

- (void)importDataEncodedInJSON:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "dropping triggers on sms.db", v8, 2u);
  }

  [(MKMessageMigrator *)v5 begin];
  [(MKMessageMigrator *)v5 dropTriggers];
  [(MKMessageMigrator *)v5 deleteKV];
  [(MKMessageMigrator *)v5 commit];
  [(MKMessageMigrator *)v5 import:v4];
  objc_autoreleasePoolPop(v6);
  objc_sync_exit(v5);
}

- (void)delete
{
  [(MKMessageMigrator *)self delete:@"message_attachment_join"];
  [(MKMessageMigrator *)self delete:@"chat_message_join"];
  [(MKMessageMigrator *)self delete:@"chat_handle_join"];
  [(MKMessageMigrator *)self delete:@"chat"];
  [(MKMessageMigrator *)self delete:@"attachment"];
  [(MKMessageMigrator *)self delete:@"message"];

  [(MKMessageMigrator *)self delete:@"handle"];
}

- (void)delete:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", a3];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v4 UTF8String], -1, &ppStmt, 0))
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v6 = +[MKLog log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MKMessageMigrator delete:];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)query:(id)a3
{
  ppStmt = 0;
  database = self->_database;
  v5 = a3;
  if (sqlite3_prepare_v2(database, [a3 UTF8String], -1, &ppStmt, 0))
  {
    v6 = +[MKLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v7 = +[MKLog log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)import:(id)a3
{
  v17 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  [(MKMessageMigrator *)self begin];
  v5 = objc_autoreleasePoolPush();
  v6 = [(MKMessageMigrator *)self _import:v17];
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    [(MKMessageMigrator *)self commit];
    [(MKMigrator *)self migratorDidImport];
    -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v17 length]);
  }

  else
  {
    [(MKMessageMigrator *)self rollback];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKMessageError" code:1 userInfo:0];
    [(MKMigrator *)self migratorDidFailWithImportError:v7];
  }

  v8 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v8);
  v9 = [v8 payload];
  v10 = [v9 messages];

  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:v4];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v13];
  v15 = [v10 importElapsedTime];
  v16 = [v15 decimalNumberByAdding:v14];
  [v10 setImportElapsedTime:v16];

  objc_sync_exit(v8);
}

- (BOOL)_import2:(id)a3
{
  v4 = a3;
  v5 = [[MKMessage alloc] initWithData:v4];

  if (v5)
  {
    v6 = [(MKMessage *)v5 body];
    if ([v6 length])
    {

LABEL_8:
      [(MessageTransformer *)self->_transformer saveWithMessage:v5];
      goto LABEL_9;
    }

    v8 = [(MKMessage *)v5 attachments];
    v9 = [v8 count];

    if (v9)
    {
      goto LABEL_8;
    }

    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MKMessageMigrator _import2:];
    }
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MKMessageMigrator _import2:];
    }
  }

LABEL_9:
  return v5 != 0;
}

- (BOOL)_import:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v4 = [[MKMessage alloc] initWithData:v49];
  v5 = v4;
  if (v4)
  {
    v6 = [(MKMessage *)v4 body];
    if ([v6 length])
    {
    }

    else
    {
      v9 = [(MKMessage *)v5 attachments];
      v10 = [v9 count];

      if (!v10)
      {
        v7 = +[MKLog log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [MKMessageMigrator _import2:];
        }

        v8 = 1;
        goto LABEL_78;
      }
    }

    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "will import a message", buf, 2u);
    }

    v7 = [(MKMessage *)v5 handles];
    v12 = +[MKLog log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v7;
      _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "handles : %@", buf, 0xCu);
    }

    if ([v7 count])
    {
      oslog = [(MKMessageMigrator *)self handleIDs:v7];
      v48 = [oslog sortedArrayUsingComparator:&__block_literal_global_3];
      v45 = [v48 componentsJoinedByString:{@", "}];
      if ([(MKMessage *)v5 isSent])
      {
        v47 = &unk_286AACEA8;
      }

      else
      {
        v47 = [oslog objectAtIndexedSubscript:0];
      }

      if (oslog)
      {
        v13 = [(MKMessage *)v5 recipients];
        v14 = [v13 count] > 1;

        if (v14)
        {
          v15 = self->_groups;
          objc_sync_enter(v15);
          v16 = [(NSMutableDictionary *)self->_groups objectForKey:v45];
          if (!v16)
          {
            v16 = objc_alloc_init(MKMessageGroup);
            [(NSMutableDictionary *)self->_groups setObject:v16 forKey:v45];
          }

          v46 = v16;
          objc_sync_exit(v15);
        }

        else
        {
          v46 = 0;
        }

        v19 = +[MKLog log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = oslog;
          _os_log_impl(&dword_2592D2000, v19, OS_LOG_TYPE_INFO, "handle ids : %@", buf, 0xCu);
        }

        v20 = +[MKLog log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v47;
          _os_log_impl(&dword_2592D2000, v20, OS_LOG_TYPE_INFO, "sender handle id : %@", buf, 0xCu);
        }

        v21 = +[MKLog log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [(MKMessageGroup *)v46 ID];
          *buf = 138412290;
          v57 = v22;
          _os_log_impl(&dword_2592D2000, v21, OS_LOG_TYPE_INFO, "group id : %@", buf, 0xCu);
        }

        v23 = +[MKLog log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [(MKMessageGroup *)v46 roomName];
          *buf = 138412290;
          v57 = v24;
          _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "group room name : %@", buf, 0xCu);
        }

        v25 = [(MKMessageMigrator *)self insertMessage:v5 forHandleID:v47 withGroup:v46];
        v26 = +[MKLog log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v25;
          _os_log_impl(&dword_2592D2000, v26, OS_LOG_TYPE_INFO, "message id : %@", buf, 0xCu);
        }

        if (v25)
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v27 = [(MKMessage *)v5 attachments];
          v28 = [v27 countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v28)
          {
            v30 = *v52;
            *&v29 = 138412290;
            v44 = v29;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v52 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v51 + 1) + 8 * i);
                [v32 write];
                v33 = [(MKMessageMigrator *)self insertAttachment:v32 withMessage:v5];
                v34 = +[MKLog log];
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = v44;
                  v57 = v33;
                  _os_log_impl(&dword_2592D2000, v34, OS_LOG_TYPE_INFO, "attachment id : %@", buf, 0xCu);
                }

                if (!v33)
                {
                  v40 = +[MKLog log];
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    [MKMessageMigrator _import:];
                  }

                  goto LABEL_67;
                }

                v35 = [(MKMessageMigrator *)self joinAttachment:v33 message:v25];
                if (!v35)
                {
                  v41 = +[MKLog log];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    [MKMessageMigrator _import:];
                  }

                  goto LABEL_67;
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v51 objects:v55 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v27 = [(MKMessageMigrator *)self chatIDForMessage:v5 forHandleIDs:v48 withGroup:v46];
          v36 = +[MKLog log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = v27;
            _os_log_impl(&dword_2592D2000, v36, OS_LOG_TYPE_INFO, "chat id : %@", buf, 0xCu);
          }

          if (v27)
          {
            v37 = [(MKMessageMigrator *)self joinChat:v27 message:v25 date:[(MKMessage *)v5 timestampInNanoseconds]];
            v8 = v37 != 0;
            v38 = +[MKLog log];
            v39 = v38;
            if (v37)
            {
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2592D2000, v39, OS_LOG_TYPE_INFO, "did import a message", buf, 2u);
              }
            }

            else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [MKMessageMigrator _import:];
            }
          }

          else
          {
            v37 = +[MKLog log];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [MKMessageMigrator _import:];
            }

            v8 = 0;
          }
        }

        else
        {
          v27 = +[MKLog log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [MKMessageMigrator _import:];
          }

LABEL_67:
          v8 = 0;
        }

        p_super = &v46->super;
      }

      else
      {
        v17 = +[MKLog log];
        p_super = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [MKMessageMigrator _import:];
          v8 = 0;
          p_super = v17;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      oslog = +[MKLog log];
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [MKMessageMigrator _import:];
      }

      v8 = 0;
    }
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MKMessageMigrator _import2:];
    }

    v8 = 0;
  }

LABEL_78:

  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_performSimpleQuery:(id)a3
{
  ppStmt = 0;
  database = self->_database;
  v5 = a3;
  if (!sqlite3_prepare_v2(database, [a3 UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_finalize(ppStmt);
  }

  return 0;
}

- (id)handleIDs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MKMessageMigrator *)self handleID:*(*(&v16 + 1) + 8 * i), v16];
        if (!v11)
        {

          v13 = 0;
          goto LABEL_11;
        }

        v12 = v11;
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = v5;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)handleID:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (!sqlite3_prepare(self->_database, [@"SELECT rowid FROM handle WHERE id = ? LIMIT 1" UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) == 100)
    {
      v5 = sqlite3_column_int64(ppStmt, 0);
      sqlite3_finalize(ppStmt);
      if (v5 != -1)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
        goto LABEL_7;
      }
    }

    else
    {
      sqlite3_finalize(ppStmt);
    }
  }

  v6 = [(MKMessageMigrator *)self insertHandle:v4];
LABEL_7:
  v7 = v6;

  return v7;
}

- (id)insertHandle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD380, "count")}];
  if ([&unk_286AAD380 count])
  {
    v6 = 0;
    do
    {
      [v5 setObject:@"?" atIndexedSubscript:v6++];
    }

    while (v6 < [&unk_286AAD380 count]);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [&unk_286AAD380 componentsJoinedByString:{@", "}];
  v9 = [v5 componentsJoinedByString:{@", "}];
  v10 = [v7 stringWithFormat:@"INSERT INTO handle (%@) VALUES (%@)", v8, v9];

  v11 = +[MKLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "query : %@", buf, 0xCu);
  }

  *buf = 0;
  if (sqlite3_prepare(self->_database, [v10 UTF8String], -1, buf, 0))
  {
    v12 = +[MKLog log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    sqlite3_bind_text(*buf, 1, [v4 UTF8String], -1, 0);
    sqlite3_bind_null(*buf, 2);
    sqlite3_bind_text(*buf, 3, [@"SMS" UTF8String], -1, 0);
    sqlite3_bind_null(*buf, 4);
    if (sqlite3_step(*buf) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(self->_database);
      sqlite3_finalize(*buf);
      if (insert_rowid != -1)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
        goto LABEL_17;
      }
    }

    else
    {
      v15 = +[MKLog log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase addIdentifier:];
      }

      sqlite3_finalize(*buf);
    }
  }

  v14 = 0;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)insertMessage:(id)a3 forHandleID:(id)a4 withGroup:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD398, "count")}];
  if ([&unk_286AAD398 count])
  {
    v12 = 0;
    do
    {
      [v11 setObject:@"?" atIndexedSubscript:v12++];
    }

    while (v12 < [&unk_286AAD398 count]);
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [&unk_286AAD398 componentsJoinedByString:{@", "}];
  v15 = [v11 componentsJoinedByString:{@", "}];
  v16 = [v13 stringWithFormat:@"INSERT INTO message (%@) VALUES (%@)", v14, v15];

  v17 = +[MKLog log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "query : %@", buf, 0xCu);
  }

  if ([v8 isRead])
  {
    v18 = [v8 timestampInNanoseconds];
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *buf = 0;
  v20 = self;
  if (sqlite3_prepare(self->_database, [v16 UTF8String], -1, buf, 0))
  {
    v21 = +[MKLog log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    v41 = v19;
    v42 = v10;
    v22 = *buf;
    v23 = [v8 UUID];
    sqlite3_bind_text(v22, 1, [v23 UTF8String], -1, 0);

    v24 = *buf;
    v25 = [v8 body];
    sqlite3_bind_text(v24, 2, [v25 UTF8String], -1, 0);

    sqlite3_bind_null(*buf, 3);
    v43 = v9;
    sqlite3_bind_int64(*buf, 4, [v9 longLongValue]);
    sqlite3_bind_null(*buf, 5);
    sqlite3_bind_null(*buf, 6);
    v26 = [v8 attributedBody];

    v27 = *buf;
    if (v26)
    {
      v28 = [v8 attributedBody];
      v29 = [v28 bytes];
      v30 = [v8 attributedBody];
      sqlite3_bind_blob(v27, 7, v29, [v30 length], 0);
    }

    else
    {
      sqlite3_bind_null(*buf, 7);
    }

    sqlite3_bind_int(*buf, 8, 10);
    sqlite3_bind_text(*buf, 9, [@"SMS" UTF8String], -1, 0);
    v31 = *buf;
    v32 = [v8 account];
    sqlite3_bind_text(v31, 10, [v32 UTF8String], -1, 0);

    v33 = v20;
    sqlite3_bind_text(*buf, 11, [(NSString *)v20->_accountGUID UTF8String], -1, 0);
    sqlite3_bind_int(*buf, 12, 0);
    sqlite3_bind_int64(*buf, 13, [v8 timestampInNanoseconds]);
    sqlite3_bind_int64(*buf, 14, v18);
    sqlite3_bind_int64(*buf, 15, [v8 timestampInNanoseconds]);
    sqlite3_bind_int(*buf, 16, 1);
    sqlite3_bind_int(*buf, 17, [v8 isSent]);
    v34 = *buf;
    v10 = v42;
    if (v42)
    {
      v35 = [v42 roomName];
      sqlite3_bind_text(v34, 18, [v35 UTF8String], -1, 0);
    }

    else
    {
      sqlite3_bind_null(*buf, 18);
    }

    v9 = v43;
    sqlite3_bind_int(*buf, 19, 1);
    sqlite3_bind_int(*buf, 20, 0);
    sqlite3_bind_null(*buf, 21);
    sqlite3_bind_int(*buf, 22, v41);
    sqlite3_bind_int(*buf, 23, 1);
    if (sqlite3_step(*buf) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(v33->_database);
      sqlite3_finalize(*buf);
      if (insert_rowid != -1)
      {
        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
        goto LABEL_26;
      }
    }

    else
    {
      v38 = +[MKLog log];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase addIdentifier:];
      }

      sqlite3_finalize(*buf);
    }
  }

  v37 = 0;
LABEL_26:

  v39 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)insertAttachment:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD3B0, "count")}];
  if ([&unk_286AAD3B0 count])
  {
    v9 = 0;
    do
    {
      [v8 setObject:@"?" atIndexedSubscript:v9++];
    }

    while (v9 < [&unk_286AAD3B0 count]);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [&unk_286AAD3B0 componentsJoinedByString:{@", "}];
  v12 = [v8 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"INSERT INTO attachment (%@) VALUES (%@)", v11, v12];

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v13 UTF8String], -1, &ppStmt, 0))
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    v15 = ppStmt;
    v16 = [v6 UUID];
    sqlite3_bind_text(v15, 1, [v16 UTF8String], -1, 0);

    sqlite3_bind_int64(ppStmt, 2, [v7 timestampInSeconds]);
    sqlite3_bind_int64(ppStmt, 3, [v7 timestampInSeconds]);
    v17 = ppStmt;
    v18 = [v6 filename];
    sqlite3_bind_text(v17, 4, [v18 UTF8String], -1, 0);

    v19 = ppStmt;
    v20 = [v6 uniformTypeIdentifier];
    sqlite3_bind_text(v19, 5, [v20 UTF8String], -1, 0);

    v21 = ppStmt;
    v22 = [v6 contentType];
    sqlite3_bind_text(v21, 6, [v22 UTF8String], -1, 0);

    sqlite3_bind_int(ppStmt, 7, [v6 transferState]);
    sqlite3_bind_int(ppStmt, 8, [v7 isSent]);
    sqlite3_bind_null(ppStmt, 9);
    v23 = ppStmt;
    v24 = [v6 filename];
    v25 = [v24 lastPathComponent];
    sqlite3_bind_text(v23, 10, [v25 UTF8String], -1, 0);

    v26 = ppStmt;
    v27 = [v6 data];
    sqlite3_bind_int(v26, 11, [v27 length]);

    v28 = ppStmt;
    v29 = [v6 UUID];
    sqlite3_bind_text(v28, 12, [v29 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(self->_database);
      sqlite3_finalize(ppStmt);
      if (insert_rowid != -1)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
        goto LABEL_15;
      }
    }

    else
    {
      v32 = +[MKLog log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase addIdentifier:];
      }

      sqlite3_finalize(ppStmt);
    }
  }

  v31 = 0;
LABEL_15:

  return v31;
}

- (id)chatIDForMessage:(id)a3 forHandleIDs:(id)a4 withGroup:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 roomName];
    v13 = @"SELECT rowid FROM chat WHERE room_name = ? LIMIT 1";
  }

  else
  {
    if ([v8 isSent])
    {
      v14 = [v8 recipients];
      v12 = [v14 objectAtIndexedSubscript:0];
    }

    else
    {
      v12 = [v8 sender];
    }

    v13 = @"SELECT rowid FROM chat WHERE chat_identifier = ? LIMIT 1";
  }

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [(__CFString *)v13 UTF8String], -1, &ppStmt, 0))
  {
    goto LABEL_23;
  }

  sqlite3_bind_text(ppStmt, 1, [v12 UTF8String], -1, 0);
  if (sqlite3_step(ppStmt) != 100)
  {
    sqlite3_finalize(ppStmt);
    goto LABEL_23;
  }

  v15 = sqlite3_column_int64(ppStmt, 0);
  sqlite3_finalize(ppStmt);
  if (v15 < 0)
  {
LABEL_23:
    v16 = [(MKMessageMigrator *)self insertChatForMessage:v8 forHandleIDs:v9 withGroup:v11];
    goto LABEL_24;
  }

  v27 = v8;
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v9;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(MKMessageMigrator *)self joinChat:v16 handle:*(*(&v30 + 1) + 8 * i)];
        if (!v22)
        {
          v23 = +[MKLog log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [MKMessageMigrator chatIDForMessage:v29 forHandleIDs:v23 withGroup:?];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v19);
  }

  v9 = v26;
  v8 = v27;
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)insertChatForMessage:(id)a3 forHandleIDs:(id)a4 withGroup:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v45 = a5;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD3C8, "count")}];
  if ([&unk_286AAD3C8 count])
  {
    v10 = 0;
    do
    {
      [v9 setObject:@"?" atIndexedSubscript:v10++];
    }

    while (v10 < [&unk_286AAD3C8 count]);
  }

  if ([v8 isSent])
  {
    v11 = [v8 recipients];
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = [v8 sender];
  }

  v13 = v45;
  if ([v8 isSent])
  {
    v14 = [v8 sender];
  }

  else if (v45)
  {
    v14 = &stru_286A8E730;
  }

  else
  {
    v15 = [v8 recipients];
    v14 = [v15 objectAtIndexedSubscript:0];
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_286A8E730;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"P:%@", v16];
  v49 = v14;
  if (v45)
  {
    v48 = [v45 roomName];
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"SMS+;%@", v48];;
    v44 = [v45 ID];
  }

  else
  {
    v48 = v12;
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"SMS-;%@", v48];;
    v18 = [MEMORY[0x277CCAD78] UUID];
    v44 = [v18 UUIDString];
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = [&unk_286AAD3C8 componentsJoinedByString:{@", "}];
  v21 = [v9 componentsJoinedByString:{@", "}];
  v22 = [v19 stringWithFormat:@"INSERT INTO chat (%@) VALUES (%@)", v20, v21];

  ppStmt = 0;
  v43 = v22;
  if (sqlite3_prepare(self->_database, [v22 UTF8String], -1, &ppStmt, 0))
  {
    v23 = +[MKLog log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }

    v24 = 0;
    v25 = v44;
    goto LABEL_46;
  }

  if (v45)
  {
    v26 = 43;
  }

  else
  {
    v26 = 45;
  }

  sqlite3_bind_text(ppStmt, 1, [v47 UTF8String], -1, 0);
  sqlite3_bind_int(ppStmt, 2, v26);
  sqlite3_bind_int(ppStmt, 3, 3);
  sqlite3_bind_text(ppStmt, 4, [(NSString *)self->_accountGUID UTF8String], -1, 0);
  sqlite3_bind_null(ppStmt, 5);
  sqlite3_bind_text(ppStmt, 6, [v48 UTF8String], -1, 0);
  sqlite3_bind_text(ppStmt, 7, [@"SMS" UTF8String], -1, 0);
  v27 = ppStmt;
  if (v45)
  {
    v28 = [v45 roomName];
    sqlite3_bind_text(v27, 8, [v28 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 8);
  }

  sqlite3_bind_text(ppStmt, 9, [v17 UTF8String], -1, 0);
  sqlite3_bind_text(ppStmt, 10, [(__CFString *)v49 UTF8String], -1, 0);
  sqlite3_bind_text(ppStmt, 11, [&stru_286A8E730 UTF8String], -1, 0);
  v25 = v44;
  sqlite3_bind_text(ppStmt, 12, [v44 UTF8String], -1, 0);
  sqlite3_bind_int(ppStmt, 13, 0);
  if (sqlite3_step(ppStmt) != 101)
  {
    v38 = +[MKLog log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }

    sqlite3_finalize(ppStmt);
    goto LABEL_45;
  }

  insert_rowid = sqlite3_last_insert_rowid(self->_database);
  sqlite3_finalize(ppStmt);
  if (insert_rowid == -1)
  {
LABEL_45:
    v24 = 0;
LABEL_46:
    v37 = v46;
    goto LABEL_47;
  }

  v41 = v12;
  v42 = v8;
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = v46;
  v31 = [v30 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v53;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [(MKMessageMigrator *)self joinChat:v24 handle:*(*(&v52 + 1) + 8 * i)];
        if (!v35)
        {
          v36 = +[MKLog log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [MKMessageMigrator chatIDForMessage:v51 forHandleIDs:v36 withGroup:?];
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v32);
  }

  v12 = v41;
  v8 = v42;
  v13 = v45;
  v37 = v46;
  v25 = v44;
LABEL_47:

  v39 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)joinAttachment:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD3E0, "count")}];
  if ([&unk_286AAD3E0 count])
  {
    v9 = 0;
    do
    {
      [v8 setObject:@"?" atIndexedSubscript:v9++];
    }

    while (v9 < [&unk_286AAD3E0 count]);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [&unk_286AAD3E0 componentsJoinedByString:{@", "}];
  v12 = [v8 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"INSERT INTO message_attachment_join (%@) VALUES (%@)", v11, v12];

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v13 UTF8String], -1, &ppStmt, 0))
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, [v7 longLongValue]);
    sqlite3_bind_int64(ppStmt, 2, [v6 longLongValue]);
    if (sqlite3_step(ppStmt) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(self->_database);
      sqlite3_finalize(ppStmt);
      if (insert_rowid != -1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
        goto LABEL_15;
      }
    }

    else
    {
      v17 = +[MKLog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase addIdentifier:];
      }

      sqlite3_finalize(ppStmt);
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (id)joinChat:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD3F8, "count")}];
  if ([&unk_286AAD3F8 count])
  {
    v9 = 0;
    do
    {
      [v8 setObject:@"?" atIndexedSubscript:v9++];
    }

    while (v9 < [&unk_286AAD3F8 count]);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [&unk_286AAD3F8 componentsJoinedByString:{@", "}];
  v12 = [v8 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"INSERT OR IGNORE INTO chat_handle_join (%@) VALUES (%@)", v11, v12];

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v13 UTF8String], -1, &ppStmt, 0))
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, [v6 longLongValue]);
    sqlite3_bind_int64(ppStmt, 2, [v7 longLongValue]);
    if (sqlite3_step(ppStmt) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(self->_database);
      sqlite3_finalize(ppStmt);
      if (insert_rowid != -1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
        goto LABEL_15;
      }
    }

    else
    {
      v17 = +[MKLog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase addIdentifier:];
      }

      sqlite3_finalize(ppStmt);
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (id)joinChat:(id)a3 message:(id)a4 date:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD410, "count")}];
  if ([&unk_286AAD410 count])
  {
    v11 = 0;
    do
    {
      [v10 setObject:@"?" atIndexedSubscript:v11++];
    }

    while (v11 < [&unk_286AAD410 count]);
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [&unk_286AAD410 componentsJoinedByString:{@", "}];
  v14 = [v10 componentsJoinedByString:{@", "}];
  v15 = [v12 stringWithFormat:@"INSERT INTO chat_message_join (%@) VALUES (%@)", v13, v14];

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v15 UTF8String], -1, &ppStmt, 0))
  {
    v16 = +[MKLog log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, [v8 longLongValue]);
    sqlite3_bind_int64(ppStmt, 2, [v9 longLongValue]);
    sqlite3_bind_int64(ppStmt, 3, a5);
    if (sqlite3_step(ppStmt) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(self->_database);
      sqlite3_finalize(ppStmt);
      if (insert_rowid != -1)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
        goto LABEL_15;
      }
    }

    else
    {
      v19 = +[MKLog log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase addIdentifier:];
      }

      sqlite3_finalize(ppStmt);
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

- (void)updateClient
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE _SqliteDatabaseProperties SET value = ? WHERE key = ?"];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v3 UTF8String], -1, &ppStmt, 0))
  {
    v4 = +[MKLog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, 16199);
    sqlite3_bind_text(ppStmt, 2, [@"_ClientVersion" UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      v5 = +[MKLog log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [MKMessageMigrator updateClient];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)dropTriggers
{
  [(MKMessageMigrator *)self dropTrigger:@"verify_chat_insert"];

  [(MKMessageMigrator *)self dropTrigger:@"verify_chat_update"];
}

- (void)dropTrigger:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TRIGGER IF EXISTS %@", a3];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v4 UTF8String], -1, &ppStmt, 0))
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v6 = +[MKLog log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MKMessageMigrator delete:];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)deleteKV
{
  [(MKMessageMigrator *)self deleteKV:@"chatVersion"];

  [(MKMessageMigrator *)self deleteKV:@"chatLookupVersion"];
}

- (void)deleteKV:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM kvtable WHERE key = ?"];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [v5 UTF8String], -1, &ppStmt, 0))
  {
    v6 = +[MKLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      v7 = +[MKLog log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MKMessageMigrator delete:];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

@end