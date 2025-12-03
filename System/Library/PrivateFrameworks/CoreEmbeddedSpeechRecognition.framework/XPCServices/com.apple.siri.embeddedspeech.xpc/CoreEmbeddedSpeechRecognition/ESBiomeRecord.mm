@interface ESBiomeRecord
- (void)sendEvent;
@end

@implementation ESBiomeRecord

- (void)sendEvent
{
  if (self->_hasRecognizedAnything && self->_recognitionEndTime > 0.0 && [(NSString *)self->_applicationName isEqualToString:@"com.apple.MobileSMS"])
  {
    v3 = objc_opt_new();
    if (v3)
    {
      v4 = [[BMSiriDictationEvent alloc] initWithAbsoluteTimestamp:self->_recognitionEndTime];
      source = [v3 source];
      [source sendEvent:v4];

      v6 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[ESBiomeRecord sendEvent]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Biome Dictation: event is sent to Biome", &v7, 0xCu);
      }
    }
  }
}

@end