@interface CSVoiceTriggerRTModelRequestOptionsMutable
- (void)setCSCoreSpeechServicesAccessoryInfo:(id)a3;
@end

@implementation CSVoiceTriggerRTModelRequestOptionsMutable

- (void)setCSCoreSpeechServicesAccessoryInfo:(id)a3
{
  v4 = [a3 copy];
  mAccessoryInfo = self->_mAccessoryInfo;
  self->_mAccessoryInfo = v4;

  _objc_release_x1();
}

@end