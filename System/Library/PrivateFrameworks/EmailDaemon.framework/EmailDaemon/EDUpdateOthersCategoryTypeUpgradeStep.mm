@interface EDUpdateOthersCategoryTypeUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDUpdateOthersCategoryTypeUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EDUpdateOthersCategoryTypeUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_107 != -1)
  {
    dispatch_once(&log_onceToken_107, block);
  }

  v2 = log_log_107;

  return v2;
}

void __44__EDUpdateOthersCategoryTypeUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_107;
  log_log_107 = v1;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"model_category" inTable:@"message_global_data" type:0])
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "UPDATE message_global_data SET model_category = 2 where model_subcategory == 6;", 0, 0, 0);
  }

  else
  {
    v5 = +[EDUpdateOthersCategoryTypeUpgradeStep log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "model_category column does not exist in message_global_data table", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end