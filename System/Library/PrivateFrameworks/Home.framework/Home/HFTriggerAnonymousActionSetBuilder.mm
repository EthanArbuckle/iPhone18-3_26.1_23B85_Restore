@interface HFTriggerAnonymousActionSetBuilder
- (BOOL)hasActions;
- (BOOL)useActionSetBuilder;
- (HFTriggerAnonymousActionSetBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (id)commitItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createActionSetBuilder;
- (id)deleteActionSet;
- (id)getOrCreateActionSet;
- (id)shortcutsComponentActionSet;
- (void)addAction:(id)action actionSetType:(unint64_t)type;
- (void)updateAction:(id)action;
- (void)updateActionBuildersDiff:(id)diff;
@end

@implementation HFTriggerAnonymousActionSetBuilder

- (HFTriggerAnonymousActionSetBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  v7.receiver = self;
  v7.super_class = HFTriggerAnonymousActionSetBuilder;
  v4 = [(HFAbstractBaseActionSetBuilder *)&v7 initWithExistingObject:object inHome:home];
  v5 = v4;
  if (v4)
  {
    [(HFTriggerAnonymousActionSetBuilder *)v4 setActionSetType:0];
  }

  return v5;
}

- (BOOL)hasActions
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v3 = [actions count] != 0;

  return v3;
}

- (id)shortcutsComponentActionSet
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v4 = [actions na_map:&__block_literal_global_2];
  v5 = [v4 na_filter:&__block_literal_global_3];

  home = [(HFItemBuilder *)self home];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v8 = [home hf_shortcutsComponentActionSetWithActions:v7];

  if (!v8)
  {
    NSLog(&cfstr_FailedToCreate.isa, self);
  }

  return v8;
}

- (id)getOrCreateActionSet
{
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  if (!actionSet)
  {
    actionSet = [(HFTriggerAnonymousActionSetBuilder *)self shortcutsComponentActionSet];
  }

  return actionSet;
}

- (void)addAction:(id)action actionSetType:(unint64_t)type
{
  actionCopy = action;
  if ([(HFTriggerAnonymousActionSetBuilder *)self actionSetType]!= type)
  {
    [(HFTriggerAnonymousActionSetBuilder *)self setActionSetType:type];
    goto LABEL_5;
  }

  if ([(HFTriggerAnonymousActionSetBuilder *)self actionSetType]== 1)
  {
LABEL_5:
    [(HFAbstractBaseActionSetBuilder *)self removeAllActions];
  }

  [(HFAbstractBaseActionSetBuilder *)self addAction:actionCopy];
}

- (void)updateActionBuildersDiff:(id)diff
{
  diffCopy = diff;
  v5 = [diffCopy mutableCopyWithZone:MEMORY[0x20F326D80]()];

  [(HFAbstractBaseActionSetBuilder *)self setActionBuilders:v5];
}

- (void)updateAction:(id)action
{
  actionCopy = action;
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  fromSet = [actionBuilders fromSet];
  v7 = [(HFAbstractBaseActionSetBuilder *)self existingActionBuilder:actionCopy inSet:fromSet];

  if (v7)
  {
    goto LABEL_3;
  }

  [0 updateWithActionBuilder:actionCopy];
  actionBuilders2 = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  toSet = [actionBuilders2 toSet];
  v7 = [(HFAbstractBaseActionSetBuilder *)self existingActionBuilder:actionCopy inSet:toSet];

  if (v7)
  {
LABEL_3:
    v10.receiver = self;
    v10.super_class = HFTriggerAnonymousActionSetBuilder;
    [(HFAbstractBaseActionSetBuilder *)&v10 updateAction:actionCopy];
  }
}

- (id)deleteActionSet
{
  [(HFAbstractBaseActionSetBuilder *)self removeAllActions];
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

- (id)createActionSetBuilder
{
  objc_opt_class();
  containingTrigger = [(HFTriggerAnonymousActionSetBuilder *)self containingTrigger];
  if (objc_opt_isKindOfClass())
  {
    v4 = containingTrigger;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    triggerOwnedActionSet = [v5 triggerOwnedActionSet];
    [(HFAbstractBaseActionSetBuilder *)self updateActionsInBuilder:triggerOwnedActionSet];
    v7 = [MEMORY[0x277D2C900] futureWithResult:triggerOwnedActionSet];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)useActionSetBuilder
{
  objc_opt_class();
  containingTrigger = [(HFTriggerAnonymousActionSetBuilder *)self containingTrigger];
  if (objc_opt_isKindOfClass())
  {
    v4 = containingTrigger;
  }

  else
  {
    v4 = 0;
  }

  home = [(HFItemBuilder *)self home];
  areAutomationBuildersSupported = [home areAutomationBuildersSupported];
  if (v4)
  {
    v7 = areAutomationBuildersSupported;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)commitItem
{
  v37[2] = *MEMORY[0x277D85DE8];
  containingTrigger = [(HFTriggerAnonymousActionSetBuilder *)self containingTrigger];

  if (!containingTrigger)
  {
    NSLog(&cfstr_CanTCommitAHft.isa);
  }

  containingTrigger2 = [(HFTriggerAnonymousActionSetBuilder *)self containingTrigger];

  if (!containingTrigger2)
  {
    v23 = MEMORY[0x277D2C900];
    futureWithNoResult2 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v5 = [v23 futureWithError:futureWithNoResult2];
LABEL_13:

    goto LABEL_18;
  }

  if (![(HFTriggerAnonymousActionSetBuilder *)self useActionSetBuilder]|| ([(HFTriggerAnonymousActionSetBuilder *)self createActionSetBuilder], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    actions = [(HFAbstractBaseActionSetBuilder *)self actions];
    v7 = [actions count];

    if (!v7)
    {
      actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];

      if (actionSet)
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke;
        v36[3] = &unk_277DF2C68;
        v36[4] = self;
        futureWithNoResult = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v36];
      }

      else
      {
        futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
      }

      v5 = futureWithNoResult;
      goto LABEL_18;
    }

    futureWithNoResult2 = [MEMORY[0x277D2C900] futureWithNoResult];
    actionSet2 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
    v10 = HFOperationEditTrigger;
    if (!actionSet2)
    {
      v10 = HFOperationAddTrigger;
    }

    v11 = *v10;

    actionSet3 = [(HFAbstractBaseActionSetBuilder *)self actionSet];

    if (!actionSet3)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_2;
      v35[3] = &unk_277DF2C90;
      v35[4] = self;
      v13 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v35];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_3;
      v34[3] = &unk_277DF2CE0;
      v34[4] = self;
      v14 = [v13 flatMap:v34];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_5;
      v33[3] = &unk_277DF2720;
      v33[4] = self;
      v15 = [v14 addSuccessBlock:v33];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_21;
      v32[3] = &unk_277DF2D08;
      v32[4] = self;
      v16 = [v14 addFailureBlock:v32];
      futureWithNoResult2 = v14;
    }

    v17 = MEMORY[0x277D2C900];
    v37[0] = futureWithNoResult2;
    lazilyUpdateActions = [(HFAbstractBaseActionSetBuilder *)self lazilyUpdateActions];
    v37[1] = lazilyUpdateActions;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v20 = [v17 chainFutures:v19];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_24;
    v29[3] = &unk_277DF2D30;
    v30 = v11;
    selfCopy = self;
    v21 = v11;
    v22 = [v20 recover:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_2_26;
    v28[3] = &unk_277DF2CE0;
    v28[4] = self;
    v5 = [v22 flatMap:v28];

    goto LABEL_13;
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

void __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 containingTrigger];
  v5 = [*(a1 + 32) actionSet];
  [v6 removeActionSet:v5 completionHandler:v4];
}

void __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 containingTrigger];
  [v4 addActionSetOfType:*MEMORY[0x277CCF1A0] completionHandler:v3];
}

id __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_4;
  v7[3] = &unk_277DF2CB8;
  v7[4] = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v7 sender:0];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v5;
}

void __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) containingTrigger];
    [v5 home:v3 didUpdateTrigger:v4];
  }
}

void __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containingTrigger];
    v6 = [v5 hf_prettyDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Created anonoymous action set for trigger: %@.", &v8, 0xCu);
  }

  [*(a1 + 32) setActionSet:v3];
  v7 = *MEMORY[0x277D85DE8];
}

void __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_21(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) containingTrigger];
    v7 = [v6 hf_prettyDescription];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to create anonoymous action set for trigger: %@. Error: %@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_24(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 containingTrigger];
  v8 = [*(a1 + 40) home];
  v9 = [v7 hf_naturalLanguageNameWithHome:v8 type:2];
  v10 = [v6 hf_errorWithOperationType:v4 failedItemName:v9];

  v11 = [v3 futureWithError:v10];

  return v11;
}

id __48__HFTriggerAnonymousActionSetBuilder_commitItem__block_invoke_2_26(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) actionSet];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HFTriggerAnonymousActionSetBuilder;
  v4 = [(HFAbstractBaseActionSetBuilder *)&v7 copyWithZone:zone];
  containingTrigger = [(HFTriggerAnonymousActionSetBuilder *)self containingTrigger];
  [v4 setContainingTrigger:containingTrigger];

  [v4 setActionSetType:{-[HFTriggerAnonymousActionSetBuilder actionSetType](self, "actionSetType")}];
  return v4;
}

@end