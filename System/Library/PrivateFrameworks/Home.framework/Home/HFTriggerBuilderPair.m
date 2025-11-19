@interface HFTriggerBuilderPair
+ (id)creatingTriggerWithBuilder:(id)a3;
+ (id)updatingTrigger:(id)a3 withBuilder:(id)a4;
- (HFTriggerBuilderPair)initWithTrigger:(id)a3 builder:(id)a4;
- (id)commitBuilderInHome:(id)a3;
- (void)_notifyObserversOfAddingTrigger:(id)a3 inHome:(id)a4;
- (void)_notifyObserversOfChangingTrigger:(id)a3 inHome:(id)a4;
@end

@implementation HFTriggerBuilderPair

- (HFTriggerBuilderPair)initWithTrigger:(id)a3 builder:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder+AutomationBuilders.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"builder"}];
  }

  v14.receiver = self;
  v14.super_class = HFTriggerBuilderPair;
  v10 = [(HFTriggerBuilderPair *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_trigger, a3);
    objc_storeStrong(&v11->_builder, a4);
  }

  return v11;
}

+ (id)creatingTriggerWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTrigger:0 builder:v4];

  return v5;
}

+ (id)updatingTrigger:(id)a3 withBuilder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTrigger:v7 builder:v6];

  return v8;
}

- (id)commitBuilderInHome:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerBuilderPair *)self trigger];
  v6 = [(HFTriggerBuilderPair *)self builder];
  if (v6)
  {
    if (v5)
    {
      v7 = [v5 hf_updateWithBuilder:v6];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __44__HFTriggerBuilderPair_commitBuilderInHome___block_invoke;
      v14[3] = &unk_277E00190;
      v14[4] = self;
      v15 = v4;
      v8 = [v7 addSuccessBlock:v14];
      v9 = v15;
    }

    else
    {
      v7 = [MEMORY[0x277CD1EC0] hf_newTriggerWithBuilder:v6 inHome:v4];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__HFTriggerBuilderPair_commitBuilderInHome___block_invoke_2;
      v12[3] = &unk_277E00190;
      v12[4] = self;
      v13 = v4;
      v8 = [v7 addSuccessBlock:v12];
      v9 = v13;
    }
  }

  else
  {
    NSLog(&cfstr_TriedToCommitA.isa);
    v10 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v8 = [v10 futureWithError:v7];
  }

  return v8;
}

- (void)_notifyObserversOfAddingTrigger:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HFTriggerBuilderPair__notifyObserversOfAddingTrigger_inHome___block_invoke;
  v10[3] = &unk_277DF3810;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 dispatchHomeObserverMessage:v10 sender:0];
}

void __63__HFTriggerBuilderPair__notifyObserversOfAddingTrigger_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didAddTrigger:*(a1 + 40)];
  }
}

- (void)_notifyObserversOfChangingTrigger:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HFTriggerBuilderPair__notifyObserversOfChangingTrigger_inHome___block_invoke;
  v10[3] = &unk_277DF3810;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 dispatchHomeObserverMessage:v10 sender:0];
}

void __65__HFTriggerBuilderPair__notifyObserversOfChangingTrigger_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateTrigger:*(a1 + 40)];
  }
}

@end