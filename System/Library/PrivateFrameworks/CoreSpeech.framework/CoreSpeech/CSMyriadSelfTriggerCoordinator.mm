@interface CSMyriadSelfTriggerCoordinator
- (CSMyriadSelfTriggerCoordinatorDelegate)delegate;
- (void)selfTriggerDetector:(id)detector didDetectSelfTrigger:(id)trigger;
@end

@implementation CSMyriadSelfTriggerCoordinator

- (CSMyriadSelfTriggerCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selfTriggerDetector:(id)detector didDetectSelfTrigger:(id)trigger
{
  triggerCopy = trigger;
  v6 = [NSMutableData dataWithCapacity:13];
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v7 = [triggerCopy objectForKeyedSubscript:kVTEItriggerEndMachTime];

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  [v6 appendBytes:&v19 length:{2, unsignedIntegerValue}];
  [v6 appendBytes:&v18 length:1];
  [v6 appendBytes:&v18 + 1 length:1];
  [v6 appendBytes:&v16 length:8];
  [v6 appendBytes:&v17 length:1];
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CSMyriadSelfTriggerCoordinator selfTriggerDetector:didDetectSelfTrigger:]";
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Advert data: %{public}@", buf, 0x16u);
  }

  v10 = +[CSFPreferences sharedPreferences];
  myriadHashFilePath = [v10 myriadHashFilePath];

  if (([v6 writeToFile:myriadHashFilePath atomically:0] & 1) == 0)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSMyriadSelfTriggerCoordinator selfTriggerDetector:didDetectSelfTrigger:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s advert data write failed", buf, 0xCu);
    }
  }

  notify_post("com.apple.siri.corespeech.selftrigger");
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 CSMyriadSelfTriggerCoordinator:self didGenerateMyriadPHashForSelfTrigger:v6];
  }
}

@end