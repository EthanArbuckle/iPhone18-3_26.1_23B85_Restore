@interface HFActionSetSuggestionVendor
+ (NSSet)supportedBuiltInActionSetTypes;
- (HFActionSetSuggestionVendor)init;
- (HFActionSetSuggestionVendor)initWithHome:(id)a3 actionSet:(id)a4 filter:(id)a5;
- (id)_actionBuildersForBuiltInActionSetWithType:(id)a3 outDependentServiceTypes:(id *)a4;
- (id)_actionBuildersForCustomActionSet;
- (id)_actionBuildersForCustomActionSetWithService:(id)a3;
- (id)_actionBuildersToSetLightbulbBrightness:(double)a3;
- (id)_actionBuildersToSetLightbulbColorWithPaletteColor:(id)a3;
- (id)_actionBuildersToSetPowerState:(BOOL)a3 forServicesOfTypes:(id)a4;
- (id)_actionBuildersToSetTargetBlindsPositionOpen:(BOOL)a3;
- (id)_actionBuildersToSetTargetDoorState:(int64_t)a3 forServicesOfTypes:(id)a4;
- (id)_actionBuildersToSetTargetLockState:(int64_t)a3 forServicesOfTypes:(id)a4;
- (id)_actionBuildersToSetTargetSecuritySystemState:(int64_t)a3;
- (id)_controlItemValueSourceForService:(id)a3;
- (id)_deriveActionForPrimaryCharacteristic:(id)a3;
- (id)_deriveActionForPrimaryCharacteristic:(id)a3 candidateServices:(id)a4 targetThreshold:(double)a5;
- (id)_deriveActionForSecondaryCharacteristic:(id)a3 candidateServices:(id)a4;
- (id)buildWithOutDependentServiceTypes:(id *)a3;
@end

@implementation HFActionSetSuggestionVendor

+ (NSSet)supportedBuiltInActionSetTypes
{
  if (_MergedGlobals_298 != -1)
  {
    dispatch_once(&_MergedGlobals_298, &__block_literal_global_3_27);
  }

  v3 = qword_280E039D0;

  return v3;
}

void __61__HFActionSetSuggestionVendor_supportedBuiltInActionSetTypes__block_invoke_2()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF198];
  v7[0] = *MEMORY[0x277CCF1B0];
  v7[1] = v1;
  v2 = *MEMORY[0x277CCF180];
  v7[2] = *MEMORY[0x277CCF188];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_280E039D0;
  qword_280E039D0 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (HFActionSetSuggestionVendor)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_actionSet_filter_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFActionSetSuggestionVendor.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HFActionSetSuggestionVendor init]", v5}];

  return 0;
}

- (HFActionSetSuggestionVendor)initWithHome:(id)a3 actionSet:(id)a4 filter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HFActionSetSuggestionVendor;
  v12 = [(HFActionSetSuggestionVendor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_home, a3);
    objc_storeStrong(&v13->_actionSet, a4);
    if (v11)
    {
      v14 = [v11 services];
      services = v13->_services;
      v13->_services = v14;
    }

    else
    {
      services = [v9 accessories];
      v16 = [services na_flatMap:&__block_literal_global_14_10];
      v17 = v13->_services;
      v13->_services = v16;
    }
  }

  return v13;
}

id __61__HFActionSetSuggestionVendor_initWithHome_actionSet_filter___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_visibleServices];
  v3 = [v2 allObjects];

  return v3;
}

- (id)buildWithOutDependentServiceTypes:(id *)a3
{
  v5 = [(HFActionSetSuggestionVendor *)self actionSet];
  v6 = [v5 actionSetType];

  v7 = [HFActionSetBuilder alloc];
  v8 = [(HFActionSetSuggestionVendor *)self actionSet];
  v9 = [(HFActionSetSuggestionVendor *)self home];
  v10 = [(HFActionSetBuilder *)v7 initWithExistingObject:v8 inHome:v9];

  if ([v6 isEqualToString:*MEMORY[0x277CCF1A8]])
  {
    [(HFActionSetSuggestionVendor *)self _actionBuildersForCustomActionSet];
  }

  else
  {
    [(HFActionSetSuggestionVendor *)self _actionBuildersForBuiltInActionSetWithType:v6 outDependentServiceTypes:a3];
  }
  v11 = ;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HFActionSetSuggestionVendor_buildWithOutDependentServiceTypes___block_invoke;
  v14[3] = &unk_277DF6A20;
  v12 = v10;
  v15 = v12;
  [v11 na_each:v14];

  return v12;
}

- (id)_actionBuildersForBuiltInActionSetWithType:(id)a3 outDependentServiceTypes:(id *)a4
{
  v71[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB58] set];
  if ([v6 isEqualToString:*MEMORY[0x277CCF1B0]])
  {
    v9 = *MEMORY[0x277CD0E60];
    v71[0] = *MEMORY[0x277CD0EA0];
    v71[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v11 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetPowerState:1 forServicesOfTypes:v10];
    [v7 addObjectsFromArray:v11];

    v12 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetLightbulbBrightness:0.3];
    [v7 addObjectsFromArray:v12];

    v13 = +[HFColorPalette warmWhiteColor];
    v14 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetLightbulbColorWithPaletteColor:v13];
    [v7 addObjectsFromArray:v14];

    v15 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetBlindsPositionOpen:1];
    [v7 addObjectsFromArray:v15];

    v70 = *MEMORY[0x277CD0F60];
    v16 = MEMORY[0x277CBEA60];
    v17 = &v70;
    v18 = 1;
LABEL_3:
    v19 = [v16 arrayWithObjects:v17 count:v18];
    [v8 addObjectsFromArray:v19];
LABEL_12:

    goto LABEL_13;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCF198]])
  {
    v58 = a4;
    if (qword_280E039D8 != -1)
    {
      dispatch_once(&qword_280E039D8, &__block_literal_global_23_4);
    }

    v19 = qword_280E039E0;
    v20 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetPowerState:0 forServicesOfTypes:v19];
    [v7 addObjectsFromArray:v20];

    v69 = *MEMORY[0x277CD0E58];
    v21 = v69;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    v23 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetDoorState:1 forServicesOfTypes:v22];
    [v7 addObjectsFromArray:v23];

    v68 = *MEMORY[0x277CD0EB0];
    v24 = v68;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v26 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetLockState:1 forServicesOfTypes:v25];
    [v7 addObjectsFromArray:v26];

    v27 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetBlindsPositionOpen:0];
    [v7 addObjectsFromArray:v27];

    v28 = *MEMORY[0x277CD0ED0];
    v67[0] = *MEMORY[0x277CD0EA0];
    v67[1] = v28;
    v67[2] = v24;
    v67[3] = v21;
    v67[4] = *MEMORY[0x277CD0F60];
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:5];
    [v8 addObjectsFromArray:v29];

    a4 = v58;
    goto LABEL_12;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCF188]])
  {
    if (qword_280E039E8 != -1)
    {
      dispatch_once(&qword_280E039E8, &__block_literal_global_30_7);
    }

    v19 = qword_280E039F0;
    v30 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetPowerState:0 forServicesOfTypes:v19];
    [v7 addObjectsFromArray:v30];

    v66 = *MEMORY[0x277CD0E58];
    v57 = v66;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    v32 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetDoorState:1 forServicesOfTypes:v31];
    [v7 addObjectsFromArray:v32];

    v65 = *MEMORY[0x277CD0EB0];
    v33 = v65;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v35 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetLockState:1 forServicesOfTypes:v34];
    [v7 addObjectsFromArray:v35];

    v36 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetSecuritySystemState:1];
    [v7 addObjectsFromArray:v36];

    v37 = *MEMORY[0x277CD0ED0];
    v64[0] = *MEMORY[0x277CD0EA0];
    v64[1] = v37;
    v38 = *MEMORY[0x277CD0F40];
    v64[2] = *MEMORY[0x277CD0E40];
    v64[3] = v38;
    v64[4] = v33;
    v64[5] = v57;
    v64[6] = *MEMORY[0x277CD0ED8];
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:7];
    [v8 addObjectsFromArray:v39];

    goto LABEL_12;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCF180]])
  {
    v44 = *MEMORY[0x277CD0E60];
    v63[0] = *MEMORY[0x277CD0EA0];
    v43 = v63[0];
    v63[1] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
    v46 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetPowerState:1 forServicesOfTypes:v45];
    [v7 addObjectsFromArray:v46];

    v47 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetLightbulbBrightness:0.7];
    [v7 addObjectsFromArray:v47];

    v48 = +[HFColorPalette warmWhiteColor];
    v49 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetLightbulbColorWithPaletteColor:v48];
    [v7 addObjectsFromArray:v49];

    v62 = *MEMORY[0x277CD0E58];
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v51 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetDoorState:0 forServicesOfTypes:v50];
    [v7 addObjectsFromArray:v51];

    v52 = a4;
    v61 = *MEMORY[0x277CD0EB0];
    v53 = v61;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v55 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetLockState:0 forServicesOfTypes:v54];
    [v7 addObjectsFromArray:v55];

    v56 = [(HFActionSetSuggestionVendor *)self _actionBuildersToSetTargetSecuritySystemState:3];
    [v7 addObjectsFromArray:v56];

    v60[0] = v43;
    v60[1] = v53;
    a4 = v52;
    v60[2] = *MEMORY[0x277CD0ED8];
    v16 = MEMORY[0x277CBEA60];
    v17 = v60;
    v18 = 3;
    goto LABEL_3;
  }

LABEL_13:
  if (*a4)
  {
    *a4 = [v8 copy];
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __99__HFActionSetSuggestionVendor__actionBuildersForBuiltInActionSetWithType_outDependentServiceTypes___block_invoke_7;
  v59[3] = &unk_277DF4998;
  v59[4] = self;
  v40 = [v7 na_filter:v59];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

void __99__HFActionSetSuggestionVendor__actionBuildersForBuiltInActionSetWithType_outDependentServiceTypes___block_invoke_2()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0ED0];
  v5[0] = *MEMORY[0x277CD0EA0];
  v5[1] = v0;
  v1 = *MEMORY[0x277CD0E60];
  v5[2] = *MEMORY[0x277CD0F20];
  v5[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = qword_280E039E0;
  qword_280E039E0 = v2;
  v4 = *MEMORY[0x277D85DE8];
}

void __99__HFActionSetSuggestionVendor__actionBuildersForBuiltInActionSetWithType_outDependentServiceTypes___block_invoke_5()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0ED0];
  v6[0] = *MEMORY[0x277CD0EA0];
  v6[1] = v0;
  v1 = *MEMORY[0x277CD0F40];
  v6[2] = *MEMORY[0x277CD0E40];
  v6[3] = v1;
  v2 = *MEMORY[0x277CD0E60];
  v6[4] = *MEMORY[0x277CD0F20];
  v6[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = qword_280E039F0;
  qword_280E039F0 = v3;
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __99__HFActionSetSuggestionVendor__actionBuildersForBuiltInActionSetWithType_outDependentServiceTypes___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionSet];
  v5 = [v4 actions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__HFActionSetSuggestionVendor__actionBuildersForBuiltInActionSetWithType_outDependentServiceTypes___block_invoke_8;
  v9[3] = &unk_277DF6308;
  v10 = v3;
  v6 = v3;
  v7 = [v5 na_any:v9];

  return v7 ^ 1u;
}

- (id)_actionBuildersToSetPowerState:(BOOL)a3 forServicesOfTypes:(id)a4
{
  v6 = a4;
  v7 = [(HFActionSetSuggestionVendor *)self services];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HFActionSetSuggestionVendor__actionBuildersToSetPowerState_forServicesOfTypes___block_invoke;
  v11[3] = &unk_277DFF610;
  v12 = v6;
  v13 = self;
  v14 = a3;
  v8 = v6;
  v9 = [v7 na_map:v11];

  return v9;
}

HFCharacteristicWriteActionBuilder *__81__HFActionSetSuggestionVendor__actionBuildersToSetPowerState_forServicesOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 associatedServiceType];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 serviceType];
  }

  v7 = v6;

  if ([*(a1 + 32) containsObject:v7])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [v3 hf_characteristicOfType:*(*(&v19 + 1) + 8 * i)];
          v13 = v12;
          if (v12 && ([v12 hf_isWritable] & 1) != 0)
          {

            v14 = [HFCharacteristicWriteActionBuilder alloc];
            v15 = [*(a1 + 40) home];
            v9 = [(HFItemBuilder *)v14 initWithHome:v15];

            [(HFCharacteristicWriteActionBuilder *)v9 setCharacteristic:v13];
            v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
            [(HFCharacteristicWriteActionBuilder *)v9 setTargetValue:v16];

            v8 = v13;
            goto LABEL_17;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    v9 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_actionBuildersToSetLightbulbColorWithPaletteColor:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetSuggestionVendor *)self services];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HFActionSetSuggestionVendor__actionBuildersToSetLightbulbColorWithPaletteColor___block_invoke;
  v9[3] = &unk_277DFB4C0;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_flatMap:v9];

  return v7;
}

id __82__HFActionSetSuggestionVendor__actionBuildersToSetLightbulbColorWithPaletteColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serviceType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD0EA0]];

  if (v5)
  {
    v6 = [HFColorControlItem alloc];
    v7 = [*(a1 + 32) _controlItemValueSourceForService:v3];
    v8 = [(HFColorControlItem *)v6 initWithValueSource:v7 displayResults:0];

    v9 = [MEMORY[0x277CBEB98] setWithObject:v3];
    v10 = [(HFColorControlItem *)v8 supportsItemRepresentingServices:v9];

    v11 = 0;
    if (v10)
    {
      v12 = [*(a1 + 40) colorValue];
      v13 = [(HFColorControlItem *)v8 characteristicValuesForValue:v12];

      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __82__HFActionSetSuggestionVendor__actionBuildersToSetLightbulbColorWithPaletteColor___block_invoke_2;
      v19 = &unk_277DFF638;
      v20 = *(a1 + 32);
      v21 = v3;
      v14 = [v13 na_dictionaryByMappingValues:&v16];
      v11 = [v14 allValues];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

HFCharacteristicWriteActionBuilder *__82__HFActionSetSuggestionVendor__actionBuildersToSetLightbulbColorWithPaletteColor___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HFCharacteristicWriteActionBuilder alloc];
  v8 = [*(a1 + 32) home];
  v9 = [(HFItemBuilder *)v7 initWithHome:v8];

  v10 = [*(a1 + 40) hf_characteristicOfType:v6];

  [(HFCharacteristicWriteActionBuilder *)v9 setCharacteristic:v10];
  [(HFCharacteristicWriteActionBuilder *)v9 setTargetValue:v5];

  return v9;
}

- (id)_actionBuildersToSetLightbulbBrightness:(double)a3
{
  v5 = [(HFActionSetSuggestionVendor *)self services];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HFActionSetSuggestionVendor__actionBuildersToSetLightbulbBrightness___block_invoke;
  v8[3] = &unk_277DFF660;
  *&v8[5] = a3;
  v8[4] = self;
  v6 = [v5 na_map:v8];

  return v6;
}

HFCharacteristicWriteActionBuilder *__71__HFActionSetSuggestionVendor__actionBuildersToSetLightbulbBrightness___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serviceType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD0EA0]];

  if (v5)
  {
    v6 = [v3 hf_characteristicOfType:*MEMORY[0x277CCF788]];
    if ([v6 hf_isWritable])
    {
      v7 = [v6 metadata];
      v8 = [v7 hf_characteristicValueForPercentage:*(a1 + 40)];
      if (v8)
      {
        v9 = [HFCharacteristicWriteActionBuilder alloc];
        v10 = [*(a1 + 32) home];
        v11 = [(HFItemBuilder *)v9 initWithHome:v10];

        [(HFCharacteristicWriteActionBuilder *)v11 setCharacteristic:v6];
        [(HFCharacteristicWriteActionBuilder *)v11 setTargetValue:v8];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_actionBuildersToSetTargetDoorState:(int64_t)a3 forServicesOfTypes:(id)a4
{
  v6 = a4;
  v7 = [(HFActionSetSuggestionVendor *)self services];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HFActionSetSuggestionVendor__actionBuildersToSetTargetDoorState_forServicesOfTypes___block_invoke;
  v11[3] = &unk_277DFF688;
  v12 = v6;
  v13 = self;
  v14 = a3;
  v8 = v6;
  v9 = [v7 na_map:v11];

  return v9;
}

HFCharacteristicWriteActionBuilder *__86__HFActionSetSuggestionVendor__actionBuildersToSetTargetDoorState_forServicesOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 serviceType];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 hf_characteristicOfType:*MEMORY[0x277CCFB08]];
    v7 = v6;
    if (v6 && [v6 hf_isWritable])
    {
      v8 = [HFCharacteristicWriteActionBuilder alloc];
      v9 = [*(a1 + 40) home];
      v10 = [(HFItemBuilder *)v8 initWithHome:v9];

      [(HFCharacteristicWriteActionBuilder *)v10 setCharacteristic:v7];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      [(HFCharacteristicWriteActionBuilder *)v10 setTargetValue:v11];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_actionBuildersToSetTargetLockState:(int64_t)a3 forServicesOfTypes:(id)a4
{
  v6 = a4;
  v7 = [(HFActionSetSuggestionVendor *)self services];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HFActionSetSuggestionVendor__actionBuildersToSetTargetLockState_forServicesOfTypes___block_invoke;
  v11[3] = &unk_277DFF688;
  v12 = v6;
  v13 = self;
  v14 = a3;
  v8 = v6;
  v9 = [v7 na_map:v11];

  return v9;
}

HFCharacteristicWriteActionBuilder *__86__HFActionSetSuggestionVendor__actionBuildersToSetTargetLockState_forServicesOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 serviceType];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 hf_characteristicOfType:*MEMORY[0x277CCFB40]];
    v7 = v6;
    if (v6 && [v6 hf_isWritable])
    {
      v8 = [HFCharacteristicWriteActionBuilder alloc];
      v9 = [*(a1 + 40) home];
      v10 = [(HFItemBuilder *)v8 initWithHome:v9];

      [(HFCharacteristicWriteActionBuilder *)v10 setCharacteristic:v7];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      [(HFCharacteristicWriteActionBuilder *)v10 setTargetValue:v11];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_actionBuildersToSetTargetSecuritySystemState:(int64_t)a3
{
  v5 = [(HFActionSetSuggestionVendor *)self services];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HFActionSetSuggestionVendor__actionBuildersToSetTargetSecuritySystemState___block_invoke;
  v8[3] = &unk_277DFF660;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 na_map:v8];

  return v6;
}

HFCharacteristicWriteActionBuilder *__77__HFActionSetSuggestionVendor__actionBuildersToSetTargetSecuritySystemState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_characteristicOfType:*MEMORY[0x277CCFB60]];
  v4 = v3;
  if (v3 && [v3 hf_isWritable])
  {
    v5 = [v4 metadata];
    if (v5 && ([MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hf_isValidValue:", v6), v6, !v7))
    {
      v10 = 0;
    }

    else
    {
      v8 = [HFCharacteristicWriteActionBuilder alloc];
      v9 = [*(a1 + 32) home];
      v10 = [(HFItemBuilder *)v8 initWithHome:v9];

      [(HFCharacteristicWriteActionBuilder *)v10 setCharacteristic:v4];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
      [(HFCharacteristicWriteActionBuilder *)v10 setTargetValue:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_actionBuildersToSetTargetBlindsPositionOpen:(BOOL)a3
{
  v5 = [(HFActionSetSuggestionVendor *)self services];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HFActionSetSuggestionVendor__actionBuildersToSetTargetBlindsPositionOpen___block_invoke;
  v8[3] = &unk_277DFF6B0;
  v9 = a3;
  v8[4] = self;
  v6 = [v5 na_map:v8];

  return v6;
}

HFCharacteristicWriteActionBuilder *__76__HFActionSetSuggestionVendor__actionBuildersToSetTargetBlindsPositionOpen___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serviceType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD0F60]];

  if (v5)
  {
    v6 = [v3 hf_characteristicOfType:*MEMORY[0x277CCFB50]];
    v7 = v6;
    if (v6 && [v6 hf_isWritable])
    {
      v8 = *(a1 + 40);
      v9 = [v7 metadata];
      v10 = v9;
      if (v8)
      {
        [v9 maximumValue];
      }

      else
      {
        [v9 minimumValue];
      }
      v12 = ;

      if (!v12)
      {
        if (*(a1 + 40))
        {
          v13 = &unk_282525640;
        }

        else
        {
          v13 = &unk_282525650;
        }

        v12 = v13;
      }

      v14 = [HFCharacteristicWriteActionBuilder alloc];
      v15 = [*(a1 + 32) home];
      v11 = [(HFItemBuilder *)v14 initWithHome:v15];

      [(HFCharacteristicWriteActionBuilder *)v11 setCharacteristic:v7];
      [(HFCharacteristicWriteActionBuilder *)v11 setTargetValue:v12];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_actionBuildersForCustomActionSet
{
  v3 = [(HFActionSetSuggestionVendor *)self services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HFActionSetSuggestionVendor__actionBuildersForCustomActionSet__block_invoke;
  v6[3] = &unk_277DFF6D8;
  v6[4] = self;
  v4 = [v3 na_flatMap:v6];

  return v4;
}

- (id)_actionBuildersForCustomActionSetWithService:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceType];
  v6 = [HFActionSetServiceSuggestionMetadata metadataForServiceType:v5];

  if (v6)
  {
    v7 = [v6 primaryCharacteristicType];
    v8 = [v4 hf_characteristicOfType:v7];

    if (v8 && [v8 hf_isWritable])
    {
      v9 = [(HFActionSetSuggestionVendor *)self actionSet];
      v10 = [v9 hf_characteristicWriteActions];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke;
      v28[3] = &unk_277DFF440;
      v11 = v4;
      v29 = v11;
      v12 = [v10 na_any:v28];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v14 = [(HFActionSetSuggestionVendor *)self _deriveActionForPrimaryCharacteristic:v8];
        if (v14)
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
          if (([v14 isMutuallyExclusiveAction] & 1) == 0)
          {
            v16 = [v14 matchingExistingActions];
            v17 = [v16 na_map:&__block_literal_global_48_7];

            v18 = [v6 secondaryCharacteristicTypes];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke_3;
            v24[3] = &unk_277DFF700;
            v25 = v11;
            v26 = self;
            v27 = v17;
            v19 = v17;
            v20 = [v18 na_map:v24];
            [v15 addObjectsFromArray:v20];
          }

          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke_4;
          v22[3] = &unk_277DFF728;
          v22[4] = self;
          v23 = v11;
          v13 = [v15 na_map:v22];
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = [v3 service];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

id __76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 service];

  return v3;
}

id __76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) hf_characteristicOfType:a2];
  v4 = [*(a1 + 40) _deriveActionForSecondaryCharacteristic:v3 candidateServices:*(a1 + 48)];

  return v4;
}

HFCharacteristicWriteActionBuilder *__76__HFActionSetSuggestionVendor__actionBuildersForCustomActionSetWithService___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFCharacteristicWriteActionBuilder alloc];
  v5 = [*(a1 + 32) home];
  v6 = [(HFItemBuilder *)v4 initWithHome:v5];

  v7 = *(a1 + 40);
  v8 = [v3 characteristic];
  v9 = [v8 characteristicType];
  v10 = [v7 hf_characteristicOfType:v9];
  [(HFCharacteristicWriteActionBuilder *)v6 setCharacteristic:v10];

  v11 = [v3 targetValue];

  [(HFCharacteristicWriteActionBuilder *)v6 setTargetValue:v11];

  return v6;
}

- (id)_deriveActionForPrimaryCharacteristic:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HFActionSetSuggestionVendor *)self home];
  v7 = [v6 accessories];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic___block_invoke;
  v23[3] = &unk_277DFF750;
  v8 = v4;
  v24 = v8;
  v9 = [v7 na_map:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic___block_invoke_2;
  v22[3] = &unk_277DF4020;
  v22[4] = self;
  v10 = [v9 na_filter:v22];
  v11 = [v5 setWithArray:v10];

  v12 = [v8 service];
  v13 = [v12 accessory];
  v14 = [v13 room];
  v15 = [v14 uniqueIdentifier];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic___block_invoke_3;
  v20[3] = &unk_277DF4020;
  v21 = v15;
  v16 = v15;
  v17 = [v11 na_filter:v20];
  v18 = [(HFActionSetSuggestionVendor *)self _deriveActionForPrimaryCharacteristic:v8 candidateServices:v17 targetThreshold:0.5];
  if (!v18)
  {
    v18 = [(HFActionSetSuggestionVendor *)self _deriveActionForPrimaryCharacteristic:v8 candidateServices:v11 targetThreshold:0.5];
  }

  return v18;
}

id __69__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 service];
  v5 = [v4 serviceType];
  v6 = [v3 hf_serviceOfType:v5];

  return v6;
}

uint64_t __69__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 services];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

uint64_t __69__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 room];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (id)_deriveActionForPrimaryCharacteristic:(id)a3 candidateServices:(id)a4 targetThreshold:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HFActionSetSuggestionVendor *)self actionSet];
  v11 = [v10 hf_characteristicWriteActions];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __103__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic_candidateServices_targetThreshold___block_invoke;
  v29 = &unk_277DFF3D0;
  v12 = v9;
  v30 = v12;
  v13 = v8;
  v31 = v13;
  v14 = [v11 na_filter:&v26];

  if ([v14 count])
  {
    v15 = MEMORY[0x277CD1970];
    v16 = [v13 characteristicType];
    v17 = [v15 hf_suggestionVendorForCharacteristicType:v16];

    v18 = [v17 suggestedActionForCharacteristic:v13 candidateActions:v14];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 matchingExistingActions];
      v21 = [v20 count];
      v22 = v21 / [v12 count];

      if (v22 < a5)
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t __103__HFActionSetSuggestionVendor__deriveActionForPrimaryCharacteristic_candidateServices_targetThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristic];
  v6 = [v5 service];
  if ([v4 containsObject:v6])
  {
    v7 = [v3 characteristic];
    v8 = [v7 characteristicType];
    v9 = [*(a1 + 40) characteristicType];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_deriveActionForSecondaryCharacteristic:(id)a3 candidateServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 hf_isWritable])
  {
    v8 = [(HFActionSetSuggestionVendor *)self actionSet];
    v9 = [v8 hf_characteristicWriteActions];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __89__HFActionSetSuggestionVendor__deriveActionForSecondaryCharacteristic_candidateServices___block_invoke;
    v20 = &unk_277DFF3D0;
    v10 = v6;
    v21 = v10;
    v22 = v7;
    v11 = [v9 na_filter:&v17];

    if ([v11 count])
    {
      v12 = MEMORY[0x277CD1970];
      v13 = [v10 characteristicType];
      v14 = [v12 hf_suggestionVendorForCharacteristicType:v13];

      v15 = [v14 suggestedActionForCharacteristic:v10 candidateActions:v11];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __89__HFActionSetSuggestionVendor__deriveActionForSecondaryCharacteristic_candidateServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristic];
  v5 = [v4 service];
  v6 = [v5 serviceType];
  v7 = [*(a1 + 32) service];
  v8 = [v7 serviceType];
  if ([v6 isEqualToString:v8])
  {
    v9 = [v3 characteristic];
    v10 = [v9 characteristicType];
    v11 = [*(a1 + 32) characteristicType];
    if ([v10 isEqualToString:v11])
    {
      v12 = *(a1 + 40);
      v16 = [v3 characteristic];
      [v16 service];
      v13 = v17 = v9;
      v14 = [v12 containsObject:v13];

      v9 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_controlItemValueSourceForService:(id)a3
{
  v3 = a3;
  v4 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v5 = objc_alloc_init(HFNullValueSource);
  v6 = MEMORY[0x277CBEB98];
  v7 = [v3 characteristics];
  v8 = [v6 setWithArray:v7];
  v9 = [v3 hf_serviceDescriptor];

  v10 = [(HFSimpleAggregatedCharacteristicValueSource *)v4 initWithValueSource:v5 characteristics:v8 primaryServiceDescriptor:v9];

  return v10;
}

@end