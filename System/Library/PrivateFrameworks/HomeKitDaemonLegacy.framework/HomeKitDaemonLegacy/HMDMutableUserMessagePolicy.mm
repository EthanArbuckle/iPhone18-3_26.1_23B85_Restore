@interface HMDMutableUserMessagePolicy
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableUserMessagePolicy

- (id)copyWithZone:(_NSZone *)zone
{
  home = [(HMDUserMessagePolicy *)self home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:[(HMDUserMessagePolicy *)self userPrivilege] remoteAccessRequired:[(HMDUserMessagePolicy *)self requiresRemoteAccess] requiresCameraStreamingAccess:[(HMDUserMessagePolicy *)self requiresCameraStreamingAccess]];

  return v5;
}

@end