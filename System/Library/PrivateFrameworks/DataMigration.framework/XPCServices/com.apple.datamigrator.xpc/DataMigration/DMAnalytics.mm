@interface DMAnalytics
+ (id)sharedInstance;
@end

@implementation DMAnalytics

+ (id)sharedInstance
{
  if (qword_1000309C8 != -1)
  {
    sub_100012AE8();
  }

  v3 = qword_1000309C0;

  return v3;
}

@end