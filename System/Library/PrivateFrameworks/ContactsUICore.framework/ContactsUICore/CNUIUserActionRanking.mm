@interface CNUIUserActionRanking
+ (id)advisorSettingsForIdentifyingMostRecentAction:(id)action actionType:(id)type;
+ (id)advisorSettingsForSortingAddresses:(id)addresses actionType:(id)type;
+ (id)constrainMechanismsForActionType:(id)type;
- (CNUIUserActionRanking)init;
- (CNUIUserActionRanking)initWithInteractionAdvisor:(id)advisor;
- (id)selectMostRecentActionFromItems:(id)items;
- (id)selectRecentActionItems:(id)items schedulerProvider:(id)provider;
- (id)sortActionItems:(id)items schedulerProvider:(id)provider defaultAppsScorer:(id)scorer;
- (id)sortKeysByRankingAddresses:(id)addresses actionType:(id)type scheduler:(id)scheduler;
@end

@implementation CNUIUserActionRanking

- (CNUIUserActionRanking)init
{
  mEMORY[0x1E69978D8] = [MEMORY[0x1E69978D8] sharedInteractionAdvisor];
  v4 = [(CNUIUserActionRanking *)self initWithInteractionAdvisor:mEMORY[0x1E69978D8]];

  return v4;
}

- (CNUIUserActionRanking)initWithInteractionAdvisor:(id)advisor
{
  advisorCopy = advisor;
  v10.receiver = self;
  v10.super_class = CNUIUserActionRanking;
  v6 = [(CNUIUserActionRanking *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionAdvisor, advisor);
    v8 = v7;
  }

  return v7;
}

- (id)sortActionItems:(id)items schedulerProvider:(id)provider defaultAppsScorer:(id)scorer
{
  itemsCopy = items;
  providerCopy = provider;
  scorerCopy = scorer;
  if ([itemsCopy count] > 1)
  {
    v12 = [itemsCopy _cn_map:&__block_literal_global_81];
    firstObject = [itemsCopy firstObject];
    type = [firstObject type];
    backgroundScheduler = [providerCopy backgroundScheduler];
    v16 = [(CNUIUserActionRanking *)self sortKeysByRankingAddresses:v12 actionType:type scheduler:backgroundScheduler];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __77__CNUIUserActionRanking_sortActionItems_schedulerProvider_defaultAppsScorer___block_invoke;
    v27[3] = &unk_1E76E9CD8;
    v17 = itemsCopy;
    v28 = v17;
    v18 = [v16 recover:v27];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__CNUIUserActionRanking_sortActionItems_schedulerProvider_defaultAppsScorer___block_invoke_2;
    v24[3] = &unk_1E76EA500;
    v25 = scorerCopy;
    v19 = v17;
    v26 = v19;
    v20 = [v18 flatMap:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__CNUIUserActionRanking_sortActionItems_schedulerProvider_defaultAppsScorer___block_invoke_3;
    v22[3] = &unk_1E76E9CD8;
    v23 = v19;
    v11 = [v20 recover:v22];
  }

  else
  {
    v11 = [MEMORY[0x1E6996720] futureWithResult:itemsCopy];
  }

  return v11;
}

id __77__CNUIUserActionRanking_sortActionItems_schedulerProvider_defaultAppsScorer___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996720];
  v2 = [*(a1 + 32) _cn_map:&__block_literal_global_81];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __77__CNUIUserActionRanking_sortActionItems_schedulerProvider_defaultAppsScorer___block_invoke_2(uint64_t a1, void *a2)
{
  v15[6] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CNUIUserActionItemComparator comparatorWithActionItemGrouping];
  v15[0] = v4;
  v5 = [CNUIUserActionItemComparator comparatorWithDefaultAppsScorer:*(a1 + 32)];
  v15[1] = v5;
  v6 = CNComparatorForSortingByAuxiliaryValues();

  v15[2] = v6;
  v7 = +[CNUIUserActionItemComparator comparatorWithPreferredLabelsFirst];
  v15[3] = v7;
  v8 = +[CNUIUserActionItemComparator comparatorWithAlphabeticalOrderByLabel];
  v15[4] = v8;
  v9 = +[CNUIUserActionItemComparator comparatorWithAlphabeticalOrderByTargetHandle];
  v15[5] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
  v11 = CNAggregateComparator();

  v12 = [*(a1 + 40) sortedArrayUsingComparator:v11];
  v13 = [MEMORY[0x1E6996720] futureWithResult:v12];

  return v13;
}

- (id)sortKeysByRankingAddresses:(id)addresses actionType:(id)type scheduler:(id)scheduler
{
  addressesCopy = addresses;
  typeCopy = type;
  v10 = MEMORY[0x1E6996720];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CNUIUserActionRanking_sortKeysByRankingAddresses_actionType_scheduler___block_invoke;
  v15[3] = &unk_1E76EA548;
  v15[4] = self;
  v16 = addressesCopy;
  v17 = typeCopy;
  v11 = typeCopy;
  v12 = addressesCopy;
  v13 = [v10 futureWithBlock:v15 scheduler:scheduler];
  [v13 addFailureBlock:&__block_literal_global_10_1];

  return v13;
}

id __73__CNUIUserActionRanking_sortKeysByRankingAddresses_actionType_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_opt_class() advisorSettingsForSortingAddresses:*(a1 + 40) actionType:*(a1 + 48)];
  v5 = [*(a1 + 32) interactionAdvisor];
  v6 = [v5 adviseInteractionsUsingSettings:v4];

  if (v6)
  {
    v7 = [v6 _cn_map:&__block_literal_global_48_2];
  }

  else
  {
    v8 = [CNContactsUIError errorWithCode:301];
    if (a2)
    {
      v8 = v8;
      *a2 = v8;
    }

    v7 = 0;
  }

  return v7;
}

+ (id)advisorSettingsForSortingAddresses:(id)addresses actionType:(id)type
{
  v5 = MEMORY[0x1E69978E0];
  typeCopy = type;
  addressesCopy = addresses;
  interactionAdvisorSettingsDefault = [v5 interactionAdvisorSettingsDefault];
  date = [MEMORY[0x1E695DF00] date];
  [interactionAdvisorSettingsDefault setInteractionDate:date];

  v10 = [objc_opt_class() constrainMechanismsForActionType:typeCopy];

  [interactionAdvisorSettingsDefault setConstrainMechanisms:v10];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:addressesCopy];

  [interactionAdvisorSettingsDefault setConstrainIdentifiers:v11];
  [interactionAdvisorSettingsDefault setResultLimit:10];

  return interactionAdvisorSettingsDefault;
}

+ (id)advisorSettingsForIdentifyingMostRecentAction:(id)action actionType:(id)type
{
  v5 = MEMORY[0x1E69978E0];
  typeCopy = type;
  actionCopy = action;
  interactionAdvisorSettingsDefault = [v5 interactionAdvisorSettingsDefault];
  date = [MEMORY[0x1E695DF00] date];
  [interactionAdvisorSettingsDefault setInteractionDate:date];

  v10 = [objc_opt_class() constrainMechanismsForActionType:typeCopy];

  [interactionAdvisorSettingsDefault setConstrainMechanisms:v10];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:actionCopy];

  [interactionAdvisorSettingsDefault setConstrainIdentifiers:v11];
  [interactionAdvisorSettingsDefault setConsumerIdentifier:@"recency"];
  [interactionAdvisorSettingsDefault setResultLimit:1];

  return interactionAdvisorSettingsDefault;
}

+ (id)constrainMechanismsForActionType:(id)type
{
  typeCopy = type;
  v4 = [MEMORY[0x1E695DFA8] set];
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C170]])
  {
    v5 = &unk_1F1645EE0;
LABEL_9:
    [v4 addObject:v5];
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    v5 = &unk_1F1645F28;
    v6 = &unk_1F1645F10;
    v7 = &unk_1F1645EF8;
LABEL_5:
    [v4 addObject:v7];
LABEL_8:
    [v4 addObject:v6];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v5 = &unk_1F1645F58;
    v6 = &unk_1F1645F40;
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    [v4 addObject:&unk_1F1645F70];
    v5 = &unk_1F1645FB8;
    v6 = &unk_1F1645FA0;
    v7 = &unk_1F1645F88;
    goto LABEL_5;
  }

LABEL_10:

  return v4;
}

- (id)selectRecentActionItems:(id)items schedulerProvider:(id)provider
{
  v19[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __67__CNUIUserActionRanking_selectRecentActionItems_schedulerProvider___block_invoke;
  v16 = &unk_1E76E9478;
  v17 = providerCopy;
  selfCopy = self;
  v7 = providerCopy;
  v8 = [items switchMap:&v13 schedulerProvider:v7];
  array = [MEMORY[0x1E695DEC8] array];
  v19[0] = array;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v11 = [v8 startWith:v10];

  return v11;
}

id __67__CNUIUserActionRanking_selectRecentActionItems_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E6996798];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CNUIUserActionRanking_selectRecentActionItems_schedulerProvider___block_invoke_2;
  v10[3] = &unk_1E76E9FB0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v7 = v3;
  v8 = [v4 observableWithBlock:v10];

  return v8;
}

id __67__CNUIUserActionRanking_selectRecentActionItems_schedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) backgroundScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CNUIUserActionRanking_selectRecentActionItems_schedulerProvider___block_invoke_3;
  v9[3] = &unk_1E76E7EC0;
  v5 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v5;
  v11 = v3;
  v6 = v3;
  v7 = [v4 performCancelableBlock:v9];

  return v7;
}

void __67__CNUIUserActionRanking_selectRecentActionItems_schedulerProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 selectMostRecentActionFromItems:v4];
  LOBYTE(v4) = [v5 isCanceled];

  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      v7 = *(a1 + 48);
      v9[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [v7 observerDidReceiveResult:v8];
    }

    [*(a1 + 48) observerDidComplete];
  }
}

- (id)selectMostRecentActionFromItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy _cn_map:&__block_literal_global_54_0];
  _cn_distinctObjects = [v5 _cn_distinctObjects];
  firstObject = [itemsCopy firstObject];
  type = [firstObject type];

  v9 = [objc_opt_class() advisorSettingsForIdentifyingMostRecentAction:_cn_distinctObjects actionType:type];
  interactionAdvisor = [(CNUIUserActionRanking *)self interactionAdvisor];
  v11 = [interactionAdvisor adviseInteractionsUsingSettings:v9];

  firstObject2 = [v11 firstObject];
  v13 = sSortKeyForAdvisedInteraction_block_invoke_3(firstObject2, firstObject2);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CNUIUserActionRanking_selectMostRecentActionFromItems___block_invoke_2;
  v17[3] = &unk_1E76E8640;
  v18 = v13;
  v14 = v13;
  v15 = [itemsCopy _cn_firstObjectPassingTest:v17];

  return v15;
}

uint64_t __57__CNUIUserActionRanking_selectMostRecentActionFromItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = sSortKeyForUserActionItem_block_invoke_2(a1, a2);
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end