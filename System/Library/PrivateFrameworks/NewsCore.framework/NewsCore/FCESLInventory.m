@interface FCESLInventory
- (FCESLInventory)initWithGlobalInventory:(id)a3 tagInventory:(id)a4;
- (NSArray)allFeedItems;
- (NSArray)allNetworkEvents;
- (id)_childInventories;
- (id)allFeedItemScoreProfilesForConfigurationSet:(int64_t)a3 scoringVersion:(unint64_t)a4;
- (id)allFeedItemsWithTopic:(id)a3;
- (void)_enumerateChildInventories:(id)a3;
- (void)prewarmScoreCache:(id)a3 configuration:(id)a4;
- (void)refreshIfNeededWithCompletion:(id)a3;
@end

@implementation FCESLInventory

- (FCESLInventory)initWithGlobalInventory:(id)a3 tagInventory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCESLInventory;
  v9 = [(FCESLInventory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_globalInventory, a3);
    objc_storeStrong(&v10->_tagInventory, a4);
  }

  return v10;
}

- (void)prewarmScoreCache:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = [a4 personalizationTreatment];
  v8 = [v7 scoringVersion];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FCESLInventory_prewarmScoreCache_configuration___block_invoke;
  v10[3] = &unk_1E7C3CC78;
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [(FCESLInventory *)self _enumerateChildInventories:v10];
}

void __50__FCESLInventory_prewarmScoreCache_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v4 allFeedItemScoreProfilesForConfigurationSet:0 scoringVersion:v3];
  [*(a1 + 32) addScoreProfiles:v6 configurationSet:0];
  v5 = [v4 allFeedItemScoreProfilesForConfigurationSet:11 scoringVersion:*(a1 + 40)];

  [*(a1 + 32) addScoreProfiles:v5 configurationSet:11];
}

- (NSArray)allFeedItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__FCESLInventory_allFeedItems__block_invoke;
  aBlock[3] = &unk_1E7C3CCA0;
  v15 = v4;
  v5 = v3;
  v16 = v5;
  v6 = v4;
  v7 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__FCESLInventory_allFeedItems__block_invoke_2;
  v12[3] = &unk_1E7C3CCC8;
  v13 = v7;
  v8 = v7;
  [(FCESLInventory *)self _enumerateChildInventories:v12];
  v9 = v13;
  v10 = v5;

  return v5;
}

void __30__FCESLInventory_allFeedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 articleID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
    v6 = *(a1 + 32);
    v7 = [v8 articleID];
    [v6 addObject:v7];
  }
}

void __30__FCESLInventory_allFeedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allFeedItems];
  [v3 enumerateObjectsUsingBlock:*(a1 + 32)];
}

- (NSArray)allNetworkEvents
{
  v3 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__FCESLInventory_allNetworkEvents__block_invoke;
  v6[3] = &unk_1E7C3CCF0;
  v4 = v3;
  v7 = v4;
  [(FCESLInventory *)self _enumerateChildInventories:v6];

  return v4;
}

void __34__FCESLInventory_allNetworkEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allNetworkEvents];
  [v2 addObjectsFromArray:v3];
}

- (id)allFeedItemScoreProfilesForConfigurationSet:(int64_t)a3 scoringVersion:(unint64_t)a4
{
  v7 = [FCMapTable mapTableWithKeyOptions:512 valueOptions:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__FCESLInventory_allFeedItemScoreProfilesForConfigurationSet_scoringVersion___block_invoke;
  v10[3] = &unk_1E7C3CD18;
  v8 = v7;
  v11 = v8;
  v12 = a3;
  v13 = a4;
  [(FCESLInventory *)self _enumerateChildInventories:v10];

  return v8;
}

void __77__FCESLInventory_allFeedItemScoreProfilesForConfigurationSet_scoringVersion___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = [a2 allFeedItemScoreProfilesForConfigurationSet:a1[5] scoringVersion:a1[6]];
  [v2 addObjectsFromMapTable:v3];
}

- (id)allFeedItemsWithTopic:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__FCESLInventory_allFeedItemsWithTopic___block_invoke;
  aBlock[3] = &unk_1E7C3CCA0;
  v19 = v6;
  v7 = v5;
  v20 = v7;
  v8 = v6;
  v9 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__FCESLInventory_allFeedItemsWithTopic___block_invoke_2;
  v15[3] = &unk_1E7C3CD40;
  v16 = v4;
  v17 = v9;
  v10 = v9;
  v11 = v4;
  [(FCESLInventory *)self _enumerateChildInventories:v15];
  v12 = v17;
  v13 = v7;

  return v7;
}

void __40__FCESLInventory_allFeedItemsWithTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 articleID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
    v6 = *(a1 + 32);
    v7 = [v8 articleID];
    [v6 addObject:v7];
  }
}

void __40__FCESLInventory_allFeedItemsWithTopic___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allFeedItemsWithTopic:*(a1 + 32)];
  [v3 enumerateObjectsUsingBlock:*(a1 + 40)];
}

- (void)refreshIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__FCESLInventory_refreshIfNeededWithCompletion___block_invoke;
  v13[3] = &unk_1E7C3CD90;
  v6 = v5;
  v14 = v6;
  v15 = &v16;
  [(FCESLInventory *)self _enumerateChildInventories:v13];
  if (FCDispatchGroupIsEmpty(v6))
  {
    v11[2] = MEMORY[0x1E69E9820];
    v11[3] = 3221225472;
    v11[4] = __48__FCESLInventory_refreshIfNeededWithCompletion___block_invoke_3;
    v11[5] = &unk_1E7C37D28;
    v12[0] = v4;
    v12[1] = &v16;
    (*(v12[0] + 16))(v12[0], *(v17 + 24));
    v7 = v12;
  }

  else
  {
    v8 = FCCurrentQoS();
    v9 = FCDispatchQueueForQualityOfService(v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__FCESLInventory_refreshIfNeededWithCompletion___block_invoke_4;
    v10[3] = &unk_1E7C37D28;
    v7 = v11;
    v11[0] = v4;
    v11[1] = &v16;
    dispatch_group_notify(v6, v9, v10);
  }

  _Block_object_dispose(&v16, 8);
}

void __48__FCESLInventory_refreshIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__FCESLInventory_refreshIfNeededWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7C3CD68;
  v6 = *(a1 + 32);
  v5 = v6;
  v8 = v6;
  [v4 refreshIfNeededWithCompletion:v7];
}

- (id)_childInventories
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(FCESLInventory *)self globalInventory];
  v8[0] = v3;
  v4 = [(FCESLInventory *)self tagInventory];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_enumerateChildInventories:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FCESLInventory *)self _childInventories];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v4[2](v4, v10);
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end