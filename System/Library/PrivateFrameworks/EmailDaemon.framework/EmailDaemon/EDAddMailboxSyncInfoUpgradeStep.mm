@interface EDAddMailboxSyncInfoUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMailboxSyncInfoUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDAddMailboxSyncInfoUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

void __38__EDAddMailboxSyncInfoUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_7;
  log_log_7 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE mailboxes ADD COLUMN sync_info BLOB;", 0, 0, 0);

  return v4;
}

@end