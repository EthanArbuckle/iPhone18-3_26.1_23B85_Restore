@interface NTPBPersonalizationProfile(FCAdditions)
- (id)historyForInstanceIdentifier:()FCAdditions;
- (uint64_t)lastChangeNumberForInstanceIdentifier:()FCAdditions;
- (void)aggregatesByFeatureKey;
- (void)historiesByInstanceIdentifier;
@end

@implementation NTPBPersonalizationProfile(FCAdditions)

- (void)aggregatesByFeatureKey
{
  v1 = [a1 aggregates];
  v2 = [v1 fc_dictionaryWithKeyBlock:&__block_literal_global_116];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (void)historiesByInstanceIdentifier
{
  v1 = [a1 histories];
  v2 = [v1 fc_dictionaryWithKeyBlock:&__block_literal_global_3_0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (id)historyForInstanceIdentifier:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 histories];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 instanceIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)lastChangeNumberForInstanceIdentifier:()FCAdditions
{
  v1 = [a1 historyForInstanceIdentifier:?];
  v2 = [v1 lastChangeNumber];

  return v2;
}

@end