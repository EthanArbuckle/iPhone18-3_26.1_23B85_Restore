@interface HFTriggerBuilder
+ (id)triggerBuilderForTrigger:(id)a3 inHome:(id)a4 context:(id)a5 assertsFailure:(BOOL)a6;
- (BOOL)areActionsAffectedByEndEvents;
- (BOOL)isShortcutOwned;
- (BOOL)requiresHomeHub;
- (BOOL)requiresUpdatedHomeHub;
- (HFDurationEventBuilder)designatedDurationEventBuilder;
- (HFTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (HFTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5;
- (HFTriggerBuilder)initWithHome:(id)a3;
- (HFTriggerBuilder)initWithHome:(id)a3 context:(id)a4;
- (NSArray)endEventBuilders;
- (NSString)displayName;
- (id)_commitAddTriggerToHome:(id)a3;
- (id)_commitUsingBuilders;
- (id)_deleteTrigger:(id)a3 fromHome:(id)a4;
- (id)_lazy_performValidation;
- (id)_legacyCommitItem;
- (id)_uniquelyRenameTrigger:(id)a3 pendingReplaceByNewTriggerWithName:(id)a4;
- (id)_updateActionSets;
- (id)_updateAnonymousActionSet;
- (id)_updateConditions;
- (id)_updateEnabledState;
- (id)_updateEndEvents;
- (id)_updateName;
- (id)asEventTriggerBuilder;
- (id)commitCreateTrigger;
- (id)commitEditTrigger;
- (id)commitItem;
- (id)compareToObject:(id)a3;
- (id)deleteTrigger;
- (id)getOrCreateTriggerBuilder;
- (id)naturalLanguageNameOfType:(unint64_t)a3;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (id)replaceCurrentTriggerWithTrigger:(id)a3;
- (id)updateTriggerBuilder:(id)a3;
- (id)validationError;
- (unint64_t)hash;
- (void)_didReplaceBackingTrigger;
- (void)_notifyObserversOfAddingTrigger:(id)a3;
- (void)_notifyObserversOfChangingTrigger:(id)a3;
- (void)addEndEventBuilder:(id)a3;
- (void)removeAllEndEventBuilders;
- (void)removeEndEventBuilder:(id)a3;
- (void)removeServiceLikeItem:(id)a3;
- (void)setEndEvent:(id)a3;
- (void)updateEndEventBuilder:(id)a3;
@end

@implementation HFTriggerBuilder

- (id)getOrCreateTriggerBuilder
{
  v3 = [(HFTriggerBuilder *)self trigger];
  v4 = v3;
  if (!v3)
  {
    v5 = [(HFTriggerBuilder *)self createNewTriggerBuilder];
    v6 = [HFTriggerBuilderPair creatingTriggerWithBuilder:v5];
    goto LABEL_5;
  }

  v5 = [v3 hf_copyAsBuilder];
  if (v5)
  {
    v6 = [HFTriggerBuilderPair updatingTrigger:v4 withBuilder:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)updateTriggerBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerBuilder *)self name];
  [v4 setName:v5 isConfigured:{-[HFTriggerBuilder nameIsConfigured](self, "nameIsConfigured")}];

  [v4 setEnabled:{-[HFTriggerBuilder enabled](self, "enabled")}];
  v6 = [(HFTriggerBuilder *)self triggerActionSets];
  [v6 updateActionSetsInTriggerBuilder:v4];

  v7 = MEMORY[0x277D2C900];

  return [v7 futureWithNoResult];
}

+ (id)triggerBuilderForTrigger:(id)a3 inHome:(id)a4 context:(id)a5 assertsFailure:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v11 conformsToProtocol:&unk_28258B3D8])
  {
    v14 = [v11 hf_triggerType];
  }

  else
  {
    v14 = 0;
  }

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __75__HFTriggerBuilder_triggerBuilderForTrigger_inHome_context_assertsFailure___block_invoke;
  v22 = &unk_277E00DF0;
  v24 = v14;
  v15 = v11;
  v27 = v6;
  v23 = v15;
  v25 = a2;
  v26 = a1;
  v16 = __75__HFTriggerBuilder_triggerBuilderForTrigger_inHome_context_assertsFailure___block_invoke(&v19);
  if (v16 || v6)
  {
    v17 = [[v16 alloc] initWithExistingObject:v15 inHome:v12 context:v13];
    if (!v17)
    {
      NSLog(&cfstr_CouldNotCreate_1.isa, v15, v19, v20, v21, v22);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id __75__HFTriggerBuilder_triggerBuilderForTrigger_inHome_context_assertsFailure___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 7 || v1 == 1 || (v3 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_opt_class();
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"HFTriggerBuilder.m" lineNumber:84 description:{@"Unexpected trigger type %d", *(a1 + 40)}];
    }

    v4 = 0;
  }

  return v4;
}

- (HFTriggerBuilder)initWithHome:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_context_);
  [v5 handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder.m" lineNumber:119 description:{@"%s is unavailable; use %@ instead", "-[HFTriggerBuilder initWithHome:]", v6}];

  return 0;
}

- (HFTriggerBuilder)initWithHome:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(HFTriggerBuilder *)self initWithExistingObject:0 inHome:a3 context:v6];
  v8 = v7;
  if (v7)
  {
    [(HFTriggerBuilder *)v7 setContext:v6];
  }

  return v8;
}

- (HFTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithExistingObject_inHome_context_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder.m" lineNumber:132 description:{@"%s is unavailable; use %@ instead", "-[HFTriggerBuilder initWithExistingObject:inHome:]", v7}];

  return 0;
}

- (HFTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v39.receiver = self;
  v39.super_class = HFTriggerBuilder;
  v10 = [(HFItemBuilder *)&v39 initWithExistingObject:a3 inHome:v8];
  v11 = v10;
  if (v10)
  {
    [(HFTriggerBuilder *)v10 setContext:v9];
    v12 = [HFTriggerActionSetsBuilder alloc];
    v13 = [(HFTriggerBuilder *)v11 trigger];
    v14 = [v13 actionSets];
    v15 = -[HFTriggerActionSetsBuilder initWithActionSets:inHome:filterEmptyActionSets:](v12, "initWithActionSets:inHome:filterEmptyActionSets:", v14, v8, [v9 filtersEmptyActionSets]);
    [(HFTriggerBuilder *)v11 setTriggerActionSets:v15];

    objc_opt_class();
    v16 = [(HFTriggerBuilder *)v11 trigger];
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 predicate];

    if (v19)
    {
      v20 = [v18 predicate];
      v21 = [HFConditionCollection conditionCollectionForPredicate:v20];
    }

    else
    {
      v22 = [HFConditionCollection alloc];
      v20 = [MEMORY[0x277CBEA60] array];
      v21 = [(HFConditionCollection *)v22 initWithConditions:v20];
    }

    v23 = v21;
    [(HFTriggerBuilder *)v11 setConditionCollection:v21];

    v24 = [v18 endEvents];
    if (v24)
    {
      v25 = [v18 endEvents];
      v26 = [v25 na_map:&__block_literal_global_211];
    }

    else
    {
      v26 = [MEMORY[0x277CBEA60] array];
    }

    v27 = [HFMutableSetDiff alloc];
    v28 = [MEMORY[0x277CBEB98] setWithArray:v26];
    v29 = [(HFMutableSetDiff *)v27 initWithFromSet:v28];
    [(HFTriggerBuilder *)v11 setEndEventBuildersDiff:v29];

    v30 = [(HFTriggerBuilder *)v11 trigger];
    v31 = [v30 configuredName];
    if (v31)
    {
      [(HFTriggerBuilder *)v11 setName:v31];
    }

    else
    {
      v32 = [(HFTriggerBuilder *)v11 trigger];
      v33 = [v32 name];
      [(HFTriggerBuilder *)v11 setName:v33];
    }

    v34 = [(HFTriggerBuilder *)v11 trigger];
    v35 = [v34 configuredName];
    [(HFTriggerBuilder *)v11 setNameIsConfigured:v35 != 0];

    v36 = [(HFTriggerBuilder *)v11 trigger];
    if (v36)
    {
      v37 = [(HFTriggerBuilder *)v11 trigger];
      -[HFTriggerBuilder setEnabled:](v11, "setEnabled:", [v37 isEnabled]);
    }

    else
    {
      [(HFTriggerBuilder *)v11 setEnabled:1];
    }
  }

  return v11;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = [(HFTriggerBuilder *)self naturalLanguageNameOfType:2];
    v5 = self->_displayName;
    self->_displayName = v4;

    displayName = self->_displayName;
  }

  return displayName;
}

- (void)addEndEventBuilder:(id)a3
{
  v5 = a3;
  if (![(HFTriggerBuilder *)self supportsEndEvents])
  {
    NSLog(&cfstr_AttemptToAddAn.isa, v5, self);
  }

  v4 = [(HFTriggerBuilder *)self endEventBuildersDiff];
  [v4 addObject:v5];
}

- (void)updateEndEventBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerBuilder *)self endEventBuildersDiff];
  [v5 updateObject:v4];
}

- (void)removeEndEventBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerBuilder *)self endEventBuildersDiff];
  [v5 deleteObject:v4];
}

- (void)removeAllEndEventBuilders
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(HFTriggerBuilder *)self endEventBuilders];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HFTriggerBuilder *)self removeEndEventBuilder:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeServiceLikeItem:(id)a3
{
  v4 = a3;
  v5 = [v4 services];
  v6 = [v5 na_flatMap:&__block_literal_global_80_0];

  objc_opt_class();
  v7 = [v4 homeKitObject];
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
    v10 = [v9 services];
    v11 = [v10 na_flatMap:&__block_literal_global_84];
    v12 = [v6 setByAddingObjectsFromArray:v11];

    v6 = v12;
  }

  objc_opt_class();
  v13 = v4;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 mediaProfileContainer];

  v17 = [(HFTriggerBuilder *)self triggerActionSets];
  v18 = [v17 anonymousActionSetBuilder];

  v19 = [v18 actionBuilders];
  v20 = [v19 toSet];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42__HFTriggerBuilder_removeServiceLikeItem___block_invoke_3;
  v29[3] = &unk_277E00E18;
  v30 = v6;
  v31 = v9;
  v32 = v16;
  v21 = v18;
  v33 = v21;
  v22 = v6;
  v23 = v9;
  v24 = v16;
  v25 = [v20 na_map:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__HFTriggerBuilder_removeServiceLikeItem___block_invoke_91;
  v27[3] = &unk_277DF6A20;
  v28 = v21;
  v26 = v21;
  [v25 na_each:v27];
}

id __42__HFTriggerBuilder_removeServiceLikeItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __42__HFTriggerBuilder_removeServiceLikeItem___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 characteristic];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7)
    {
      v9 = v4;
      goto LABEL_23;
    }
  }

  v10 = [*(a1 + 40) matterNodeID];
  if (!v10 || (v11 = v10, [*(a1 + 40) matterNodeID], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", &unk_282524FC0), v12, v11, (v13 & 1) != 0))
  {
LABEL_16:
    objc_opt_class();
    v22 = v4;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = [v24 mediaProfiles];
    v26 = [MEMORY[0x277CBEB98] na_setWithSafeObject:*(a1 + 48)];
    v27 = [v25 na_setByRemovingObjectsFromSet:v26];

    if ([v27 count])
    {
      [v24 setMediaProfiles:v27];
      [*(a1 + 56) updateAction:v24];
      v9 = 0;
    }

    else
    {
      v9 = v24;
    }

    goto LABEL_23;
  }

  v14 = objc_opt_self();
  v15 = v4;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = [v17 accessory];
  v19 = [v18 uniqueIdentifier];
  v20 = [*(a1 + 40) uniqueIdentifier];
  v21 = [v19 isEqual:v20];

  if (!v21)
  {
LABEL_15:

    goto LABEL_16;
  }

  v9 = v15;

LABEL_23:

  return v9;
}

void __42__HFTriggerBuilder_removeServiceLikeItem___block_invoke_91(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionBuilders];
  [v4 deleteObject:v3];
}

- (void)setEndEvent:(id)a3
{
  v4 = a3;
  [(HFTriggerBuilder *)self removeAllEndEventBuilders];
  [(HFTriggerBuilder *)self addEndEventBuilder:v4];
}

- (NSArray)endEventBuilders
{
  v2 = [(HFTriggerBuilder *)self endEventBuildersDiff];
  v3 = [v2 toSet];
  v4 = [v3 allObjects];

  return v4;
}

- (BOOL)requiresHomeHub
{
  objc_opt_class();
  v3 = [(HFTriggerBuilder *)self trigger];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 triggerActivationState];
  return v6 == 1;
}

- (BOOL)requiresUpdatedHomeHub
{
  objc_opt_class();
  v3 = [(HFTriggerBuilder *)self trigger];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 triggerActivationState];
  return v6 == 2;
}

- (BOOL)areActionsAffectedByEndEvents
{
  v2 = [(HFTriggerBuilder *)self triggerActionSets];
  v3 = [v2 areActionsAffectedByEndEvents];

  return v3;
}

- (HFDurationEventBuilder)designatedDurationEventBuilder
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(HFTriggerBuilder *)self endEventBuilders];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          [v9 duration];
          if (v10 > 1.0)
          {
            if (!v5 || ([v5 duration], v12 = v11, objc_msgSend(v9, "duration"), v12 > v13))
            {
              v14 = v9;

              v5 = v14;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isShortcutOwned
{
  v3 = [(HFTriggerBuilder *)self triggerActionSets];
  v4 = [v3 isShortcutOwned];

  if (v4)
  {
    return 1;
  }

  v6 = [(HFTriggerBuilder *)self trigger];

  if (!v6)
  {
    return 0;
  }

  v7 = [(HFTriggerBuilder *)self trigger];
  v8 = [v7 hf_isShortcutOwned];

  return v8;
}

- (id)deleteTrigger
{
  v3 = [(HFTriggerBuilder *)self trigger];
  v4 = [(HFItemBuilder *)self home];
  v5 = [(HFTriggerBuilder *)self _deleteTrigger:v3 fromHome:v4];

  return v5;
}

- (id)validationError
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [(HFItemBuilder *)self verifyPropertyIsSet:@"name"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(HFTriggerBuilder *)self name];
    v4 = [(HFItemBuilder *)self verifyNameIsNotEmpty:v5];

    if (!v4)
    {
      v6 = [(HFTriggerBuilder *)self triggerActionSets];
      v7 = [v6 anonymousActionSetBuilder];
      v8 = [v7 actions];
      v9 = [v8 count];

      v10 = [(HFTriggerBuilder *)self triggerActionSets];
      v11 = [v10 namedActionSetsDiff];
      v12 = [v11 toSet];
      v13 = v9 | [v12 count];

      if (v13)
      {
        v15 = [(HFTriggerBuilder *)self triggerActionSets];
        v16 = [v15 anonymousActionSetBuilder];
        v17 = [v16 actions];
        v18 = [v17 na_map:&__block_literal_global_104_0];
        v4 = [v18 firstObject];

        if (v4)
        {
          v19 = v4;
        }
      }

      else
      {
        v22 = @"HFItemBuilderFailureReason";
        v23[0] = @"Triggers must have at least one action or action set";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D2C8B8] code:2 userInfo:v14];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)asEventTriggerBuilder
{
  objc_opt_class();
  v3 = self;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_lazy_performValidation
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v4 = MEMORY[0x277D2C900];
  v13[0] = v3;
  v5 = [(HFTriggerBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:v5];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v4 chainFutures:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HFTriggerBuilder__lazy_performValidation__block_invoke;
  v12[3] = &unk_277DF2D08;
  v12[4] = self;
  v9 = [v8 addFailureBlock:v12];

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void __43__HFTriggerBuilder__lazy_performValidation__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error validating trigger builder: %@. Error: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_commitUsingBuilders
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HFTriggerBuilder *)self validationError];
  if (v3)
  {
    v4 = [(HFTriggerBuilder *)self trigger];
    v5 = HFOperationEditTrigger;
    if (!v4)
    {
      v5 = HFOperationAddTrigger;
    }

    v6 = *v5;

    v7 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Error validating trigger builder: %@. Error: %@", buf, 0x16u);
    }

    v8 = MEMORY[0x277D2C900];
    v9 = [(HFTriggerBuilder *)self displayName];
    v10 = [v3 hf_errorWithOperationType:v6 failedItemName:v9];
    v11 = [v8 futureWithError:v10];
    goto LABEL_9;
  }

  v6 = [(HFItemBuilder *)self home];
  v12 = [(HFTriggerBuilder *)self getOrCreateTriggerBuilder];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 builder];
    v10 = [(HFTriggerBuilder *)self updateTriggerBuilder:v14];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__HFTriggerBuilder__commitUsingBuilders__block_invoke;
    v17[3] = &unk_277DFA5C0;
    v9 = v13;
    v18 = v9;
    v6 = v6;
    v19 = v6;
    v11 = [v10 flatMap:v17];

LABEL_9:
    goto LABEL_10;
  }

  v11 = [(HFTriggerBuilder *)self _legacyCommitItem];
  v9 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_legacyCommitItem
{
  v37[7] = *MEMORY[0x277D85DE8];
  v3 = [(HFTriggerBuilder *)self trigger];
  v4 = HFOperationEditTrigger;
  if (!v3)
  {
    v4 = HFOperationAddTrigger;
  }

  v25 = *v4;

  v5 = [(HFTriggerBuilder *)self trigger];
  v6 = v5 == 0;

  v7 = [(HFTriggerBuilder *)self _lazy_performValidation];
  v8 = v7;
  if (v6)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke;
    v36[3] = &unk_277DF2CE0;
    v36[4] = self;
    v10 = [v7 flatMap:{v36, v25}];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_2;
    v35[3] = &unk_277E00E40;
    v35[4] = self;
    v9 = [v10 flatMap:v35];
  }

  else
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_3;
    v34[3] = &unk_277DF2CE0;
    v34[4] = self;
    v9 = [v7 flatMap:{v34, v25}];
  }

  v11 = MEMORY[0x277D2C900];
  v37[0] = v9;
  v12 = [(HFTriggerBuilder *)self _updateAnonymousActionSet];
  v37[1] = v12;
  v13 = [(HFTriggerBuilder *)self _updateActionSets];
  v37[2] = v13;
  v14 = [(HFTriggerBuilder *)self _updateConditions];
  v37[3] = v14;
  v15 = [(HFTriggerBuilder *)self _updateEndEvents];
  v37[4] = v15;
  v16 = [(HFTriggerBuilder *)self _updateEnabledState];
  v37[5] = v16;
  v17 = [(HFTriggerBuilder *)self lazilyFinishCommitingTrigger];
  v37[6] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:7];
  v19 = [v11 chainFutures:v18];

  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_4;
  v31[3] = &unk_277DF3D10;
  objc_copyWeak(&v32, &location);
  v20 = [v19 flatMap:v31];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_5;
  v27[3] = &unk_277E00E68;
  v21 = v26;
  v28 = v21;
  v29 = self;
  objc_copyWeak(&v30, &location);
  v22 = [v20 recover:v27];
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id __37__HFTriggerBuilder__legacyCommitItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) nameIsConfigured] & 1) == 0)
  {
    [v3 setValue:0 forKey:@"configuredName"];
  }

  v4 = [*(a1 + 32) _commitAddTriggerToHome:v3];

  return v4;
}

id __37__HFTriggerBuilder__legacyCommitItem__block_invoke_3(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v3 = [*(a1 + 32) commitEditTrigger];
  v9[0] = v3;
  v4 = [*(a1 + 32) _updateName];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chainFutures:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __37__HFTriggerBuilder__legacyCommitItem__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained trigger];
  [WeakRetained _notifyObserversOfChangingTrigger:v5];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

id __37__HFTriggerBuilder__legacyCommitItem__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  v5 = *(a1 + 32);
  if (v5 == @"HFOperationAddTrigger")
  {
    v6 = [*(a1 + 40) deleteTrigger];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_6;
    v21[3] = &unk_277DFBE68;
    objc_copyWeak(&v22, (a1 + 48));
    v7 = [v6 addCompletionBlock:v21];

    objc_destroyWeak(&v22);
    v5 = *(a1 + 32);
    v4 = v7;
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [*(a1 + 40) displayName];
  v10 = [v3 hf_errorWithOperationType:v5 failedItemName:v9];
  v11 = [v8 futureWithError:v10];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_7;
  v19[3] = &unk_277DF2CE0;
  v12 = v11;
  v20 = v12;
  v13 = [v4 flatMap:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__HFTriggerBuilder__legacyCommitItem__block_invoke_8;
  v17[3] = &unk_277DF5038;
  v18 = v12;
  v14 = v12;
  v15 = [v13 recover:v17];

  return v15;
}

void __37__HFTriggerBuilder__legacyCommitItem__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTrigger:0];
  v1 = [WeakRetained triggerActionSets];
  v2 = [v1 anonymousActionSetBuilder];
  [v2 setActionSet:0];
}

- (id)commitItem
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x35uLL);
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HFTriggerBuilder *)self trigger];
  if (v6)
  {
    v7 = @"Committing";
  }

  else
  {
    v7 = @"Creating";
  }

  v8 = [(HFTriggerBuilder *)self name];
  v9 = [(HFTriggerBuilder *)self trigger];
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(HFTriggerBuilder *)self trigger];
    v12 = [v11 uniqueIdentifier];
    v13 = [v10 stringWithFormat:@" (%@)", v12];
    v14 = [v5 stringWithFormat:@"%@ trigger with name: %@%@", v7, v8, v13];
  }

  else
  {
    v14 = [v5 stringWithFormat:@"%@ trigger with name: %@%@", v7, v8, &stru_2824B1A78];
  }

  v15 = HFLogForCategory(0x35uLL);
  v16 = v15;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HFTriggerBuilderCommit", "%@", buf, 0xCu);
  }

  v17 = [(HFItemBuilder *)self home];
  if ([v17 areAutomationBuildersSupported])
  {
    v18 = [(HFTriggerBuilder(AutomationBuilders) *)self supportsHomeKitAutomationBuilders];

    if (v18)
    {
      v19 = [(HFTriggerBuilder *)self _commitUsingBuilders];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v19 = [(HFTriggerBuilder *)self _legacyCommitItem];
LABEL_15:
  v20 = v19;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __30__HFTriggerBuilder_commitItem__block_invoke;
  v25[3] = &unk_277DF7378;
  v26 = v14;
  v27 = v4;
  v25[4] = self;
  v21 = v14;
  v22 = [v20 addCompletionBlock:v25];

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

void __30__HFTriggerBuilder_commitItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x4AuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) name];
      v9 = [*(a1 + 32) trigger];
      v10 = [v9 uniqueIdentifier];
      v11 = v10;
      v12 = @"no-id";
      *buf = 138412802;
      v26 = v6;
      if (v10)
      {
        v12 = v10;
      }

      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Error %@ while committing %@ (%@)", buf, 0x20u);
    }
  }

  v13 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) name];
    v15 = [*(a1 + 32) trigger];
    v16 = [v15 uniqueIdentifier];
    v17 = v16;
    v18 = @"no-id";
    if (v16)
    {
      v18 = v16;
    }

    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Finished commiting trigger %@ (%@)", buf, 0x16u);
  }

  v19 = HFLogForCategory(0x35uLL);
  v20 = v19;
  v21 = *(a1 + 48);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v22 = *(a1 + 40);
    if (v6)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@" error: %@", v6];
    }

    else
    {
      v23 = &stru_2824B1A78;
    }

    *buf = 138412546;
    v26 = v22;
    v27 = 2112;
    v28 = v23;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v20, OS_SIGNPOST_INTERVAL_END, v21, "HFTriggerBuilderCommit", "%@%@", buf, 0x16u);
    if (v6)
    {
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_updateEnabledState
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HFTriggerBuilder__updateEnabledState__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __39__HFTriggerBuilder__updateEnabledState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__HFTriggerBuilder__updateEnabledState__block_invoke_2;
  v11[3] = &unk_277DF2C68;
  v11[4] = *(a1 + 32);
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v11];
  v5 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v6 = [v4 reschedule:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__HFTriggerBuilder__updateEnabledState__block_invoke_3;
  v9[3] = &unk_277DF50B0;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v9];
}

void __39__HFTriggerBuilder__updateEnabledState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 trigger];
  [v5 enable:objc_msgSend(*(a1 + 32) completionHandler:{"enabled"), v4}];
}

void __39__HFTriggerBuilder__updateEnabledState__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      v10 = [*(a1 + 32) enabled];
      v13 = 138412802;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to update enabled state for trigger with name:%@ enabled:%d Error: %@", &v13, 0x1Cu);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) name];
    v11 = [*(a1 + 32) enabled];
    v13 = 138412546;
    v14 = v9;
    v15 = 1024;
    v16 = v11;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Update enabled state for trigger with name:%@ enabled:%d", &v13, 0x12u);
    goto LABEL_6;
  }

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_updateAnonymousActionSet
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HFTriggerBuilder__updateAnonymousActionSet__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __45__HFTriggerBuilder__updateAnonymousActionSet__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) trigger];
  v5 = [*(a1 + 32) triggerActionSets];
  v6 = [v5 anonymousActionSetBuilder];
  [v6 setContainingTrigger:v4];

  v7 = [*(a1 + 32) triggerActionSets];
  v8 = [v7 anonymousActionSetBuilder];
  v9 = [v8 commitItem];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HFTriggerBuilder__updateAnonymousActionSet__block_invoke_2;
  v12[3] = &unk_277DF50B0;
  v12[4] = *(a1 + 32);
  v13 = v3;
  v10 = v3;
  v11 = [v9 addCompletionBlock:v12];
}

void __45__HFTriggerBuilder__updateAnonymousActionSet__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to update anonymous action set for trigger with name:%@ Error: %@", &v11, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) name];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updated anonymous action set for trigger with name:%@", &v11, 0xCu);
    goto LABEL_6;
  }

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_updateActionSets
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 triggerActionSets];
  v6 = [v5 namedActionSetsDiff];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_2;
  v13[3] = &unk_277E00E90;
  v14 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_142;
  v12[3] = &unk_277E00E90;
  v12[4] = v14;
  v7 = [v4 commitItemBuilderSetDiff:v6 addBlock:v13 deleteBlock:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_146;
  v10[3] = &unk_277DF50B0;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

id __37__HFTriggerBuilder__updateActionSets__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_3;
  v20[3] = &unk_277DF4150;
  v20[4] = *(a1 + 32);
  v5 = v3;
  v21 = v5;
  v6 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_4;
  v17[3] = &unk_277DF7060;
  v7 = v5;
  v8 = *(a1 + 32);
  v18 = v7;
  v19 = v8;
  v9 = [v6 addSuccessBlock:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_140;
  v14[3] = &unk_277DF2748;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = [v6 addFailureBlock:v14];

  return v6;
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 trigger];
  v5 = [*(a1 + 40) actionSet];
  [v6 addActionSet:v5 completionHandler:v4];
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) actionSet];
    v4 = [*(a1 + 40) name];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Added action set: %@ to trigger with name:%@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_140(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) actionSet];
    v7 = [*(a1 + 40) name];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to add action set: %@ to trigger with name:%@. Error: %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __37__HFTriggerBuilder__updateActionSets__block_invoke_142(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 actionSet];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [*(a1 + 32) home];
  v7 = [v6 actionSets];
  v8 = [v3 actionSet];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = MEMORY[0x277D2C900];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_2_143;
    v26[3] = &unk_277DF4150;
    v26[4] = *(a1 + 32);
    v11 = v3;
    v27 = v11;
    v12 = [v10 futureWithErrorOnlyHandlerAdapterBlock:v26];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_3_144;
    v23[3] = &unk_277DF7060;
    v13 = v11;
    v14 = *(a1 + 32);
    v24 = v13;
    v25 = v14;
    v15 = [v12 addSuccessBlock:v23];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__HFTriggerBuilder__updateActionSets__block_invoke_145;
    v20[3] = &unk_277DF2748;
    v16 = v13;
    v17 = *(a1 + 32);
    v21 = v16;
    v22 = v17;
    v18 = [v12 addFailureBlock:v20];
  }

  else
  {
LABEL_4:
    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v12;
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_2_143(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 trigger];
  v5 = [*(a1 + 40) actionSet];
  [v6 removeActionSet:v5 completionHandler:v4];
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_3_144(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) actionSet];
    v4 = [*(a1 + 40) name];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Removed action set: %@ to trigger with name:%@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_145(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) actionSet];
    v7 = [*(a1 + 40) name];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to remove set: %@ from trigger with name:%@. Error: %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __37__HFTriggerBuilder__updateActionSets__block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 triggerActionSets];
  [v7 resetActionSetBuilders];

  [*(a1 + 40) finishWithResult:v8 error:v6];
}

- (id)_updateName
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D2C900];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__HFTriggerBuilder__updateName__block_invoke;
  v5[3] = &unk_277DF4F68;
  objc_copyWeak(&v6, &location);
  v3 = [v2 lazyFutureWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __31__HFTriggerBuilder__updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__HFTriggerBuilder__updateName__block_invoke_2;
  v14[3] = &unk_277E00EB8;
  objc_copyWeak(&v15, (a1 + 32));
  v5 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__HFTriggerBuilder__updateName__block_invoke_3;
  v12[3] = &unk_277DFF118;
  objc_copyWeak(&v13, (a1 + 32));
  v6 = [v5 addSuccessBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__HFTriggerBuilder__updateName__block_invoke_147;
  v10[3] = &unk_277DF3860;
  objc_copyWeak(&v11, (a1 + 32));
  v7 = [v5 addFailureBlock:v10];
  v8 = [v3 completionHandlerAdapter];
  v9 = [v5 addCompletionBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v15);
}

void __31__HFTriggerBuilder__updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained trigger];
  v5 = [WeakRetained name];
  if ([WeakRetained nameIsConfigured])
  {
    v6 = [WeakRetained name];
    [v4 updateName:v5 configuredName:v6 completionHandler:v7];
  }

  else
  {
    [v4 updateName:v5 configuredName:0 completionHandler:v7];
  }
}

void __31__HFTriggerBuilder__updateName__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained name];
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = [WeakRetained nameIsConfigured];
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated trigger name:%@ configured:%{BOOL}d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __31__HFTriggerBuilder__updateName__block_invoke_147(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [WeakRetained name];
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = [WeakRetained nameIsConfigured];
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to update trigger name:%@ configured:%{BOOL}d. Error: %@", &v8, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_updateConditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HFTriggerBuilder__updateConditions__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __37__HFTriggerBuilder__updateConditions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) trigger];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) supportsConditions];

    if (v5)
    {
      v6 = [*(a1 + 32) conditionCollection];
      v7 = [v6 predicate];

      v8 = MEMORY[0x277D2C900];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __37__HFTriggerBuilder__updateConditions__block_invoke_2;
      v21[3] = &unk_277DF4150;
      v21[4] = *(a1 + 32);
      v9 = v7;
      v22 = v9;
      v10 = [v8 futureWithErrorOnlyHandlerAdapterBlock:v21];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __37__HFTriggerBuilder__updateConditions__block_invoke_3;
      v18[3] = &unk_277DF3180;
      v18[4] = *(a1 + 32);
      v19 = v9;
      v20 = v3;
      v11 = v9;
      v12 = [v10 addCompletionBlock:v18];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v13 = [*(a1 + 32) conditionCollection];
  v14 = [v13 conditions];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [*(a1 + 32) conditionCollection];
    v17 = [v16 conditions];
    NSLog(&cfstr_ConditionsAreC.isa, v17, *(a1 + 32));
  }

  [v3 finishWithNoResult];
LABEL_8:
}

void __37__HFTriggerBuilder__updateConditions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 trigger];
  [v5 updatePredicate:*(a1 + 40) completionHandler:v4];
}

void __37__HFTriggerBuilder__updateConditions__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      v10 = *(a1 + 40);
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to update predicate for trigger: %@. Predicate: %@. Error: %@", &v13, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) name];
    v11 = *(a1 + 40);
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updated predicate for trigger: %@. Predicate: %@", &v13, 0x16u);
    goto LABEL_6;
  }

  [*(a1 + 48) finishWithResult:v6 error:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_updateEndEvents
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HFTriggerBuilder__updateEndEvents__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __36__HFTriggerBuilder__updateEndEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) supportsEndEvents] && (objc_msgSend(*(a1 + 32), "trigger"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [*(a1 + 32) trigger];
    v7 = [*(a1 + 32) endEventBuilders];
    v8 = [v7 na_flatMap:&__block_literal_global_156_0];

    v9 = [v6 endEvents];
    v10 = [v8 isEqualToArray:v9];

    if (v10)
    {
      [v3 finishWithNoResult];
    }

    else
    {
      v14 = MEMORY[0x277D2C900];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __36__HFTriggerBuilder__updateEndEvents__block_invoke_3;
      v19[3] = &unk_277DF4150;
      v20 = v6;
      v21 = v8;
      v15 = [v14 futureWithErrorOnlyHandlerAdapterBlock:v19];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __36__HFTriggerBuilder__updateEndEvents__block_invoke_4;
      v17[3] = &unk_277DF50B0;
      v17[4] = *(a1 + 32);
      v18 = v3;
      v16 = [v15 addCompletionBlock:v17];
    }
  }

  else
  {
    v11 = [*(a1 + 32) endEventBuilders];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [*(a1 + 32) endEventBuilders];
      NSLog(&cfstr_EndEventsAreCu.isa, v13, *(a1 + 32));
    }

    [v3 finishWithNoResult];
  }
}

id __36__HFTriggerBuilder__updateEndEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 buildNewEventsFromCurrentState];
  v3 = [v2 allObjects];

  return v3;
}

void __36__HFTriggerBuilder__updateEndEvents__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      v10 = [*(a1 + 32) endEventBuilders];
      v16 = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to update end events for trigger: %@. Events: %@. Error: %@", &v16, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) name];
    v10 = [*(a1 + 32) endEventBuilders];
    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updated predicate for trigger: %@. Events: %@", &v16, 0x16u);
    goto LABEL_6;
  }

  v11 = [HFMutableSetDiff alloc];
  v12 = [*(a1 + 32) endEventBuildersDiff];
  v13 = [v12 toSet];
  v14 = [(HFMutableSetDiff *)v11 initWithFromSet:v13];
  [*(a1 + 32) setEndEventBuildersDiff:v14];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)commitCreateTrigger
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder.m" lineNumber:690 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTriggerBuilder commitCreateTrigger]", objc_opt_class()}];

  return 0;
}

- (id)commitEditTrigger
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder.m" lineNumber:696 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTriggerBuilder commitEditTrigger]", objc_opt_class()}];

  return 0;
}

- (id)naturalLanguageNameOfType:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFTriggerBuilder.m" lineNumber:702 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTriggerBuilder naturalLanguageNameOfType:]", objc_opt_class()}];

  return 0;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = [a3 nameType];

  return [(HFTriggerBuilder *)self naturalLanguageNameOfType:v4];
}

- (id)replaceCurrentTriggerWithTrigger:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFTriggerBuilder *)self trigger];
  v6 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 hf_prettyDescription];
    v8 = [v4 hf_prettyDescription];
    v9 = [(HFItemBuilder *)self home];
    *buf = 138412802;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Swapping current trigger:%@ for new trigger:%@ in home:%@", buf, 0x20u);
  }

  v10 = [v4 name];
  v11 = [(HFTriggerBuilder *)self _uniquelyRenameTrigger:v5 pendingReplaceByNewTriggerWithName:v10];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__HFTriggerBuilder_replaceCurrentTriggerWithTrigger___block_invoke;
  v22[3] = &unk_277DFA5C0;
  v22[4] = self;
  v23 = v4;
  v12 = v4;
  v13 = [v11 flatMap:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__HFTriggerBuilder_replaceCurrentTriggerWithTrigger___block_invoke_2;
  v20[3] = &unk_277DFA5C0;
  v20[4] = self;
  v21 = v5;
  v14 = v5;
  v15 = [v13 flatMap:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__HFTriggerBuilder_replaceCurrentTriggerWithTrigger___block_invoke_3;
  v19[3] = &unk_277DF2720;
  v19[4] = self;
  v16 = [v15 addSuccessBlock:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __53__HFTriggerBuilder_replaceCurrentTriggerWithTrigger___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 home];
  v4 = [v1 _deleteTrigger:v2 fromHome:v3];

  return v4;
}

- (void)_notifyObserversOfAddingTrigger:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HFTriggerBuilder__notifyObserversOfAddingTrigger___block_invoke;
  v7[3] = &unk_277DF3810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dispatchHomeObserverMessage:v7 sender:0];
}

void __52__HFTriggerBuilder__notifyObserversOfAddingTrigger___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didAddTrigger:*(a1 + 40)];
  }
}

- (void)_notifyObserversOfChangingTrigger:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HFTriggerBuilder__notifyObserversOfChangingTrigger___block_invoke;
  v7[3] = &unk_277DF3810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dispatchHomeObserverMessage:v7 sender:0];
}

void __54__HFTriggerBuilder__notifyObserversOfChangingTrigger___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateTrigger:*(a1 + 40)];
  }
}

- (void)_didReplaceBackingTrigger
{
  v3 = [(HFTriggerBuilder *)self triggerActionSets];
  [v3 resetAllActionSets];

  v8 = [MEMORY[0x277CBEB98] set];
  v4 = [(HFTriggerBuilder *)self endEventBuildersDiff];
  v5 = [v4 toSet];
  v6 = [HFSetDiff diffFromSet:v8 toSet:v5];
  v7 = [v6 mutableCopy];
  [(HFTriggerBuilder *)self setEndEventBuildersDiff:v7];
}

- (id)_uniquelyRenameTrigger:(id)a3 pendingReplaceByNewTriggerWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HFTriggerBuilder__uniquelyRenameTrigger_pendingReplaceByNewTriggerWithName___block_invoke;
  v13[3] = &unk_277DF6F70;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 futureWithErrorOnlyHandlerAdapterBlock:v13];

  return v11;
}

void __78__HFTriggerBuilder__uniquelyRenameTrigger_pendingReplaceByNewTriggerWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 home];
  v7 = [v6 triggers];
  v8 = [v3 setWithArray:v7];
  v12 = [v8 na_map:&__block_literal_global_169_0];

  v9 = [*(a1 + 40) name];
  v10 = [v12 setByAddingObject:*(a1 + 48)];
  v11 = [HFUtilities uniqueHomeKitNameForName:v9 allNames:v10];

  [*(a1 + 40) updateName:v11 completionHandler:v5];
}

- (id)_commitAddTriggerToHome:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke;
  v18[3] = &unk_277DF4150;
  v18[4] = self;
  v6 = v4;
  v19 = v6;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke_2;
  v16[3] = &unk_277DF7060;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v9 = [v7 addSuccessBlock:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke_2_172;
  v13[3] = &unk_277DF2748;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = [v7 addFailureBlock:v13];

  return v7;
}

void __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  [v5 addTrigger:*(a1 + 40) completionHandler:v4];
}

void __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTrigger:*(a1 + 40)];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) trigger];
    v4 = [v3 hf_prettyDescription];
    v5 = [*(a1 + 32) home];
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Added trigger:%@ home:%@", buf, 0x16u);
  }

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke_171;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v6 dispatchHomeObserverMessage:v8 sender:0];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke_171(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) trigger];
    [v5 home:v3 didAddTrigger:v4];
  }
}

void __44__HFTriggerBuilder__commitAddTriggerToHome___block_invoke_2_172(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) hf_prettyDescription];
    v7 = [*(a1 + 40) home];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to add trigger (error = %@) :%@ home:%@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_deleteTrigger:(id)a3 fromHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueIdentifier];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v6 hf_isBuilder];

    if ((v10 & 1) == 0)
    {
      v11 = MEMORY[0x277D2C900];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke;
      v24[3] = &unk_277DF4150;
      v25 = v7;
      v12 = v6;
      v26 = v12;
      v13 = [v11 futureWithErrorOnlyHandlerAdapterBlock:v24];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke_2;
      v21[3] = &unk_277DF7060;
      v14 = v12;
      v22 = v14;
      v23 = self;
      v15 = [v13 addSuccessBlock:v21];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke_2_176;
      v18[3] = &unk_277DF2748;
      v19 = v14;
      v20 = self;
      v16 = [v15 addFailureBlock:v18];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v16 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_7:

  return v16;
}

void __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) hf_prettyDescription];
    v4 = [*(a1 + 40) home];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Deleted trigger:%@ home:%@", buf, 0x16u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke_173;
  v9[3] = &unk_277DF3810;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  [v5 dispatchHomeObserverMessage:v9 sender:0];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke_173(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didRemoveTrigger:*(a1 + 40)];
  }
}

void __44__HFTriggerBuilder__deleteTrigger_fromHome___block_invoke_2_176(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) hf_prettyDescription];
    v7 = [*(a1 + 40) home];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to delete trigger (error = %@) :%@ home:%@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:v4];
  if (![(HFComparisonResult *)v5 containsCriticalDifference])
  {
    v6 = [(HFTriggerBuilder *)self triggerActionSets];
    v7 = [v4 triggerActionSets];
    v8 = [v6 compareToObject:v7];

    v9 = [HFContainedObjectDifference containedObjectDifferenceWithKey:@"triggerActionSets" comparisonResult:v8];
    [(HFComparisonResult *)v5 add:v9];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __48__HFTriggerBuilder_Comparison__compareToObject___block_invoke;
    v19 = &unk_277DF6EF8;
    v20 = self;
    v10 = v4;
    v21 = v10;
    v11 = [HFDifference difference:@"enabled" priority:1 withBlock:&v16];
    [(HFComparisonResult *)v5 add:v11, v16, v17, v18, v19, v20];

    v12 = [(HFTriggerBuilder *)self endEventBuilders];
    v13 = [v10 endEventBuilders];
    v14 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"endEvents" objectsA:v12 objectsB:v13];
    [(HFComparisonResult *)v5 add:v14];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HFTriggerBuilder *)self trigger];
  v4 = [v3 uniqueIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = [(HFTriggerBuilder *)self trigger];
  v6 = [v5 uniqueIdentifier];
  v7 = [v6 hash];

  return v7;
}

@end