@interface CSVoiceTriggerInfo
+ (id)sharedInstance;
- (CSVoiceTriggerInfo)init;
@end

@implementation CSVoiceTriggerInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9869 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9869, &__block_literal_global_9870);
  }

  v3 = sharedInstance_sharedInstance_9871;

  return v3;
}

- (CSVoiceTriggerInfo)init
{
  v3.receiver = self;
  v3.super_class = CSVoiceTriggerInfo;
  result = [(CSVoiceTriggerInfo *)&v3 init];
  if (result)
  {
    result->_firstPassRunningMode = -1;
  }

  return result;
}

uint64_t __36__CSVoiceTriggerInfo_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSVoiceTriggerInfo);
  v1 = sharedInstance_sharedInstance_9871;
  sharedInstance_sharedInstance_9871 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end