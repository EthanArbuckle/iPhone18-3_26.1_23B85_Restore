@interface EDCleanModelResultColumnsUpgradeStep
+ (id)log;
+ (int)runWithConnection:(id)a3;
@end

@implementation EDCleanModelResultColumnsUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDCleanModelResultColumnsUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_23 != -1)
  {
    dispatch_once(&log_onceToken_23, block);
  }

  v2 = log_log_23;

  return v2;
}

void __43__EDCleanModelResultColumnsUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_23;
  log_log_23 = v1;
}

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  v4 = sqlite3_exec([v3 sqlDB], "UPDATE message_global_data SET category_model_version = null, model_category = null, model_subcategory = null, model_analytics = null, model_high_impact = 0;", 0, 0, 0);

  return v4;
}

@end