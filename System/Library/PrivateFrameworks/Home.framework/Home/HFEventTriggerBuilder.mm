@interface HFEventTriggerBuilder
- (BOOL)_effectiveExecuteOnce;
- (BOOL)requiresConfirmationToRun;
- (HFCharacteristicTriggerBuilderInterface)characteristicInterface;
- (HFEventBuilderLocationInterface)locationInterface;
- (HFEventTriggerBuilder)initWithExistingObject:(id)object inHome:(id)home context:(id)context;
- (HFEventTriggerBuilderTimeInterface)timeInterface;
- (NSArray)eventBuilders;
- (NSSet)characteristics;
- (NSSet)eventTypes;
- (id)_allActionSets;
- (id)_lazilyMarkTriggerAsHomeAppCreated;
- (id)_updateEvents;
- (id)_updateExecuteOnce;
- (id)_updateRecurrences;
- (id)commitCreateTrigger;
- (id)commitEditTrigger;
- (id)compareToObject:(id)object;
- (id)createEndEvents;
- (id)createEvents;
- (id)createNewTriggerBuilder;
- (id)deleteTrigger;
- (id)lazilyFinishCommitingTrigger;
- (id)naturalLanguageDetailsWithOptions:(id)options;
- (id)naturalLanguageNameOfType:(unint64_t)type;
- (id)naturalLanguageNameWithOptions:(id)options;
- (id)updateTriggerBuilder:(id)builder;
- (id)validationError;
- (void)_createEventBuilders;
- (void)addEventBuilder:(id)builder;
- (void)applyEventBuilderDiff:(id)diff;
- (void)removeEventBuilder:(id)builder;
- (void)removeServiceLikeItem:(id)item;
- (void)setRecurrences:(id)recurrences;
@end

@implementation HFEventTriggerBuilder

- (HFEventTriggerBuilder)initWithExistingObject:(id)object inHome:(id)home context:(id)context
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = HFEventTriggerBuilder;
  v10 = [(HFTriggerBuilder *)&v21 initWithExistingObject:objectCopy inHome:home context:context];
  v11 = v10;
  if (v10)
  {
    trigger = [(HFTriggerBuilder *)v10 trigger];

    if (trigger)
    {
      trigger2 = [(HFTriggerBuilder *)v11 trigger];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        trigger3 = [(HFTriggerBuilder *)v11 trigger];
        [currentHandler handleFailureInMethod:a2 object:v11 file:@"HFEventTriggerBuilder.m" lineNumber:33 description:{@"HFEventTriggerBuilder must be instantiated with an HMEventTrigger. Got: %@ instead", trigger3}];
      }
    }

    hf_effectiveRecurrences = [objectCopy hf_effectiveRecurrences];
    [(HFEventTriggerBuilder *)v11 setRecurrences:hf_effectiveRecurrences];

    -[HFEventTriggerBuilder setExecuteOnce:](v11, "setExecuteOnce:", [objectCopy executeOnce]);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    extensionInterfaces = v11->_extensionInterfaces;
    v11->_extensionInterfaces = dictionary;

    [(HFEventTriggerBuilder *)v11 _createEventBuilders];
  }

  return v11;
}

- (void)addEventBuilder:(id)builder
{
  builderCopy = builder;
  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  [mutableEventBuilders na_safeAddObject:builderCopy];
}

- (void)removeEventBuilder:(id)builder
{
  if (builder)
  {
    builderCopy = builder;
    mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
    [mutableEventBuilders removeObject:builderCopy];
  }
}

- (void)applyEventBuilderDiff:(id)diff
{
  diffCopy = diff;
  additions = [diffCopy additions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HFEventTriggerBuilder_applyEventBuilderDiff___block_invoke;
  v8[3] = &unk_277DF4D70;
  v8[4] = self;
  [additions na_each:v8];

  deletions = [diffCopy deletions];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HFEventTriggerBuilder_applyEventBuilderDiff___block_invoke_2;
  v7[3] = &unk_277DF4D70;
  v7[4] = self;
  [deletions na_each:v7];
}

- (NSArray)eventBuilders
{
  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  allObjects = [mutableEventBuilders allObjects];

  return allObjects;
}

- (NSSet)characteristics
{
  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v3 = [mutableEventBuilders na_map:&__block_literal_global_29];

  return v3;
}

id __40__HFEventTriggerBuilder_characteristics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 characteristic];

  return v6;
}

- (void)setRecurrences:(id)recurrences
{
  v25 = *MEMORY[0x277D85DE8];
  recurrencesCopy = recurrences;
  v5 = ([(NSArray *)recurrencesCopy na_all:&__block_literal_global_11]& 1) != 0 || [(NSArray *)recurrencesCopy count]== 0;
  if (-[NSArray count](recurrencesCopy, "count") == 1 && (-[NSArray firstObject](recurrencesCopy, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CBEAB8] hf_dailyIntervalComponents], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hf_isEqualToHomeKitRecurrence:", v7), v7, v6, v8))
  {
    v9 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      recurrences = [(HFEventTriggerBuilder *)self recurrences];
      name = [(HFTriggerBuilder *)self name];
      v21 = 138412546;
      v22 = recurrences;
      v23 = 2112;
      v24 = name;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Reset recurrences: %@ to weekday components for trigger with name: %@", &v21, 0x16u);
    }

    hf_dailyWeekdayIntervalComponents = [MEMORY[0x277CBEAB8] hf_dailyWeekdayIntervalComponents];
  }

  else
  {
    v13 = recurrencesCopy;
    if (v5)
    {
      goto LABEL_14;
    }

    v14 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      recurrences2 = [(HFEventTriggerBuilder *)self recurrences];
      name2 = [(HFTriggerBuilder *)self name];
      v21 = 138412546;
      v22 = recurrences2;
      v23 = 2112;
      v24 = name2;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Filtered to recurrences: %@ for trigger with name: %@", &v21, 0x16u);
    }

    hf_dailyWeekdayIntervalComponents = [(NSArray *)recurrencesCopy na_filter:&__block_literal_global_11];
  }

  v13 = hf_dailyWeekdayIntervalComponents;

LABEL_14:
  recurrences = self->_recurrences;
  self->_recurrences = v13;
  v18 = v13;

  v19 = [(NSArray *)self->_recurrences count];
  if (v19)
  {
    self->_executeOnce = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
}

BOOL __40__HFEventTriggerBuilder_setRecurrences___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 weekday] >= 1 && objc_msgSend(v2, "weekday") < 8;

  return v3;
}

- (NSSet)eventTypes
{
  eventTypes = self->_eventTypes;
  if (eventTypes)
  {
    v3 = eventTypes;
  }

  else
  {
    mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
    v3 = [mutableEventBuilders na_map:&__block_literal_global_14];
  }

  return v3;
}

- (id)validationError
{
  v8.receiver = self;
  v8.super_class = HFEventTriggerBuilder;
  validationError = [(HFTriggerBuilder *)&v8 validationError];
  v4 = validationError;
  if (validationError)
  {
    v5 = validationError;
  }

  else
  {
    v5 = [(HFItemBuilder *)self verifyProperty:@"mutableEventBuilders" matchesCondition:&__block_literal_global_22_0 description:@"List of events cannot be empty"];
  }

  v6 = v5;

  return v6;
}

- (BOOL)requiresConfirmationToRun
{
  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v4 = [mutableEventBuilders na_any:&__block_literal_global_28_0];

  if (!v4)
  {
    return 0;
  }

  _allActionSets = [(HFEventTriggerBuilder *)self _allActionSets];
  v6 = [_allActionSets na_any:&__block_literal_global_75];

  return v6;
}

- (id)naturalLanguageNameOfType:(unint64_t)type
{
  typeCopy = type;
  if (type == 4)
  {
    context = [(HFTriggerBuilder *)self context];
    triggerContextAwareTitle = [context triggerContextAwareTitle];

    if (triggerContextAwareTitle)
    {
      context2 = [(HFTriggerBuilder *)self context];
      triggerContextAwareTitle2 = [context2 triggerContextAwareTitle];
      goto LABEL_6;
    }

    typeCopy = 1;
  }

  context2 = [(HFItemBuilder *)self home];
  v9 = [HFTriggerNaturalLanguageOptions optionsWithHome:context2 nameType:typeCopy];
  triggerContextAwareTitle2 = [(HFEventTriggerBuilder *)self naturalLanguageNameWithOptions:v9];

LABEL_6:

  return triggerContextAwareTitle2;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  optionsCopy = options;
  trigger = [(HFTriggerBuilder *)self trigger];
  creator = [trigger creator];
  if (creator)
  {
    goto LABEL_2;
  }

  home = [(HFItemBuilder *)self home];
  currentUser = [home currentUser];

  if (!currentUser)
  {
    trigger = [(HFTriggerBuilder *)self trigger];
    trigger2 = [(HFTriggerBuilder *)self trigger];
    creator2 = [trigger2 creator];
    home2 = [(HFItemBuilder *)self home];
    currentUser2 = [home2 currentUser];
    NSLog(&cfstr_UnexpectedNilU.isa, trigger, creator2, currentUser2);

LABEL_2:
    currentUser = creator;
  }

  v9 = MEMORY[0x277CD19F8];
  createEvents = [(HFEventTriggerBuilder *)self createEvents];
  v11 = [v9 hf_naturalLanguageNameWithOptions:optionsCopy events:createEvents forUser:currentUser];

  return v11;
}

- (id)naturalLanguageDetailsWithOptions:(id)options
{
  optionsCopy = options;
  endEventBuilders = [(HFTriggerBuilder *)self endEventBuilders];
  v6 = [endEventBuilders na_flatMap:&__block_literal_global_82];

  v7 = MEMORY[0x277CD19F8];
  recurrences = [(HFEventTriggerBuilder *)self recurrences];
  conditionCollection = [(HFTriggerBuilder *)self conditionCollection];
  v10 = [v7 hf_naturalLanguageDetailsWithRecurrences:recurrences conditions:conditionCollection endEvents:v6 withOptions:optionsCopy];

  return v10;
}

id __59__HFEventTriggerBuilder_naturalLanguageDetailsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 buildNewEventsFromCurrentState];
  v3 = [v2 allObjects];

  return v3;
}

- (id)deleteTrigger
{
  home = [(HFItemBuilder *)self home];
  trigger = [(HFTriggerBuilder *)self trigger];
  trigger2 = [(HFTriggerBuilder *)self trigger];
  uniqueIdentifier = [trigger2 uniqueIdentifier];

  if (uniqueIdentifier && home)
  {
    v7 = [MEMORY[0x277CBEB58] setWithObject:trigger];
    context = [(HFTriggerBuilder *)self context];
    unsupportedTriggers = [context unsupportedTriggers];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __38__HFEventTriggerBuilder_deleteTrigger__block_invoke;
    v28[3] = &unk_277DF4E58;
    v10 = v7;
    v29 = v10;
    [unsupportedTriggers enumerateObjectsUsingBlock:v28];

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __38__HFEventTriggerBuilder_deleteTrigger__block_invoke_2;
    v26 = &unk_277DF4E80;
    v27 = home;
    v11 = [v10 na_map:&v23];
    allObjects = [v11 allObjects];

    objc_opt_class();
    trigger3 = [(HFTriggerBuilder *)self trigger];
    if (objc_opt_isKindOfClass())
    {
      v14 = trigger3;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    hf_unmarkTriggerAsHomeAppCreated = [v15 hf_unmarkTriggerAsHomeAppCreated];
    v17 = hf_unmarkTriggerAsHomeAppCreated;
    if (hf_unmarkTriggerAsHomeAppCreated)
    {
      futureWithNoResult = hf_unmarkTriggerAsHomeAppCreated;
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v20 = futureWithNoResult;

    v21 = [MEMORY[0x277CBEB18] arrayWithObject:v20];
    [v21 addObjectsFromArray:allObjects];
    futureWithNoResult2 = [MEMORY[0x277D2C900] combineAllFutures:v21];
  }

  else
  {
    futureWithNoResult2 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult2;
}

id __38__HFEventTriggerBuilder_deleteTrigger__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__HFEventTriggerBuilder_deleteTrigger__block_invoke_3;
  v8[3] = &unk_277DF4150;
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = v3;
  v6 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v8];

  return v6;
}

- (void)removeServiceLikeItem:(id)item
{
  v13.receiver = self;
  v13.super_class = HFEventTriggerBuilder;
  itemCopy = item;
  [(HFTriggerBuilder *)&v13 removeServiceLikeItem:itemCopy];
  services = [itemCopy services];

  v6 = [services na_flatMap:&__block_literal_global_93];

  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HFEventTriggerBuilder_removeServiceLikeItem___block_invoke_2;
  v11[3] = &unk_277DF4EA8;
  v12 = v6;
  v8 = v6;
  v9 = [mutableEventBuilders na_filter:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HFEventTriggerBuilder_removeServiceLikeItem___block_invoke_3;
  v10[3] = &unk_277DF4D70;
  v10[4] = self;
  [v9 na_each:v10];
}

id __47__HFEventTriggerBuilder_removeServiceLikeItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __47__HFEventTriggerBuilder_removeServiceLikeItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2825320C8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 characteristic];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __47__HFEventTriggerBuilder_removeServiceLikeItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mutableEventBuilders];
  [v4 removeObject:v3];
}

- (id)lazilyFinishCommitingTrigger
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HFEventTriggerBuilder_lazilyFinishCommitingTrigger__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __53__HFEventTriggerBuilder_lazilyFinishCommitingTrigger__block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 _lazilyMarkTriggerAsHomeAppCreated];
  v13[0] = v6;
  v7 = [*(a1 + 32) _updateExecuteOnce];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v9 = [v3 chainFutures:v8];
  v10 = [v5 completionHandlerAdapter];

  v11 = [v9 addCompletionBlock:v10];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)commitCreateTrigger
{
  _lazy_performValidation = [(HFEventTriggerBuilder *)self _lazy_performValidation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke;
  v10[3] = &unk_277DF2CE0;
  v10[4] = self;
  v4 = [_lazy_performValidation flatMap:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke_2;
  v9[3] = &unk_277DF2720;
  v9[4] = self;
  v5 = [v4 addSuccessBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke_107;
  v8[3] = &unk_277DF2D08;
  v8[4] = self;
  v6 = [v4 addFailureBlock:v8];

  return v4;
}

id __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD19F8]);
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 32) createEvents];
  v5 = [*(a1 + 32) recurrences];
  v6 = [v2 initWithName:v3 events:v4 endEvents:0 recurrences:v5 predicate:0];
  [*(a1 + 32) setTrigger:v6];

  v7 = MEMORY[0x277D2C900];
  v8 = [*(a1 + 32) trigger];
  v9 = [v7 futureWithResult:v8];

  return v9;
}

void __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Created event trigger with name:%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke_107(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) name];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to create event trigger with name:%@. Error: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)commitEditTrigger
{
  _lazy_performValidation = [(HFEventTriggerBuilder *)self _lazy_performValidation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HFEventTriggerBuilder_commitEditTrigger__block_invoke;
  v10[3] = &unk_277DF2CE0;
  v10[4] = self;
  v4 = [_lazy_performValidation flatMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HFEventTriggerBuilder_commitEditTrigger__block_invoke_2;
  v9[3] = &unk_277DF2CE0;
  v9[4] = self;
  v5 = [v4 flatMap:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HFEventTriggerBuilder_commitEditTrigger__block_invoke_3;
  v8[3] = &unk_277DF2CE0;
  v8[4] = self;
  v6 = [v5 flatMap:v8];

  return v6;
}

- (id)createEvents
{
  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v3 = [mutableEventBuilders na_flatMap:&__block_literal_global_111];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)createEndEvents
{
  v2 = MEMORY[0x277CBEB98];
  endEventBuilders = [(HFTriggerBuilder *)self endEventBuilders];
  v4 = [v2 setWithArray:endEventBuilders];
  v5 = [v4 na_flatMap:&__block_literal_global_113];
  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)_updateEvents
{
  v3 = objc_opt_class();
  trigger = [(HFTriggerBuilder *)self trigger];
  if (trigger)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = trigger;
    }

    else
    {
      v5 = 0;
    }

    v6 = trigger;
    if (v5)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  v9 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__HFEventTriggerBuilder__updateEvents__block_invoke;
  v17[3] = &unk_277DF4150;
  v18 = v6;
  selfCopy = self;
  v10 = v6;
  v11 = [v9 futureWithErrorOnlyHandlerAdapterBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__HFEventTriggerBuilder__updateEvents__block_invoke_2;
  v16[3] = &unk_277DF2720;
  v16[4] = self;
  v12 = [v11 addSuccessBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__HFEventTriggerBuilder__updateEvents__block_invoke_114;
  v15[3] = &unk_277DF2D08;
  v15[4] = self;
  v13 = [v12 addFailureBlock:v15];

  return v13;
}

void __38__HFEventTriggerBuilder__updateEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 createEvents];
  [v2 updateEvents:v5 completionHandler:v4];
}

void __38__HFEventTriggerBuilder__updateEvents__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) mutableEventBuilders];
    v4 = [v3 hf_prettyDescription];
    v5 = [*(a1 + 32) name];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated events: %@ from trigger with name: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __38__HFEventTriggerBuilder__updateEvents__block_invoke_114(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) mutableEventBuilders];
    v7 = [v6 hf_prettyDescription];
    v8 = [*(a1 + 32) name];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update events: %@ from trigger with name: %@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_updateExecuteOnce
{
  _effectiveExecuteOnce = [(HFEventTriggerBuilder *)self _effectiveExecuteOnce];
  eventTypes = [(HFEventTriggerBuilder *)self eventTypes];
  v5 = [eventTypes containsObject:@"HFEventTypeTime"];

  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke;
    v14[3] = &unk_277DF4EF0;
    v14[4] = self;
    v15 = _effectiveExecuteOnce;
    futureWithNoResult = [MEMORY[0x277D2C900] lazyFutureWithBlock:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_3;
    v12[3] = &unk_277DF4F18;
    v13 = _effectiveExecuteOnce;
    v12[4] = self;
    v7 = [futureWithNoResult addSuccessBlock:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_115;
    v10[3] = &unk_277DF4F40;
    v11 = _effectiveExecuteOnce;
    v10[4] = self;
    v8 = [futureWithNoResult addFailureBlock:v10];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) trigger];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_2;
  v7[3] = &unk_277DF2D08;
  v8 = v3;
  v6 = v3;
  [v4 updateExecuteOnce:v5 completionHandler:v7];
}

uint64_t __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

void __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) name];
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated execute once: %d for trigger with name: %@", v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_115(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) name];
    v8[0] = 67109634;
    v8[1] = v6;
    v9 = 2112;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update execute once: %d for trigger with name: %@. Error: %@", v8, 0x1Cu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_updateRecurrences
{
  recurrences = [(HFEventTriggerBuilder *)self recurrences];
  v4 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HFEventTriggerBuilder__updateRecurrences__block_invoke;
  v12[3] = &unk_277DF28D8;
  v12[4] = self;
  v13 = recurrences;
  v5 = recurrences;
  v6 = [v4 lazyFutureWithBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__HFEventTriggerBuilder__updateRecurrences__block_invoke_3;
  v11[3] = &unk_277DF2720;
  v11[4] = self;
  v7 = [v6 addSuccessBlock:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HFEventTriggerBuilder__updateRecurrences__block_invoke_116;
  v10[3] = &unk_277DF2D08;
  v10[4] = self;
  v8 = [v6 addFailureBlock:v10];

  return v6;
}

void __43__HFEventTriggerBuilder__updateRecurrences__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) trigger];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HFEventTriggerBuilder__updateRecurrences__block_invoke_2;
  v7[3] = &unk_277DF2D08;
  v8 = v3;
  v6 = v3;
  [v4 updateRecurrences:v5 completionHandler:v7];
}

uint64_t __43__HFEventTriggerBuilder__updateRecurrences__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

void __43__HFEventTriggerBuilder__updateRecurrences__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recurrences];
    v4 = [*(a1 + 32) name];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated recurrences: %@ for trigger with name: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__HFEventTriggerBuilder__updateRecurrences__block_invoke_116(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) recurrences];
    v7 = [*(a1 + 32) name];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update recurrences: %@ for trigger with name: %@. Error: %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_lazilyMarkTriggerAsHomeAppCreated
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D2C900];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HFEventTriggerBuilder__lazilyMarkTriggerAsHomeAppCreated__block_invoke;
  v5[3] = &unk_277DF4F68;
  objc_copyWeak(&v6, &location);
  v3 = [v2 lazyFutureWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __59__HFEventTriggerBuilder__lazilyMarkTriggerAsHomeAppCreated__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v4 = [WeakRetained trigger];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ([WeakRetained shouldMarkTriggerAsHomeAppCreated])
  {
    [v6 hf_markTriggerAsHomeAppCreated];
  }

  else
  {
    [v6 hf_unmarkTriggerAsHomeAppCreated];
  }
  v7 = ;

  if (v7)
  {
    v8 = [v10 completionHandlerAdapter];
    v9 = [v7 addCompletionBlock:v8];
  }

  else
  {
    [v10 finishWithNoResult];
  }
}

- (BOOL)_effectiveExecuteOnce
{
  recurrences = [(HFEventTriggerBuilder *)self recurrences];
  if ([recurrences count])
  {
    executeOnce = [(HFEventTriggerBuilder *)self executeOnce];
  }

  else
  {
    eventTypes = [(HFEventTriggerBuilder *)self eventTypes];
    executeOnce = ([eventTypes containsObject:@"HFEventTypeTime"] & 1) != 0 || -[HFEventTriggerBuilder executeOnce](self, "executeOnce");
  }

  return executeOnce;
}

- (id)_allActionSets
{
  triggerActionSets = [(HFTriggerBuilder *)self triggerActionSets];
  namedActionSets = [triggerActionSets namedActionSets];

  triggerActionSets2 = [(HFTriggerBuilder *)self triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets2 anonymousActionSetBuilder];
  v7 = [namedActionSets arrayByAddingObject:anonymousActionSetBuilder];

  return v7;
}

- (void)_createEventBuilders
{
  v3 = [MEMORY[0x277CBEB58] set];
  [(HFEventTriggerBuilder *)self setMutableEventBuilders:v3];

  trigger = [(HFTriggerBuilder *)self trigger];
  events = [trigger events];
  v6 = [events mutableCopy];

  trigger2 = [(HFTriggerBuilder *)self trigger];
  events2 = [trigger2 events];
  v9 = [events2 na_map:&__block_literal_global_121];

  mutableEventBuilders = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  home = [(HFItemBuilder *)self home];
  v12 = [HFCharacteristicEventBuilder characteristicEventBuildersForEvents:v9 inHome:home];
  [mutableEventBuilders addObjectsFromArray:v12];

  [v6 removeObjectsInArray:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HFEventTriggerBuilder__createEventBuilders__block_invoke_2;
  v13[3] = &unk_277DF4FB0;
  v13[4] = self;
  [v6 na_each:v13];
}

void *__45__HFEventTriggerBuilder__createEventBuilders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2825320C8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void __45__HFEventTriggerBuilder__createEventBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [HFEventBuilder eventBuilderForEvent:?];
  if (!v3)
  {
    NSLog(&cfstr_FailedToCreate_0.isa, v5);
  }

  v4 = [*(a1 + 32) mutableEventBuilders];
  [v4 na_safeAddObject:v3];
}

- (id)createNewTriggerBuilder
{
  home = [(HFItemBuilder *)self home];
  newEventTriggerBuilder = [home newEventTriggerBuilder];

  return newEventTriggerBuilder;
}

- (id)updateTriggerBuilder:(id)builder
{
  v25[2] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v24.receiver = self;
  v24.super_class = HFEventTriggerBuilder;
  v6 = [(HFTriggerBuilder *)&v24 updateTriggerBuilder:builderCopy];
  objc_opt_class();
  v7 = builderCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    createEvents = [(HFEventTriggerBuilder *)self createEvents];
    [v9 setEvents:createEvents];

    createEndEvents = [(HFEventTriggerBuilder *)self createEndEvents];
    [v9 setEndEvents:createEndEvents];

    recurrences = [(HFEventTriggerBuilder *)self recurrences];
    [v9 setRecurrences:recurrences];

    [v9 setExecuteOnce:{-[HFEventTriggerBuilder _effectiveExecuteOnce](self, "_effectiveExecuteOnce")}];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HFEventTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke;
    v23[3] = &unk_277DF3A18;
    v23[4] = self;
    v13 = __66__HFEventTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke(v23);
    [v9 setPredicate:v13];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__HFEventTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke_2;
    v21[3] = &unk_277DF9660;
    v21[4] = self;
    v22 = v9;
    v14 = __66__HFEventTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke_2(v21);
    v15 = MEMORY[0x277D2C900];
    v25[0] = v6;
    v25[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v17 = [v15 combineAllFutures:v16];
  }

  else
  {
    v18 = NSStringFromSelector(a2);
    NSLog(&cfstr_PassedAHmTrigg.isa, self, v18, v7);

    v17 = v6;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

id __66__HFEventTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) supportsConditions])
  {
    v2 = [*(a1 + 32) conditionCollection];
    v3 = [v2 predicate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __66__HFEventTriggerBuilder_AutomationBuilders__updateTriggerBuilder___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldMarkTriggerAsHomeAppCreated];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 hf_markTriggerAsHomeAppCreated];
  }

  else
  {
    [v3 hf_unmarkTriggerAsHomeAppCreated];
  }
  v4 = ;

  return v4;
}

- (HFCharacteristicTriggerBuilderInterface)characteristicInterface
{
  extensionInterfaces = [(HFEventTriggerBuilder *)self extensionInterfaces];
  v4 = [extensionInterfaces objectForKeyedSubscript:@"characteristicInterface"];

  if (!v4)
  {
    v4 = [(HFEventTriggerBuilderInterface *)HFCharacteristicTriggerBuilderInterface interfaceWithBuilder:self];
    extensionInterfaces2 = [(HFEventTriggerBuilder *)self extensionInterfaces];
    [extensionInterfaces2 setObject:v4 forKeyedSubscript:@"characteristicInterface"];
  }

  return v4;
}

- (HFEventBuilderLocationInterface)locationInterface
{
  extensionInterfaces = [(HFEventTriggerBuilder *)self extensionInterfaces];
  v4 = [extensionInterfaces objectForKeyedSubscript:@"locationInterface"];

  if (!v4)
  {
    v4 = [(HFEventTriggerBuilderInterface *)HFEventBuilderLocationInterface interfaceWithBuilder:self];
    extensionInterfaces2 = [(HFEventTriggerBuilder *)self extensionInterfaces];
    [extensionInterfaces2 setObject:v4 forKeyedSubscript:@"locationInterface"];
  }

  return v4;
}

- (HFEventTriggerBuilderTimeInterface)timeInterface
{
  extensionInterfaces = [(HFEventTriggerBuilder *)self extensionInterfaces];
  v4 = [extensionInterfaces objectForKeyedSubscript:@"timeInterface"];

  if (!v4)
  {
    v4 = [(HFEventTriggerBuilderInterface *)HFEventTriggerBuilderTimeInterface interfaceWithBuilder:self];
    extensionInterfaces2 = [(HFEventTriggerBuilder *)self extensionInterfaces];
    [extensionInterfaces2 setObject:v4 forKeyedSubscript:@"timeInterface"];
  }

  return v4;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = HFEventTriggerBuilder;
  v5 = [(HFTriggerBuilder *)&v10 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    eventBuilders = [(HFEventTriggerBuilder *)self eventBuilders];
    eventBuilders2 = [objectCopy eventBuilders];
    v8 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"eventBuilders" objectsA:eventBuilders objectsB:eventBuilders2];
    [v5 add:v8];
  }

  return v5;
}

@end