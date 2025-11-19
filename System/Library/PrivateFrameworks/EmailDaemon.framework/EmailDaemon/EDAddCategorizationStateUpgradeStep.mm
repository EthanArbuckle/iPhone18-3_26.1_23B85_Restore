@interface EDAddCategorizationStateUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddCategorizationStateUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDAddCategorizationStateUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __42__EDAddCategorizationStateUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE message_global_data ADD COLUMN category_is_temporary INTEGER", 0, 0, 0);
  if (v4)
  {
    v5 = +[EDAddCategorizationStateUpgradeStep log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[EDAddCategorizationStateUpgradeStep runWithConnection:];
    }

    goto LABEL_4;
  }

  if (![v3 columnExists:@"user_category" inTable:@"message_global_data" type:0])
  {
LABEL_16:
    v4 = sqlite3_exec([v3 sqlDB], "CREATE INDEX IF NOT EXISTS message_global_data_model_category_index ON message_global_data(model_category);", 0, 0, 0);
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = +[EDAddCategorizationStateUpgradeStep log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  v4 = sqlite3_exec([v3 sqlDB], "UPDATE message_global_data SET category_is_temporary = 1 WHERE user_category = -1", 0, 0, 0);
  if (v4)
  {
    v5 = +[EDAddCategorizationStateUpgradeStep log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[EDAddCategorizationStateUpgradeStep runWithConnection:];
    }

    goto LABEL_4;
  }

  v4 = sqlite3_exec([v3 sqlDB], "DROP INDEX IF EXISTS message_global_data_user_category_model_category_index;", 0, 0, 0);
  if (!v4)
  {
    v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE message_global_data DROP COLUMN user_category", 0, 0, 0);
    if (v4)
    {
      v5 = +[EDAddCategorizationStateUpgradeStep log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[EDAddCategorizationStateUpgradeStep runWithConnection:];
      }

      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = +[EDAddCategorizationStateUpgradeStep log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
LABEL_12:
    +[EDAddCategorizationStateUpgradeStep runWithConnection:];
  }

LABEL_4:

LABEL_5:
  return v4;
}

@end