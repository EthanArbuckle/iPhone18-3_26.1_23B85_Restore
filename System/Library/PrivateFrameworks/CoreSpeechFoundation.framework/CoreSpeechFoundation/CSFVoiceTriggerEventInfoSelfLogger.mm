@interface CSFVoiceTriggerEventInfoSelfLogger
+ (id)sharedLogger;
- (void)logRejectEventWithVTEI:(id)a3 withMHUUID:(id)a4 withSecondPassResult:(unint64_t)a5;
- (void)logStartEventWithFirstPassStartedInfo:(id)a3 withMHUUID:(id)a4;
- (void)logTriggerEventWithVTEI:(id)a3 withMHUUID:(id)a4;
@end

@implementation CSFVoiceTriggerEventInfoSelfLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_6830 != -1)
  {
    dispatch_once(&sharedLogger_onceToken_6830, &__block_literal_global_6831);
  }

  v3 = sharedLogger_sharedInstance;

  return v3;
}

uint64_t __50__CSFVoiceTriggerEventInfoSelfLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(CSFVoiceTriggerEventInfoSelfLoggerEmbedded);
  v1 = sharedLogger_sharedInstance;
  sharedLogger_sharedInstance = v0;

  result = +[CSUtils isDarwinOS];
  if (result)
  {
    sharedLogger_sharedInstance = objc_alloc_init(CSFVoiceTriggerEventInfoSelfLoggerDarwin);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)logRejectEventWithVTEI:(id)a3 withMHUUID:(id)a4 withSecondPassResult:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  __assert_rtn("[CSFVoiceTriggerEventInfoSelfLogger logRejectEventWithVTEI:withMHUUID:withSecondPassResult:]", "CSFVoiceTriggerEventInfoSelfLogger.m", 54, "NO");
}

- (void)logTriggerEventWithVTEI:(id)a3 withMHUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CSFVoiceTriggerEventInfoSelfLogger logTriggerEventWithVTEI:withMHUUID:]", "CSFVoiceTriggerEventInfoSelfLogger.m", 49, "NO");
}

- (void)logStartEventWithFirstPassStartedInfo:(id)a3 withMHUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CSFVoiceTriggerEventInfoSelfLogger logStartEventWithFirstPassStartedInfo:withMHUUID:]", "CSFVoiceTriggerEventInfoSelfLogger.m", 45, "NO");
}

@end