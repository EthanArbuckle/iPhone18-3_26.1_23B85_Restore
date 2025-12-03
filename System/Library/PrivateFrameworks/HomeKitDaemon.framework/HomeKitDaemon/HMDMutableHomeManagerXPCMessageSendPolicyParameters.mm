@interface HMDMutableHomeManagerXPCMessageSendPolicyParameters
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableHomeManagerXPCMessageSendPolicyParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMDHomeManagerXPCMessageSendPolicyParameters allocWithZone:?]options:"initWithEntitlements:options:", [(HMDXPCMessageSendPolicyParameters *)self entitlements], [(HMDHomeManagerXPCMessageSendPolicyParameters *)self options]];
  [(HMDHomeManagerXPCMessageSendPolicyParameters *)v4 setActive:[(HMDHomeManagerXPCMessageSendPolicyParameters *)self isActive]];
  return v4;
}

@end