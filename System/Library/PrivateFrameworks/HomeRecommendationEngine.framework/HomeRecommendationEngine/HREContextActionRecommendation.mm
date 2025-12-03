@interface HREContextActionRecommendation
- (BOOL)containsMeaningfulChanges;
- (HREContextActionRecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier;
- (id)copyWithActionFilter:(id)filter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilder;
- (id)executeActions;
- (void)addAction:(id)action allowEditingExistingActions:(BOOL)actions;
- (void)addActions:(id)actions allowEditingExistingActions:(BOOL)existingActions;
- (void)removeAction:(id)action;
- (void)removeActions:(id)actions;
@end

@implementation HREContextActionRecommendation

- (HREContextActionRecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HREContextActionRecommendation;
  v4 = [(HRERecommendation *)&v7 initWithHome:home uniqueIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [(HREContextActionRecommendation *)v4 set_actions:v5];
  }

  return v4;
}

- (void)addAction:(id)action allowEditingExistingActions:(BOOL)actions
{
  v19 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actions = [(HREContextActionRecommendation *)self actions];
  v7 = [actions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(actions);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 canUpdateWithActionBuilder:actionCopy])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [actions countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    _actions = v11;

    if (!_actions)
    {
      goto LABEL_12;
    }

    [_actions updateWithActionBuilder:actionCopy];
  }

  else
  {
LABEL_9:

LABEL_12:
    _actions = [(HREContextActionRecommendation *)self _actions];
    [_actions addObject:actionCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addActions:(id)actions allowEditingExistingActions:(BOOL)existingActions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__HREContextActionRecommendation_addActions_allowEditingExistingActions___block_invoke;
  v4[3] = &unk_279776810;
  v4[4] = self;
  existingActionsCopy = existingActions;
  [actions na_each:v4];
}

- (void)removeAction:(id)action
{
  actionCopy = action;
  _actions = [(HREContextActionRecommendation *)self _actions];
  [_actions removeObject:actionCopy];
}

- (void)removeActions:(id)actions
{
  actionsCopy = actions;
  _actions = [(HREContextActionRecommendation *)self _actions];
  [_actions minusSet:actionsCopy];
}

- (BOOL)containsMeaningfulChanges
{
  actions = [(HREContextActionRecommendation *)self actions];
  v3 = [actions count] != 0;

  return v3;
}

- (id)descriptionBuilder
{
  v12.receiver = self;
  v12.super_class = HREContextActionRecommendation;
  descriptionBuilder = [(HRERecommendation *)&v12 descriptionBuilder];
  name = [(HREContextActionRecommendation *)self name];
  [descriptionBuilder appendString:name withName:@"name"];

  iconDescriptor = [(HREContextActionRecommendation *)self iconDescriptor];
  v6 = [descriptionBuilder appendObject:iconDescriptor withName:@"iconDescriptor"];

  v7 = MEMORY[0x277D14380];
  _actions = [(HREContextActionRecommendation *)self _actions];
  allObjects = [_actions allObjects];
  v10 = [v7 hre_sortActionBuilders:allObjects];

  [descriptionBuilder appendArraySection:v10 withName:@"actions" skipIfEmpty:1];

  return descriptionBuilder;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = HREContextActionRecommendation;
  v4 = [(HRERecommendation *)&v11 copyWithZone:zone];
  name = [(HREContextActionRecommendation *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  iconDescriptor = [(HREContextActionRecommendation *)self iconDescriptor];
  [v4 setIconDescriptor:iconDescriptor];

  _actions = [(HREContextActionRecommendation *)self _actions];
  v9 = [_actions mutableCopy];
  [v4 set_actions:v9];

  return v4;
}

- (id)executeActions
{
  home = [(HRERecommendation *)self home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];

  actions = [(HREContextActionRecommendation *)self actions];
  v6 = [actions na_map:&__block_literal_global_7];

  v7 = MEMORY[0x277D2C900];
  allObjects = [v6 allObjects];
  v9 = [v7 combineAllFutures:allObjects];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __48__HREContextActionRecommendation_executeActions__block_invoke_2;
  v17 = &unk_279776E38;
  v18 = hf_characteristicValueManager;
  selfCopy = self;
  v10 = hf_characteristicValueManager;
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

- (id)copyWithActionFilter:(id)filter
{
  filterCopy = filter;
  v5 = [(HREContextActionRecommendation *)self copy];
  _actions = [v5 _actions];
  v7 = [_actions na_map:filterCopy];

  v8 = [v7 mutableCopy];
  [v5 set_actions:v8];

  return v5;
}

@end