@interface NDODeviceProvider
+ (id)sharedProvider;
@end

@implementation NDODeviceProvider

+ (id)sharedProvider
{
  if (qword_1000A8320 != -1)
  {
    sub_100004018();
  }

  v3 = qword_1000A8318;

  return v3;
}

@end