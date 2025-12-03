@interface MBApplePushServicePlugin
- (BOOL)shouldRestoreContentWithPolicy:(id)policy atPath:(id)path;
@end

@implementation MBApplePushServicePlugin

- (BOOL)shouldRestoreContentWithPolicy:(id)policy atPath:(id)path
{
  policyCopy = policy;
  if ([path isEqualToString:@"/var/mobile/Library/Preferences/com.apple.apsd.plist"] && (objc_msgSend(policyCopy, "isRestoringToSameDevice") & 1) == 0)
  {
    osBuildVersionOfBackup = [policyCopy osBuildVersionOfBackup];
    v8 = [osBuildVersionOfBackup hasPrefix:@"8A"];

    v6 = v8 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end