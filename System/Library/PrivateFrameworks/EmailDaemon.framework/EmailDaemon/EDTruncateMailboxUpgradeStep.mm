@interface EDTruncateMailboxUpgradeStep
+ (OS_os_log)log;
+ (int)runWithConnection:(id)connection;
+ (int64_t)countOver10kWithConnection:(id)connection;
+ (void)presentNeedlessAlertIfNecessaryWithPersistence:(id)persistence;
@end

@implementation EDTruncateMailboxUpgradeStep

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EDTruncateMailboxUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_105 != -1)
  {
    dispatch_once(&log_onceToken_105, block);
  }

  v2 = log_log_105;

  return v2;
}

void __35__EDTruncateMailboxUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_105;
  log_log_105 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ((_os_feature_enabled_impl() & 1) != 0 || (v5 = [self countOver10kWithConnection:connectionCopy], v5 < 1))
  {
    v8 = 0;
  }

  else
  {
    v6 = +[EDTruncateMailboxUpgradeStep log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [EDTruncateMailboxUpgradeStep runWithConnection:v6];
    }

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    [em_userDefaults setInteger:v5 forKey:@"_TruncateMailboxUpgradeStepOver10kCount"];

    v8 = 1;
  }

  return v8;
}

+ (int64_t)countOver10kWithConnection:(id)connection
{
  v28 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [connectionCopy preparedStatementForQueryString:{@"SELECT url, count() FROM messages m JOIN mailboxes mb ON (m.mailbox = mb.rowid) GROUP BY url"}];;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__EDTruncateMailboxUpgradeStep_countOver10kWithConnection___block_invoke;
  v17[3] = &unk_1E8250178;
  v19 = &v20;
  v6 = v4;
  v18 = v6;
  v16 = 0;
  v7 = [v5 executeUsingBlock:v17 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = +[EDTruncateMailboxUpgradeStep log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v21[3];
      *buf = 134218242;
      v25 = v10;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Message counts over 10k: %lld, counts: %{public}@", buf, 0x16u);
    }

    v11 = v21[3];
  }

  else
  {
    v12 = +[EDTruncateMailboxUpgradeStep log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v8 ef_publicDescription];
      [(EDTruncateMailboxUpgradeStep *)ef_publicDescription countOver10kWithConnection:buf, v12];
    }

    v11 = 0;
  }

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void __59__EDTruncateMailboxUpgradeStep_countOver10kWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if ([v4 hasPrefix:@"imap://"])
  {
    v5 = [v7 objectAtIndexedSubscript:1];
    v6 = [v5 numberValue];

    if ([v6 integerValue] >= 10501)
    {
      *(*(*(a1 + 40) + 8) + 24) += [v6 integerValue];
    }

    [*(a1 + 32) addObject:v6];
  }
}

+ (void)presentNeedlessAlertIfNecessaryWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__EDTruncateMailboxUpgradeStep_presentNeedlessAlertIfNecessaryWithPersistence___block_invoke;
    v5[3] = &unk_1E8250A90;
    v6 = persistenceCopy;
    selfCopy = self;
    if (presentNeedlessAlertIfNecessaryWithPersistence__onceToken != -1)
    {
      dispatch_once(&presentNeedlessAlertIfNecessaryWithPersistence__onceToken, v5);
    }
  }
}

void __79__EDTruncateMailboxUpgradeStep_presentNeedlessAlertIfNecessaryWithPersistence___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__EDTruncateMailboxUpgradeStep_presentNeedlessAlertIfNecessaryWithPersistence___block_invoke_2;
  v8[3] = &unk_1E8251A78;
  v4 = v2;
  v9 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = [v3 afterDelay:v8 performBlock:5.0];
}

void __79__EDTruncateMailboxUpgradeStep_presentNeedlessAlertIfNecessaryWithPersistence___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) integerForKey:@"_TruncateMailboxUpgradeStepOver10kCount"];
  [*(a1 + 32) removeObjectForKey:@"_TruncateMailboxUpgradeStepOver10kCount"];
  if (v2 >= 1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v3 = [*(a1 + 40) database];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[EDTruncateMailboxUpgradeStep presentNeedlessAlertIfNecessaryWithPersistence:]_block_invoke_2"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__EDTruncateMailboxUpgradeStep_presentNeedlessAlertIfNecessaryWithPersistence___block_invoke_3;
    v9[3] = &unk_1E8250150;
    v5 = *(a1 + 48);
    v9[4] = &v10;
    v9[5] = v5;
    [v3 __performReadWithCaller:v4 usingBlock:v9];

    if (v11[3] > 0 || [*(a1 + 32) BOOLForKey:@"_TruncateMailboxUpgradeStepForceAlert"])
    {
      [*(a1 + 32) removeObjectForKey:@"_TruncateMailboxUpgradeStepForceAlert"];
      v6 = _EFLocalizedString();
      v7 = _EFLocalizedString();
      v8 = _EFLocalizedString();
      CFUserNotificationDisplayNotice(30.0, 3uLL, 0, 0, 0, v6, v7, v8);
    }

    _Block_object_dispose(&v10, 8);
  }
}

uint64_t __79__EDTruncateMailboxUpgradeStep_presentNeedlessAlertIfNecessaryWithPersistence___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [*(a1 + 40) countOver10kWithConnection:v3];

  return 1;
}

+ (void)countOver10kWithConnection:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "failed to query for counts by mailbox: %{public}@", buf, 0xCu);
}

@end