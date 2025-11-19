@interface HREContextActionRecommendation
- (BOOL)containsMeaningfulChanges;
- (HREContextActionRecommendation)initWithHome:(id)a3 uniqueIdentifier:(id)a4;
- (id)copyWithActionFilter:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilder;
- (id)executeActions;
- (void)addAction:(id)a3 allowEditingExistingActions:(BOOL)a4;
- (void)addActions:(id)a3 allowEditingExistingActions:(BOOL)a4;
- (void)removeAction:(id)a3;
- (void)removeActions:(id)a3;
@end

@implementation HREContextActionRecommendation

- (HREContextActionRecommendation)initWithHome:(id)a3 uniqueIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HREContextActionRecommendation;
  v4 = [(HRERecommendation *)&v7 initWithHome:a3 uniqueIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [(HREContextActionRecommendation *)v4 set_actions:v5];
  }

  return v4;
}

- (void)addAction:(id)a3 allowEditingExistingActions:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(HREContextActionRecommendation *)self actions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 canUpdateWithActionBuilder:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (!v12)
    {
      goto LABEL_12;
    }

    [v12 updateWithActionBuilder:v5];
  }

  else
  {
LABEL_9:

LABEL_12:
    v12 = [(HREContextActionRecommendation *)self _actions];
    [v12 addObject:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addActions:(id)a3 allowEditingExistingActions:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__HREContextActionRecommendation_addActions_allowEditingExistingActions___block_invoke;
  v4[3] = &unk_279776810;
  v4[4] = self;
  v5 = a4;
  [a3 na_each:v4];
}

- (void)removeAction:(id)a3
{
  v4 = a3;
  v5 = [(HREContextActionRecommendation *)self _actions];
  [v5 removeObject:v4];
}

- (void)removeActions:(id)a3
{
  v4 = a3;
  v5 = [(HREContextActionRecommendation *)self _actions];
  [v5 minusSet:v4];
}

- (BOOL)containsMeaningfulChanges
{
  v2 = [(HREContextActionRecommendation *)self actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)descriptionBuilder
{
  v12.receiver = self;
  v12.super_class = HREContextActionRecommendation;
  v3 = [(HRERecommendation *)&v12 descriptionBuilder];
  v4 = [(HREContextActionRecommendation *)self name];
  [v3 appendString:v4 withName:@"name"];

  v5 = [(HREContextActionRecommendation *)self iconDescriptor];
  v6 = [v3 appendObject:v5 withName:@"iconDescriptor"];

  v7 = MEMORY[0x277D14380];
  v8 = [(HREContextActionRecommendation *)self _actions];
  v9 = [v8 allObjects];
  v10 = [v7 hre_sortActionBuilders:v9];

  [v3 appendArraySection:v10 withName:@"actions" skipIfEmpty:1];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = HREContextActionRecommendation;
  v4 = [(HRERecommendation *)&v11 copyWithZone:a3];
  v5 = [(HREContextActionRecommendation *)self name];
  v6 = [v5 copy];
  [v4 setName:v6];

  v7 = [(HREContextActionRecommendation *)self iconDescriptor];
  [v4 setIconDescriptor:v7];

  v8 = [(HREContextActionRecommendation *)self _actions];
  v9 = [v8 mutableCopy];
  [v4 set_actions:v9];

  return v4;
}

- (id)executeActions
{
  v3 = [(HRERecommendation *)self home];
  v4 = [v3 hf_characteristicValueManager];

  v5 = [(HREContextActionRecommendation *)self actions];
  v6 = [v5 na_map:&__block_literal_global_7];

  v7 = MEMORY[0x277D2C900];
  v8 = [v6 allObjects];
  v9 = [v7 combineAllFutures:v8];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __48__HREContextActionRecommendation_executeActions__block_invoke_2;
  v17 = &unk_279776E38;
  v18 = v4;
  v19 = self;
  v10 = v4;
  v11 = [v9 flatMap:&v14];
  v12 = [v11 flatMap:{&__block_literal_global_25, v14, v15, v16, v17}];

  return v12;
}

id __48__HREContextActionRecommendation_executeActions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) beginTransactionWithReason:@"HREContextActionRecommendationCharacteristicTransactionReason"];
  v2 = [*(a1 + 40) actions];
  v3 = [v2 na_map:&__block_literal_global_19];
  v4 = [v3 na_filter:&__block_literal_global_22_0];

  v5 = [*(a1 + 32) executeActions:v4];
  [*(a1 + 32) commitTransactionWithReason:@"HREContextActionRecommendationCharacteristicTransactionReason"];

  return v5;
}

- (id)copyWithActionFilter:(id)a3
{
  v4 = a3;
  v5 = [(HREContextActionRecommendation *)self copy];
  v6 = [v5 _actions];
  v7 = [v6 na_map:v4];

  v8 = [v7 mutableCopy];
  [v5 set_actions:v8];

  return v5;
}

@end