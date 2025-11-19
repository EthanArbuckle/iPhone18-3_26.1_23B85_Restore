@interface HMDMutableUserMessagePolicy
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableUserMessagePolicy

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HMDUserMessagePolicy *)self home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:[(HMDUserMessagePolicy *)self userPrivilege] remoteAccessRequired:[(HMDUserMessagePolicy *)self requiresRemoteAccess] requiresCameraStreamingAccess:[(HMDUserMessagePolicy *)self requiresCameraStreamingAccess]];

  return v5;
}

@end