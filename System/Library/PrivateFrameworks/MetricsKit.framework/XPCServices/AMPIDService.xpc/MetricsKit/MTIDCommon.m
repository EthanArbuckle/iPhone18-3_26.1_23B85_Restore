@interface MTIDCommon
+ (id)idOptions;
@end

@implementation MTIDCommon

+ (id)idOptions
{
  if (qword_100028138 != -1)
  {
    sub_100012CB0();
  }

  v3 = qword_100028130;

  return v3;
}

@end