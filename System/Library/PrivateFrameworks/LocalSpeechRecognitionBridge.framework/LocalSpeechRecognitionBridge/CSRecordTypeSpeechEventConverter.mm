@interface CSRecordTypeSpeechEventConverter
+ (int64_t)getRecordTypeForSpeechEvent:(int64_t)event;
+ (int64_t)getSpeechEventForRecordType:(int64_t)type;
@end

@implementation CSRecordTypeSpeechEventConverter

+ (int64_t)getSpeechEventForRecordType:(int64_t)type
{
  if ((type - 20) > 7)
  {
    return 0;
  }

  else
  {
    return qword_25613D260[type - 20];
  }
}

+ (int64_t)getRecordTypeForSpeechEvent:(int64_t)event
{
  if ((event - 1) > 0x23)
  {
    return 0;
  }

  else
  {
    return qword_25613D140[event - 1];
  }
}

@end