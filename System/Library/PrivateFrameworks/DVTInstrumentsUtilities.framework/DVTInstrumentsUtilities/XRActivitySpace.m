@interface XRActivitySpace
+ (id)sharedInstance;
@end

@implementation XRActivitySpace

+ (id)sharedInstance
{
  if (qword_27EE869D0 != -1)
  {
    sub_2480B3ED8();
  }

  v3 = qword_27EE869D8;

  return v3;
}

@end