@interface HFEventTriggerBuilder
- (BOOL)_effectiveExecuteOnce;
- (BOOL)requiresConfirmationToRun;
- (HFCharacteristicTriggerBuilderInterface)characteristicInterface;
- (HFEventBuilderLocationInterface)locationInterface;
- (HFEventTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5;
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
- (id)compareToObject:(id)a3;
- (id)createEndEvents;
- (id)createEvents;
- (id)createNewTriggerBuilder;
- (id)deleteTrigger;
- (id)lazilyFinishCommitingTrigger;
- (id)naturalLanguageDetailsWithOptions:(id)a3;
- (id)naturalLanguageNameOfType:(unint64_t)a3;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (id)updateTriggerBuilder:(id)a3;
- (id)validationError;
- (void)_createEventBuilders;
- (void)addEventBuilder:(id)a3;
- (void)applyEventBuilderDiff:(id)a3;
- (void)removeEventBuilder:(id)a3;
- (void)removeServiceLikeItem:(id)a3;
- (void)setRecurrences:(id)a3;
@end

@implementation HFEventTriggerBuilder

- (HFEventTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5
{
  v9 = a3;
  v21.receiver = self;
  v21.super_class = HFEventTriggerBuilder;
  v10 = [(HFTriggerBuilder *)&v21 initWithExistingObject:v9 inHome:a4 context:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [(HFTriggerBuilder *)v10 trigger];

    if (v12)
    {
      v13 = [(HFTriggerBuilder *)v11 trigger];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v19 = [MEMORY[0x277CCA890] currentHandler];
        v20 = [(HFTriggerBuilder *)v11 trigger];
        [v19 handleFailureInMethod:a2 object:v11 file:@"HFEventTriggerBuilder.m" lineNumber:33 description:{@"HFEventTriggerBuilder must be instantiated with an HMEventTrigger. Got: %@ instead", v20}];
      }
    }

    v15 = [v9 hf_effectiveRecurrences];
    [(HFEventTriggerBuilder *)v11 setRecurrences:v15];

    -[HFEventTriggerBuilder setExecuteOnce:](v11, "setExecuteOnce:", [v9 executeOnce]);
    v16 = [MEMORY[0x277CBEB38] dictionary];
    extensionInterfaces = v11->_extensionInterfaces;
    v11->_extensionInterfaces = v16;

    [(HFEventTriggerBuilder *)v11 _createEventBuilders];
  }

  return v11;
}

- (void)addEventBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  [v5 na_safeAddObject:v4];
}

- (void)removeEventBuilder:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
    [v5 removeObject:v4];
  }
}

- (void)applyEventBuilderDiff:(id)a3
{
  v4 = a3;
  v5 = [v4 additions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HFEventTriggerBuilder_applyEventBuilderDiff___block_invoke;
  v8[3] = &unk_277DF4D70;
  v8[4] = self;
  [v5 na_each:v8];

  v6 = [v4 deletions];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HFEventTriggerBuilder_applyEventBuilderDiff___block_invoke_2;
  v7[3] = &unk_277DF4D70;
  v7[4] = self;
  [v6 na_each:v7];
}

- (NSArray)eventBuilders
{
  v2 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v3 = [v2 allObjects];

  return v3;
}

- (NSSet)characteristics
{
  v2 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v3 = [v2 na_map:&__block_literal_global_29];

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

- (void)setRecurrences:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ([(NSArray *)v4 na_all:&__block_literal_global_11]& 1) != 0 || [(NSArray *)v4 count]== 0;
  if (-[NSArray count](v4, "count") == 1 && (-[NSArray firstObject](v4, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CBEAB8] hf_dailyIntervalComponents], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hf_isEqualToHomeKitRecurrence:", v7), v7, v6, v8))
  {
    v9 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HFEventTriggerBuilder *)self recurrences];
      v11 = [(HFTriggerBuilder *)self name];
      v21 = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Reset recurrences: %@ to weekday components for trigger with name: %@", &v21, 0x16u);
    }

    v12 = [MEMORY[0x277CBEAB8] hf_dailyWeekdayIntervalComponents];
  }

  else
  {
    v13 = v4;
    if (v5)
    {
      goto LABEL_14;
    }

    v14 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HFEventTriggerBuilder *)self recurrences];
      v16 = [(HFTriggerBuilder *)self name];
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Filtered to recurrences: %@ for trigger with name: %@", &v21, 0x16u);
    }

    v12 = [(NSArray *)v4 na_filter:&__block_literal_global_11];
  }

  v13 = v12;

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
    v4 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
    v3 = [v4 na_map:&__block_literal_global_14];
  }

  return v3;
}

- (id)validationError
{
  v8.receiver = self;
  v8.super_class = HFEventTriggerBuilder;
  v3 = [(HFTriggerBuilder *)&v8 validationError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v3 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v4 = [v3 na_any:&__block_literal_global_28_0];

  if (!v4)
  {
    return 0;
  }

  v5 = [(HFEventTriggerBuilder *)self _allActionSets];
  v6 = [v5 na_any:&__block_literal_global_75];

  return v6;
}

- (id)naturalLanguageNameOfType:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 4)
  {
    v5 = [(HFTriggerBuilder *)self context];
    v6 = [v5 triggerContextAwareTitle];

    if (v6)
    {
      v7 = [(HFTriggerBuilder *)self context];
      v8 = [v7 triggerContextAwareTitle];
      goto LABEL_6;
    }

    v3 = 1;
  }

  v7 = [(HFItemBuilder *)self home];
  v9 = [HFTriggerNaturalLanguageOptions optionsWithHome:v7 nameType:v3];
  v8 = [(HFEventTriggerBuilder *)self naturalLanguageNameWithOptions:v9];

LABEL_6:

  return v8;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerBuilder *)self trigger];
  v6 = [v5 creator];
  if (v6)
  {
    goto LABEL_2;
  }

  v8 = [(HFItemBuilder *)self home];
  v7 = [v8 currentUser];

  if (!v7)
  {
    v5 = [(HFTriggerBuilder *)self trigger];
    v13 = [(HFTriggerBuilder *)self trigger];
    v14 = [v13 creator];
    v15 = [(HFItemBuilder *)self home];
    v16 = [v15 currentUser];
    NSLog(&cfstr_UnexpectedNilU.isa, v5, v14, v16);

LABEL_2:
    v7 = v6;
  }

  v9 = MEMORY[0x277CD19F8];
  v10 = [(HFEventTriggerBuilder *)self createEvents];
  v11 = [v9 hf_naturalLanguageNameWithOptions:v4 events:v10 forUser:v7];

  return v11;
}

- (id)naturalLanguageDetailsWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerBuilder *)self endEventBuilders];
  v6 = [v5 na_flatMap:&__block_literal_global_82];

  v7 = MEMORY[0x277CD19F8];
  v8 = [(HFEventTriggerBuilder *)self recurrences];
  v9 = [(HFTriggerBuilder *)self conditionCollection];
  v10 = [v7 hf_naturalLanguageDetailsWithRecurrences:v8 conditions:v9 endEvents:v6 withOptions:v4];

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
  v3 = [(HFItemBuilder *)self home];
  v4 = [(HFTriggerBuilder *)self trigger];
  v5 = [(HFTriggerBuilder *)self trigger];
  v6 = [v5 uniqueIdentifier];

  if (v6 && v3)
  {
    v7 = [MEMORY[0x277CBEB58] setWithObject:v4];
    v8 = [(HFTriggerBuilder *)self context];
    v9 = [v8 unsupportedTriggers];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __38__HFEventTriggerBuilder_deleteTrigger__block_invoke;
    v28[3] = &unk_277DF4E58;
    v10 = v7;
    v29 = v10;
    [v9 enumerateObjectsUsingBlock:v28];

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __38__HFEventTriggerBuilder_deleteTrigger__block_invoke_2;
    v26 = &unk_277DF4E80;
    v27 = v3;
    v11 = [v10 na_map:&v23];
    v12 = [v11 allObjects];

    objc_opt_class();
    v13 = [(HFTriggerBuilder *)self trigger];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = [v15 hf_unmarkTriggerAsHomeAppCreated];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v20 = v18;

    v21 = [MEMORY[0x277CBEB18] arrayWithObject:v20];
    [v21 addObjectsFromArray:v12];
    v19 = [MEMORY[0x277D2C900] combineAllFutures:v21];
  }

  else
  {
    v19 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v19;
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

- (void)removeServiceLikeItem:(id)a3
{
  v13.receiver = self;
  v13.super_class = HFEventTriggerBuilder;
  v4 = a3;
  [(HFTriggerBuilder *)&v13 removeServiceLikeItem:v4];
  v5 = [v4 services];

  v6 = [v5 na_flatMap:&__block_literal_global_93];

  v7 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HFEventTriggerBuilder_removeServiceLikeItem___block_invoke_2;
  v11[3] = &unk_277DF4EA8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 na_filter:v11];
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
  v3 = [(HFEventTriggerBuilder *)self _lazy_performValidation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HFEventTriggerBuilder_commitCreateTrigger__block_invoke;
  v10[3] = &unk_277DF2CE0;
  v10[4] = self;
  v4 = [v3 flatMap:v10];

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
  v3 = [(HFEventTriggerBuilder *)self _lazy_performValidation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HFEventTriggerBuilder_commitEditTrigger__block_invoke;
  v10[3] = &unk_277DF2CE0;
  v10[4] = self;
  v4 = [v3 flatMap:v10];
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
  v2 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v3 = [v2 na_flatMap:&__block_literal_global_111];
  v4 = [v3 allObjects];

  return v4;
}

- (id)createEndEvents
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFTriggerBuilder *)self endEventBuilders];
  v4 = [v2 setWithArray:v3];
  v5 = [v4 na_flatMap:&__block_literal_global_113];
  v6 = [v5 allObjects];

  return v6;
}

- (id)_updateEvents
{
  v3 = objc_opt_class();
  v4 = [(HFTriggerBuilder *)self trigger];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  v9 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__HFEventTriggerBuilder__updateEvents__block_invoke;
  v17[3] = &unk_277DF4150;
  v18 = v6;
  v19 = self;
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
  v3 = [(HFEventTriggerBuilder *)self _effectiveExecuteOnce];
  v4 = [(HFEventTriggerBuilder *)self eventTypes];
  v5 = [v4 containsObject:@"HFEventTypeTime"];

  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke;
    v14[3] = &unk_277DF4EF0;
    v14[4] = self;
    v15 = v3;
    v6 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_3;
    v12[3] = &unk_277DF4F18;
    v13 = v3;
    v12[4] = self;
    v7 = [v6 addSuccessBlock:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__HFEventTriggerBuilder__updateExecuteOnce__block_invoke_115;
    v10[3] = &unk_277DF4F40;
    v11 = v3;
    v10[4] = self;
    v8 = [v6 addFailureBlock:v10];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
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
  v3 = [(HFEventTriggerBuilder *)self recurrences];
  v4 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HFEventTriggerBuilder__updateRecurrences__block_invoke;
  v12[3] = &unk_277DF28D8;
  v12[4] = self;
  v13 = v3;
  v5 = v3;
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
  v3 = [(HFEventTriggerBuilder *)self recurrences];
  if ([v3 count])
  {
    v4 = [(HFEventTriggerBuilder *)self executeOnce];
  }

  else
  {
    v5 = [(HFEventTriggerBuilder *)self eventTypes];
    v4 = ([v5 containsObject:@"HFEventTypeTime"] & 1) != 0 || -[HFEventTriggerBuilder executeOnce](self, "executeOnce");
  }

  return v4;
}

- (id)_allActionSets
{
  v3 = [(HFTriggerBuilder *)self triggerActionSets];
  v4 = [v3 namedActionSets];

  v5 = [(HFTriggerBuilder *)self triggerActionSets];
  v6 = [v5 anonymousActionSetBuilder];
  v7 = [v4 arrayByAddingObject:v6];

  return v7;
}

- (void)_createEventBuilders
{
  v3 = [MEMORY[0x277CBEB58] set];
  [(HFEventTriggerBuilder *)self setMutableEventBuilders:v3];

  v4 = [(HFTriggerBuilder *)self trigger];
  v5 = [v4 events];
  v6 = [v5 mutableCopy];

  v7 = [(HFTriggerBuilder *)self trigger];
  v8 = [v7 events];
  v9 = [v8 na_map:&__block_literal_global_121];

  v10 = [(HFEventTriggerBuilder *)self mutableEventBuilders];
  v11 = [(HFItemBuilder *)self home];
  v12 = [HFCharacteristicEventBuilder characteristicEventBuildersForEvents:v9 inHome:v11];
  [v10 addObjectsFromArray:v12];

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
  v2 = [(HFItemBuilder *)self home];
  v3 = [v2 newEventTriggerBuilder];

  return v3;
}

- (id)updateTriggerBuilder:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = HFEventTriggerBuilder;
  v6 = [(HFTriggerBuilder *)&v24 updateTriggerBuilder:v5];
  objc_opt_class();
  v7 = v5;
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
    v10 = [(HFEventTriggerBuilder *)self createEvents];
    [v9 setEvents:v10];

    v11 = [(HFEventTriggerBuilder *)self createEndEvents];
    [v9 setEndEvents:v11];

    v12 = [(HFEventTriggerBuilder *)self recurrences];
    [v9 setRecurrences:v12];

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
  v3 = [(HFEventTriggerBuilder *)self extensionInterfaces];
  v4 = [v3 objectForKeyedSubscript:@"characteristicInterface"];

  if (!v4)
  {
    v4 = [(HFEventTriggerBuilderInterface *)HFCharacteristicTriggerBuilderInterface interfaceWithBuilder:self];
    v5 = [(HFEventTriggerBuilder *)self extensionInterfaces];
    [v5 setObject:v4 forKeyedSubscript:@"characteristicInterface"];
  }

  return v4;
}

- (HFEventBuilderLocationInterface)locationInterface
{
  v3 = [(HFEventTriggerBuilder *)self extensionInterfaces];
  v4 = [v3 objectForKeyedSubscript:@"locationInterface"];

  if (!v4)
  {
    v4 = [(HFEventTriggerBuilderInterface *)HFEventBuilderLocationInterface interfaceWithBuilder:self];
    v5 = [(HFEventTriggerBuilder *)self extensionInterfaces];
    [v5 setObject:v4 forKeyedSubscript:@"locationInterface"];
  }

  return v4;
}

- (HFEventTriggerBuilderTimeInterface)timeInterface
{
  v3 = [(HFEventTriggerBuilder *)self extensionInterfaces];
  v4 = [v3 objectForKeyedSubscript:@"timeInterface"];

  if (!v4)
  {
    v4 = [(HFEventTriggerBuilderInterface *)HFEventTriggerBuilderTimeInterface interfaceWithBuilder:self];
    v5 = [(HFEventTriggerBuilder *)self extensionInterfaces];
    [v5 setObject:v4 forKeyedSubscript:@"timeInterface"];
  }

  return v4;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HFEventTriggerBuilder;
  v5 = [(HFTriggerBuilder *)&v10 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [(HFEventTriggerBuilder *)self eventBuilders];
    v7 = [v4 eventBuilders];
    v8 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"eventBuilders" objectsA:v6 objectsB:v7];
    [v5 add:v8];
  }

  return v5;
}

@end