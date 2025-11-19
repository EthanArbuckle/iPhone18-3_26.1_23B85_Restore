@interface EDAddSenderCategoryColumnUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddSenderCategoryColumnUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDAddSenderCategoryColumnUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_10 != -1)
  {
    dispatch_once(&log_onceToken_10, block);
  }

  v2 = log_log_10;

  return v2;
}

void __43__EDAddSenderCategoryColumnUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_10;
  log_log_10 = v1;
}

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  v4 = +[EDSenderPersistence sendersCategoryColumnName];
  v5 = +[EDSenderPersistence sendersTableName];
  v6 = [v3 columnExists:v4 inTable:v5 type:0];

  if (v6)
  {
    v7 = +[EDAddSenderCategoryColumnUpgradeStep log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "senders.category column already exists", v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    v9 = +[EDAddSenderCategoryColumnUpgradeStep log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Create category column in senders", buf, 2u);
    }

    v8 = sqlite3_exec([v3 sqlDB], "ALTER TABLE senders ADD COLUMN category INTEGER;CREATE INDEX IF NOT EXISTS senders_category_index ON senders(category);", 0, 0, 0);
  }

  return v8;
}

@end