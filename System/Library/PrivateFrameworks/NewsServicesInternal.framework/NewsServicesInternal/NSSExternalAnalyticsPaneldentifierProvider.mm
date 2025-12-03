@interface NSSExternalAnalyticsPaneldentifierProvider
- (NSSExternalAnalyticsPaneldentifierProvider)initWithHostNames:(id)names;
- (id)panelIdentifierWithHostNames:(id)names;
@end

@implementation NSSExternalAnalyticsPaneldentifierProvider

- (NSSExternalAnalyticsPaneldentifierProvider)initWithHostNames:(id)names
{
  namesCopy = names;
  v11.receiver = self;
  v11.super_class = NSSExternalAnalyticsPaneldentifierProvider;
  v5 = [(NSSExternalAnalyticsPaneldentifierProvider *)&v11 init];
  if (v5)
  {
    v6 = [namesCopy copy];
    hostNames = v5->_hostNames;
    v5->_hostNames = v6;

    v8 = [(NSSExternalAnalyticsPaneldentifierProvider *)v5 panelIdentifierWithHostNames:namesCopy];
    panelIdentifier = v5->_panelIdentifier;
    v5->_panelIdentifier = v8;
  }

  return v5;
}

- (id)panelIdentifierWithHostNames:(id)names
{
  v36 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __75__NSSExternalAnalyticsPaneldentifierProvider_panelIdentifierWithHostNames___block_invoke;
  v33[3] = &unk_279980C30;
  v4 = namesCopy;
  v34 = v4;
  v5 = MEMORY[0x25F882600](v33);
  v6 = CFNetworkCopySystemProxySettings();
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"ProxyAutoConfigEnable"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"ProxyAutoConfigURLString"];
    v10 = [v9 copy];
  }

  else
  {
    v9 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"HTTPProxy"];
    v11 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"HTTPPort"];
    stringValue = [v11 stringValue];

    if ([v9 length] && objc_msgSend(stringValue, "length"))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v9, stringValue];
    }

    else
    {
      v10 = 0;
    }
  }

  if ((v5)[2](v5, v10))
  {
    if (v10)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  [(__CFDictionary *)v6 objectForKeyedSubscript:@"__SCOPED__"];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v32 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v14)
  {
    v10 = 0;
    goto LABEL_33;
  }

  v15 = v14;
  v27 = v6;
  v28 = v4;
  v16 = *v30;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v29 + 1) + 8 * i);
      if ([v18 hasPrefix:@"pdp"])
      {
        v19 = [v13 objectForKeyedSubscript:v18];
        v20 = [v19 objectForKeyedSubscript:@"HTTPProxy"];

        v21 = [v13 objectForKeyedSubscript:v18];
        v22 = [v21 objectForKeyedSubscript:@"HTTPPort"];
        stringValue2 = [v22 stringValue];

        if ([v20 length] && objc_msgSend(stringValue2, "length") && ((v5)[2](v5, v20) & 1) != 0)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v20, stringValue2];

          goto LABEL_31;
        }
      }

      else
      {
        if (![v18 hasPrefix:@"en"])
        {
          continue;
        }

        v24 = [v13 objectForKeyedSubscript:v18];
        v20 = [v24 objectForKeyedSubscript:@"ProxyAutoConfigURLString"];

        if ((v5)[2](v5, v20))
        {
          v10 = [v20 copy];
LABEL_31:

          goto LABEL_32;
        }
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v10 = 0;
LABEL_32:
  v6 = v27;
  v4 = v28;
LABEL_33:

LABEL_34:
  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __75__NSSExternalAnalyticsPaneldentifierProvider_panelIdentifierWithHostNames___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsString:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end