@interface CSSiriSpeechAudioRecordingDateFormatter
@end

@implementation CSSiriSpeechAudioRecordingDateFormatter

uint64_t ___CSSiriSpeechAudioRecordingDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _CSSiriSpeechAudioRecordingDateFormatter_dateFormatter;
  _CSSiriSpeechAudioRecordingDateFormatter_dateFormatter = v0;

  v2 = _CSSiriSpeechAudioRecordingDateFormatter_dateFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  [v2 setLocale:v3];

  v4 = _CSSiriSpeechAudioRecordingDateFormatter_dateFormatter;

  return [v4 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
}

@end