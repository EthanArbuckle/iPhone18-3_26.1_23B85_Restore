@interface HUTriggerLocationConditionEditorSectionModule
- (BOOL)conditionIsDisabled;
- (HUTriggerLocationConditionEditorSectionModule)initWithItemUpdater:(id)a3 conditionType:(unint64_t)a4 home:(id)a5;
- (id)_conditionItemForPresenceEvent:(id)a3;
- (id)_createConditionItemForPresenceEventType:(unint64_t)a3 userType:(unint64_t)a4;
- (id)buildConditionOptionItems;
- (id)conditionForOptionItem:(id)a3;
- (id)preferredConditionFromConditions:(id)a3;
- (id)selectOptionItemForCondition:(id)a3;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation HUTriggerLocationConditionEditorSectionModule

- (HUTriggerLocationConditionEditorSectionModule)initWithItemUpdater:(id)a3 conditionType:(unint64_t)a4 home:(id)a5
{
  v8.receiver = self;
  v8.super_class = HUTriggerLocationConditionEditorSectionModule;
  v5 = [(HUTriggerConditionEditorExpandingSectionModule *)&v8 initWithItemUpdater:a3 conditionType:a4 home:a5];
  if (v5)
  {
    v6 = [MEMORY[0x277D147A8] sharedDispatcher];
    [v6 addObserver:v5];
  }

  return v5;
}

- (id)conditionForOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerLocationConditionEditorSectionModule *)self anyLocationOptionItem];

  if (v5 == v4)
  {
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && (-[HUTriggerConditionEditorExpandingSectionModule optionItems](self, "optionItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v8], v9, v10))
    {
      v11 = [v8 sourceItem];
      v12 = [v11 condition];
    }

    else
    {
      NSLog(&cfstr_UnknownOptionI.isa, v6);
      v12 = 0;
    }
  }

  return v12;
}

- (id)selectOptionItemForCondition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [v7 presenceEvent];
      v9 = [(HUTriggerLocationConditionEditorSectionModule *)self _conditionItemForPresenceEvent:v8];

      v10 = [v9 sourceItem];
      [v10 setCondition:v7];
    }

    else
    {
      NSLog(&cfstr_UnexpectedCond.isa, v5);
      v9 = 0;
    }
  }

  else
  {
    v9 = [(HUTriggerLocationConditionEditorSectionModule *)self anyLocationOptionItem];
  }

  return v9;
}

- (id)preferredConditionFromConditions:(id)a3
{
  v3 = [a3 na_filter:&__block_literal_global_203];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_9_0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 firstObject];
  }

  v7 = v6;

  return v7;
}

uint64_t __82__HUTriggerLocationConditionEditorSectionModule_preferredConditionFromConditions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __82__HUTriggerLocationConditionEditorSectionModule_preferredConditionFromConditions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 presenceEvent];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "presenceUserType")}];
  v5 = [&unk_282492C30 containsObject:v4];

  return v5;
}

- (BOOL)conditionIsDisabled
{
  v2 = MEMORY[0x277CD1D20];
  v3 = [(HUTriggerConditionEditorExpandingSectionModule *)self home];
  LOBYTE(v2) = [v2 hf_presenceDisableReasonsForHome:v3] != 0;

  return v2;
}

- (id)buildConditionOptionItems
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = _HULocalizedStringWithDefaultValue(@"HUTriggerLocationConditionOptionNoneTitle", @"HUTriggerLocationConditionOptionNoneTitle", 1);
  v4 = [(HUTriggerConditionEditorExpandingSectionModule *)self createNoConditionOptionItemWithTitle:v3];
  [(HUTriggerLocationConditionEditorSectionModule *)self setAnyLocationOptionItem:v4];
  v12[0] = v4;
  v5 = [(HUTriggerLocationConditionEditorSectionModule *)self _createConditionItemForPresenceEventType:3 userType:2];
  [(HUTriggerLocationConditionEditorSectionModule *)self setAnyUserAtHomeOptionItem:v5];
  v12[1] = v5;
  v6 = [(HUTriggerLocationConditionEditorSectionModule *)self _createConditionItemForPresenceEventType:3 userType:1];
  [(HUTriggerLocationConditionEditorSectionModule *)self setCurrentUserAtHomeOptionItem:v6];
  v12[2] = v6;
  v7 = [(HUTriggerLocationConditionEditorSectionModule *)self _createConditionItemForPresenceEventType:4 userType:2];
  [(HUTriggerLocationConditionEditorSectionModule *)self setNoUserAtHomeOptionItem:v7];
  v12[3] = v7;
  v8 = [(HUTriggerLocationConditionEditorSectionModule *)self _createConditionItemForPresenceEventType:4 userType:1];
  [(HUTriggerLocationConditionEditorSectionModule *)self setCurrentUserNotAtHomeOptionItem:v8];
  v12[4] = v8;
  v9 = [(HUTriggerLocationConditionEditorSectionModule *)self _createConditionItemForPresenceEventType:3 userType:3];
  [(HUTriggerLocationConditionEditorSectionModule *)self setCustomOptionItem:v9];
  v12[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  return v10;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v5 = MEMORY[0x277D14788];
  v6 = [(HUTriggerConditionEditorExpandingSectionModule *)self itemProviders];
  v9 = [v5 requestToReloadItemProviders:v6 senderSelector:a2];

  v7 = [(HFItemModule *)self itemUpdater];
  v8 = [v7 performItemUpdateRequest:v9];
}

- (id)_conditionItemForPresenceEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 presenceUserType];
  if (v5 == 1)
  {
    if ([v4 presenceEventType] == 3)
    {
      [(HUTriggerLocationConditionEditorSectionModule *)self currentUserAtHomeOptionItem];
    }

    else
    {
      [(HUTriggerLocationConditionEditorSectionModule *)self currentUserNotAtHomeOptionItem];
    }

    goto LABEL_5;
  }

  if (v5 == 2)
  {
    if ([v4 presenceEventType] == 3)
    {
      [(HUTriggerLocationConditionEditorSectionModule *)self anyUserAtHomeOptionItem];
    }

    else
    {
      [(HUTriggerLocationConditionEditorSectionModule *)self noUserAtHomeOptionItem];
    }

    v6 = LABEL_5:;
    goto LABEL_11;
  }

  v6 = [(HUTriggerLocationConditionEditorSectionModule *)self customOptionItem];
LABEL_11:
  v7 = v6;

  return v7;
}

- (id)_createConditionItemForPresenceEventType:(unint64_t)a3 userType:(unint64_t)a4
{
  v7 = [(HUTriggerConditionEditorExpandingSectionModule *)self home];
  v8 = [objc_alloc(MEMORY[0x277CD1D20]) initWithPresenceEventType:a3 presenceUserType:a4];
  v9 = [objc_alloc(MEMORY[0x277D14968]) initWithPresenceEvent:v8];
  v10 = [objc_alloc(MEMORY[0x277D14970]) initWithCondition:v9 home:v7];
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x277D14C30]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HUTriggerLocationConditionEditorSectionModule__createConditionItemForPresenceEventType_userType___block_invoke_33;
  v16[3] = &unk_277DC1198;
  objc_copyWeak(v19, &location);
  v19[1] = a4;
  v12 = v10;
  v17 = v12;
  v13 = v7;
  v18 = v13;
  v14 = [v11 initWithSourceItem:v12 updateOptionsTransformBlock:&__block_literal_global_29_1 resultsAndItemTransformBlock:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);

  return v14;
}

id __99__HUTriggerLocationConditionEditorSectionModule__createConditionItemForPresenceEventType_userType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setObject:&unk_282491D30 forKeyedSubscript:*MEMORY[0x277D13B98]];
  [v2 setObject:&unk_282491D60 forKeyedSubscript:*MEMORY[0x277D13BA8]];

  return v2;
}

id __99__HUTriggerLocationConditionEditorSectionModule__createConditionItemForPresenceEventType_userType___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v5 mutableCopy];

  v9 = [WeakRetained selectedOptionItem];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D14068]];

  v11 = *(a1 + 56);
  if (v11 == 3)
  {
    v12 = [*(a1 + 32) condition];
    v13 = [v12 presenceEvent];
    v14 = [v13 users];
    v15 = [v14 count];

    if (!v15)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }

    v11 = *(a1 + 56);
  }

  if (v11 == 2)
  {
    v16 = [*(a1 + 40) users];
    v17 = [v16 count];

    if (!v17)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }
  }

  if ([WeakRetained conditionIsDisabled])
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  return v8;
}

@end