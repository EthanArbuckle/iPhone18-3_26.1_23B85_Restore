@interface PlatformHelper
+ (id)sharedInstance;
@end

@implementation PlatformHelper

+ (id)sharedInstance
{
  if (qword_10012BB48 != -1)
  {
    sub_1000E205C();
  }

  return qword_10012BB40;
}

@end