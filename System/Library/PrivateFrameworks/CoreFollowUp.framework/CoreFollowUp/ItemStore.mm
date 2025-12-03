@interface ItemStore
+ (id)sharedInstance;
- (BOOL)_unsafe_deleteActionWithID:(int64_t)d;
- (BOOL)deleteFollowUpItem:(id)item;
- (BOOL)deleteNotificationForFollowUpItem:(id)item;
- (BOOL)insertFollowUpItem:(id)item;
- (BOOL)updateNotificationForFollowUpItem:(id)item;
- (id)_unsafeSelectNotificationForFollowUpItem:(id)item;
- (id)dataFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
- (id)dateFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
- (id)safeSelectFollowUpActions;
- (id)safeSelectFollowUpItemsWithUniqueIdentifiers:(id)identifiers;
- (id)safeSelectFollowUpNotifications;
- (id)stringFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
- (id)urlFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
- (int64_t)_unsafe_insertAction:(id)action item:(id)item;
- (int64_t)_unsafe_insertFollowUpItem:(id)item;
- (int64_t)_unsafe_insertNotificationForItem:(id)item;
- (void)_unsafeSelectFollowUpActionsForItem:(id)item orActionID:(int64_t)d rowHandler:(id)handler;
- (void)_unsafeSelectFollowUpItemsWithUniqueIdentifiers:(id)identifiers rowHandler:(id)handler;
- (void)_unsafeSelectFollowUpNotificationsWithRowHandler:(id)handler;
@end

@implementation ItemStore

+ (id)sharedInstance
{
  if (qword_100026B98 != -1)
  {
    sub_100001988();
  }

  v3 = qword_100026B90;

  return v3;
}

- (BOOL)insertFollowUpItem:(id)item
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A0AC;
  v6[3] = &unk_100020C08;
  itemCopy = item;
  v7 = itemCopy;
  selfCopy = self;
  v9 = &v10;
  [FLSQLiteExecutor performBlockAndWait:v6];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (int64_t)_unsafe_insertFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = [FLSQLiteQuery queryWithString:@"INSERT OR REPLACE INTO items (uuid, title, body, show_in_settings, style, persist_when_activated, persist_when_dismissed, user_info, client_identifier, extension_identifier, group_identifier, target_bundle_identifier, representing_bundle_path, bundle_icon_name, informative_footer_text, category_identifier, expiration_date, account_id, type_id, collection_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A41C;
  v13[3] = &unk_100020C30;
  v6 = itemCopy;
  v14 = v6;
  [v5 setBindHandler:v13];
  queryExecutor = self->_queryExecutor;
  v12 = 0;
  v8 = [(FLSQLiteExecutor *)queryExecutor performInsertQuery:v5 error:&v12];
  v9 = v12;
  if (v8 == -1)
  {
    v10 = _FLLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100010818();
    }
  }

  return v8;
}

- (int64_t)_unsafe_insertAction:(id)action item:(id)item
{
  actionCopy = action;
  itemCopy = item;
  v8 = [FLSQLiteQuery queryWithString:@"INSERT INTO actions (label, url, launch_url, launch_arguments, item_id, action_identifier) VALUES (?, ?, ?, ?, ?, ?)"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000AB90;
  v17[3] = &unk_100020C58;
  v9 = actionCopy;
  v18 = v9;
  v10 = itemCopy;
  v19 = v10;
  [v8 setBindHandler:v17];
  queryExecutor = self->_queryExecutor;
  v16 = 0;
  v12 = [(FLSQLiteExecutor *)queryExecutor performInsertQuery:v8 error:&v16];
  v13 = v16;
  if (v12 == -1)
  {
    v14 = _FLLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100010880();
    }
  }

  return v12;
}

- (int64_t)_unsafe_insertNotificationForItem:(id)item
{
  itemCopy = item;
  notification = [itemCopy notification];
  activateAction = [notification activateAction];

  if (activateAction)
  {
    activateAction2 = [notification activateAction];
    v8 = [(ItemStore *)self _unsafe_insertAction:activateAction2 item:0];
    activateAction3 = [notification activateAction];
    [activateAction3 setSqlID:v8];
  }

  notification2 = [itemCopy notification];
  clearAction = [notification2 clearAction];

  if (clearAction)
  {
    clearAction2 = [notification clearAction];
    v13 = [(ItemStore *)self _unsafe_insertAction:clearAction2 item:0];
    clearAction3 = [notification clearAction];
    [clearAction3 setSqlID:v13];
  }

  if ([notification sqlID])
  {
    v15 = [(ItemStore *)self _unsafeSelectNotificationForFollowUpItem:itemCopy];
    activateAction4 = [v15 activateAction];

    if (activateAction4)
    {
      activateAction5 = [v15 activateAction];
      -[ItemStore _unsafe_deleteActionWithID:](self, "_unsafe_deleteActionWithID:", [activateAction5 sqlID]);
    }

    clearAction4 = [v15 clearAction];

    if (clearAction4)
    {
      clearAction5 = [v15 clearAction];
      -[ItemStore _unsafe_deleteActionWithID:](self, "_unsafe_deleteActionWithID:", [clearAction5 sqlID]);
    }

    v20 = _FLLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using creation date from %@", buf, 0xCu);
    }

    creationDate = [v15 creationDate];
    [notification setCreationDate:creationDate];

    v22 = @"INSERT OR REPLACE INTO notifications (item_id, title, body, unlock_label, relevance_date, activate_action_id, dismiss_action_id, clear_action_id, frequency, creationDate, options, subtitle_text, id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  }

  else
  {
    v22 = @"INSERT INTO notifications (item_id, title, body, unlock_label, relevance_date, activate_action_id, dismiss_action_id, clear_action_id, frequency, creationDate, options, subtitle_text) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  }

  v23 = [FLSQLiteQuery queryWithString:v22];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000B098;
  v32[3] = &unk_100020C58;
  v24 = itemCopy;
  v33 = v24;
  v25 = notification;
  v34 = v25;
  [v23 setBindHandler:v32];
  queryExecutor = self->_queryExecutor;
  v31 = 0;
  v27 = [(FLSQLiteExecutor *)queryExecutor performInsertQuery:v23 error:&v31];
  v28 = v31;
  if (v27 == -1)
  {
    v29 = _FLLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000108E8();
    }
  }

  return v27;
}

- (BOOL)deleteFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting item: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B5E8;
  v9[3] = &unk_100020C80;
  v6 = itemCopy;
  selfCopy = self;
  p_buf = &buf;
  v10 = v6;
  [FLSQLiteExecutor performBlockAndWait:v9];
  [(ItemStore *)self deleteNotificationForFollowUpItem:v6];
  v7 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v7 & 1;
}

- (BOOL)updateNotificationForFollowUpItem:(id)item
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B840;
  v6[3] = &unk_100020CA8;
  v8 = &v9;
  v6[4] = self;
  itemCopy = item;
  v7 = itemCopy;
  [FLSQLiteExecutor performBlockAndWait:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (BOOL)deleteNotificationForFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting notifications for item %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B9F8;
  v9[3] = &unk_100020C80;
  v6 = itemCopy;
  selfCopy = self;
  p_buf = &buf;
  v10 = v6;
  [FLSQLiteExecutor performBlockAndWait:v9];
  v7 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v7 & 1;
}

- (BOOL)_unsafe_deleteActionWithID:(int64_t)d
{
  v5 = [FLSQLiteQuery queryWithString:@"DELETE FROM actions WHERE id=?"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BC64;
  v12[3] = &unk_100020CC8;
  v12[4] = d;
  [v5 setBindHandler:v12];
  queryExecutor = self->_queryExecutor;
  v11 = 0;
  v7 = [(FLSQLiteExecutor *)queryExecutor performQuery:v5 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = _FLLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000109B8();
    }
  }

  return v7;
}

- (id)safeSelectFollowUpActions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100001448;
  v12 = sub_1000015C0;
  v13 = +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BE24;
  v7[3] = &unk_100020D18;
  v7[4] = self;
  v7[5] = &v8;
  [FLSQLiteExecutor performBlockAndWait:v7];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v9[5];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Actions Fetched: %@", buf, 0xCu);
  }

  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)safeSelectFollowUpNotifications
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100001448;
  v12 = sub_1000015C0;
  v13 = +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C064;
  v7[3] = &unk_100020D18;
  v7[4] = self;
  v7[5] = &v8;
  [FLSQLiteExecutor performBlockAndWait:v7];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v9[5];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notifications Fetched: %@", buf, 0xCu);
  }

  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)safeSelectFollowUpItemsWithUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = _FLSignpostCreate();
  v6 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100010A20();
  }

  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = sub_100001448;
  v17[3] = sub_1000015C0;
  v18 = +[NSMutableArray array];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000C2FC;
  v13[3] = &unk_100020C08;
  v13[4] = self;
  v7 = identifiersCopy;
  v14 = v7;
  v15 = &v16;
  [FLSQLiteExecutor performBlockAndWait:v13];
  Nanoseconds = _FLSignpostGetNanoseconds();
  v9 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100010A94(v5, v9, Nanoseconds / 1000000000.0);
  }

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100010B18(v17, v10);
  }

  v11 = [*(v17[0] + 40) copy];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)_unsafeSelectFollowUpItemsWithUniqueIdentifiers:(id)identifiers rowHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = [NSMutableString stringWithString:@"SELECT id, uuid, title, body, show_in_settings, style, persist_when_activated, persist_when_dismissed, user_info, client_identifier, extension_identifier, group_identifier, target_bundle_identifier, representing_bundle_path, bundle_icon_name, informative_footer_text, category_identifier, expiration_date, account_id, type_id, collection_id FROM items"];
  if ([identifiersCopy count])
  {
    [v8 appendString:@" WHERE"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = identifiersCopy;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([v9 indexOfObject:*(*(&v26 + 1) + 8 * v13)])
          {
            [v8 appendFormat:@" OR"];
          }

          [v8 appendFormat:@" uuid = ?"];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }
  }

  [v8 appendFormat:@" ORDER BY id"];
  v14 = [FLSQLiteQuery queryWithString:v8];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000C65C;
  v24[3] = &unk_100020C30;
  v15 = identifiersCopy;
  v25 = v15;
  [v14 setBindHandler:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000C790;
  v22[3] = &unk_100020DB8;
  v22[4] = self;
  v16 = handlerCopy;
  v23 = v16;
  [v14 setRowHandler:v22];
  queryExecutor = self->_queryExecutor;
  v21 = 0;
  v18 = [(FLSQLiteExecutor *)queryExecutor performQuery:v14 error:&v21];
  v19 = v21;
  if ((v18 & 1) == 0)
  {
    v20 = _FLLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100010B98();
    }
  }
}

- (void)_unsafeSelectFollowUpNotificationsWithRowHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [FLSQLiteQuery queryWithString:@"SELECT id, title, body, unlock_label, relevance_date, activate_action_id, dismiss_action_id, clear_action_id, frequency, creationDate, options, subtitle_text FROM notifications"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000CCF8;
  v12[3] = &unk_100020DB8;
  v12[4] = self;
  v6 = handlerCopy;
  v13 = v6;
  [v5 setRowHandler:v12];
  queryExecutor = self->_queryExecutor;
  v11 = 0;
  v8 = [(FLSQLiteExecutor *)queryExecutor performQuery:v5 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = _FLLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100010C00();
    }
  }
}

- (id)_unsafeSelectNotificationForFollowUpItem:(id)item
{
  itemCopy = item;
  v5 = [FLSQLiteQuery queryWithString:@"SELECT id, title, body, unlock_label, relevance_date, activate_action_id, dismiss_action_id, clear_action_id, frequency, creationDate, options, subtitle_text FROM notifications WHERE item_id = ? LIMIT 1"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000D2F0;
  v24[3] = &unk_100020C30;
  v6 = itemCopy;
  v25 = v6;
  [v5 setBindHandler:v24];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100001448;
  v22 = sub_1000015C0;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D334;
  v17[3] = &unk_100020DE0;
  v17[4] = self;
  v17[5] = &v18;
  [v5 setRowHandler:v17];
  queryExecutor = self->_queryExecutor;
  v16 = 0;
  v8 = [(FLSQLiteExecutor *)queryExecutor performQuery:v5 error:&v16];
  v9 = v16;
  if ((v8 & 1) == 0)
  {
    v10 = _FLLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100010C00();
    }
  }

  v11 = v19[5];
  if (v11)
  {
    v12 = _FLLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v19[5];
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found notification: %@", buf, 0xCu);
    }

    v11 = v19[5];
  }

  v14 = v11;

  _Block_object_dispose(&v18, 8);

  return v14;
}

- (void)_unsafeSelectFollowUpActionsForItem:(id)item orActionID:(int64_t)d rowHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v10 = [NSMutableString stringWithString:@"SELECT id, label, url, launch_url, launch_arguments, action_identifier FROM actions"];
  v11 = v10;
  if (itemCopy)
  {
    v12 = @" WHERE item_id = ?";
  }

  else
  {
    if (d < 1)
    {
      goto LABEL_6;
    }

    v12 = @" WHERE id = ?";
  }

  [v10 appendString:v12];
LABEL_6:
  v13 = [FLSQLiteQuery queryWithString:v11];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000D7F0;
  v23[3] = &unk_100020E08;
  v14 = itemCopy;
  v24 = v14;
  dCopy = d;
  [v13 setBindHandler:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000D844;
  v21[3] = &unk_100020DB8;
  v21[4] = self;
  v15 = handlerCopy;
  v22 = v15;
  [v13 setRowHandler:v21];
  queryExecutor = self->_queryExecutor;
  v20 = 0;
  v17 = [(FLSQLiteExecutor *)queryExecutor performQuery:v13 error:&v20];
  v18 = v20;
  if ((v17 & 1) == 0)
  {
    v19 = _FLLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100010C68();
    }
  }
}

- (id)stringFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  v4 = sqlite3_column_text(statement, column);
  if (v4)
  {
    v4 = [NSString stringWithUTF8String:v4];
  }

  return v4;
}

- (id)urlFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  v4 = [(ItemStore *)self stringFromColumn:column inStatement:statement];
  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  columnCopy = column;
  v6 = sqlite3_column_bytes(statement, column);
  v7 = sqlite3_column_blob(statement, columnCopy);
  v8 = 0;
  if (v7 && v6)
  {
    v8 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  }

  return v8;
}

- (id)dateFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  [(ItemStore *)self intervalFromColumn:column inStatement:statement];
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  return v5;
}

@end