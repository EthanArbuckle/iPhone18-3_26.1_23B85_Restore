@interface EDAddMessagesValidationStateUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMessagesValidationStateUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EDAddMessagesValidationStateUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_9 != -1)
  {
    dispatch_once(&log_onceToken_9, block);
  }

  v2 = log_log_9;

  return v2;
}

void __46__EDAddMessagesValidationStateUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_9;
  log_log_9 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (![connectionCopy columnExists:@"validation_state" inTable:@"messages" type:0])
  {
    v6 = +[EDAddMessagesValidationStateUpgradeStep log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "validation_state column does not exist in messages table", v12, 2u);
    }

    goto LABEL_9;
  }

  v4 = +[EDAddMessagesValidationStateUpgradeStep log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Drop validation_state column in messages table", buf, 2u);
  }

  v5 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE messages DROP COLUMN validation_state;", 0, 0, 0);
  if (!v5)
  {
LABEL_9:
    if ([connectionCopy columnExists:@"validation_state" inTable:@"message_global_data" type:0])
    {
      v7 = +[EDAddMessagesValidationStateUpgradeStep log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "validation_state column already exists in message_global_data table", v10, 2u);
      }

      v5 = 0;
    }

    else
    {
      v8 = +[EDAddMessagesValidationStateUpgradeStep log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Add validation_state column in message_global_data table", v11, 2u);
      }

      v5 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN validation_state INTEGER NOT NULL DEFAULT 0;", 0, 0, 0);
    }
  }

  return v5;
}

@end