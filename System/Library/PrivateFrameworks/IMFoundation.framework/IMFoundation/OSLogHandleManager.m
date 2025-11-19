@interface OSLogHandleManager
+ (id)sharedInstance;
@end

@implementation OSLogHandleManager

+ (id)sharedInstance
{
  if (qword_1ED517650 != -1)
  {
    sub_1959D6580();
  }

  v3 = qword_1ED517608;

  return v3;
}

@end