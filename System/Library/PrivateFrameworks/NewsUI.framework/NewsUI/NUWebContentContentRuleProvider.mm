@interface NUWebContentContentRuleProvider
- (NUWebContentContentRuleProvider)initWithAppConfigurationManager:(id)manager headline:(id)headline;
- (id)contentRules;
@end

@implementation NUWebContentContentRuleProvider

- (NUWebContentContentRuleProvider)initWithAppConfigurationManager:(id)manager headline:(id)headline
{
  managerCopy = manager;
  headlineCopy = headline;
  v12.receiver = self;
  v12.super_class = NUWebContentContentRuleProvider;
  v9 = [(NUWebContentContentRuleProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, manager);
    objc_storeStrong(&v10->_headline, headline);
  }

  return v10;
}

- (id)contentRules
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"newsarticles.anf.content_blockers_enabled"];

  if (v4 && ([v4 BOOLValue] & 1) == 0 && (NFInternalBuild() & 1) != 0 || (-[NUWebContentContentRuleProvider headline](self, "headline"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLocalDraft"), v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    appConfigurationManager = [(NUWebContentContentRuleProvider *)self appConfigurationManager];
    appConfiguration = [appConfigurationManager appConfiguration];

    array = [MEMORY[0x277CBEB18] array];
    webEmbedContentBlockers = [appConfiguration webEmbedContentBlockers];
    v12 = [webEmbedContentBlockers dataUsingEncoding:4];

    if (v12)
    {
      v27 = 0;
      v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:&v27];
      if (!v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObjectsFromArray:v13];
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      webEmbedContentBlockerOverrides = [appConfiguration webEmbedContentBlockerOverrides];
      v15 = [webEmbedContentBlockerOverrides dataUsingEncoding:4];

      if (v15)
      {
        v26 = 0;
        v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v15 options:0 error:&v26];
        if (!v26)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 objectForKey:@"channels"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              headline = [(NUWebContentContentRuleProvider *)self headline];
              sourceChannel = [headline sourceChannel];
              identifier = [sourceChannel identifier];
              v24 = v17;
              v20 = [v17 objectForKey:identifier];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [array addObjectsFromArray:v20];
              }

              v17 = v24;
            }
          }
        }
      }
    }

    v25 = 0;
    v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:array options:0 error:&v25];
    if (v21)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end