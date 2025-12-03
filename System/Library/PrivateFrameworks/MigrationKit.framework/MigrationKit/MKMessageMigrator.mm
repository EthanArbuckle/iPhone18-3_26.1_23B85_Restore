@interface MKMessageMigrator
- (BOOL)_import2:(id)_import2;
- (BOOL)_import:(id)_import;
- (BOOL)_performSimpleQuery:(id)query;
- (MKMessageMigrator)init;
- (id)chatIDForMessage:(id)message forHandleIDs:(id)ds withGroup:(id)group;
- (id)handleID:(id)d;
- (id)handleIDs:(id)ds;
- (id)insertAttachment:(id)attachment withMessage:(id)message;
- (id)insertChatForMessage:(id)message forHandleIDs:(id)ds withGroup:(id)group;
- (id)insertHandle:(id)handle;
- (id)insertMessage:(id)message forHandleID:(id)d withGroup:(id)group;
- (id)joinAttachment:(id)attachment message:(id)message;
- (id)joinChat:(id)chat handle:(id)handle;
- (id)joinChat:(id)chat message:(id)message date:(int64_t)date;
- (void)close;
- (void)dealloc;
- (void)delete;
- (void)delete:(id)delete;
- (void)deleteKV;
- (void)deleteKV:(id)v;
- (void)dropTrigger:(id)trigger;
- (void)dropTriggers;
- (void)import;
- (void)import:(id)import;
- (void)importDataEncodedInJSON:(id)n;
- (void)notify;
- (void)open;
- (void)query:(id)query;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    accountGUID = v2->_accountGUID;
    v2->_accountGUID = uUIDString;

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_database)
  {
    if ([(MKMigrator *)selfCopy importCount])
    {
      [(MKMessageMigrator *)selfCopy begin];
      [(MKMessageMigrator *)selfCopy updateClient];
      v3 = +[MKLog log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "attempted sms.db version update to legacy schema", buf, 2u);
      }

      [(MKMessageMigrator *)selfCopy commit];
    }

    v4 = +[MKLog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_2592D2000, v4, OS_LOG_TYPE_INFO, "closing sms.db", v5, 2u);
    }

    sqlite3_close(selfCopy->_database);
    selfCopy->_database = 0;
    [(MKMessageMigrator *)selfCopy notify];
  }

  objc_sync_exit(selfCopy);
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

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_autoreleasePoolPush();
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "dropping triggers on sms.db", v8, 2u);
  }

  [(MKMessageMigrator *)selfCopy begin];
  [(MKMessageMigrator *)selfCopy dropTriggers];
  [(MKMessageMigrator *)selfCopy deleteKV];
  [(MKMessageMigrator *)selfCopy commit];
  [(MKMessageMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v6);
  objc_sync_exit(selfCopy);
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

- (void)delete:(id)delete
{
  delete = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", delete];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [delete UTF8String], -1, &ppStmt, 0))
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

- (void)query:(id)query
{
  ppStmt = 0;
  database = self->_database;
  queryCopy = query;
  if (sqlite3_prepare_v2(database, [query UTF8String], -1, &ppStmt, 0))
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

- (void)import:(id)import
{
  importCopy = import;
  date = [MEMORY[0x277CBEAA8] date];
  [(MKMessageMigrator *)self begin];
  v5 = objc_autoreleasePoolPush();
  v6 = [(MKMessageMigrator *)self _import:importCopy];
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    [(MKMessageMigrator *)self commit];
    [(MKMigrator *)self migratorDidImport];
    -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
  }

  else
  {
    [(MKMessageMigrator *)self rollback];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKMessageError" code:1 userInfo:0];
    [(MKMigrator *)self migratorDidFailWithImportError:v7];
  }

  v8 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v8);
  payload = [v8 payload];
  messages = [payload messages];

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v13];
  importElapsedTime = [messages importElapsedTime];
  v16 = [importElapsedTime decimalNumberByAdding:v14];
  [messages setImportElapsedTime:v16];

  objc_sync_exit(v8);
}

- (BOOL)_import2:(id)_import2
{
  _import2Copy = _import2;
  v5 = [[MKMessage alloc] initWithData:_import2Copy];

  if (v5)
  {
    body = [(MKMessage *)v5 body];
    if ([body length])
    {

LABEL_8:
      [(MessageTransformer *)self->_transformer saveWithMessage:v5];
      goto LABEL_9;
    }

    attachments = [(MKMessage *)v5 attachments];
    v9 = [attachments count];

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

- (BOOL)_import:(id)_import
{
  v58 = *MEMORY[0x277D85DE8];
  _importCopy = _import;
  v4 = [[MKMessage alloc] initWithData:_importCopy];
  v5 = v4;
  if (v4)
  {
    body = [(MKMessage *)v4 body];
    if ([body length])
    {
    }

    else
    {
      attachments = [(MKMessage *)v5 attachments];
      v10 = [attachments count];

      if (!v10)
      {
        handles = +[MKLog log];
        if (os_log_type_enabled(handles, OS_LOG_TYPE_ERROR))
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

    handles = [(MKMessage *)v5 handles];
    v12 = +[MKLog log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = handles;
      _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "handles : %@", buf, 0xCu);
    }

    if ([handles count])
    {
      oslog = [(MKMessageMigrator *)self handleIDs:handles];
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
        recipients = [(MKMessage *)v5 recipients];
        v14 = [recipients count] > 1;

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
          roomName = [(MKMessageGroup *)v46 roomName];
          *buf = 138412290;
          v57 = roomName;
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
          attachments2 = [(MKMessage *)v5 attachments];
          v28 = [attachments2 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
                  objc_enumerationMutation(attachments2);
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

              v28 = [attachments2 countByEnumeratingWithState:&v51 objects:v55 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          attachments2 = [(MKMessageMigrator *)self chatIDForMessage:v5 forHandleIDs:v48 withGroup:v46];
          v36 = +[MKLog log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = attachments2;
            _os_log_impl(&dword_2592D2000, v36, OS_LOG_TYPE_INFO, "chat id : %@", buf, 0xCu);
          }

          if (attachments2)
          {
            v37 = [(MKMessageMigrator *)self joinChat:attachments2 message:v25 date:[(MKMessage *)v5 timestampInNanoseconds]];
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
          attachments2 = +[MKLog log];
          if (os_log_type_enabled(attachments2, OS_LOG_TYPE_ERROR))
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
    handles = +[MKLog log];
    if (os_log_type_enabled(handles, OS_LOG_TYPE_ERROR))
    {
      [MKMessageMigrator _import2:];
    }

    v8 = 0;
  }

LABEL_78:

  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_performSimpleQuery:(id)query
{
  ppStmt = 0;
  database = self->_database;
  queryCopy = query;
  if (!sqlite3_prepare_v2(database, [query UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_finalize(ppStmt);
  }

  return 0;
}

- (id)handleIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dsCopy;
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

- (id)handleID:(id)d
{
  dCopy = d;
  ppStmt = 0;
  if (!sqlite3_prepare(self->_database, [@"SELECT rowid FROM handle WHERE id = ? LIMIT 1" UTF8String], -1, &ppStmt, 0))
  {
    sqlite3_bind_text(ppStmt, 1, [dCopy UTF8String], -1, 0);
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

  v6 = [(MKMessageMigrator *)self insertHandle:dCopy];
LABEL_7:
  v7 = v6;

  return v7;
}

- (id)insertHandle:(id)handle
{
  v19 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
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
    sqlite3_bind_text(*buf, 1, [handleCopy UTF8String], -1, 0);
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

- (id)insertMessage:(id)message forHandleID:(id)d withGroup:(id)group
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  groupCopy = group;
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

  if ([messageCopy isRead])
  {
    timestampInNanoseconds = [messageCopy timestampInNanoseconds];
    v19 = 1;
  }

  else
  {
    timestampInNanoseconds = 0;
    v19 = 0;
  }

  *buf = 0;
  selfCopy = self;
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
    v42 = groupCopy;
    v22 = *buf;
    uUID = [messageCopy UUID];
    sqlite3_bind_text(v22, 1, [uUID UTF8String], -1, 0);

    v24 = *buf;
    body = [messageCopy body];
    sqlite3_bind_text(v24, 2, [body UTF8String], -1, 0);

    sqlite3_bind_null(*buf, 3);
    v43 = dCopy;
    sqlite3_bind_int64(*buf, 4, [dCopy longLongValue]);
    sqlite3_bind_null(*buf, 5);
    sqlite3_bind_null(*buf, 6);
    attributedBody = [messageCopy attributedBody];

    v27 = *buf;
    if (attributedBody)
    {
      attributedBody2 = [messageCopy attributedBody];
      bytes = [attributedBody2 bytes];
      attributedBody3 = [messageCopy attributedBody];
      sqlite3_bind_blob(v27, 7, bytes, [attributedBody3 length], 0);
    }

    else
    {
      sqlite3_bind_null(*buf, 7);
    }

    sqlite3_bind_int(*buf, 8, 10);
    sqlite3_bind_text(*buf, 9, [@"SMS" UTF8String], -1, 0);
    v31 = *buf;
    account = [messageCopy account];
    sqlite3_bind_text(v31, 10, [account UTF8String], -1, 0);

    v33 = selfCopy;
    sqlite3_bind_text(*buf, 11, [(NSString *)selfCopy->_accountGUID UTF8String], -1, 0);
    sqlite3_bind_int(*buf, 12, 0);
    sqlite3_bind_int64(*buf, 13, [messageCopy timestampInNanoseconds]);
    sqlite3_bind_int64(*buf, 14, timestampInNanoseconds);
    sqlite3_bind_int64(*buf, 15, [messageCopy timestampInNanoseconds]);
    sqlite3_bind_int(*buf, 16, 1);
    sqlite3_bind_int(*buf, 17, [messageCopy isSent]);
    v34 = *buf;
    groupCopy = v42;
    if (v42)
    {
      roomName = [v42 roomName];
      sqlite3_bind_text(v34, 18, [roomName UTF8String], -1, 0);
    }

    else
    {
      sqlite3_bind_null(*buf, 18);
    }

    dCopy = v43;
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

- (id)insertAttachment:(id)attachment withMessage:(id)message
{
  attachmentCopy = attachment;
  messageCopy = message;
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
    uUID = [attachmentCopy UUID];
    sqlite3_bind_text(v15, 1, [uUID UTF8String], -1, 0);

    sqlite3_bind_int64(ppStmt, 2, [messageCopy timestampInSeconds]);
    sqlite3_bind_int64(ppStmt, 3, [messageCopy timestampInSeconds]);
    v17 = ppStmt;
    filename = [attachmentCopy filename];
    sqlite3_bind_text(v17, 4, [filename UTF8String], -1, 0);

    v19 = ppStmt;
    uniformTypeIdentifier = [attachmentCopy uniformTypeIdentifier];
    sqlite3_bind_text(v19, 5, [uniformTypeIdentifier UTF8String], -1, 0);

    v21 = ppStmt;
    contentType = [attachmentCopy contentType];
    sqlite3_bind_text(v21, 6, [contentType UTF8String], -1, 0);

    sqlite3_bind_int(ppStmt, 7, [attachmentCopy transferState]);
    sqlite3_bind_int(ppStmt, 8, [messageCopy isSent]);
    sqlite3_bind_null(ppStmt, 9);
    v23 = ppStmt;
    filename2 = [attachmentCopy filename];
    lastPathComponent = [filename2 lastPathComponent];
    sqlite3_bind_text(v23, 10, [lastPathComponent UTF8String], -1, 0);

    v26 = ppStmt;
    data = [attachmentCopy data];
    sqlite3_bind_int(v26, 11, [data length]);

    v28 = ppStmt;
    uUID2 = [attachmentCopy UUID];
    sqlite3_bind_text(v28, 12, [uUID2 UTF8String], -1, 0);

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

- (id)chatIDForMessage:(id)message forHandleIDs:(id)ds withGroup:(id)group
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dsCopy = ds;
  groupCopy = group;
  v11 = groupCopy;
  if (groupCopy)
  {
    roomName = [groupCopy roomName];
    v13 = @"SELECT rowid FROM chat WHERE room_name = ? LIMIT 1";
  }

  else
  {
    if ([messageCopy isSent])
    {
      recipients = [messageCopy recipients];
      roomName = [recipients objectAtIndexedSubscript:0];
    }

    else
    {
      roomName = [messageCopy sender];
    }

    v13 = @"SELECT rowid FROM chat WHERE chat_identifier = ? LIMIT 1";
  }

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [(__CFString *)v13 UTF8String], -1, &ppStmt, 0))
  {
    goto LABEL_23;
  }

  sqlite3_bind_text(ppStmt, 1, [roomName UTF8String], -1, 0);
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
    v16 = [(MKMessageMigrator *)self insertChatForMessage:messageCopy forHandleIDs:dsCopy withGroup:v11];
    goto LABEL_24;
  }

  v27 = messageCopy;
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = dsCopy;
  v17 = dsCopy;
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

  dsCopy = v26;
  messageCopy = v27;
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)insertChatForMessage:(id)message forHandleIDs:(id)ds withGroup:(id)group
{
  v58 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dsCopy = ds;
  groupCopy = group;
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

  if ([messageCopy isSent])
  {
    recipients = [messageCopy recipients];
    sender = [recipients objectAtIndexedSubscript:0];
  }

  else
  {
    sender = [messageCopy sender];
  }

  v13 = groupCopy;
  if ([messageCopy isSent])
  {
    sender2 = [messageCopy sender];
  }

  else if (groupCopy)
  {
    sender2 = &stru_286A8E730;
  }

  else
  {
    recipients2 = [messageCopy recipients];
    sender2 = [recipients2 objectAtIndexedSubscript:0];
  }

  if (sender2)
  {
    v16 = sender2;
  }

  else
  {
    v16 = &stru_286A8E730;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"P:%@", v16];
  v49 = sender2;
  if (groupCopy)
  {
    roomName = [groupCopy roomName];
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"SMS+;%@", roomName];;
    uUIDString = [groupCopy ID];
  }

  else
  {
    roomName = sender;
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"SMS-;%@", roomName];;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
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
    v25 = uUIDString;
    goto LABEL_46;
  }

  if (groupCopy)
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
  sqlite3_bind_text(ppStmt, 6, [roomName UTF8String], -1, 0);
  sqlite3_bind_text(ppStmt, 7, [@"SMS" UTF8String], -1, 0);
  v27 = ppStmt;
  if (groupCopy)
  {
    roomName2 = [groupCopy roomName];
    sqlite3_bind_text(v27, 8, [roomName2 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 8);
  }

  sqlite3_bind_text(ppStmt, 9, [v17 UTF8String], -1, 0);
  sqlite3_bind_text(ppStmt, 10, [(__CFString *)v49 UTF8String], -1, 0);
  sqlite3_bind_text(ppStmt, 11, [&stru_286A8E730 UTF8String], -1, 0);
  v25 = uUIDString;
  sqlite3_bind_text(ppStmt, 12, [uUIDString UTF8String], -1, 0);
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
    v37 = dsCopy;
    goto LABEL_47;
  }

  v41 = sender;
  v42 = messageCopy;
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:insert_rowid];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = dsCopy;
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

  sender = v41;
  messageCopy = v42;
  v13 = groupCopy;
  v37 = dsCopy;
  v25 = uUIDString;
LABEL_47:

  v39 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)joinAttachment:(id)attachment message:(id)message
{
  attachmentCopy = attachment;
  messageCopy = message;
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
    sqlite3_bind_int64(ppStmt, 1, [messageCopy longLongValue]);
    sqlite3_bind_int64(ppStmt, 2, [attachmentCopy longLongValue]);
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

- (id)joinChat:(id)chat handle:(id)handle
{
  chatCopy = chat;
  handleCopy = handle;
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
    sqlite3_bind_int64(ppStmt, 1, [chatCopy longLongValue]);
    sqlite3_bind_int64(ppStmt, 2, [handleCopy longLongValue]);
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

- (id)joinChat:(id)chat message:(id)message date:(int64_t)date
{
  chatCopy = chat;
  messageCopy = message;
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
    sqlite3_bind_int64(ppStmt, 1, [chatCopy longLongValue]);
    sqlite3_bind_int64(ppStmt, 2, [messageCopy longLongValue]);
    sqlite3_bind_int64(ppStmt, 3, date);
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

- (void)dropTrigger:(id)trigger
{
  trigger = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TRIGGER IF EXISTS %@", trigger];
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, [trigger UTF8String], -1, &ppStmt, 0))
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

- (void)deleteKV:(id)v
{
  vCopy = v;
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
    sqlite3_bind_text(ppStmt, 1, [vCopy UTF8String], -1, 0);
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