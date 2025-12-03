@interface EDMessageGlobalDataBlackPearlUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDMessageGlobalDataBlackPearlUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EDMessageGlobalDataBlackPearlUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_61 != -1)
  {
    dispatch_once(&log_onceToken_61, block);
  }

  v2 = log_log_61;

  return v2;
}

void __47__EDMessageGlobalDataBlackPearlUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_61;
  log_log_61 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (sqlite3_exec([connectionCopy sqlDB], "DROP INDEX IF EXISTS message_global_data_model_version_model_category_index;", 0, 0, 0))
  {
    v4 = +[EDMessageGlobalDataBlackPearlUpgradeStep log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageGlobalDataBlackPearlUpgradeStep *)v4 runWithConnection:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  if ([connectionCopy columnExists:@"model_category" inTable:@"message_global_data" type:0])
  {
    v12 = +[EDMessageGlobalDataBlackPearlUpgradeStep log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "category schema already up to date", v31, 2u);
    }

    v13 = 0;
  }

  else
  {
    if ([connectionCopy columnExists:@"category" inTable:@"message_global_data" type:0])
    {
      if (sqlite3_exec([connectionCopy sqlDB], "UPDATE message_global_data SET category = NULL, categorizedBy = NULL", 0, 0, 0))
      {
        v14 = +[EDMessageGlobalDataBlackPearlUpgradeStep log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(EDMessageGlobalDataBlackPearlUpgradeStep *)v14 runWithConnection:v15, v16, v17, v18, v19, v20, v21];
        }
      }

      if (sqlite3_exec([connectionCopy sqlDB], "DROP TABLE IF EXISTS category_model_versions;DROP INDEX IF EXISTS message_global_data_category_categorizedBy_index;DROP INDEX IF EXISTS message_global_data_category_categorized_by_user_index;DROP INDEX IF EXISTS message_global_data_category_category_model_version_index;", 0, 0, 0))
      {
        v22 = +[EDMessageGlobalDataBlackPearlUpgradeStep log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(EDMessageGlobalDataBlackPearlUpgradeStep *)v22 runWithConnection:v23, v24, v25, v26, v27, v28, v29];
        }
      }
    }

    [EDCategoryPersistence initializeCategorizationVersion:connectionCopy];
    v13 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN model_analytics TEXT COLLATE BINARY;ALTER TABLE message_global_data ADD COLUMN model_category INTEGER;ALTER TABLE message_global_data ADD COLUMN category_model_version INTEGER;ALTER TABLE message_global_data ADD COLUMN model_subcategory INTEGER;CREATE INDEX IF NOT EXISTS message_global_data_model_category_index ON message_global_data(model_category);CREATE INDEX IF NOT EXISTS message_global_data_category_model_version_model_category_index ON message_global_data(category_model_version, model_category);", 0, 0, 0);
  }

  return v13;
}

@end