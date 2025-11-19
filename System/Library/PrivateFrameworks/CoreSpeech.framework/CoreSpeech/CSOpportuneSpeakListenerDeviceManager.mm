@interface CSOpportuneSpeakListenerDeviceManager
+ (id)sharedManager;
@end

@implementation CSOpportuneSpeakListenerDeviceManager

+ (id)sharedManager
{
  if (qword_10029E438 != -1)
  {
    dispatch_once(&qword_10029E438, &stru_100251EF8);
  }

  v3 = qword_10029E430;

  return v3;
}

@end