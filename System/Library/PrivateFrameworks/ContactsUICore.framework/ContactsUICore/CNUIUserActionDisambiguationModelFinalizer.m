@interface CNUIUserActionDisambiguationModelFinalizer
+ (id)modelWithDefaultAction:(id)a3 actions:(id)a4 recentActions:(id)a5 directoryServiceActions:(id)a6 foundOnDeviceActions:(id)a7 hasDefaultApp:(BOOL)a8;
- (CNUIUserActionDisambiguationModelFinalizer)initWithDefaultAction:(id)a3 actions:(id)a4 recentActions:(id)a5 directoryServiceActions:(id)a6 foundOnDeviceActions:(id)a7 hasDefaultApp:(BOOL)a8;
- (id)model;
- (void)promoteLoneActionToBeDefault;
- (void)promoteLoneManagedCallProviderActionToBeDefault;
- (void)removeCallProviderOverlappingIntentActions;
- (void)removeDefaultActionFromListOfActions;
- (void)removeDiscoveredActionsAlreadyCurated;
- (void)removeDuplicateIntentActionsFromSameProvider;
- (void)removeUninterestingItentActions;
@end

@implementation CNUIUserActionDisambiguationModelFinalizer

+ (id)modelWithDefaultAction:(id)a3 actions:(id)a4 recentActions:(id)a5 directoryServiceActions:(id)a6 foundOnDeviceActions:(id)a7 hasDefaultApp:(BOOL)a8
{
  v8 = a8;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[CNUIUserActionDisambiguationModelFinalizer alloc] initWithDefaultAction:v17 actions:v16 recentActions:v15 directoryServiceActions:v14 foundOnDeviceActions:v13 hasDefaultApp:v8];

  v19 = [(CNUIUserActionDisambiguationModelFinalizer *)v18 model];

  return v19;
}

- (CNUIUserActionDisambiguationModelFinalizer)initWithDefaultAction:(id)a3 actions:(id)a4 recentActions:(id)a5 directoryServiceActions:(id)a6 foundOnDeviceActions:(id)a7 hasDefaultApp:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v26.receiver = self;
  v26.super_class = CNUIUserActionDisambiguationModelFinalizer;
  v19 = [(CNUIUserActionDisambiguationModelFinalizer *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_defaultAction, a3);
    v21 = [v15 mutableCopy];
    actions = v20->_actions;
    v20->_actions = v21;

    objc_storeStrong(&v20->_recentActions, a5);
    objc_storeStrong(&v20->_directoryServiceActions, a6);
    objc_storeStrong(&v20->_foundOnDeviceActions, a7);
    v20->_hasDefaultApp = a8;
    v23 = v20;
  }

  return v20;
}

- (id)model
{
  [(CNUIUserActionDisambiguationModelFinalizer *)self removeCallProviderOverlappingIntentActions];
  [(CNUIUserActionDisambiguationModelFinalizer *)self removeUninterestingItentActions];
  [(CNUIUserActionDisambiguationModelFinalizer *)self removeDiscoveredActionsAlreadyCurated];
  [(CNUIUserActionDisambiguationModelFinalizer *)self removeDuplicateIntentActionsFromSameProvider];
  [(CNUIUserActionDisambiguationModelFinalizer *)self promoteLoneManagedCallProviderActionToBeDefault];
  [(CNUIUserActionDisambiguationModelFinalizer *)self promoteLoneActionToBeDefault];
  [(CNUIUserActionDisambiguationModelFinalizer *)self removeDefaultActionFromListOfActions];
  v3 = [CNUIUserActionListModel alloc];
  v4 = [(CNUIUserActionDisambiguationModelFinalizer *)self defaultAction];
  v5 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
  v6 = [(CNUIUserActionDisambiguationModelFinalizer *)self directoryServiceActions];
  v7 = [(CNUIUserActionDisambiguationModelFinalizer *)self foundOnDeviceActions];
  v8 = [(CNUIUserActionListModel *)v3 initWithDefaultAction:v4 actions:v5 directoryServiceActions:v6 foundOnDeviceActions:v7 hasDefaultApp:[(CNUIUserActionDisambiguationModelFinalizer *)self hasDefaultApp]];

  return v8;
}

- (void)removeCallProviderOverlappingIntentActions
{
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
  v4 = [v3 _cn_filter:&__block_literal_global_17];

  if ([v4 count])
  {
    v5 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __88__CNUIUserActionDisambiguationModelFinalizer_removeCallProviderOverlappingIntentActions__block_invoke_2;
    v6[3] = &unk_1E76E8640;
    v7 = v4;
    [v5 _cn_removeObjectsPassingTest:v6];
  }
}

BOOL __88__CNUIUserActionDisambiguationModelFinalizer_removeCallProviderOverlappingIntentActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 group] == 2 || objc_msgSend(v2, "group") == 6 || objc_msgSend(v2, "group") == 1;

  return v3;
}

uint64_t __88__CNUIUserActionDisambiguationModelFinalizer_removeCallProviderOverlappingIntentActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 group] == 7 || objc_msgSend(v3, "group") == 5)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88__CNUIUserActionDisambiguationModelFinalizer_removeCallProviderOverlappingIntentActions__block_invoke_3;
    v7[3] = &unk_1E76E8640;
    v8 = v3;
    v5 = [v4 _cn_any:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __88__CNUIUserActionDisambiguationModelFinalizer_removeCallProviderOverlappingIntentActions__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 | v2)
  {
    return [v2 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

- (void)removeUninterestingItentActions
{
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__CNUIUserActionDisambiguationModelFinalizer_removeUninterestingItentActions__block_invoke;
  v4[3] = &unk_1E76E8640;
  v4[4] = self;
  [v3 _cn_removeObjectsPassingTest:v4];
}

uint64_t __77__CNUIUserActionDisambiguationModelFinalizer_removeUninterestingItentActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 options])
  {
    v5 = [*(a1 + 32) recentActions];
    v4 = [v5 containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeDiscoveredActionsAlreadyCurated
{
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
  v4 = [v3 _cn_filter:&__block_literal_global_3_0];

  if ([v4 count])
  {
    v5 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__CNUIUserActionDisambiguationModelFinalizer_removeDiscoveredActionsAlreadyCurated__block_invoke_2;
    v6[3] = &unk_1E76E8640;
    v7 = v4;
    [v5 _cn_removeObjectsPassingTest:v6];
  }
}

uint64_t __83__CNUIUserActionDisambiguationModelFinalizer_removeDiscoveredActionsAlreadyCurated__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 group] == 7)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__CNUIUserActionDisambiguationModelFinalizer_removeDiscoveredActionsAlreadyCurated__block_invoke_3;
    v7[3] = &unk_1E76E8640;
    v8 = v3;
    v5 = [v4 _cn_any:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __83__CNUIUserActionDisambiguationModelFinalizer_removeDiscoveredActionsAlreadyCurated__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 | v2)
  {
    return [v2 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

- (void)removeDuplicateIntentActionsFromSameProvider
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
  v4 = [v3 _cn_groupBy:&__block_literal_global_6];

  v5 = [v4 allValues];
  v6 = [v5 _cn_all:&__block_literal_global_10];

  if ((v6 & 1) == 0)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(&v19 + 1) + 8 * v12), "hash")}];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = [v7 array];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__CNUIUserActionDisambiguationModelFinalizer_removeDuplicateIntentActionsFromSameProvider__block_invoke_3;
    v17[3] = &unk_1E76E86A8;
    v18 = v4;
    v15 = [v14 _cn_flatMap:v17];

    v16 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    [v16 setArray:v15];
  }
}

uint64_t __90__CNUIUserActionDisambiguationModelFinalizer_removeDuplicateIntentActionsFromSameProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

id __90__CNUIUserActionDisambiguationModelFinalizer_removeDuplicateIntentActionsFromSameProvider__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 _cn_filter:&__block_literal_global_13];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v4 = [v2 firstObject];
    v9[0] = v4;
    v5 = v9;
  }

  else
  {
    v4 = [v3 firstObject];
    v8 = v4;
    v5 = &v8;
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v6;
}

- (void)promoteLoneManagedCallProviderActionToBeDefault
{
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self defaultAction];

  if (!v3)
  {
    v4 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    v6 = [v4 _cn_filter:&__block_literal_global_17_1];

    if ([v6 count] == 1)
    {
      v5 = [v6 firstObject];
      [(CNUIUserActionDisambiguationModelFinalizer *)self setDefaultAction:v5];
    }
  }
}

- (void)promoteLoneActionToBeDefault
{
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self defaultAction];

  if (!v3)
  {
    v4 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = *MEMORY[0x1E6996530];
      v7 = [(CNUIUserActionDisambiguationModelFinalizer *)self directoryServiceActions];
      v8 = (*(v6 + 16))(v6, v7);

      if (v8)
      {
        v9 = [(CNUIUserActionDisambiguationModelFinalizer *)self foundOnDeviceActions];
        v10 = (*(v6 + 16))(v6, v9);

        if (v10)
        {
          v11 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
          v12 = [v11 firstObject];
          v13 = [v12 shouldPromoteLoneActionToBeDefault];

          if (v13)
          {
            v15 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
            v14 = [v15 firstObject];
            [(CNUIUserActionDisambiguationModelFinalizer *)self setDefaultAction:v14];
          }
        }
      }
    }
  }
}

- (void)removeDefaultActionFromListOfActions
{
  v3 = [(CNUIUserActionDisambiguationModelFinalizer *)self defaultAction];

  if (v3)
  {
    v4 = [(CNUIUserActionDisambiguationModelFinalizer *)self actions];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __82__CNUIUserActionDisambiguationModelFinalizer_removeDefaultActionFromListOfActions__block_invoke;
    v5[3] = &unk_1E76E8640;
    v5[4] = self;
    [v4 _cn_removeObjectsPassingTest:v5];
  }
}

uint64_t __82__CNUIUserActionDisambiguationModelFinalizer_removeDefaultActionFromListOfActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 defaultAction];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end