@interface CSFVoiceTriggerEventInfoSelfLogger
+ (id)sharedLogger;
- (void)logRejectEventWithVTEI:(id)i withMHUUID:(id)d withSecondPassResult:(unint64_t)result;
- (void)logStartEventWithFirstPassStartedInfo:(id)info withMHUUID:(id)d;
- (void)logTriggerEventWithVTEI:(id)i withMHUUID:(id)d;
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

- (void)logRejectEventWithVTEI:(id)i withMHUUID:(id)d withSecondPassResult:(unint64_t)result
{
  iCopy = i;
  dCopy = d;
  __assert_rtn("[CSFVoiceTriggerEventInfoSelfLogger logRejectEventWithVTEI:withMHUUID:withSecondPassResult:]", "CSFVoiceTriggerEventInfoSelfLogger.m", 54, "NO");
}

- (void)logTriggerEventWithVTEI:(id)i withMHUUID:(id)d
{
  iCopy = i;
  dCopy = d;
  __assert_rtn("[CSFVoiceTriggerEventInfoSelfLogger logTriggerEventWithVTEI:withMHUUID:]", "CSFVoiceTriggerEventInfoSelfLogger.m", 49, "NO");
}

- (void)logStartEventWithFirstPassStartedInfo:(id)info withMHUUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  __assert_rtn("[CSFVoiceTriggerEventInfoSelfLogger logStartEventWithFirstPassStartedInfo:withMHUUID:]", "CSFVoiceTriggerEventInfoSelfLogger.m", 45, "NO");
}

@end