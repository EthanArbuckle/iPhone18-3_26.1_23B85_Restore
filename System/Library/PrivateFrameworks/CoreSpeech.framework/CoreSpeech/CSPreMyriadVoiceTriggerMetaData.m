@interface CSPreMyriadVoiceTriggerMetaData
- (CSPreMyriadVoiceTriggerMetaData)init;
@end

@implementation CSPreMyriadVoiceTriggerMetaData

- (CSPreMyriadVoiceTriggerMetaData)init
{
  v3.receiver = self;
  v3.super_class = CSPreMyriadVoiceTriggerMetaData;
  result = [(CSPreMyriadVoiceTriggerMetaData *)&v3 init];
  if (result)
  {
    result->_firstPassMyriadGoodnessScore = -1.0;
  }

  return result;
}

@end