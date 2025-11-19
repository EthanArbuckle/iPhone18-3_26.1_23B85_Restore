@interface IMDaemonCoreSpotlightManager
+ (IMDaemonCoreSpotlightManager)sharedManager;
@end

@implementation IMDaemonCoreSpotlightManager

+ (IMDaemonCoreSpotlightManager)sharedManager
{
  if (qword_281420F00 != -1)
  {
    sub_22B7D0BD0();
  }

  v3 = qword_281420EE8;

  return v3;
}

@end