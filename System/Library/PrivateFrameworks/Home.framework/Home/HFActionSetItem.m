@interface HFActionSetItem
+ (BOOL)_value:(id)a3 isApproximatelyEqualToValue:(id)a4 forMinimumValue:(id)a5 maximumValue:(id)a6;
+ (id)_primaryStateForActionSet:(id)a3 valueSource:(id)a4 logger:(id)a5 fastInitialUpdate:(BOOL)a6;
+ (id)_valuesAtTargetStateForCharacteristics:(id)a3 targetValuesKeyedByCharacteristicIdentifier:(id)a4 valueSource:(id)a5 actionSet:(id)a6 logger:(id)a7;
+ (id)_valuesAtTargetStateForMediaActions:(id)a3 targetValuesKeyedByCharacteristicIdentifier:(id)a4 valueSource:(id)a5 actionSet:(id)a6 logger:(id)a7;
+ (id)_valuesAtTargetStateForNaturalLightActions:(id)a3 valueSource:(id)a4;
- (HFActionSetItem)init;
- (HFActionSetItem)initWithActionSet:(id)a3 actionSetItemStyle:(unint64_t)a4 valueSource:(id)a5;
- (NSString)description;
- (id)_mostCommonRoomForActionSet:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)actionSetOperation:(id)a3 errorFromError:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)executeActionSet;
- (id)rooms;
- (id)turnOffActionSet;
- (void)setServiceLikeItem:(id)a3;
@end

@implementation HFActionSetItem

- (HFActionSetItem)initWithActionSet:(id)a3 actionSetItemStyle:(unint64_t)a4 valueSource:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HFActionSetItem;
  v11 = [(HFActionSetItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionSet, a3);
    v12->_actionSetItemStyle = a4;
    objc_storeStrong(&v12->_valueSource, a5);
  }

  return v12;
}

- (HFActionSetItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithActionSet_actionSetItemStyle_valueSource_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFActionSetItem.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HFActionSetItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFActionSetItem *)self actionSet];
  v6 = [(HFActionSetItem *)self actionSetItemStyle];
  v7 = [(HFActionSetItem *)self valueSource];
  v8 = [v4 initWithActionSet:v5 actionSetItemStyle:v6 valueSource:v7];

  v9 = [(HFActionSetItem *)self serviceLikeItem];
  [v8 setServiceLikeItem:v9];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFActionSetItem *)self actionSet];
  v7 = [v6 hf_prettyDescription];
  v8 = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, v7, v8];

  return v9;
}

- (void)setServiceLikeItem:(id)a3
{
  if (self->_serviceLikeItem != a3)
  {
    v4 = a3;
    v5 = [HFActionSetValueSource alloc];
    v6 = [(HFActionSetItem *)self actionSet];
    v9 = [(HFActionSetValueSource *)v5 initWithActionSet:v6];

    v7 = [v4 copyWithValueSource:v9];
    serviceLikeItem = self->_serviceLikeItem;
    self->_serviceLikeItem = v7;
  }
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetItem *)self actionSet];
  v6 = [v4 objectForKeyedSubscript:HFItemUpdateOptionLogger];
  v7 = [v4 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v8 = [v7 BOOLValue];

  if (v5)
  {
    v39 = v8;
    v40 = v6;
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = objc_alloc_init(HFMutableItemUpdateOutcome);
    [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282525128 forKeyedSubscript:@"controlSummaryStyle"];
    v11 = [v5 name];

    if (v11)
    {
      v12 = [v5 name];
      [(HFMutableItemUpdateOutcome *)v10 setObject:v12 forKeyedSubscript:@"title"];
    }

    else
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v16 = [(HFActionSetItem *)self actionSet];
    v17 = [v16 hf_iconDescriptor];

    if (v17)
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:v17 forKeyedSubscript:@"icon"];
    }

    v18 = [(HFActionSetItem *)self actionSet];
    v19 = [v18 hf_iconTintColor];

    if (v19)
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:v19 forKeyedSubscript:@"tintColor"];
    }

    v20 = [(HFActionSetItem *)self _mostCommonRoomForActionSet:v5];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 uniqueIdentifier];
      [(HFMutableItemUpdateOutcome *)v10 setObject:v22 forKeyedSubscript:@"roomIdentifier"];
    }

    v23 = [v5 actions];
    v24 = [v23 count];

    if (!v24)
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v25 = MEMORY[0x277CCABB0];
    v26 = [v5 actions];
    v27 = [v25 numberWithBool:{objc_msgSend(v26, "na_any:", &__block_literal_global_225)}];
    [(HFMutableItemUpdateOutcome *)v10 setObject:v27 forKeyedSubscript:@"actionRequiresDeviceUnlock"];

    v28 = [(HFActionSetItem *)self actionSetItemStyle];
    v29 = &qword_20DD97000;
    if (v28 - 1 >= 2)
    {
      if (!v28)
      {
        [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282525140 forKeyedSubscript:@"state"];
        [v9 finishWithResult:v10];
      }
    }

    else
    {
      v30 = objc_opt_class();
      v31 = [(HFActionSetItem *)self valueSource];
      v32 = [v30 _primaryStateForActionSet:v5 valueSource:v31 logger:v40 fastInitialUpdate:v39];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_27;
      v50[3] = &unk_277E019B8;
      v51 = v10;
      v52 = self;
      v53 = v5;
      v54 = v9;
      v33 = [v32 addCompletionBlock:v50];

      v29 = &qword_20DD97000;
    }

    v44 = MEMORY[0x277D85DD0];
    v45 = v29[51];
    v34 = v45;
    v46 = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_2;
    v47 = &unk_277DF9660;
    v48 = self;
    v49 = v4;
    v35 = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_2(&v44);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = v34;
    v41[2] = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_3;
    v41[3] = &unk_277DF3068;
    v42 = v35;
    v43 = v10;
    v36 = v10;
    v37 = v35;
    v15 = [v9 flatMap:v41];

    v6 = v40;
  }

  else
  {
    NSLog(&cfstr_ActionsetMustB.isa);
    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v15 = [v13 futureWithError:v14];
  }

  return v15;
}

uint64_t __47__HFActionSetItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 characteristic];
    v4 = [v3 requiresDeviceUnlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_27(id *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    [a1[4] setObject:v15 forKeyedSubscript:@"state"];
  }

  v6 = [a1[5] valueSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [a1[5] valueSource];
    v9 = [v8 cachedErrorForExecutionOfActionSet:a1[6]];

    if (v9)
    {
      v10 = _HFLocalizedStringWithDefaultValue(@"HFActionSetItemDescriptionExecutionFailure", @"HFActionSetItemDescriptionExecutionFailure", 1);

      if (v10)
      {
        [a1[4] setObject:v10 forKeyedSubscript:@"description"];
      }
    }
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [a1[6] hf_affectedCharacteristics];
  [v11 unionSet:v12];
  v13 = [a1[6] hf_affectedMediaSessions];
  [v11 unionSet:v13];
  v14 = [a1[6] hf_affectedProfiles];
  [v11 unionSet:v14];
  if ([v11 count])
  {
    [a1[4] setObject:v11 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  [a1[7] finishWithResult:a1[4]];
}

id __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceLikeItem];

  if (v2)
  {
    v3 = [HFActionSetBuilder alloc];
    v4 = [*(a1 + 32) actionSet];
    v5 = [*(a1 + 32) actionSet];
    v6 = [v5 home];
    v7 = [(HFActionSetBuilder *)v3 initWithExistingObject:v4 inHome:v6];

    v8 = [[HFActionSetValueSource alloc] initWithActionSetBuilder:v7];
    v9 = [HFServiceActionItem alloc];
    v10 = [*(a1 + 32) actionSet];
    v11 = [v10 home];
    v12 = [*(a1 + 32) serviceLikeItem];
    v13 = [v12 copyWithValueSource:v8];
    v14 = [(HFServiceActionItem *)v9 initWithHome:v11 containingItem:v13];

    v15 = [*(a1 + 32) actionSet];
    v16 = [v15 actions];
    [(HFServiceActionItem *)v14 setActions:v16];

    v17 = [*(a1 + 40) mutableCopy];
    v18 = MEMORY[0x277CBEB98];
    v19 = [(HFAbstractBaseActionSetBuilder *)v7 actions];
    v20 = [v18 setWithArray:v19];
    [v17 setObject:v20 forKeyedSubscript:HFItemUpdateOptionActionBuilders];

    v21 = [v17 copy];
    v22 = [(HFItem *)v14 updateWithOptions:v21];
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v24 = [HFItemUpdateOutcome alloc];
    v7 = [(HFItemUpdateOutcome *)v24 initWithResults:MEMORY[0x277CBEC10]];
    v22 = [v23 futureWithResult:v7];
  }

  return v22;
}

id __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_4;
  v4[3] = &unk_277DF43A8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = [v1 flatMap:v4];

  return v2;
}

id __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"description"];

  if (!v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"description"];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"description"];
  }

  v6 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v6;
}

- (id)_mostCommonRoomForActionSet:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFActionSetItem *)self rooms];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v5 countForObject:v12];
        if (v13 > v8)
        {
          v14 = v13;
          v15 = v12;

          v8 = v14;
          v9 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)_value:(id)a3 isApproximatelyEqualToValue:(id)a4 forMinimumValue:(id)a5 maximumValue:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  objc_opt_class();
  v13 = v11;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  v16 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v15)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v20 = v9;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  objc_opt_class();
  v23 = v10;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (!v22 || !v25)
  {

LABEL_21:
    v33 = [v9 isEqual:v10];
    goto LABEL_22;
  }

  [v22 floatValue];
  v27 = v26;
  [v25 floatValue];
  v29 = vabds_f32(v27, v28);
  [v18 floatValue];
  v31 = v30;
  [v15 floatValue];
  v33 = v29 <= ((v31 - v32) * 0.02);

LABEL_22:
  return v33;
}

+ (id)_valuesAtTargetStateForCharacteristics:(id)a3 targetValuesKeyedByCharacteristicIdentifier:(id)a4 valueSource:(id)a5 actionSet:(id)a6 logger:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277CBEAA8];
  v17 = a3;
  v18 = [v16 date];
  v19 = [v14 lastExecutionDate];
  [v18 timeIntervalSinceDate:v19];
  v21 = v20 < 60.0;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke;
  v28[3] = &unk_277E01A08;
  v29 = v13;
  v30 = v12;
  v32 = v14;
  v33 = a1;
  v34 = v21;
  v31 = v15;
  v22 = v14;
  v23 = v15;
  v24 = v12;
  v25 = v13;
  v26 = [v17 na_map:v28];

  return v26;
}

id __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) readValuesForCharacteristics:a2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2;
  v11[3] = &unk_277E019E0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v14 = *(a1 + 72);
  v6 = *(a1 + 48);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = [v3 flatMap:v11];

  return v9;
}

id __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = a2;
  obj = [v35 allCharacteristics];
  v36 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (!v36)
  {
    v33 = 0;
    goto LABEL_25;
  }

  v33 = 0;
  v34 = *v39;
  *&v3 = 138413058;
  v31 = v3;
  do
  {
    v4 = 0;
    do
    {
      if (*v39 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v38 + 1) + 8 * v4);
      v6 = [v5 characteristicType];
      v7 = [v35 responseForCharacteristicType:v6];
      v8 = [v7 value];

      v9 = *(a1 + 32);
      v10 = [v5 uniqueIdentifier];
      v11 = [v9 objectForKeyedSubscript:v10];

      if (v11)
      {
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        NSLog(&cfstr_WeGotAReadResp.isa);
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v12 = *(a1 + 56);
      v13 = [v5 metadata];
      v14 = [v13 minimumValue];
      v15 = [v5 metadata];
      v16 = [v15 maximumValue];
      LODWORD(v12) = [v12 _value:v8 isApproximatelyEqualToValue:v11 forMinimumValue:v14 maximumValue:v16];

      if (v12)
      {
        ++v33;
        goto LABEL_17;
      }

LABEL_12:
      if (*(a1 + 64) == 1)
      {
        v17 = *(a1 + 40);
        if (v17)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v18 = [v17 loggerActivity];
          os_activity_scope_enter(v18, &state);

          v19 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [*(a1 + 48) name];
            v21 = [v5 hf_prettyDescription];
            *buf = v31;
            v43 = v20;
            v44 = 2112;
            v45 = v11;
            v46 = 2112;
            v47 = v8;
            v48 = 2112;
            v49 = v21;
            _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Action set %@ isn't on because targetValue = %@, but readValue = %@ for characteristic %@", buf, 0x2Au);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v22 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [*(a1 + 48) name];
            v24 = [v5 hf_prettyDescription];
            *buf = v31;
            v43 = v23;
            v44 = 2112;
            v45 = v11;
            v46 = 2112;
            v47 = v8;
            v48 = 2112;
            v49 = v24;
            _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Action set %@ isn't on because targetValue = %@, but readValue = %@ for characteristic %@", buf, 0x2Au);
          }
        }
      }

LABEL_17:

      ++v4;
    }

    while (v36 != v4);
    v25 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    v36 = v25;
  }

  while (v25);
LABEL_25:

  v26 = MEMORY[0x277D2C900];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
  v28 = [v26 futureWithResult:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_valuesAtTargetStateForMediaActions:(id)a3 targetValuesKeyedByCharacteristicIdentifier:(id)a4 valueSource:(id)a5 actionSet:(id)a6 logger:(id)a7
{
  v10 = a6;
  v11 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke;
  v16[3] = &unk_277E01A80;
  v17 = v11;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v11;
  v14 = [a3 na_flatMap:v16];

  return v14;
}

id __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaProfiles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2;
  v8[3] = &unk_277E01A58;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v12 = *(a1 + 48);
  v5 = v3;
  v6 = [v4 na_map:v8];

  return v6;
}

id __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_3;
  v12[3] = &unk_277E01A30;
  v13 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = *(a1 + 56);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v14 = v8;
  v15 = v7;
  v9 = v3;
  v10 = [v4 futureWithBlock:v12];

  return v10;
}

void __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_3(uint64_t a1, void *a2)
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mediaSession];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v6 loggerActivity];
    os_activity_scope_enter(v7, &v84);

    v8 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) name];
      v10 = [*(a1 + 32) hf_displayName];
      *buf = 138412802;
      v86 = v9;
      v87 = 2112;
      v88 = v10;
      v89 = 2112;
      v90 = v5;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@", buf, 0x20u);
    }

    os_activity_scope_leave(&v84);
  }

  else
  {
    v66 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [*(a1 + 48) name];
      v68 = [*(a1 + 32) hf_displayName];
      *buf = 138412802;
      v86 = v67;
      v87 = 2112;
      v88 = v68;
      v89 = 2112;
      v90 = v5;
      _os_log_impl(&dword_20D9BF000, v66, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@", buf, 0x20u);
    }
  }

  v11 = [*(a1 + 56) volume];

  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [v5 audioControl];
    [v13 volume];
    v14 = [v12 numberWithFloat:?];

    v15 = *(a1 + 64);
    v16 = objc_opt_class();
    v17 = MEMORY[0x277CCABB0];
    v18 = [*(a1 + 56) volume];
    [v18 floatValue];
    *&v20 = v19 / 100.0;
    v21 = [v17 numberWithFloat:v20];
    LOBYTE(v16) = [v16 _value:v21 isApproximatelyEqualToValue:v14 forMinimumValue:&unk_282525930 maximumValue:&unk_282525940];

    if ((v16 & 1) == 0)
    {
      v35 = *(a1 + 40);
      if (v35)
      {
        v36 = [v35 loggerActivity];
        os_activity_scope_enter(v36, &v84);

        v37 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [*(a1 + 48) name];
          v39 = [*(a1 + 32) hf_displayName];
          v40 = [*(a1 + 56) volume];
          *buf = 138413314;
          v86 = v38;
          v87 = 2112;
          v88 = v39;
          v89 = 2112;
          v90 = v5;
          v91 = 2112;
          v92 = v40;
          v93 = 2112;
          v94 = v14;
          _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ volume doesn't match (%@, %@)", buf, 0x34u);
        }

        os_activity_scope_leave(&v84);
        goto LABEL_24;
      }

      v69 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v70 = [*(a1 + 48) name];
      v73 = [*(a1 + 32) hf_displayName];
      v74 = [*(a1 + 56) volume];
      *buf = 138413314;
      v86 = v70;
      v87 = 2112;
      v88 = v73;
      v89 = 2112;
      v90 = v5;
      v91 = 2112;
      v92 = v74;
      v93 = 2112;
      v94 = v14;
      _os_log_impl(&dword_20D9BF000, v69, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ volume doesn't match (%@, %@)", buf, 0x34u);

      goto LABEL_52;
    }
  }

  if (![*(a1 + 56) state])
  {
    goto LABEL_19;
  }

  v22 = [*(a1 + 56) state];
  if (v22 == 1)
  {
    if ([v5 playbackState] == 1)
    {
      goto LABEL_13;
    }

LABEL_26:
    v41 = *(a1 + 40);
    if (v41)
    {
      v42 = [v41 loggerActivity];
      os_activity_scope_enter(v42, &v84);

      v43 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

LABEL_31:
        os_activity_scope_leave(&v84);
        goto LABEL_32;
      }

      v44 = [*(a1 + 48) name];
      v45 = [*(a1 + 32) hf_displayName];
      v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "playbackState")}];
      *buf = 138413314;
      v86 = v44;
      v87 = 2112;
      v88 = v45;
      v89 = 2112;
      v90 = v5;
      v91 = 2112;
      v92 = v46;
      v93 = 2112;
      v94 = v47;
      _os_log_impl(&dword_20D9BF000, v43, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback state doesn't match (%@, %@)", buf, 0x34u);

LABEL_29:
      goto LABEL_30;
    }

    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [*(a1 + 48) name];
      v70 = [*(a1 + 32) hf_displayName];
      v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
      v72 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "playbackState")}];
      *buf = 138413314;
      v86 = v69;
      v87 = 2112;
      v88 = v70;
      v89 = 2112;
      v90 = v5;
      v91 = 2112;
      v92 = v71;
      v93 = 2112;
      v94 = v72;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback state doesn't match (%@, %@)", buf, 0x34u);

LABEL_53:
LABEL_54:

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v22 != 2 || [v5 playbackState] == 1 || !objc_msgSend(v5, "playbackState"))
  {
    goto LABEL_26;
  }

LABEL_13:
  v23 = [*(a1 + 56) playbackArchive];

  if (v23)
  {
    v24 = [*(a1 + 56) playbackArchive];
    v25 = [v24 playbackSessionIdentifier];
    v26 = [v5 mediaUniqueIdentifier];
    v27 = [v25 isEqualToString:v26];

    if (v27)
    {
      v28 = [*(a1 + 56) playbackArchive];
      v29 = [v28 BOOLValueForOption:1];

      v30 = [v5 shuffleState];
      if ([v5 shuffleState] && ((v29 ^ (v30 == 1)) & 1) != 0)
      {
        v31 = [*(a1 + 56) playbackArchive];
        v32 = [v31 BOOLValueForOption:2];

        v33 = [v5 repeatState];
        if ([v5 repeatState] && ((v32 ^ (v33 == 1)) & 1) != 0)
        {
          goto LABEL_19;
        }

        v64 = *(a1 + 40);
        if (v64)
        {
          v65 = [v64 loggerActivity];
          os_activity_scope_enter(v65, &v84);

          v58 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [*(a1 + 48) name];
            v60 = [*(a1 + 32) hf_displayName];
            v61 = [MEMORY[0x277CCABB0] numberWithBool:v32];
            v62 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "repeatState")}];
            *buf = 138413314;
            v86 = v59;
            v87 = 2112;
            v88 = v60;
            v89 = 2112;
            v90 = v5;
            v91 = 2112;
            v92 = v61;
            v93 = 2112;
            v94 = v62;
            v63 = "Action set %@ media profile %@ media session %@ repeat doesn't match (%@, %@)";
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        v78 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = [*(a1 + 48) name];
          v80 = [*(a1 + 32) hf_displayName];
          v81 = [MEMORY[0x277CCABB0] numberWithBool:v32];
          v82 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "repeatState")}];
          *buf = 138413314;
          v86 = v79;
          v87 = 2112;
          v88 = v80;
          v89 = 2112;
          v90 = v5;
          v91 = 2112;
          v92 = v81;
          v93 = 2112;
          v94 = v82;
          v83 = "Action set %@ media profile %@ media session %@ repeat doesn't match (%@, %@)";
          goto LABEL_61;
        }
      }

      else
      {
        v56 = *(a1 + 40);
        if (v56)
        {
          v57 = [v56 loggerActivity];
          os_activity_scope_enter(v57, &v84);

          v58 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [*(a1 + 48) name];
            v60 = [*(a1 + 32) hf_displayName];
            v61 = [MEMORY[0x277CCABB0] numberWithBool:v29];
            v62 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "shuffleState")}];
            *buf = 138413314;
            v86 = v59;
            v87 = 2112;
            v88 = v60;
            v89 = 2112;
            v90 = v5;
            v91 = 2112;
            v92 = v61;
            v93 = 2112;
            v94 = v62;
            v63 = "Action set %@ media profile %@ media session %@ shuffle doesn't match (%@, %@)";
LABEL_43:
            _os_log_impl(&dword_20D9BF000, v58, OS_LOG_TYPE_DEFAULT, v63, buf, 0x34u);
          }

LABEL_44:

          goto LABEL_31;
        }

        v78 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = [*(a1 + 48) name];
          v80 = [*(a1 + 32) hf_displayName];
          v81 = [MEMORY[0x277CCABB0] numberWithBool:v29];
          v82 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "shuffleState")}];
          *buf = 138413314;
          v86 = v79;
          v87 = 2112;
          v88 = v80;
          v89 = 2112;
          v90 = v5;
          v91 = 2112;
          v92 = v81;
          v93 = 2112;
          v94 = v82;
          v83 = "Action set %@ media profile %@ media session %@ shuffle doesn't match (%@, %@)";
LABEL_61:
          _os_log_impl(&dword_20D9BF000, v78, OS_LOG_TYPE_DEFAULT, v83, buf, 0x34u);
        }
      }

      goto LABEL_32;
    }

    v50 = *(a1 + 40);
    if (v50)
    {
      v51 = [v50 loggerActivity];
      os_activity_scope_enter(v51, &v84);

      v43 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v44 = [*(a1 + 48) name];
      v45 = [*(a1 + 32) hf_displayName];
      v52 = [*(a1 + 56) playbackArchive];
      v53 = [v52 playbackSessionIdentifier];
      v54 = [v5 mediaUniqueIdentifier];
      v55 = [*(a1 + 56) playbackArchive];
      *buf = 138413570;
      v86 = v44;
      v87 = 2112;
      v88 = v45;
      v89 = 2112;
      v90 = v5;
      v91 = 2112;
      v92 = v53;
      v93 = 2112;
      v94 = v54;
      v95 = 2112;
      v96 = v55;
      _os_log_impl(&dword_20D9BF000, v43, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback archive doesn't match (%@, %@). mediaAction.playbackArchive %@", buf, 0x3Eu);

      goto LABEL_29;
    }

    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [*(a1 + 48) name];
      v70 = [*(a1 + 32) hf_displayName];
      v73 = [*(a1 + 56) playbackArchive];
      v75 = [v73 playbackSessionIdentifier];
      v76 = [v5 mediaUniqueIdentifier];
      v77 = [*(a1 + 56) playbackArchive];
      *buf = 138413570;
      v86 = v69;
      v87 = 2112;
      v88 = v70;
      v89 = 2112;
      v90 = v5;
      v91 = 2112;
      v92 = v75;
      v93 = 2112;
      v94 = v76;
      v95 = 2112;
      v96 = v77;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback archive doesn't match (%@, %@). mediaAction.playbackArchive %@", buf, 0x3Eu);

LABEL_52:
      goto LABEL_53;
    }

LABEL_24:

LABEL_32:
    v34 = 0;
    goto LABEL_33;
  }

LABEL_19:
  v34 = 1;
LABEL_33:
  v48 = [MEMORY[0x277CCABB0] numberWithBool:v34];
  [v4 finishWithResult:v48];

  v49 = *MEMORY[0x277D85DE8];
}

+ (id)_valuesAtTargetStateForNaturalLightActions:(id)a3 valueSource:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HFActionSetItem__valuesAtTargetStateForNaturalLightActions_valueSource___block_invoke;
  v9[3] = &unk_277E01AA8;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_map:v9];

  return v7;
}

id __74__HFActionSetItem__valuesAtTargetStateForNaturalLightActions_valueSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isNaturalLightingEnabled];
  v5 = *(a1 + 32);
  v6 = &unk_28253EC38;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 lightProfile];

  v10 = [v8 isNaturalLightingEnabledForProfile:v9];
  v11 = MEMORY[0x277D2C900];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v4 ^ v10 ^ 1u];
  v13 = [v11 futureWithResult:v12];

  return v13;
}

id __56__HFActionSetItem__valuesAtTargetStateForMatterActions___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a2 commands];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    LOBYTE(v6) = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (v6)
        {
          v6 = [*(*(&v13 + 1) + 8 * i) expectedValuesMatchCurrentState];
        }

        else
        {
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v10 = [v8 futureWithResult:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_primaryStateForActionSet:(id)a3 valueSource:(id)a4 logger:(id)a5 fastInitialUpdate:(BOOL)a6
{
  v6 = a6;
  v84 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6)
  {
    v13 = MEMORY[0x277D2C900];
    v14 = &unk_282525158;
LABEL_41:
    v56 = [v13 futureWithResult:v14];
    goto LABEL_44;
  }

  v15 = [v10 actions];
  v16 = [v15 count];

  if (!v16)
  {
    v13 = MEMORY[0x277D2C900];
    v14 = &unk_282525170;
    goto LABEL_41;
  }

  v68 = a1;
  v69 = v12;
  v70 = v11;
  v75 = [MEMORY[0x277CBEB38] dictionary];
  v74 = [MEMORY[0x277CBEB38] dictionary];
  v76 = [MEMORY[0x277CBEB18] array];
  v73 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v72 = v71 = v10;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v17 = [v10 actions];
  v18 = [v17 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_43;
  }

  v19 = v18;
  v20 = 0;
  v21 = *v80;
  v22 = 0x277CD1000uLL;
  v23 = 0x277CD1000uLL;
  v24 = 0x277CD1000uLL;
  v25 = 0x277CD1000uLL;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v80 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v27 = *(*(&v79 + 1) + 8 * i);
      v28 = *(v22 + 2472);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v27;
        v30 = [v29 characteristic];
        v31 = [v30 service];
        v32 = [v31 uniqueIdentifier];

        if (v30)
        {
          v33 = v32 == 0;
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          v34 = [v29 targetValue];

          if (v34)
          {
            v77 = [v75 na_objectForKey:v32 withDefaultValue:&__block_literal_global_114_2];
            [v77 addObject:v30];
            v35 = [v29 targetValue];
            [v30 uniqueIdentifier];
            v36 = v19;
            v37 = v21;
            v38 = v20 + 1;
            v40 = v39 = v17;
            [v74 setObject:v35 forKeyedSubscript:v40];

            v17 = v39;
            v20 = v38;
            v21 = v37;
            v19 = v36;

            v22 = 0x277CD1000;
          }
        }

        v25 = 0x277CD1000;

        v23 = 0x277CD1000;
        v24 = 0x277CD1000;
      }

      else
      {
        v41 = *(v23 + 3024);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = *(v23 + 3024);
          objc_opt_class();
          v43 = v27;
          if (objc_opt_isKindOfClass())
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }

          v29 = v44;

          if ([v29 state] || (objc_msgSend(v29, "volume"), v45 = objc_claimAutoreleasedReturnValue(), v45, v45))
          {
            v46 = [v29 mediaProfiles];
            v20 += [v46 count];
          }

          [v76 addObject:v29];
          v24 = 0x277CD1000;
          v25 = 0x277CD1000;
        }

        else
        {
          v47 = *(v24 + 2848);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = *(v24 + 2848);
            objc_opt_class();
            v49 = v27;
            v24 = 0x277CD1000;
            if (objc_opt_isKindOfClass())
            {
              v50 = v49;
            }

            else
            {
              v50 = 0;
            }

            v29 = v50;

            v25 = 0x277CD1000;
            ++v20;
            v51 = v73;
          }

          else
          {
            v52 = *(v25 + 2928);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v53 = *(v25 + 2928);
            objc_opt_class();
            v54 = v27;
            v24 = 0x277CD1000;
            if (objc_opt_isKindOfClass())
            {
              v55 = v54;
            }

            else
            {
              v55 = 0;
            }

            v29 = v55;

            v25 = 0x277CD1000;
            ++v20;
            v51 = v72;
          }

          [v51 addObject:v29];
        }
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v79 objects:v83 count:16];
  }

  while (v19);
LABEL_43:

  v57 = [MEMORY[0x277CBEB18] array];
  v58 = [v75 allValues];
  v12 = v69;
  v11 = v70;
  v10 = v71;
  v59 = [v68 _valuesAtTargetStateForCharacteristics:v58 targetValuesKeyedByCharacteristicIdentifier:v74 valueSource:v70 actionSet:v71 logger:v69];
  [v57 addObjectsFromArray:v59];

  v60 = [v68 _valuesAtTargetStateForMediaActions:v76 targetValuesKeyedByCharacteristicIdentifier:v74 valueSource:v70 actionSet:v71 logger:v69];
  [v57 addObjectsFromArray:v60];

  v61 = [v68 _valuesAtTargetStateForNaturalLightActions:v73 valueSource:v70];
  [v57 addObjectsFromArray:v61];

  v62 = [v68 _valuesAtTargetStateForMatterActions:v72];
  [v57 addObjectsFromArray:v62];

  v63 = MEMORY[0x277D2C900];
  v64 = [MEMORY[0x277D2C938] immediateScheduler];
  v65 = [v63 combineAllFutures:v57 ignoringErrors:1 scheduler:v64];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __82__HFActionSetItem__primaryStateForActionSet_valueSource_logger_fastInitialUpdate___block_invoke_2;
  v78[3] = &__block_descriptor_40_e27___NAFuture_16__0__NSArray_8l;
  v78[4] = v20;
  v56 = [v65 flatMap:v78];

LABEL_44:
  v66 = *MEMORY[0x277D85DE8];

  return v56;
}

id __82__HFActionSetItem__primaryStateForActionSet_valueSource_logger_fastInitialUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        v10 = v9;
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v6 += [v12 integerValue];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == *(a1 + 32))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = MEMORY[0x277D2C900];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v16 = [v14 futureWithResult:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)rooms
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = [(HFActionSetItem *)self actionSet];
  v5 = [v4 actions];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    v9 = 0x277CD1000uLL;
    v10 = 0x277CD1000uLL;
    v32 = *v46;
    do
    {
      v11 = 0;
      v33 = v7;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        v13 = *(v9 + 2472);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 characteristic];
          v15 = [v14 service];
          v16 = [v15 accessory];
          v17 = [v16 room];
          [v3 na_safeAddObject:v17];
        }

        else
        {
          v18 = *(v10 + 3024);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          v14 = v12;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v15 = [v14 mediaProfiles];
          v19 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v19)
          {
            v20 = v19;
            v34 = v14;
            v35 = v11;
            v21 = *v42;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v42 != v21)
                {
                  objc_enumerationMutation(v15);
                }

                v23 = *(*(&v41 + 1) + 8 * i);
                v37 = 0u;
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v24 = [v23 accessories];
                v25 = [v24 countByEnumeratingWithState:&v37 objects:v49 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v38;
                  do
                  {
                    for (j = 0; j != v26; ++j)
                    {
                      if (*v38 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = [*(*(&v37 + 1) + 8 * j) room];
                      [v3 na_safeAddObject:v29];
                    }

                    v26 = [v24 countByEnumeratingWithState:&v37 objects:v49 count:16];
                  }

                  while (v26);
                }
              }

              v20 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v20);
            v8 = v32;
            v7 = v33;
            v9 = 0x277CD1000;
            v10 = 0x277CD1000;
            v14 = v34;
            v11 = v35;
          }
        }

LABEL_25:
        ++v11;
      }

      while (v11 != v7);
      v7 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v7);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)executeActionSet
{
  v3 = [(HFActionSetItem *)self valueSource];
  v4 = objc_opt_respondsToSelector();

  v5 = MEMORY[0x277D2C900];
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(&location, self);
    v7 = [(HFActionSetItem *)self valueSource];
    v8 = [(HFActionSetItem *)self actionSet];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__HFActionSetItem_executeActionSet__block_invoke;
    v12[3] = &unk_277DF8400;
    objc_copyWeak(&v14, &location);
    v9 = v6;
    v13 = v9;
    [v7 executeActionSet:v8 completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
    v9 = [v5 futureWithError:v10];
  }

  return v9;
}

void __35__HFActionSetItem_executeActionSet__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (v7)
  {
    v6 = [WeakRetained actionSetOperation:@"HFOperationExecuteActionSet" errorFromError:v7];
    [v5 finishWithError:v6];
  }

  else
  {
    [v5 finishWithNoResult];
  }
}

- (id)turnOffActionSet
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = [MEMORY[0x277CBEB58] set];
  [MEMORY[0x277CBEB58] set];
  v29 = v28 = self;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [(HFActionSetItem *)self actionSet];
  v4 = [v3 actions];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 characteristic];
          v12 = [v10 targetValue];
          v13 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
          v14 = [v11 characteristicType];
          if ([v13 containsObject:v14])
          {
            v15 = [v12 isEqual:MEMORY[0x277CBEC38]];

            if (v15)
            {
              [v30 addObject:v11];
            }
          }

          else
          {
          }

          goto LABEL_18;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        objc_opt_class();
        v16 = v9;
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v10 = v17;

        if ([v10 state] == 1)
        {
          v11 = [v10 mediaProfiles];
          [v29 unionSet:v11];
LABEL_18:
        }
      }

      v6 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v6);
  }

  v18 = [(HFActionSetItem *)v28 actionSet];
  v19 = [v18 home];
  v20 = [v19 hf_characteristicValueManager];

  v21 = MEMORY[0x277D2C900];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __35__HFActionSetItem_turnOffActionSet__block_invoke;
  v32[3] = &unk_277DFD1F8;
  v33 = v30;
  v34 = v29;
  v35 = v20;
  v36 = v28;
  v22 = v20;
  v23 = v29;
  v24 = v30;
  v25 = [v21 futureWithBlock:v32];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __35__HFActionSetItem_turnOffActionSet__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] na_map:&__block_literal_global_128];
  if ([a1[5] count])
  {
    v5 = [objc_alloc(MEMORY[0x277CD1BD0]) initWithMediaProfiles:a1[5] playbackState:2 volume:0 playbackArchive:0];
    v6 = [v4 setByAddingObject:v5];

    v4 = v6;
  }

  if ([v4 count])
  {
    [a1[6] beginTransactionWithReason:@"HFActionSetItemTransactionReasonCounterActionsExecution"];
    objc_initWeak(&location, a1[7]);
    v7 = [a1[6] executeActions:v4];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__HFActionSetItem_turnOffActionSet__block_invoke_3;
    v9[3] = &unk_277DF68C0;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    v8 = [v7 addCompletionBlock:v9];

    [a1[6] commitTransactionWithReason:@"HFActionSetItemTransactionReasonCounterActionsExecution"];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

id __35__HFActionSetItem_turnOffActionSet__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD19A8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithCharacteristic:v3 targetValue:MEMORY[0x277CBEC28]];

  return v5;
}

void __35__HFActionSetItem_turnOffActionSet__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8 = [WeakRetained actionSetOperation:@"HFOperationExecuteActionSet" errorFromError:v5];

  [v7 finishWithResult:v6 error:v8];
}

- (id)actionSetOperation:(id)a3 errorFromError:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CBEB38];
    v9 = a3;
    v10 = [v8 dictionary];
    [v10 setObject:v9 forKeyedSubscript:@"HFErrorUserInfoOperationKey"];

    v11 = [(HFItem *)self latestResults];
    v12 = [v11 objectForKeyedSubscript:@"title"];

    if (v12)
    {
      v17 = @"HFErrorHandlerOptionFailedItemName";
      v18[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [v10 setObject:v13 forKeyedSubscript:@"HFErrorUserInfoOptionsKey"];
    }

    v14 = [v7 hf_errorWithAddedUserInfo:v10];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end