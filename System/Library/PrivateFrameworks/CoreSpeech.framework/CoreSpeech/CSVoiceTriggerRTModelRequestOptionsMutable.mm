@interface CSVoiceTriggerRTModelRequestOptionsMutable
- (void)setCSCoreSpeechServicesAccessoryInfo:(id)info;
@end

@implementation CSVoiceTriggerRTModelRequestOptionsMutable

- (void)setCSCoreSpeechServicesAccessoryInfo:(id)info
{
  v4 = [info copy];
  mAccessoryInfo = self->_mAccessoryInfo;
  self->_mAccessoryInfo = v4;
}

@end