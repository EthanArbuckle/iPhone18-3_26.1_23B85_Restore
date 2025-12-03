@interface HFTimerTriggerBuilder
- (BOOL)_currentStateRequiresEventBasedTimeTriggers;
- (BOOL)_supportsEventBasedTimeTriggers;
- (BOOL)supportsHomeKitAutomationBuilders;
- (BOOL)wantsConvertToEventTrigger;
- (HFTimeEventBuilder)eventBuilder;
- (HFTimerTriggerBuilder)initWithExistingObject:(id)object inHome:(id)home context:(id)context;
- (NSArray)recurrences;
- (NSTimeZone)timeZone;
- (id)_commitUsingBuilders;
- (id)commitCreateTrigger;
- (id)commitEditTrigger;
- (id)compareToObject:(id)object;
- (id)convertedEventTriggerBuilder;
- (id)getOrCreateTriggerBuilder;
- (id)lazilyFinishCommitingTrigger;
- (id)naturalLanguageDetailsWithOptions:(id)options;
- (id)naturalLanguageNameOfType:(unint64_t)type;
- (id)naturalLanguageNameWithOptions:(id)options;
- (id)updateTriggerBuilder:(id)builder;
- (id)validationError;
- (void)_createConcreteTriggerBuilder;
- (void)setEventBuilder:(id)builder;
- (void)setName:(id)name;
- (void)setPreferredHomeKitObjectType:(unint64_t)type;
- (void)setRecurrences:(id)recurrences;
- (void)setTimeZone:(id)zone;
@end

@implementation HFTimerTriggerBuilder

- (HFTimerTriggerBuilder)initWithExistingObject:(id)object inHome:(id)home context:(id)context
{
  v8.receiver = self;
  v8.super_class = HFTimerTriggerBuilder;
  v5 = [(HFTriggerBuilder *)&v8 initWithExistingObject:object inHome:home context:context];
  v6 = v5;
  if (v5)
  {
    [(HFTimerTriggerBuilder *)v5 _createConcreteTriggerBuilder];
  }

  return v6;
}

- (id)validationError
{
  concreteTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  triggerActionSets = [concreteTriggerBuilder triggerActionSets];
  triggerActionSets2 = [(HFTriggerBuilder *)self triggerActionSets];
  [triggerActionSets updateFromTriggerActionSetsBuilder:triggerActionSets2];

  v13.receiver = self;
  v13.super_class = HFTimerTriggerBuilder;
  validationError = [(HFTriggerBuilder *)&v13 validationError];
  v7 = validationError;
  if (validationError)
  {
    validationError2 = validationError;
  }

  else
  {
    v9 = [(HFItemBuilder *)self verifyPropertiesAreSet:&unk_2825257C8];
    v10 = v9;
    if (v9)
    {
      validationError2 = v9;
    }

    else
    {
      concreteTriggerBuilder2 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
      validationError2 = [concreteTriggerBuilder2 validationError];
    }
  }

  return validationError2;
}

- (void)_createConcreteTriggerBuilder
{
  trigger = [(HFTriggerBuilder *)self trigger];

  if (trigger)
  {
    trigger2 = [(HFTriggerBuilder *)self trigger];
    home = [(HFItemBuilder *)self home];
    context = [(HFTriggerBuilder *)self context];
    v7 = [HFConcreteTimeTriggerBuilder builderForExistingTrigger:trigger2 inHome:home context:context];
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
    trigger2 = [(HFItemBuilder *)self home];
    home = [(HFTriggerBuilder *)self context];
    context = [v9 initWithHome:trigger2 context:home];
    [(HFTimerTriggerBuilder *)self setConcreteTriggerBuilder:context];
  }

  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  concreteTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  if ([concreteTriggerBuilder conformsToProtocol:&unk_282556298])
  {
    v11 = concreteTriggerBuilder;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    objc_opt_class();
    concreteTriggerBuilder2 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    if (objc_opt_isKindOfClass())
    {
      v14 = concreteTriggerBuilder2;
    }

    else
    {
      v14 = 0;
    }

    concreteTriggerBuilder = [v14 timeInterface];
  }

  [(HFTimerTriggerBuilder *)self setTimeInterface:concreteTriggerBuilder];
  if (timeInterface)
  {
    timeInterface2 = [(HFTimerTriggerBuilder *)self timeInterface];
    [timeInterface2 copyCurrentStateFromTriggerBuilder:timeInterface];
  }
}

- (void)setPreferredHomeKitObjectType:(unint64_t)type
{
  if (self->_preferredHomeKitObjectType != type)
  {
    self->_preferredHomeKitObjectType = type;
    trigger = [(HFTriggerBuilder *)self trigger];

    if (!trigger)
    {

      [(HFTimerTriggerBuilder *)self _createConcreteTriggerBuilder];
    }
  }
}

- (id)commitCreateTrigger
{
  _lazy_performValidation = [(HFTimerTriggerBuilder *)self _lazy_performValidation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HFTimerTriggerBuilder_commitCreateTrigger__block_invoke;
  v6[3] = &unk_277DF2CE0;
  v6[4] = self;
  v4 = [_lazy_performValidation flatMap:v6];

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
    convertedEventTriggerBuilder = [(HFTimerTriggerBuilder *)self convertedEventTriggerBuilder];
    concreteTriggerBuilder = convertedEventTriggerBuilder;
    if (convertedEventTriggerBuilder)
    {
      commitCreateTrigger = [convertedEventTriggerBuilder commitCreateTrigger];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __42__HFTimerTriggerBuilder_commitEditTrigger__block_invoke;
      v9[3] = &unk_277DFB428;
      v9[4] = self;
      v10 = concreteTriggerBuilder;
      commitEditTrigger = [commitCreateTrigger flatMap:v9];
    }

    else
    {
      v7 = MEMORY[0x277D2C900];
      commitCreateTrigger = [MEMORY[0x277CCA9B8] hf_errorWithCode:38];
      commitEditTrigger = [v7 futureWithError:commitCreateTrigger];
    }
  }

  else
  {
    concreteTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    commitEditTrigger = [concreteTriggerBuilder commitEditTrigger];
  }

  return commitEditTrigger;
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
  concreteTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
  lazilyFinishCommitingTrigger = [concreteTriggerBuilder lazilyFinishCommitingTrigger];

  return lazilyFinishCommitingTrigger;
}

- (BOOL)wantsConvertToEventTrigger
{
  if ([(HFTimerTriggerBuilder *)self _currentStateRequiresEventBasedTimeTriggers])
  {
    concreteTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
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
    home = [(HFItemBuilder *)self home];
    context = [(HFTriggerBuilder *)self context];
    v6 = [(HFTriggerBuilder *)v3 initWithHome:home context:context];

    timeInterface = [(HFEventTriggerBuilder *)v6 timeInterface];
    timeInterface2 = [(HFTimerTriggerBuilder *)self timeInterface];
    [timeInterface copyCurrentStateFromTriggerBuilder:timeInterface2];

    [(HFTriggerBuilder *)v6 removeAllEndEventBuilders];
    endEventBuilders = [(HFTriggerBuilder *)self endEventBuilders];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__HFTimerTriggerBuilder_convertedEventTriggerBuilder__block_invoke;
    v19[3] = &unk_277DF4D70;
    v10 = v6;
    p_super = &v10->super.super.super;
    [endEventBuilders na_each:v19];

    conditionCollection = [(HFTriggerBuilder *)self conditionCollection];
    [(HFTriggerBuilder *)v10 replaceConditionsWithConditions:conditionCollection];

    triggerActionSets = [(HFTriggerBuilder *)v10 triggerActionSets];
    triggerActionSets2 = [(HFTriggerBuilder *)self triggerActionSets];
    [triggerActionSets updateFromTriggerActionSetsBuilder:triggerActionSets2];

    name = [(HFTriggerBuilder *)self name];
    [(HFTriggerBuilder *)v10 setName:name];

    [(HFTriggerBuilder *)v10 setNameIsConfigured:[(HFTriggerBuilder *)self nameIsConfigured]];
    [(HFTriggerBuilder *)v10 setEnabled:[(HFTriggerBuilder *)self enabled]];
    v15 = p_super;
  }

  else
  {
    v15 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(HFTriggerBuilder *)self name];
      *buf = 138412546;
      selfCopy = self;
      v23 = 2112;
      v24 = name2;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to use trigger features on timer trigger builder %@ (name:%@) that require supporting the new event-based time triggers when they are not currently supported in this home!", buf, 0x16u);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)naturalLanguageNameOfType:(unint64_t)type
{
  home = [(HFItemBuilder *)self home];
  v6 = [HFTriggerNaturalLanguageOptions optionsWithHome:home nameType:type];
  v7 = [(HFTimerTriggerBuilder *)self naturalLanguageNameWithOptions:v6];

  return v7;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  optionsCopy = options;
  eventBuilder = [(HFTimerTriggerBuilder *)self eventBuilder];
  recurrences = [(HFTimerTriggerBuilder *)self recurrences];
  v7 = [eventBuilder naturalLanguageNameWithOptions:optionsCopy recurrences:recurrences];

  return v7;
}

- (id)naturalLanguageDetailsWithOptions:(id)options
{
  v4 = MEMORY[0x277CD1EB0];
  optionsCopy = options;
  recurrences = [(HFTimerTriggerBuilder *)self recurrences];
  v7 = [v4 hf_naturalLanguageDetailsWithRecurrences:recurrences withOptions:optionsCopy];

  return v7;
}

- (HFTimeEventBuilder)eventBuilder
{
  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  eventBuilder = [timeInterface eventBuilder];

  return eventBuilder;
}

- (void)setEventBuilder:(id)builder
{
  builderCopy = builder;
  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  [timeInterface setEventBuilder:builderCopy];
}

- (NSTimeZone)timeZone
{
  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  timeZone = [timeInterface timeZone];

  return timeZone;
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  [timeInterface setTimeZone:zoneCopy];
}

- (NSArray)recurrences
{
  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  recurrences = [timeInterface recurrences];

  return recurrences;
}

- (void)setRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  timeInterface = [(HFTimerTriggerBuilder *)self timeInterface];
  [timeInterface setRecurrences:recurrencesCopy];
}

- (void)setName:(id)name
{
  v6.receiver = self;
  v6.super_class = HFTimerTriggerBuilder;
  nameCopy = name;
  [(HFTriggerBuilder *)&v6 setName:nameCopy];
  v5 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder:v6.receiver];
  [v5 setName:nameCopy];
}

- (BOOL)_currentStateRequiresEventBasedTimeTriggers
{
  endEventBuilders = [(HFTriggerBuilder *)self endEventBuilders];
  if ([endEventBuilders count])
  {
    v4 = 1;
  }

  else
  {
    conditionCollection = [(HFTriggerBuilder *)self conditionCollection];
    conditions = [conditionCollection conditions];
    v4 = [conditions count] != 0;
  }

  return v4;
}

- (BOOL)_supportsEventBasedTimeTriggers
{
  preferredHomeKitObjectType = [(HFTimerTriggerBuilder *)self preferredHomeKitObjectType];
  if (preferredHomeKitObjectType == 1)
  {
    return 0;
  }

  if (preferredHomeKitObjectType == 2)
  {
    return 1;
  }

  v5 = HFPreferencesBooleanValueForKey(@"HFForcedEventBasedTimeTriggerAvailability");
  if (v5)
  {
    return v5 == 2;
  }

  home = [(HFItemBuilder *)self home];
  hf_supportsSharedEventAutomation = [home hf_supportsSharedEventAutomation];

  return hf_supportsSharedEventAutomation;
}

- (id)getOrCreateTriggerBuilder
{
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger])
  {
    home = [(HFItemBuilder *)self home];
    newEventTriggerBuilder = [home newEventTriggerBuilder];
    getOrCreateTriggerBuilder = [HFTriggerBuilderPair creatingTriggerWithBuilder:newEventTriggerBuilder];
  }

  else
  {
    home = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    getOrCreateTriggerBuilder = [home getOrCreateTriggerBuilder];
  }

  return getOrCreateTriggerBuilder;
}

- (id)updateTriggerBuilder:(id)builder
{
  v23[2] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    convertedEventTriggerBuilder = [(HFTimerTriggerBuilder *)self convertedEventTriggerBuilder];
    v6 = [convertedEventTriggerBuilder updateTriggerBuilder:builderCopy];
  }

  else
  {
    concreteTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      concreteTriggerBuilder2 = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
      [concreteTriggerBuilder2 removeAllEndEventBuilders];
      endEventBuilders = [(HFTriggerBuilder *)self endEventBuilders];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__HFTimerTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke;
      v21[3] = &unk_277DF4D70;
      v22 = concreteTriggerBuilder2;
      v11 = concreteTriggerBuilder2;
      [endEventBuilders na_each:v21];

      conditionCollection = [(HFTriggerBuilder *)self conditionCollection];
      [v11 replaceConditionsWithConditions:conditionCollection];

      recurrences = [(HFTimerTriggerBuilder *)self recurrences];
      [v11 setRecurrences:recurrences];
    }

    v14 = MEMORY[0x277D2C900];
    convertedEventTriggerBuilder = [(HFTimerTriggerBuilder *)self concreteTriggerBuilder];
    v15 = [convertedEventTriggerBuilder updateTriggerBuilder:builderCopy];
    v23[0] = v15;
    v20.receiver = self;
    v20.super_class = HFTimerTriggerBuilder;
    v16 = [(HFTriggerBuilder *)&v20 updateTriggerBuilder:builderCopy];
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
  supportsHomeKitAutomationBuilders = [v3 supportsHomeKitAutomationBuilders];

  return supportsHomeKitAutomationBuilders;
}

- (id)_commitUsingBuilders
{
  if ([(HFTimerTriggerBuilder *)self wantsConvertToEventTrigger])
  {
    trigger = [(HFTriggerBuilder *)self trigger];
    name = [(HFTriggerBuilder *)self name];
    v5 = [(HFTriggerBuilder *)self _uniquelyRenameTrigger:trigger pendingReplaceByNewTriggerWithName:name];

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
    v11 = trigger;
    v7 = trigger;
    _commitUsingBuilders = [v6 flatMap:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HFTimerTriggerBuilder;
    _commitUsingBuilders = [(HFTriggerBuilder *)&v13 _commitUsingBuilders];
  }

  return _commitUsingBuilders;
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

- (id)compareToObject:(id)object
{
  v5.receiver = self;
  v5.super_class = HFTimerTriggerBuilder;
  v3 = [(HFTriggerBuilder *)&v5 compareToObject:object];
  [v3 containsCriticalDifference];

  return v3;
}

@end