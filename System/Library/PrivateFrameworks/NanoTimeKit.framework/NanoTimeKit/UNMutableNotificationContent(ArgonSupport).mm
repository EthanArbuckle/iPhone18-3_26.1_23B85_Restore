@interface UNMutableNotificationContent(ArgonSupport)
- (void)argon_setArtworkUsed:()ArgonSupport;
@end

@implementation UNMutableNotificationContent(ArgonSupport)

- (void)argon_setArtworkUsed:()ArgonSupport
{
  v5 = [a1 userInfo];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v8;

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v11 setObject:v9 forKey:@"argon_artworkUsed"];

  v10 = [v11 copy];
  [a1 setUserInfo:v10];
}

@end