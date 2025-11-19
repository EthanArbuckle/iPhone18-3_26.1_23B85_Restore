@interface _COClusterRealmDynamicGroup
+ (id)realmForCurrent;
- (id)_identifierForGroupResult:(id)a3;
@end

@implementation _COClusterRealmDynamicGroup

+ (id)realmForCurrent
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D27490] predicateForCurrentDevice];
  v9[0] = v2;
  v3 = [MEMORY[0x277D27478] predicateForCurrentDevice];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v5 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];
  v6 = [[_COClusterRealmDynamicGroup alloc] _initWithPredicate:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_identifierForGroupResult:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v23;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v22 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
        v6 = v10;
        v12 = v7;
      }

      else
      {
        objc_opt_class();
        v11 = v7;
        v12 = v10;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }
      }

      v13 = v10;

      v7 = v12;
    }

    v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v5);
LABEL_14:
  _os_feature_enabled_impl();
  if (v6)
  {
    v14 = [v6 HomeKitMediaSystemIdentifier];
    v15 = [v14 UUIDString];

    v16 = @"pair";
    if (v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v7)
  {
    v17 = [v7 HomeKitAccesoryIdentifier];
    v15 = [v17 UUIDString];

    v16 = @"solo";
  }

LABEL_20:
  if ([(__CFString *)v16 length])
  {
    [v15 length];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v16, v15];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

@end