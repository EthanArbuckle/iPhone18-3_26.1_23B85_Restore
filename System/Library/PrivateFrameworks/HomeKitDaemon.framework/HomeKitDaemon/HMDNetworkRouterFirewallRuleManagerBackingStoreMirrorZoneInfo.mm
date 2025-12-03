@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo)initWithZoneID:(id)d;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo)initWithZoneID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo;
  v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneID, d);
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    recordIDs = v7->_recordIDs;
    v7->_recordIDs = v8;

    v10 = v7;
  }

  return v7;
}

@end