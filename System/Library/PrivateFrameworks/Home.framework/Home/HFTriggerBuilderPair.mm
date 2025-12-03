@interface HFTriggerBuilderPair
+ (id)creatingTriggerWithBuilder:(id)builder;
+ (id)updatingTrigger:(id)trigger withBuilder:(id)builder;
- (HFTriggerBuilderPair)initWithTrigger:(id)trigger builder:(id)builder;
- (id)commitBuilderInHome:(id)home;
- (void)_notifyObserversOfAddingTrigger:(id)trigger inHome:(id)home;
- (void)_notifyObserversOfChangingTrigger:(id)trigger inHome:(id)home;
@end

@implementation HFTriggerBuilderPair

- (HFTriggerBuilderPair)initWithTrigger:(id)trigger builder:(id)builder
{
  triggerCopy = trigger;
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder+AutomationBuilders.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"builder"}];
  }

  v14.receiver = self;
  v14.super_class = HFTriggerBuilderPair;
  v10 = [(HFTriggerBuilderPair *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_trigger, trigger);
    objc_storeStrong(&v11->_builder, builder);
  }

  return v11;
}

+ (id)creatingTriggerWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [[self alloc] initWithTrigger:0 builder:builderCopy];

  return v5;
}

+ (id)updatingTrigger:(id)trigger withBuilder:(id)builder
{
  builderCopy = builder;
  triggerCopy = trigger;
  v8 = [[self alloc] initWithTrigger:triggerCopy builder:builderCopy];

  return v8;
}

- (id)commitBuilderInHome:(id)home
{
  homeCopy = home;
  trigger = [(HFTriggerBuilderPair *)self trigger];
  builder = [(HFTriggerBuilderPair *)self builder];
  if (builder)
  {
    if (trigger)
    {
      v7 = [trigger hf_updateWithBuilder:builder];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __44__HFTriggerBuilderPair_commitBuilderInHome___block_invoke;
      v14[3] = &unk_277E00190;
      v14[4] = self;
      v15 = homeCopy;
      v8 = [v7 addSuccessBlock:v14];
      v9 = v15;
    }

    else
    {
      v7 = [MEMORY[0x277CD1EC0] hf_newTriggerWithBuilder:builder inHome:homeCopy];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__HFTriggerBuilderPair_commitBuilderInHome___block_invoke_2;
      v12[3] = &unk_277E00190;
      v12[4] = self;
      v13 = homeCopy;
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

- (void)_notifyObserversOfAddingTrigger:(id)trigger inHome:(id)home
{
  triggerCopy = trigger;
  homeCopy = home;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HFTriggerBuilderPair__notifyObserversOfAddingTrigger_inHome___block_invoke;
  v10[3] = &unk_277DF3810;
  v11 = homeCopy;
  v12 = triggerCopy;
  v8 = triggerCopy;
  v9 = homeCopy;
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

- (void)_notifyObserversOfChangingTrigger:(id)trigger inHome:(id)home
{
  triggerCopy = trigger;
  homeCopy = home;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HFTriggerBuilderPair__notifyObserversOfChangingTrigger_inHome___block_invoke;
  v10[3] = &unk_277DF3810;
  v11 = homeCopy;
  v12 = triggerCopy;
  v8 = triggerCopy;
  v9 = homeCopy;
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