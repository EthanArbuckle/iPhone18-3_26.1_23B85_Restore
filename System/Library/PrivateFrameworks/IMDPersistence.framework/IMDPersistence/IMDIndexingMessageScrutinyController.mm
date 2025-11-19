@interface IMDIndexingMessageScrutinyController
+ (id)sharedController;
- (BOOL)isMessageBlocklisted:(id)a3;
- (IMDIndexingMessageScrutinyController)init;
- (NSMutableOrderedSet)blocklistMessageGUIDs;
- (id)_scrutinyMessagesQueue;
- (void)clearMessageGUIDFromScrutiny:(id)a3;
- (void)setMessageGUIDUnderScrutiny:(id)a3;
@end

@implementation IMDIndexingMessageScrutinyController

+ (id)sharedController
{
  if (qword_1EBA53AE0 != -1)
  {
    sub_1B7CFB660();
  }

  v3 = qword_1EBA53AB0;

  return v3;
}

- (IMDIndexingMessageScrutinyController)init
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = IMDIndexingMessageScrutinyController;
  v2 = [(IMDIndexingMessageScrutinyController *)&v17 init];
  if (v2)
  {
    v3 = IMGetCachedDomainValueForKey();
    v6 = objc_msgSend_count(v3, v4, v5);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v19 = v6;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Current blocklist size is %lu", buf, 0xCu);
      }
    }

    if (v6 >= 0xC9)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v19) = 200;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", buf, 8u);
        }
      }

      v10 = objc_msgSend_subarrayWithRange_(v3, v8, v6 - 200, 200);

      v3 = v10;
    }

    if (v3)
    {
      v11 = objc_alloc(MEMORY[0x1E695DFA0]);
      v13 = objc_msgSend_initWithArray_(v11, v12, v3);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    blocklistMessageGUIDs = v2->_blocklistMessageGUIDs;
    v2->_blocklistMessageGUIDs = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)_scrutinyMessagesQueue
{
  if (qword_1EDBE5BB0 != -1)
  {
    sub_1B7CFB674();
  }

  v3 = qword_1EDBE5BA0;

  return v3;
}

- (NSMutableOrderedSet)blocklistMessageGUIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1B7AE1B00;
  v12 = sub_1B7AE2588;
  v13 = 0;
  v4 = objc_msgSend__scrutinyMessagesQueue(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BC9974;
  v7[3] = &unk_1E7CBB6F0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setMessageGUIDUnderScrutiny:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend__scrutinyMessagesQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7BC9B2C;
    v12[3] = &unk_1E7CB6770;
    v12[4] = self;
    v13 = v4;
    dispatch_barrier_sync(v9, v12);
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[IMDIndexingMessageScrutinyController setMessageGUIDUnderScrutiny:]";
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Invalid guid passed in. Skipping %s", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)clearMessageGUIDFromScrutiny:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend__scrutinyMessagesQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7BC9D0C;
    v12[3] = &unk_1E7CB6770;
    v12[4] = self;
    v13 = v4;
    dispatch_barrier_sync(v9, v12);
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[IMDIndexingMessageScrutinyController clearMessageGUIDFromScrutiny:]";
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Invalid guid passed in. Skipping %s", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMessageBlocklisted:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = objc_msgSend__scrutinyMessagesQueue(self, v5, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BC9F78;
  block[3] = &unk_1E7CBC338;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v8 = v4;
  dispatch_barrier_sync(v7, block);

  LOBYTE(v4) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v4;
}

@end