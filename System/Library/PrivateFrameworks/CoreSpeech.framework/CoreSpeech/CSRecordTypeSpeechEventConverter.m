@interface CSRecordTypeSpeechEventConverter
+ (int64_t)getRecordTypeForSpeechEvent:(int64_t)a3;
+ (int64_t)getSpeechEventForRecordType:(int64_t)a3;
@end

@implementation CSRecordTypeSpeechEventConverter

+ (int64_t)getSpeechEventForRecordType:(int64_t)a3
{
  if ((a3 - 20) > 7)
  {
    return 0;
  }

  else
  {
    return qword_222FB84C8[a3 - 20];
  }
}

+ (int64_t)getRecordTypeForSpeechEvent:(int64_t)a3
{
  if ((a3 - 1) > 0x23)
  {
    return 0;
  }

  else
  {
    return qword_222FB83A8[a3 - 1];
  }
}

@end