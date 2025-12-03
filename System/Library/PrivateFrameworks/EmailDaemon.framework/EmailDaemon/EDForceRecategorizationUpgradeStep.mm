@interface EDForceRecategorizationUpgradeStep
+ (BOOL)runWithConnection:(id)connection error:(id *)error;
+ (id)log;
@end

@implementation EDForceRecategorizationUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EDForceRecategorizationUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (BOOL)runWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v6 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"message_global_data"];
  null = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:null forKeyedSubscript:@"model_category"];

  null2 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:null2 forKeyedSubscript:@"model_subcategory"];

  null3 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:null3 forKeyedSubscript:@"category_model_version"];

  null4 = [MEMORY[0x1E695DFB0] null];
  [v6 setObject:null4 forKeyedSubscript:@"model_analytics"];

  [v6 setObject:&unk_1F45E6658 forKeyedSubscript:@"model_high_impact"];
  LOBYTE(error) = [connectionCopy executeUpdateStatement:v6 error:error];

  return error;
}

@end