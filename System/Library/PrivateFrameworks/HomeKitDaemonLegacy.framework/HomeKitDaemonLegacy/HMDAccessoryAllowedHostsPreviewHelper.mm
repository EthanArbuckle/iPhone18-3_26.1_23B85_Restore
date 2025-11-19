@interface HMDAccessoryAllowedHostsPreviewHelper
+ (id)helperForHome:(id)a3;
- (id)attributeDescriptions;
- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)a3;
- (void)fetchAllowedHostsForAccessory:(id)a3 completion:(id)a4;
@end

@implementation HMDAccessoryAllowedHostsPreviewHelper

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v5 = [v3 initWithName:@"home" value:WeakRetained];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_home);
  if (WeakRetained && self->_firewallRuleManager == v4)
  {
    os_unfair_lock_lock_with_options();
    v7 = self->_expires;
    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      [(NSDate *)v7 timeIntervalSinceNow];
      if (v8 <= 0.0)
      {
        v9 = objc_loadWeakRetained(&self->_home);
        if (v9)
        {
          os_unfair_lock_lock_with_options();
          v10 = objc_getAssociatedObject(v9, &HMDAccessoryAllowedHostsPreviewHelperForHome);
          if (v10 == self)
          {
            objc_setAssociatedObject(v9, &HMDAccessoryAllowedHostsPreviewHelperForHome, 0, 1);
          }

          os_unfair_lock_unlock(&HMDAccessoryAllowedHostsPreviewHelperForHome);
        }
      }
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [WeakRetained accessories];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 supportsNetworkProtection])
          {
            v17 = [v16 metadataIdentifier];
            if (v17)
            {
              [v11 addObject:v17];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v6 = [v11 copy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)fetchAllowedHostsForAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 metadataIdentifier];
  if (v8)
  {
    v9 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v10 = [v9 preferenceForKey:@"engraveRulePreviewCacheTimeout"];
    v11 = [v10 numberValue];
    v12 = [v11 integerValue];

    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v12];
    os_unfair_lock_lock_with_options();
    if (!self->_expires || [v13 compare:?] == 1)
    {
      objc_storeStrong(&self->_expires, v13);
    }

    os_unfair_lock_unlock(&self->_lock);
    firewallRuleManager = self->_firewallRuleManager;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke;
    v16[3] = &unk_279735168;
    v18 = v7;
    v16[4] = self;
    v17 = v8;
    [(HMDNetworkRouterFirewallRuleManager *)firewallRuleManager startupForClient:self completion:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v7 + 2))(v7, 0, v15);
  }
}

void __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke_2;
    v7[3] = &unk_27972D2A0;
    v8 = *(a1 + 48);
    [v5 fetchRulesForAccessories:v6 completion:v7];
  }
}

void __82__HMDAccessoryAllowedHostsPreviewHelper_fetchAllowedHostsForAccessory_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 anyObject];
  if (v5)
  {
    v6 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:v5];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)helperForHome:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  v4 = objc_getAssociatedObject(v3, &HMDAccessoryAllowedHostsPreviewHelperForHome);
  if (!v4)
  {
    v4 = [HMDAccessoryAllowedHostsPreviewHelper alloc];
    v5 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
    v6 = v3;
    v7 = v5;
    if (v4)
    {
      v10.receiver = v4;
      v10.super_class = HMDAccessoryAllowedHostsPreviewHelper;
      v8 = objc_msgSendSuper2(&v10, sel_init);
      v4 = v8;
      if (v8)
      {
        objc_storeWeak(v8 + 1, v6);
        objc_storeStrong(&v4->_firewallRuleManager, v5);
      }
    }

    objc_setAssociatedObject(v6, &HMDAccessoryAllowedHostsPreviewHelperForHome, v4, 1);
  }

  os_unfair_lock_unlock(&HMDAccessoryAllowedHostsPreviewHelperForHome);

  return v4;
}

@end