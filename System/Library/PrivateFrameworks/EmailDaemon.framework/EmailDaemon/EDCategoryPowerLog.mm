@interface EDCategoryPowerLog
+ (void)logStartCategorizationWithReason:(int64_t)a3;
+ (void)logStopCategorizationWithReason:(int64_t)a3 count:(unint64_t)a4;
@end

@implementation EDCategoryPowerLog

+ (void)logStartCategorizationWithReason:(int64_t)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (categoryPowerLogIdentifier_onceToken != -1)
  {
    +[EDCategoryPowerLog logStartCategorizationWithReason:];
  }

  v7[0] = @"eventType";
  v7[1] = @"reason";
  v8[0] = &unk_1F45E65F8;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  PPSSendTelemetry();

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)logStopCategorizationWithReason:(int64_t)a3 count:(unint64_t)a4
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (categoryPowerLogIdentifier_onceToken != -1)
  {
    +[EDCategoryPowerLog logStartCategorizationWithReason:];
  }

  v11[0] = &unk_1F45E6610;
  v10[0] = @"eventType";
  v10[1] = @"reason";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11[1] = v6;
  v10[2] = @"count";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  PPSSendTelemetry();

  v9 = *MEMORY[0x1E69E9840];
}

@end