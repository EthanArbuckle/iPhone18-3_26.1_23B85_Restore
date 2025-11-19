@interface HMUDevice
+ (BOOL)isAccessory;
@end

@implementation HMUDevice

+ (BOOL)isAccessory
{
  if (+[HMUDevice isAudioAccessory])
  {
    return 1;
  }

  return +[HMUDevice isAppleTV];
}

@end