@interface MFAddLastModifiedColumnUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFAddLastModifiedColumnUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MFAddLastModifiedColumnUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_9 != -1)
  {
    dispatch_once(&log_onceToken_9, block);
  }

  v2 = log_log_9;

  return v2;
}

void __41__MFAddLastModifiedColumnUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_9;
  log_log_9 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"last_modified" inTable:@"business_addresses" type:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(@"ALTER TABLE business_addresses ADD COLUMN last_modified INTEGER;", "UTF8String"), 0, 0, 0);
    if (v4)
    {
      v5 = +[MFAddLastModifiedColumnUpgradeStep log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [MFAddLastModifiedColumnUpgradeStep runWithConnection:v5];
      }
    }
  }

  return v4;
}

@end