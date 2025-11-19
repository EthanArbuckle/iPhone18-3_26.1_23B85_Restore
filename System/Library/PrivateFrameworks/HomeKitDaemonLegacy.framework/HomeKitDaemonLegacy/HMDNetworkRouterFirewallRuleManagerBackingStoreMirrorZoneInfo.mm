@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo)initWithZoneID:(id)a3;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo)initWithZoneID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo;
  v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneID, a3);
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    recordIDs = v7->_recordIDs;
    v7->_recordIDs = v8;

    v10 = v7;
  }

  return v7;
}

@end