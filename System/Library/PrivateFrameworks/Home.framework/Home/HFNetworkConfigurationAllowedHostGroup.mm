@interface HFNetworkConfigurationAllowedHostGroup
+ (id)groupsForNetworkConfigurationProfiles:(id)a3;
- (HFNetworkConfigurationAllowedHostGroup)initWithName:(id)a3;
- (NSString)purposeLocalizedDescription;
- (void)addAllowedHost:(id)a3;
@end

@implementation HFNetworkConfigurationAllowedHostGroup

- (HFNetworkConfigurationAllowedHostGroup)initWithName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HFNetworkConfigurationAllowedHostGroup;
  v6 = [(HFNetworkConfigurationAllowedHostGroup *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    mutableAddresses = v7->_mutableAddresses;
    v7->_mutableAddresses = v8;

    v7->_purpose = 0;
    v10 = [MEMORY[0x277CBEB58] set];
    mutableAllowedHosts = v7->_mutableAllowedHosts;
    v7->_mutableAllowedHosts = v10;
  }

  return v7;
}

+ (id)groupsForNetworkConfigurationProfiles:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HFNetworkConfigurationAllowedHostGroup_groupsForNetworkConfigurationProfiles___block_invoke;
  v11[3] = &unk_277DFA458;
  v12 = v5;
  v6 = v5;
  [v4 na_each:v11];

  v7 = MEMORY[0x277CBEB98];
  v8 = [v6 allValues];
  v9 = [v7 setWithArray:v8];

  return v9;
}

void __80__HFNetworkConfigurationAllowedHostGroup_groupsForNetworkConfigurationProfiles___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allowedHosts];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__HFNetworkConfigurationAllowedHostGroup_groupsForNetworkConfigurationProfiles___block_invoke_2;
  v4[3] = &unk_277DFA430;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __80__HFNetworkConfigurationAllowedHostGroup_groupsForNetworkConfigurationProfiles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 name];
  v4 = [*(a1 + 32) objectForKey:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [[HFNetworkConfigurationAllowedHostGroup alloc] initWithName:v8];
  }

  v7 = v6;

  [(HFNetworkConfigurationAllowedHostGroup *)v7 addAllowedHost:v3];
  [*(a1 + 32) setObject:v7 forKey:v8];
}

- (NSString)purposeLocalizedDescription
{
  v2 = MEMORY[0x277CD1CA8];
  v3 = [(HFNetworkConfigurationAllowedHostGroup *)self purpose];

  return [v2 hf_localizedDescriptionForAllowedHostPurpose:v3];
}

- (void)addAllowedHost:(id)a3
{
  v12 = a3;
  v4 = [v12 name];
  v5 = [(HFNetworkConfigurationAllowedHostGroup *)self name];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v12 name];
    v8 = [(HFNetworkConfigurationAllowedHostGroup *)self name];
    NSLog(&cfstr_AllowedhostNam.isa, v7, v8);
  }

  v9 = [(HFNetworkConfigurationAllowedHostGroup *)self mutableAddresses];
  v10 = [v12 addresses];
  [v9 unionSet:v10];

  -[HFNetworkConfigurationAllowedHostGroup setPurpose:](self, "setPurpose:", -[HFNetworkConfigurationAllowedHostGroup purpose](self, "purpose") | [v12 purpose]);
  v11 = [(HFNetworkConfigurationAllowedHostGroup *)self mutableAllowedHosts];
  [v11 addObject:v12];
}

@end