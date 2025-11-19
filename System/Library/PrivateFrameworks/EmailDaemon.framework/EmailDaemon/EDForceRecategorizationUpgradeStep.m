@interface EDForceRecategorizationUpgradeStep
+ (BOOL)runWithConnection:(id)a3 error:(id *)a4;
+ (id)log;
@end

@implementation EDForceRecategorizationUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EDForceRecategorizationUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_39 != -1)
  {
    dispatch_once(&log_onceToken_39, block);
  }

  v2 = log_log_39;

  return v2;
}

void __41__EDForceRecategorizationUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_39;
  log_log_39 = v1;
}

+ (BOOL)runWithConnection:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"message_global_data"];
  v7 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:v7 forKeyedSubscript:@"model_category"];

  v8 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:v8 forKeyedSubscript:@"model_subcategory"];

  v9 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:v9 forKeyedSubscript:@"category_model_version"];

  v10 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:v10 forKeyedSubscript:@"model_analytics"];

  [v6 setObject:&unk_1F45E6658 forKeyedSubscript:@"model_high_impact"];
  LOBYTE(a4) = [v5 executeUpdateStatement:v6 error:a4];

  return a4;
}

@end