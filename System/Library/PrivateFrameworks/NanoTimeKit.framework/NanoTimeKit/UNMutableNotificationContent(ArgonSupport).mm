@interface UNMutableNotificationContent(ArgonSupport)
- (void)argon_setArtworkUsed:()ArgonSupport;
@end

@implementation UNMutableNotificationContent(ArgonSupport)

- (void)argon_setArtworkUsed:()ArgonSupport
{
  userInfo = [self userInfo];
  v6 = [userInfo mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = dictionary;

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v11 setObject:v9 forKey:@"argon_artworkUsed"];

  v10 = [v11 copy];
  [self setUserInfo:v10];
}

@end