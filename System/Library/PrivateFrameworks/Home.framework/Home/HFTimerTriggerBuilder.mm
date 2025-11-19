@interface HFTimerTriggerBuilder
- (BOOL)_currentStateRequiresEventBasedTimeTriggers;
- (BOOL)_supportsEventBasedTimeTriggers;
- (BOOL)supportsHomeKitAutomationBuilders;
- (BOOL)wantsConvertToEventTrigger;
- (HFTimeEventBuilder)eventBuilder;
- (HFTimerTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5;
- (NSArray)recurrences;
- (NSTimeZone)timeZone;
- (id)_commitUsingBuilders;
- (id)commitCreateTrigger;
- (id)commitEditTrigger;
- (id)compareToObject:(id)a3;
- (id)convertedEventTriggerBuilder;
- (id)getOrCreateTriggerBuilder;
- (id)lazilyFinishCommitingTrigger;
- (id)naturalLanguageDetailsWithOptions:(id)a3;
- (id)naturalLanguageNameOfType:(unint64_t)a3;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (id)updateTriggerBuilder:(id)a3;
- (id)validationError;
- (void)_createConcreteTriggerBuilder;
- (void)setEventBuilder:(id)a3;
- (void)setName:(id)a3;
- (void)setPreferredHomeKitObjectType:(unint64_t)a3;
- (void)setRecurrences:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation HFTimerTriggerBuilder

- (HFTimerTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5
{
  v8.receiver = self;
  v8.super_class = HFTimerTriggerBuilder;
  v5 = [(HFTriggerBuilder *)&v8 initWithExistingObject:a3 inHome:a4 context:a5];
  v6 = v5;
  if (v5)
  {
    [(HFTimerTriggerBuilder *)v5 _createConcreteTriggerBuilder];
  }

  return v6;
}

- (id)validationError
{
  v3 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  v4 = [v3 triggerActionSets];
  v5 = [(HFTriggerBuilder *)self triggerActionSets];
  [v4 updateFromTriggerActionSetsBuilder:v5];

  v13.receiver = self;
  v13.super_class = HFTimerTriggerBuilder;
  v6 = [(HFTriggerBuilder *)&v13 validationError];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(HFItemBuilder *)self verifyPropertiesAreSet:&unk_2825257C8];
    v10 = v9;
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v11 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
      v8 = [v11 validationError];
    }
  }

  return v8;
}

- (void)_createConcreteTriggerBuilder
{
  v3 = [(HFTriggerBuilder *)self trigger];

  if (v3)
  {
    v4 = [(HFTriggerBuilder *)self trigger];
    v5 = [(HFItemBuilder *)self home];
    v6 = [(HFTriggerBuilder *)self context];
    v7 = [HFConcreteTimeTriggerBuilder builderForExistingTrigger:v4 inHome:v5 context:v6];
    [(HFTimerTriggerBuilder *)self setConcreteTriggerBuilder:v7];
  }

  else
  {
    if ([(HFTimerTriggerBuilder *)self _supportsEventBasedTimeTriggers])
    {
      v8 = HFEventTriggerBuilder;
    }

    else
    {
      v8 = HFTimerBasedTimeTriggerBuilder;
    }

    v9 = [v8 alloc];
    v4 = [(HFItemBuilder *)self home];
    v5 = [(HFTriggerBuilder *)self context];
    v6 = [v9 initWithHome:v4 context:v5];
    [(HFTimerTriggerBuilder *)self setConcreteTriggerBuilder:v6];
  }

  v16 = [(HFTimerTriggerBuilder *)self timeInterface];
  v10 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  if ([v10 conformsToProtocol:&unk_282556298])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    objc_opt_class();
    v13 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v10 = [v14 timeInterface];
  }

  [(HFTimerTriggerBuilder *)self setTimeInterface:v10];
  if (v16)
  {
    v15 = [(HFTimerTriggerBuilder *)self timeInterface];
    [v15 copyCurrentStateFromTriggerBuilder:v16];
  }
}

- (void)setPreferredHomeKitObjectType:(unint64_t)a3
{
  if (self->_preferredHomeKitObjectType != a3)
  {
    self->_preferredHomeKitObjectType = a3;
    v4 = [(HFTriggerBuilder *)self trigger];

    if (!v4)
    {

      [(HFTimerTriggerBuilder *)self _createConcreteTriggerBuilder];
    }
  }
}

- (id)commitCreateTrigger
{
  v3 = [(HFTimerTriggerBuilder *)self _lazy_performValidation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HFTimerTriggerBuilder_commitCreateTrigger__block_invoke;
  v6[3] = &unk_277DF2CE0;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __44__HFTimerTriggerBuilder_commitCreateTrigger__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) concreteTriggerBuilder];
  v2 = [v1 commitCreateTrigger];

  return v2;
}

- (id)commitEditTrigger
{
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger])
  {
    v3 = [(HFTimerTriggerBuilder *)self convertedEventTriggerBuilder];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 commitCreateTrigger];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __42__HFTimerTriggerBuilder_commitEditTrigger__block_invoke;
      v9[3] = &unk_277DFB428;
      v9[4] = self;
      v10 = v4;
      v6 = [v5 flatMap:v9];
    }

    else
    {
      v7 = MEMORY[0x277D2C900];
      v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:38];
      v6 = [v7 futureWithError:v5];
    }
  }

  else
  {
    v4 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    v6 = [v4 commitEditTrigger];
  }

  return v6;
}

id __42__HFTimerTriggerBuilder_commitEditTrigger__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  [v4 setConcreteTriggerBuilder:v3];
  v6 = [*(a1 + 32) replaceCurrentTriggerWithTrigger:v5];

  return v6;
}

- (id)lazilyFinishCommitingTrigger
{
  v2 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  v3 = [v2 lazilyFinishCommitingTrigger];

  return v3;
}

- (BOOL)wantsConvertToEventTrigger
{
  if ([(HFTimerTriggerBuilder *)self _currentStateRequiresEventBasedTimeTriggers])
  {
    v3 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)convertedEventTriggerBuilder
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(HFTimerTriggerBuilder *)self _supportsEventBasedTimeTriggers])
  {
    v3 = [HFEventTriggerBuilder alloc];
    v4 = [(HFItemBuilder *)self home];
    v5 = [(HFTriggerBuilder *)self context];
    v6 = [(HFTriggerBuilder *)v3 initWithHome:v4 context:v5];

    v7 = [(HFEventTriggerBuilder *)v6 timeInterface];
    v8 = [(HFTimerTriggerBuilder *)self timeInterface];
    [v7 copyCurrentStateFromTriggerBuilder:v8];

    [(HFTriggerBuilder *)v6 removeAllEndEventBuilders];
    v9 = [(HFTriggerBuilder *)self endEventBuilders];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__HFTimerTriggerBuilder_convertedEventTriggerBuilder__block_invoke;
    v19[3] = &unk_277DF4D70;
    v10 = v6;
    p_super = &v10->super.super.super;
    [v9 na_each:v19];

    v11 = [(HFTriggerBuilder *)self conditionCollection];
    [(HFTriggerBuilder *)v10 replaceConditionsWithConditions:v11];

    v12 = [(HFTriggerBuilder *)v10 triggerActionSets];
    v13 = [(HFTriggerBuilder *)self triggerActionSets];
    [v12 updateFromTriggerActionSetsBuilder:v13];

    v14 = [(HFTriggerBuilder *)self name];
    [(HFTriggerBuilder *)v10 setName:v14];

    [(HFTriggerBuilder *)v10 setNameIsConfigured:[(HFTriggerBuilder *)self nameIsConfigured]];
    [(HFTriggerBuilder *)v10 setEnabled:[(HFTriggerBuilder *)self enabled]];
    v15 = p_super;
  }

  else
  {
    v15 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HFTriggerBuilder *)self name];
      *buf = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to use trigger features on timer trigger builder %@ (name:%@) that require supporting the new event-based time triggers when they are not currently supported in this home!", buf, 0x16u);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)naturalLanguageNameOfType:(unint64_t)a3
{
  v5 = [(HFItemBuilder *)self home];
  v6 = [HFTriggerNaturalLanguageOptions optionsWithHome:v5 nameType:a3];
  v7 = [(HFTimerTriggerBuilder *)self naturalLanguageNameWithOptions:v6];

  return v7;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFTimerTriggerBuilder *)self eventBuilder];
  v6 = [(HFTimerTriggerBuilder *)self recurrences];
  v7 = [v5 naturalLanguageNameWithOptions:v4 recurrences:v6];

  return v7;
}

- (id)naturalLanguageDetailsWithOptions:(id)a3
{
  v4 = MEMORY[0x277CD1EB0];
  v5 = a3;
  v6 = [(HFTimerTriggerBuilder *)self recurrences];
  v7 = [v4 hf_naturalLanguageDetailsWithRecurrences:v6 withOptions:v5];

  return v7;
}

- (HFTimeEventBuilder)eventBuilder
{
  v2 = [(HFTimerTriggerBuilder *)self timeInterface];
  v3 = [v2 eventBuilder];

  return v3;
}

- (void)setEventBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTimerTriggerBuilder *)self timeInterface];
  [v5 setEventBuilder:v4];
}

- (NSTimeZone)timeZone
{
  v2 = [(HFTimerTriggerBuilder *)self timeInterface];
  v3 = [v2 timeZone];

  return v3;
}

- (void)setTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(HFTimerTriggerBuilder *)self timeInterface];
  [v5 setTimeZone:v4];
}

- (NSArray)recurrences
{
  v2 = [(HFTimerTriggerBuilder *)self timeInterface];
  v3 = [v2 recurrences];

  return v3;
}

- (void)setRecurrences:(id)a3
{
  v4 = a3;
  v5 = [(HFTimerTriggerBuilder *)self timeInterface];
  [v5 setRecurrences:v4];
}

- (void)setName:(id)a3
{
  v6.receiver = self;
  v6.super_class = HFTimerTriggerBuilder;
  v4 = a3;
  [(HFTriggerBuilder *)&v6 setName:v4];
  v5 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder:v6.receiver];
  [v5 setName:v4];
}

- (BOOL)_currentStateRequiresEventBasedTimeTriggers
{
  v3 = [(HFTriggerBuilder *)self endEventBuilders];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HFTriggerBuilder *)self conditionCollection];
    v6 = [v5 conditions];
    v4 = [v6 count] != 0;
  }

  return v4;
}

- (BOOL)_supportsEventBasedTimeTriggers
{
  v3 = [(HFTimerTriggerBuilder *)self preferredHomeKitObjectType];
  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 2)
  {
    return 1;
  }

  v5 = HFPreferencesBooleanValueForKey(@"HFForcedEventBasedTimeTriggerAvailability");
  if (v5)
  {
    return v5 == 2;
  }

  v6 = [(HFItemBuilder *)self home];
  v7 = [v6 hf_supportsSharedEventAutomation];

  return v7;
}

- (id)getOrCreateTriggerBuilder
{
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger])
  {
    v3 = [(HFItemBuilder *)self home];
    v4 = [v3 newEventTriggerBuilder];
    v5 = [HFTriggerBuilderPair creatingTriggerWithBuilder:v4];
  }

  else
  {
    v3 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    v5 = [v3 getOrCreateTriggerBuilder];
  }

  return v5;
}

- (id)updateTriggerBuilder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(HFTimerTriggerBuilder *)self convertedEventTriggerBuilder];
    v6 = [v5 updateTriggerBuilder:v4];
  }

  else
  {
    v7 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
      [v9 removeAllEndEventBuilders];
      v10 = [(HFTriggerBuilder *)self endEventBuilders];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__HFTimerTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke;
      v21[3] = &unk_277DF4D70;
      v22 = v9;
      v11 = v9;
      [v10 na_each:v21];

      v12 = [(HFTriggerBuilder *)self conditionCollection];
      [v11 replaceConditionsWithConditions:v12];

      v13 = [(HFTimerTriggerBuilder *)self recurrences];
      [v11 setRecurrences:v13];
    }

    v14 = MEMORY[0x277D2C900];
    v5 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    v15 = [v5 updateTriggerBuilder:v4];
    v23[0] = v15;
    v20.receiver = self;
    v20.super_class = HFTimerTriggerBuilder;
    v16 = [(HFTriggerBuilder *)&v20 updateTriggerBuilder:v4];
    v23[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v6 = [v14 combineAllFutures:v17];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)supportsHomeKitAutomationBuilders
{
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger])
  {
    [(HFTimerTriggerBuilder *)self convertedEventTriggerBuilder];
  }

  else
  {
    [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  }
  v3 = ;
  v4 = [v3 supportsHomeKitAutomationBuilders];

  return v4;
}

- (id)_commitUsingBuilders
{
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger])
  {
    v3 = [(HFTriggerBuilder *)self trigger];
    v4 = [(HFTriggerBuilder *)self name];
    v5 = [(HFTriggerBuilder *)self _uniquelyRenameTrigger:v3 pendingReplaceByNewTriggerWithName:v4];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HFTimerTriggerBuilder_AutomationBuilders___commitUsingBuilders__block_invoke;
    v12[3] = &unk_277DF2CE0;
    v12[4] = self;
    v6 = [v5 flatMap:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HFTimerTriggerBuilder_AutomationBuilders___commitUsingBuilders__block_invoke_2;
    v10[3] = &unk_277DFE7E0;
    v10[4] = self;
    v11 = v3;
    v7 = v3;
    v8 = [v6 flatMap:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HFTimerTriggerBuilder;
    v8 = [(HFTriggerBuilder *)&v13 _commitUsingBuilders];
  }

  return v8;
}

id __65__HFTimerTriggerBuilder_AutomationBuilders___commitUsingBuilders__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = HFTimerTriggerBuilder;
  v1 = objc_msgSendSuper2(&v3, sel__commitUsingBuilders);

  return v1;
}

id __65__HFTimerTriggerBuilder_AutomationBuilders___commitUsingBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) convertedEventTriggerBuilder];
  [*(a1 + 32) setConcreteTriggerBuilder:v4];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [v5 home];
  v8 = [v5 _deleteTrigger:v6 fromHome:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HFTimerTriggerBuilder_AutomationBuilders___commitUsingBuilders__block_invoke_3;
  v12[3] = &unk_277DFA5C0;
  v12[4] = *(a1 + 32);
  v13 = v3;
  v9 = v3;
  v10 = [v8 flatMap:v12];

  return v10;
}

uint64_t __65__HFTimerTriggerBuilder_AutomationBuilders___commitUsingBuilders__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _didReplaceBackingTrigger];
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 40);

  return [v2 futureWithResult:v3];
}

- (id)compareToObject:(id)a3
{
  v5.receiver = self;
  v5.super_class = HFTimerTriggerBuilder;
  v3 = [(HFTriggerBuilder *)&v5 compareToObject:a3];
  [v3 containsCriticalDifference];

  return v3;
}

@end