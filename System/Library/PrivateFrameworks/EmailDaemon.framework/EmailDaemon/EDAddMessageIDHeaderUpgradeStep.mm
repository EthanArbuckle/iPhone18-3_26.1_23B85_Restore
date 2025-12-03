@interface EDAddMessageIDHeaderUpgradeStep
+ (BOOL)runWithConnection:(id)connection error:(id *)error;
+ (id)log;
@end

@implementation EDAddMessageIDHeaderUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDAddMessageIDHeaderUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v2 = log_log_8;

  return v2;
}

void __38__EDAddMessageIDHeaderUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_8;
  log_log_8 = v1;
}

+ (BOOL)runWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v6 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN message_id_header TEXT COLLATE BINARY;", 0, 0, 0);
  if (v6)
  {
    *error = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v6];
    v7 = +[EDAddMessageIDHeaderUpgradeStep log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EDAddMessageIDHeaderUpgradeStep runWithConnection:v7 error:?];
    }
  }

  else
  {
    v8 = sqlite3_exec([connectionCopy sqlDB], "UPDATE OR IGNORE searchable_messages SET reindex_type = 2 WHERE transaction_id != 0", 0, 0, 0);
    if (!v8)
    {
      v9 = 1;
      goto LABEL_8;
    }

    *error = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v8];
    v7 = +[EDAddMessageIDHeaderUpgradeStep log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EDAddMessageIDHeaderUpgradeStep runWithConnection:v7 error:?];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

@end