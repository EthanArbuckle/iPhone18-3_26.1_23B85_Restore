@interface HMDMutableHomeManagerXPCMessageSendPolicyParameters
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableHomeManagerXPCMessageSendPolicyParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMDHomeManagerXPCMessageSendPolicyParameters allocWithZone:?]options:"initWithEntitlements:options:", [(HMDXPCMessageSendPolicyParameters *)self entitlements], [(HMDHomeManagerXPCMessageSendPolicyParameters *)self options]];
  [(HMDHomeManagerXPCMessageSendPolicyParameters *)v4 setActive:[(HMDHomeManagerXPCMessageSendPolicyParameters *)self isActive]];
  return v4;
}

@end