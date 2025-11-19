@interface SGErrorMetrics
+ (id)instance;
+ (void)recordInteractionIgnoredWithReason:(SGMInteractionIgnoredReason_)a3;
- (SGErrorMetrics)init;
@end

@implementation SGErrorMetrics

- (SGErrorMetrics)init
{
  v5.receiver = self;
  v5.super_class = SGErrorMetrics;
  v2 = [(SGErrorMetrics *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGErrorMetrics *)v2 setBadInteractionIgnored:v3];
  }

  return v2;
}

+ (void)recordInteractionIgnoredWithReason:(SGMInteractionIgnoredReason_)a3
{
  v4 = [a1 instance];
  v5 = [v4 badInteractionIgnored];
  [v5 trackEventWithScalar:1 reason:a3.var0];

  v11 = objc_opt_new();
  [v11 setReason:a3.var0];
  v6 = [MEMORY[0x1E69C5B48] sharedInstance];
  [v6 trackScalarForMessage:v11];

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v11 key];
  v9 = [v7 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v8];

  v10 = [v11 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (id)instance
{
  if (instance_onceToken_247 != -1)
  {
    dispatch_once(&instance_onceToken_247, &__block_literal_global_249);
  }

  v3 = instance__instance_246;

  return v3;
}

uint64_t __26__SGErrorMetrics_instance__block_invoke()
{
  instance__instance_246 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end