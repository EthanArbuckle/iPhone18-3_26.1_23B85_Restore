@interface UNNotificationContent(ArgonSupport)
- (uint64_t)argon_artworkUsed;
@end

@implementation UNNotificationContent(ArgonSupport)

- (uint64_t)argon_artworkUsed
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"argon_artworkUsed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end