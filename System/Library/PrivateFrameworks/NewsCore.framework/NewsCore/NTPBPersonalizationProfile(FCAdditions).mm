@interface NTPBPersonalizationProfile(FCAdditions)
- (id)historyForInstanceIdentifier:()FCAdditions;
- (uint64_t)lastChangeNumberForInstanceIdentifier:()FCAdditions;
- (void)aggregatesByFeatureKey;
- (void)historiesByInstanceIdentifier;
@end

@implementation NTPBPersonalizationProfile(FCAdditions)

- (void)aggregatesByFeatureKey
{
  aggregates = [self aggregates];
  v2 = [aggregates fc_dictionaryWithKeyBlock:&__block_literal_global_116];
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
  histories = [self histories];
  v2 = [histories fc_dictionaryWithKeyBlock:&__block_literal_global_3_0];
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
  histories = [self histories];
  v6 = [histories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(histories);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        instanceIdentifier = [v9 instanceIdentifier];
        v11 = [instanceIdentifier isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [histories countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v1 = [self historyForInstanceIdentifier:?];
  lastChangeNumber = [v1 lastChangeNumber];

  return lastChangeNumber;
}

@end