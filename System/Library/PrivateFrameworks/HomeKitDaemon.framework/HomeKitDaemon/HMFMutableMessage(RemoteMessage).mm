@interface HMFMutableMessage(RemoteMessage)
- (void)setRemote:()RemoteMessage;
- (void)setRemoteDisallowsIDSRacing:()RemoteMessage;
- (void)setRemoteResponseRestriction:()RemoteMessage;
- (void)setRemoteRestriction:()RemoteMessage;
- (void)setSecureRemote:()RemoteMessage;
@end

@implementation HMFMutableMessage(RemoteMessage)

- (void)setRemoteDisallowsIDSRacing:()RemoteMessage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setUserInfoValue:v2 forKey:@"HMD.remoteDisallowsIDSRacing"];
}

- (void)setRemoteResponseRestriction:()RemoteMessage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [self setUserInfoValue:v2 forKey:@"HMD.remoteTransportResponseRestriction"];
}

- (void)setRemoteRestriction:()RemoteMessage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [self setUserInfoValue:v2 forKey:@"HMD.remoteTransportRestriction"];
}

- (void)setSecureRemote:()RemoteMessage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setUserInfoValue:v2 forKey:@"HMD.remoteSecure"];
}

- (void)setRemote:()RemoteMessage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setUserInfoValue:v2 forKey:@"HMD.remote"];
}

@end