@interface NBExclusionListManager
- (NSSet)excludedPerGizmoDomains;
- (id)excludedKeysInDomain:(id)domain;
- (void)purgeCache;
- (void)readConfigurationIfNeeded;
@end

@implementation NBExclusionListManager

- (NSSet)excludedPerGizmoDomains
{
  [(NBExclusionListManager *)self readConfigurationIfNeeded];
  excludedPerGizmoDomains = self->_excludedPerGizmoDomains;

  return excludedPerGizmoDomains;
}

- (id)excludedKeysInDomain:(id)domain
{
  domainCopy = domain;
  [(NBExclusionListManager *)self readConfigurationIfNeeded];
  v5 = [(NSMutableDictionary *)self->_excludedPerGizmoDomainSettings objectForKeyedSubscript:domainCopy];

  return v5;
}

- (void)purgeCache
{
  self->_hasReadConfiguration = 0;
  excludedPerGizmoDomains = self->_excludedPerGizmoDomains;
  self->_excludedPerGizmoDomains = 0;

  excludedPerGizmoDomainSettings = self->_excludedPerGizmoDomainSettings;
  self->_excludedPerGizmoDomainSettings = 0;
}

- (void)readConfigurationIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_hasReadConfiguration)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundlePath = [v3 bundlePath];
    v5 = [bundlePath stringByAppendingPathComponent:@"PerGizmoSettingsExclusionList.plist"];

    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:0];
      v8 = [v7 objectForKeyedSubscript:@"ExcludedDomains"];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        while (1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (!--v10)
          {
            v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (!v10)
            {
              break;
            }
          }
        }
      }

      v12 = [MEMORY[0x277CBEB98] setWithArray:v8];
      excludedPerGizmoDomains = self->_excludedPerGizmoDomains;
      self->_excludedPerGizmoDomains = v12;

      v14 = [v7 objectForKeyedSubscript:@"ExcludedSettings"];
      v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
      excludedPerGizmoDomainSettings = self->_excludedPerGizmoDomainSettings;
      self->_excludedPerGizmoDomainSettings = v15;

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__NBExclusionListManager_readConfigurationIfNeeded__block_invoke;
      v18[3] = &unk_27992D620;
      v18[4] = self;
      [v14 enumerateKeysAndObjectsUsingBlock:v18];
    }

    self->_hasReadConfiguration = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__NBExclusionListManager_readConfigurationIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (!--v8)
      {
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [*(*(a1 + 32) + 24) setObject:v10 forKeyedSubscript:v5];

  v11 = *MEMORY[0x277D85DE8];
}

@end