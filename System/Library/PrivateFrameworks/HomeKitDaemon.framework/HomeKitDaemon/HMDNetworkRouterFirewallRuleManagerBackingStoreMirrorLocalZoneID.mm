@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID
+ (id)sharedInstance;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID)initWithToken:(id)token;
- (NSArray)attributeDescriptions;
- (NSString)name;
- (id)labels;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID

- (NSString)name
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)labels
{
  v6[1] = *MEMORY[0x277D85DE8];
  name = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID *)self name];
  v6[0] = name;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID *)self name];
  v5 = [v3 initWithName:@"Name" value:name];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  token = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID *)self token];
  v8 = [v6 initWithName:@"Token" value:token];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID)initWithToken:(id)token
{
  tokenCopy = token;
  v10.receiver = self;
  v10.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID;
  v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
    v8 = v7;
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_152776 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_152776, &__block_literal_global_152777);
  }

  v3 = sharedInstance_sharedInstance_152778;

  return v3;
}

void __82__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID_sharedInstance__block_invoke()
{
  v0 = [@"6270b380-05e5-4f4d-b453-9c48242b1611" dataUsingEncoding:4];
  if (v0)
  {
    v3 = v0;
    v1 = [[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID alloc] initWithToken:v0];
    v2 = sharedInstance_sharedInstance_152778;
    sharedInstance_sharedInstance_152778 = v1;

    v0 = v3;
  }
}

@end