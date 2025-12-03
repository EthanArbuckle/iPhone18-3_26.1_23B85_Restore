@interface UNNotificationContent(ArgonSupport)
- (uint64_t)argon_artworkUsed;
@end

@implementation UNNotificationContent(ArgonSupport)

- (uint64_t)argon_artworkUsed
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"argon_artworkUsed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

@end