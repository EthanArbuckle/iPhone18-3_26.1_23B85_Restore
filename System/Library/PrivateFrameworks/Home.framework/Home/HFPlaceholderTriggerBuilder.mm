@interface HFPlaceholderTriggerBuilder
+ (id)createPlaceholderTriggerForHome:(id)a3 withTriggerActionSetBuilder:(id)a4 context:(id)a5;
- (id)commitItem;
@end

@implementation HFPlaceholderTriggerBuilder

+ (id)createPlaceholderTriggerForHome:(id)a3 withTriggerActionSetBuilder:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(HFTriggerBuilder *)[HFPlaceholderTriggerBuilder alloc] initWithHome:v9 context:v7];

  [(HFTriggerBuilder *)v10 setName:@"Placeholder Trigger"];
  v11 = [(HFTriggerBuilder *)v10 triggerActionSets];
  [v11 setFromTriggerActionSetsBuilder:v8];

  v12 = [(HFTriggerBuilder *)v10 triggerActionSets];
  -[HFPlaceholderTriggerBuilder setIsEditing:](v10, "setIsEditing:", [v12 hasActions]);

  return v10;
}

- (id)commitItem
{
  v3 = [(HFTriggerBuilder *)self triggerActionSets];
  v4 = [v3 allActionBuilders];

  v5 = [v4 na_map:&__block_literal_global_201];
  v6 = [MEMORY[0x277D2C900] combineAllFutures:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HFPlaceholderTriggerBuilder_commitItem__block_invoke_2;
  v9[3] = &unk_277DF5038;
  v9[4] = self;
  v7 = [v6 recover:v9];

  return v7;
}

id __41__HFPlaceholderTriggerBuilder_commitItem__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 isEditing];
  v5 = HFOperationEditTrigger;
  if (!v4)
  {
    v5 = HFOperationAddTrigger;
  }

  v6 = MEMORY[0x277D2C900];
  v7 = [v3 hf_errorWithOperationType:*v5 failedItemName:0];

  v8 = [v6 futureWithError:v7];

  return v8;
}

@end