@interface EDMigrateCategoryTypeUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDMigrateCategoryTypeUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EDMigrateCategoryTypeUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_69 != -1)
  {
    dispatch_once(&log_onceToken_69, block);
  }

  v2 = log_log_69;

  return v2;
}

void __39__EDMigrateCategoryTypeUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_69;
  log_log_69 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"model_category" inTable:@"message_global_data" type:0])
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "UPDATE message_global_data SET model_category = null;", 0, 0, 0);
    if (v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = +[EDMigrateCategoryTypeUpgradeStep log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "model_category column does not exist in message_global_data table", buf, 2u);
    }
  }

  if ([connectionCopy columnExists:@"model_subcategory" inTable:@"message_global_data" type:0])
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "UPDATE message_global_data SET model_subcategory = null;", 0, 0, 0);
    if (v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = +[EDMigrateCategoryTypeUpgradeStep log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "model_subcategory column does not exist in message_global_data table", v10, 2u);
    }
  }

  if ([connectionCopy columnExists:@"model_high_impact" inTable:@"message_global_data" type:0])
  {
    v7 = +[EDMigrateCategoryTypeUpgradeStep log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "model_high_impact column already exists in message_global_data table", v9, 2u);
    }

    goto LABEL_18;
  }

  v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN model_high_impact INTEGER NOT NULL DEFAULT 0;", 0, 0, 0);
  if (!v4)
  {
LABEL_18:
    v4 = 0;
  }

LABEL_19:

  return v4;
}

@end