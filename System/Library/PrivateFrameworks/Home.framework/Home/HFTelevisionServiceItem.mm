@interface HFTelevisionServiceItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
@end

@implementation HFTelevisionServiceItem

- (id)createControlItemsWithOptions:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v22 = @"controlItemPurpose";
  v23[0] = &unk_282523C40;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v7 = [[HFPowerStateControlItem alloc] initWithValueSource:v5 displayResults:v6];
  [v4 addObject:v7];
  v8 = [(HFServiceItem *)self service];
  v9 = [v8 hf_childServices];
  v10 = [v9 na_filter:&__block_literal_global_67];

  if ([v10 count])
  {
    v11 = [(HFServiceItem *)self service];
    v12 = [v10 setByAddingObject:v11];

    v13 = [(HFServiceItem *)self controlItemValueSourceForServices:v12];
    v14 = [HFTVInputControlItem alloc];
    v20 = @"controlItemPurpose";
    v21 = &unk_282523C58;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [(HFTVInputControlItem *)v14 initWithValueSource:v13 displayResults:v15];

    [v4 addObject:v16];
    v10 = v12;
  }

  v17 = [v4 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __57__HFTelevisionServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E78]];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCF750];
  v16[0] = *MEMORY[0x277CCF748];
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v8 = [v5 setWithArray:v7];

  v9 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v8 options:v4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HFTelevisionServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF5578;
  v14[4] = self;
  v15 = v4;
  v10 = v4;
  v11 = [v9 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __55__HFTelevisionServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = *MEMORY[0x277CCF748];
  v6 = [*(a1 + 32) service];
  v7 = [v4 responseForCharacteristicType:v5 inService:v6];

  v8 = [v7 valueWithExpectedClass:objc_opt_class()];
  v9 = [v3 standardResults];
  v10 = [v9 objectForKeyedSubscript:@"suspendedState"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v3 standardResults];
  v13 = [v12 mutableCopy];

  v14 = [v3 displayMetadata];
  v15 = [v14 error];

  if (!v15)
  {
    v16 = [v13 objectForKeyedSubscript:@"errorDescription"];

    if (!v16)
    {
      if (!v8)
      {
        goto LABEL_35;
      }

      v21 = [v3 readResponse];
      v22 = [v21 responseForCharacteristicType:*MEMORY[0x277CCF750]];
      v23 = [v22 valueWithExpectedClass:objc_opt_class()];

      v24 = [*(a1 + 32) service];
      v25 = [v24 hf_childServices];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __55__HFTelevisionServiceItem__subclass_updateWithOptions___block_invoke_2;
      v56[3] = &unk_277DF4020;
      v55 = v23;
      v57 = v55;
      v26 = [v25 na_filter:v56];

      v27 = [*(a1 + 40) objectForKeyedSubscript:HFItemUpdateOptionLogger];
      v52 = v27;
      if ([MEMORY[0x277CD1650] hf_isSuspendedStateSuspended:v11])
      {
        if (v27)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v28 = [v27 loggerActivity];
          os_activity_scope_enter(v28, &state);

          v29 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v59 = v11;
            v30 = "HFTelevision is suspended with state %lu";
            v31 = v29;
            v32 = OS_LOG_TYPE_DEFAULT;
            v33 = 12;
LABEL_22:
            _os_log_impl(&dword_20D9BF000, v31, v32, v30, buf, v33);
          }

LABEL_23:

          os_activity_scope_leave(&state);
          goto LABEL_24;
        }

        v47 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 134217984;
          *(state.opaque + 4) = v11;
          v48 = "HFTelevision is suspended with state %lu";
          v49 = v47;
          v50 = OS_LOG_TYPE_DEFAULT;
          v51 = 12;
LABEL_45:
          _os_log_impl(&dword_20D9BF000, v49, v50, v48, &state, v51);
        }

LABEL_46:

LABEL_24:
        v36 = [v26 anyObject];
        v54 = v26;
        if ([v8 BOOLValue] && v36)
        {
          v37 = [v36 name];
        }

        else
        {
          if ([v8 BOOLValue])
          {
            v38 = @"HFCharacteristicValuePowerStateOn";
          }

          else
          {
            v38 = @"HFCharacteristicValuePowerStateOff";
          }

          v37 = _HFLocalizedStringWithDefaultValue(v38, v38, 1);
        }

        v39 = v37;
        [v13 setObject:v37 forKeyedSubscript:@"description"];

        if (([v8 BOOLValue] & 1) == 0 && objc_msgSend(MEMORY[0x277CD1650], "hf_isSuspendedStateSuspended:", v11))
        {
          v40 = _HFLocalizedStringWithDefaultValue(@"HFTelevisionServiceDetailedErrorDescriptionSuspended", @"HFTelevisionServiceDetailedErrorDescriptionSuspended", 1);
          [v13 setObject:v40 forKeyedSubscript:@"persistentWarningDescription"];
        }

        v41 = [v13 objectForKeyedSubscript:@"description"];
        [v13 setObject:v41 forKeyedSubscript:@"controlDescription"];

        [v13 setObject:&unk_282523C70 forKeyedSubscript:@"controlSummaryStyle"];
        goto LABEL_35;
      }

      if ([v26 count])
      {
        if ([v26 count] < 2)
        {
          goto LABEL_24;
        }

        if (v27)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v34 = [v27 loggerActivity];
          os_activity_scope_enter(v34, &state);

          v29 = HFLogForCategory(0x2CuLL);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 0;
          v30 = "HFTelevision should have only one input source but currently has more than one";
LABEL_21:
          v31 = v29;
          v32 = OS_LOG_TYPE_ERROR;
          v33 = 2;
          goto LABEL_22;
        }

        v47 = HFLogForCategory(0x2CuLL);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        LOWORD(state.opaque[0]) = 0;
        v48 = "HFTelevision should have only one input source but currently has more than one";
      }

      else
      {
        if (v27)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v35 = [v27 loggerActivity];
          os_activity_scope_enter(v35, &state);

          v29 = HFLogForCategory(0x2CuLL);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 0;
          v30 = "HFTelevision should have an input source but currently has none";
          goto LABEL_21;
        }

        v47 = HFLogForCategory(0x2CuLL);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        LOWORD(state.opaque[0]) = 0;
        v48 = "HFTelevision should have an input source but currently has none";
      }

      v49 = v47;
      v50 = OS_LOG_TYPE_ERROR;
      v51 = 2;
      goto LABEL_45;
    }
  }

  if ([v15 category] != 1)
  {
    goto LABEL_35;
  }

  v17 = [*(a1 + 32) service];
  if ([v17 hasSleepDiscoveryMode])
  {
    v18 = [*(a1 + 32) service];
    v19 = [v18 lastKnownSleepDiscoveryMode];

    if (v19)
    {
      goto LABEL_35;
    }

    v17 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionNoResponse", @"HFServiceDescriptionNoResponse", 1);
    v20 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormErrorNotReachableEcoMode", @"HFServiceLongFormErrorNotReachableEcoMode", 1);
    [v13 setObject:v17 forKeyedSubscript:@"description"];
    [v13 setObject:v20 forKeyedSubscript:@"longErrorDescription"];
  }

LABEL_35:
  [*(a1 + 32) applyInflectionToDescriptions:v13];
  v42 = MEMORY[0x277D2C900];
  v43 = [HFItemUpdateOutcome outcomeWithResults:v13];
  v44 = [v42 futureWithResult:v43];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

uint64_t __55__HFTelevisionServiceItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = [a2 mediaSourceIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

@end