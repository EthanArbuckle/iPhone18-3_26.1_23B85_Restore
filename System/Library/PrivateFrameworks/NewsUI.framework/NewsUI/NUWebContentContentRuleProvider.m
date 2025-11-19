@interface NUWebContentContentRuleProvider
- (NUWebContentContentRuleProvider)initWithAppConfigurationManager:(id)a3 headline:(id)a4;
- (id)contentRules;
@end

@implementation NUWebContentContentRuleProvider

- (NUWebContentContentRuleProvider)initWithAppConfigurationManager:(id)a3 headline:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUWebContentContentRuleProvider;
  v9 = [(NUWebContentContentRuleProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, a3);
    objc_storeStrong(&v10->_headline, a4);
  }

  return v10;
}

- (id)contentRules
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"newsarticles.anf.content_blockers_enabled"];

  if (v4 && ([v4 BOOLValue] & 1) == 0 && (NFInternalBuild() & 1) != 0 || (-[NUWebContentContentRuleProvider headline](self, "headline"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLocalDraft"), v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NUWebContentContentRuleProvider *)self appConfigurationManager];
    v9 = [v8 appConfiguration];

    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [v9 webEmbedContentBlockers];
    v12 = [v11 dataUsingEncoding:4];

    if (v12)
    {
      v27 = 0;
      v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:&v27];
      if (!v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 addObjectsFromArray:v13];
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v9 webEmbedContentBlockerOverrides];
      v15 = [v14 dataUsingEncoding:4];

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
              v23 = [(NUWebContentContentRuleProvider *)self headline];
              v18 = [v23 sourceChannel];
              v19 = [v18 identifier];
              v24 = v17;
              v20 = [v17 objectForKey:v19];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v10 addObjectsFromArray:v20];
              }

              v17 = v24;
            }
          }
        }
      }
    }

    v25 = 0;
    v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:&v25];
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