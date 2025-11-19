@interface HFActionSetValueSource
+ (NAIdentity)na_identity;
- (BOOL)_isCurrentStateCharacteristic:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNaturalLightingEnabledForProfile:(id)a3;
- (BOOL)isNaturalLightingSupportedForProfile:(id)a3;
- (HFActionSetValueSource)initWithActionSet:(id)a3;
- (HFActionSetValueSource)initWithActionSetBuilder:(id)a3;
- (HFActionSetValueSourceDelegate)delegate;
- (id)_actionForCharacteristic:(id)a3;
- (id)_existingActionBuilderForCharacteristic:(id)a3;
- (id)_existingActionBuilderForLightProfile:(id)a3;
- (id)_existingActionBuilderForMediaProfile:(id)a3;
- (id)_targetValueForCharacteristic:(id)a3;
- (id)_valueForCurrentStateCharacteristic:(id)a3;
- (id)mediaProfileContainerForRouteID:(id)a3;
- (id)readValuesForCharacteristicTypes:(id)a3 inServices:(id)a4;
- (id)readValuesForCharacteristics:(id)a3;
- (id)writeNaturalLightEnabledState:(BOOL)a3 forProfile:(id)a4;
- (id)writePlaybackState:(int64_t)a3 playbackArchive:(id)a4 forRouteID:(id)a5;
- (id)writeValuesForCharacteristics:(id)a3;
- (int64_t)lastPlaybackStateForProfileForRouteID:(id)a3;
- (unint64_t)hash;
- (void)mediaValueUpdated:(id)a3 playbackState:(int64_t)a4 playbackArchive:(id)a5;
@end

@implementation HFActionSetValueSource

- (BOOL)isNaturalLightingSupportedForProfile:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFActionSetValueSource *)self actionSet];
    v7 = [v6 name];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Checking if natural light is supported for action set: '%@'  profile:%@", &v12, 0x16u);
  }

  v8 = [v4 settings];
  v9 = [v8 supportedFeatures];

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)isNaturalLightingEnabledForProfile:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self _existingActionBuilderForLightProfile:v4];
  v6 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HFActionSetValueSource *)self actionSet];
    v8 = [v7 name];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    v16 = 1024;
    v17 = [v5 naturalLightEnabled];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Checking if natural light is enabled for action set: '%@'  profile:%@ actionBuilder: %{BOOL}d", &v12, 0x1Cu);
  }

  v9 = [v5 naturalLightEnabled];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)writeNaturalLightEnabledState:(BOOL)a3 forProfile:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__HFActionSetValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke;
  v11[3] = &unk_277DF48D0;
  v11[4] = self;
  v12 = v6;
  v13 = a3;
  v8 = v6;
  v9 = [v7 futureWithBlock:v11];

  return v9;
}

void __94__HFActionSetValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _existingActionBuilderForLightProfile:v4];
  v7 = v6;
  if (v6)
  {
    [(HFNaturalLightingActionBuilder *)v6 setNaturalLightEnabled:*(a1 + 48)];
    v8 = [*(a1 + 32) actionSetBuilder];
    [v8 updateAction:v7];
    v9 = v7;
  }

  else
  {
    v10 = [HFNaturalLightingActionBuilder alloc];
    v11 = [*(a1 + 32) actionSetBuilder];
    v12 = [v11 home];
    v9 = [(HFItemBuilder *)v10 initWithHome:v12];

    [(HFNaturalLightingActionBuilder *)v9 setLightProfile:*(a1 + 40)];
    [(HFNaturalLightingActionBuilder *)v9 setNaturalLightEnabled:*(a1 + 48)];
    v8 = [*(a1 + 32) actionSetBuilder];
    [v8 addAction:v9];
  }

  v13 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v7 == 0;
    v15 = [*(a1 + 32) actionSet];
    v16 = [v15 name];
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    *buf = 138413314;
    v24 = v16;
    v25 = 1024;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v9;
    v31 = 1024;
    v32 = v14;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Updating natural light state for action set '%@' to %{BOOL}d for profile: %@ actionBuilder: %@ newAction: %{BOOL}d", buf, 0x2Cu);
  }

  v19 = +[HFHomeKitDispatcher sharedDispatcher];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__HFActionSetValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_76;
  v21[3] = &unk_277DF4970;
  v22 = *(a1 + 40);
  [v19 dispatchLightObserverMessage:v21 sender:0];

  [v5 finishWithNoResult];
  v20 = *MEMORY[0x277D85DE8];
}

void __94__HFActionSetValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_76(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 settings];
  [v3 lightProfile:v2 didUpdateSettings:v4];
}

- (id)_existingActionBuilderForLightProfile:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self actionSetBuilder];
  v6 = [v5 actions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HFActionSetValueSource_HFLightProfileValueSource___existingActionBuilderForLightProfile___block_invoke;
  v10[3] = &unk_277DF4998;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __91__HFActionSetValueSource_HFLightProfileValueSource___existingActionBuilderForLightProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 lightProfile];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HFActionSetValueSource)initWithActionSetBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFActionSetValueSource;
  v5 = [(HFActionSetValueSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HFActionSetValueSource *)v5 setActionSetBuilder:v4];
  }

  return v6;
}

- (HFActionSetValueSource)initWithActionSet:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFActionSetValueSource;
  v5 = [(HFActionSetValueSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HFActionSetValueSource *)v5 setActionSet:v4];
  }

  return v6;
}

- (id)readValuesForCharacteristics:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HFActionSetValueSource_readValuesForCharacteristics___block_invoke;
  v7[3] = &unk_277DFD228;
  v7[4] = self;
  v3 = [a3 na_map:v7];
  v4 = [[HFCharacteristicBatchReadResponse alloc] initWithReadResponses:v3 contextProvider:0];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

HFCharacteristicReadResponse *__55__HFActionSetValueSource_readValuesForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _targetValueForCharacteristic:v3];
  v5 = [HFCharacteristicReadResponse alloc];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(HFCharacteristicReadResponse *)v5 initWithCharacteristic:v3 readTraits:v6 value:v4 error:0];

  return v7;
}

- (id)readValuesForCharacteristicTypes:(id)a3 inServices:(id)a4
{
  v6 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __70__HFActionSetValueSource_readValuesForCharacteristicTypes_inServices___block_invoke;
  v16 = &unk_277DFB4C0;
  v17 = v6;
  v18 = self;
  v7 = v6;
  v8 = [a4 na_map:&v13];
  v9 = [v8 na_setByFlattening];

  v10 = [[HFCharacteristicBatchReadResponse alloc] initWithReadResponses:v9 contextProvider:0];
  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __70__HFActionSetValueSource_readValuesForCharacteristicTypes_inServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 characteristics];
  v5 = [v3 setWithArray:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HFActionSetValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_2;
  v10[3] = &unk_277DF6218;
  v11 = *(a1 + 32);
  v6 = [v5 na_filter:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HFActionSetValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_3;
  v9[3] = &unk_277DFD228;
  v9[4] = *(a1 + 40);
  v7 = [v6 na_map:v9];

  return v7;
}

uint64_t __70__HFActionSetValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

HFCharacteristicReadResponse *__70__HFActionSetValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _targetValueForCharacteristic:v3];
  v5 = [HFCharacteristicReadResponse alloc];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(HFCharacteristicReadResponse *)v5 initWithCharacteristic:v3 readTraits:v6 value:v4 error:0];

  return v7;
}

- (id)writeValuesForCharacteristics:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self actionSetBuilder];

  if (!v5)
  {
    NSLog(&cfstr_RequestToWrite.isa);
  }

  v6 = [(HFActionSetValueSource *)self actionSetBuilder];

  if (v6)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __56__HFActionSetValueSource_writeValuesForCharacteristics___block_invoke;
    v69[3] = &unk_277DF3810;
    v69[4] = self;
    v48 = v4;
    v8 = v4;
    v70 = v8;
    [v7 dispatchHomeObserverMessage:v69 sender:0];

    v9 = [MEMORY[0x277CBEB58] set];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v54 = v8;
    v10 = [v8 allCharacteristics];
    v11 = [v10 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v66;
      do
      {
        v14 = 0;
        v52 = v12;
        do
        {
          if (*v66 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v65 + 1) + 8 * v14);
          v16 = [v54 valueForCharacteristic:v15];
          if (v16)
          {
            v17 = [(HFActionSetValueSource *)self _existingActionBuilderForCharacteristic:v15];
            if (v17)
            {
              v18 = v17;
              v19 = [(HFActionSetValueSource *)self actionSetBuilder];
              [v19 updateAction:v18];
            }

            else
            {
              v20 = [HFCharacteristicWriteActionBuilder alloc];
              v21 = [(HFActionSetValueSource *)self actionSetBuilder];
              [v21 home];
              v22 = v13;
              v24 = v23 = v10;
              v18 = [(HFItemBuilder *)v20 initWithHome:v24];

              v10 = v23;
              v13 = v22;
              v12 = v52;

              [(HFCharacteristicWriteActionBuilder *)v18 setCharacteristic:v15];
              v19 = [(HFActionSetValueSource *)self actionSetBuilder];
              [v19 addAction:v18];
            }

            [(HFCharacteristicWriteActionBuilder *)v18 setTargetValue:v16];
            [v9 addObject:v18];
          }

          else
          {
            v18 = [v15 hf_prettyDescription];
            NSLog(&cfstr_NoValueSetForC.isa, v18);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v12);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v25 = [v54 allCharacteristics];
    v51 = [v25 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v51)
    {
      v26 = *v62;
      v27 = 0x277CD1000uLL;
      v49 = *v62;
      v50 = v25;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v62 != v26)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v61 + 1) + 8 * i);
          v30 = [v54 valueForCharacteristic:v29];
          v31 = [*(v27 + 2416) hf_powerStateCharacteristicTypes];
          v32 = [v29 characteristicType];
          v53 = v30;
          if ([v31 containsObject:v32])
          {
            v33 = [v30 isEqual:MEMORY[0x277CBEC28]];

            if (!v33)
            {
              goto LABEL_38;
            }

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v34 = [v29 service];
            v31 = [v34 characteristics];

            v35 = [v31 countByEnumeratingWithState:&v57 objects:v71 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v58;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v58 != v37)
                  {
                    objc_enumerationMutation(v31);
                  }

                  if (*(*(&v57 + 1) + 8 * j) != v29)
                  {
                    v39 = [(HFActionSetValueSource *)self _existingActionBuilderForCharacteristic:?];
                    if (v39)
                    {
                      v40 = [(HFActionSetValueSource *)self actionSetBuilder];
                      [v40 removeAction:v39];

                      [v9 addObject:v39];
                    }
                  }
                }

                v36 = [v31 countByEnumeratingWithState:&v57 objects:v71 count:16];
              }

              while (v36);
              v26 = v49;
              v25 = v50;
              v27 = 0x277CD1000;
            }
          }

          else
          {
          }

LABEL_38:
        }

        v51 = [v25 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v51);
    }

    v41 = +[HFHomeKitDispatcher sharedDispatcher];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __56__HFActionSetValueSource_writeValuesForCharacteristics___block_invoke_2;
    v55[3] = &unk_277DF3810;
    v55[4] = self;
    v56 = v54;
    [v41 dispatchHomeObserverMessage:v55 sender:0];

    if ([v9 count])
    {
      v42 = [(HFActionSetValueSource *)self delegate];
      v43 = objc_opt_respondsToSelector();

      if (v43)
      {
        v44 = [(HFActionSetValueSource *)self delegate];
        [v44 actionSetValueSource:self didUpdateValuesForActionBuilders:v9];
      }
    }

    v45 = [MEMORY[0x277D2C900] futureWithNoResult];

    v4 = v48;
  }

  else
  {
    v45 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

void __56__HFActionSetValueSource_writeValuesForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) actionSetBuilder];
    v4 = [v3 home];
    v5 = [*(a1 + 40) allCharacteristics];
    [v6 home:v4 willWriteValuesForCharacteristics:v5];
  }
}

void __56__HFActionSetValueSource_writeValuesForCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) actionSetBuilder];
    v4 = [v3 home];
    v5 = [*(a1 + 40) allCharacteristics];
    v6 = [MEMORY[0x277CBEB98] set];
    [v7 home:v4 didWriteValuesForCharacteristics:v5 failedCharacteristics:v6];
  }
}

- (void)mediaValueUpdated:(id)a3 playbackState:(int64_t)a4 playbackArchive:(id)a5
{
  v16 = a5;
  v8 = [a3 hf_mediaRouteIdentifier];
  v9 = [(HFActionSetValueSource *)self _existingActionBuilderForMediaProfile:v8];

  if (v9)
  {
    [v9 setTargetPlayState:a4];
    v10 = a4 == 1 ? v16 : 0;
    [v9 setPlaybackArchive:v10];
    v11 = [(HFActionSetValueSource *)self actionSetBuilder];
    [v11 updateAction:v9];

    v12 = [(HFActionSetValueSource *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(HFActionSetValueSource *)self delegate];
      v15 = [MEMORY[0x277CBEB98] setWithObject:v9];
      [v14 actionSetValueSource:self didUpdateValuesForActionBuilders:v15];
    }
  }
}

- (int64_t)lastPlaybackStateForProfileForRouteID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(HFActionSetValueSource *)self _existingActionBuilderForMediaProfile:?];
  v4 = [v3 targetPlayState];

  return v4;
}

- (id)mediaProfileContainerForRouteID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HFActionSetValueSource *)self _existingActionBuilderForMediaProfile:v4];
    v6 = [v5 mediaProfiles];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HFActionSetValueSource_mediaProfileContainerForRouteID___block_invoke;
    v9[3] = &unk_277DF60E8;
    v10 = v4;
    v7 = [v6 na_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __58__HFActionSetValueSource_mediaProfileContainerForRouteID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_mediaRouteIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)writePlaybackState:(int64_t)a3 playbackArchive:(id)a4 forRouteID:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__HFActionSetValueSource_writePlaybackState_playbackArchive_forRouteID___block_invoke;
    v13[3] = &unk_277DFCEE8;
    objc_copyWeak(v16, &location);
    v14 = v9;
    v16[1] = a3;
    v15 = v8;
    v11 = [v10 futureWithBlock:v13];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v11;
}

void __72__HFActionSetValueSource_writePlaybackState_playbackArchive_forRouteID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _existingActionBuilderForMediaProfile:*(a1 + 32)];

  v6 = [v5 mediaProfiles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HFActionSetValueSource_writePlaybackState_playbackArchive_forRouteID___block_invoke_2;
  v9[3] = &unk_277DF60E8;
  v10 = *(a1 + 32);
  v7 = [v6 na_firstObjectPassingTest:v9];

  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 mediaValueUpdated:v7 playbackState:*(a1 + 56) playbackArchive:*(a1 + 40)];

  [v3 finishWithNoResult];
}

uint64_t __72__HFActionSetValueSource_writePlaybackState_playbackArchive_forRouteID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hf_mediaRouteIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_existingActionBuilderForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self actionSetBuilder];
  v6 = [v5 actions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HFActionSetValueSource__existingActionBuilderForCharacteristic___block_invoke;
  v10[3] = &unk_277DF4998;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __66__HFActionSetValueSource__existingActionBuilderForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 characteristic];
    v5 = [v4 uniqueIdentifier];
    v6 = [*(a1 + 32) uniqueIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_existingActionBuilderForMediaProfile:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self actionSetBuilder];
  v6 = [v5 actions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HFActionSetValueSource__existingActionBuilderForMediaProfile___block_invoke;
  v10[3] = &unk_277DF4998;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __64__HFActionSetValueSource__existingActionBuilderForMediaProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mediaProfiles];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HFActionSetValueSource__existingActionBuilderForMediaProfile___block_invoke_2;
    v7[3] = &unk_277DF60E8;
    v8 = *(a1 + 32);
    v5 = [v4 na_any:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __64__HFActionSetValueSource__existingActionBuilderForMediaProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hf_mediaRouteIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_actionForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self actionSet];
  v6 = [v5 actions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HFActionSetValueSource__actionForCharacteristic___block_invoke;
  v10[3] = &unk_277DF6308;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __51__HFActionSetValueSource__actionForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 characteristic];
    v5 = [v4 uniqueIdentifier];
    v6 = [*(a1 + 32) uniqueIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_targetValueForCharacteristic:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFActionSetValueSource *)self _existingActionBuilderForCharacteristic:v4];
  v6 = v5;
  if (!v5 || ([v5 targetValue], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(HFActionSetValueSource *)self _actionForCharacteristic:v4];
    v9 = v8;
    if (v8)
    {
      v7 = [v8 targetValue];
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = *MEMORY[0x277CCF850];
  v28[0] = *MEMORY[0x277CCF868];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  if (!v7)
  {
    v14 = [v4 characteristicType];
    v15 = [v11 containsObject:v14];

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = [v4 service];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__HFActionSetValueSource__targetValueForCharacteristic___block_invoke;
    v25[3] = &unk_277DFD250;
    v26 = v11;
    v27 = self;
    v7 = [HFTargetRangeUtilities targetValueForService:v16 valueProvider:v25];

    if (!v7)
    {
      v7 = [v4 hf_defaultValue];
    }

    if (!v7)
    {
LABEL_15:
      v17 = MEMORY[0x277CD1970];
      v18 = [v4 characteristicType];
      v19 = [v17 hf_targetStateCharacteristicTypeForCurrentStateCharacteristicType:v18];

      if (!v19 || ([v4 service], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "hf_characteristicOfType:", v19), v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
      {

LABEL_21:
        if (![(HFActionSetValueSource *)self _isCurrentStateCharacteristic:v4]|| ([(HFActionSetValueSource *)self _valueForCurrentStateCharacteristic:v4], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v24 = [v4 value];

          if (v24)
          {
            [v4 value];
          }

          else
          {
            [v4 hf_defaultValue];
          }
          v7 = ;
        }

        goto LABEL_8;
      }

      v7 = [(HFActionSetValueSource *)self _targetValueForCharacteristic:v21];
      v22 = [v4 characteristicType];
      if ([v22 isEqualToString:*MEMORY[0x277CCF818]])
      {
        v23 = [v7 integerValue];

        if (v23 == 3)
        {

          v7 = &unk_2825242B8;
          goto LABEL_8;
        }
      }

      else
      {
      }

      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

id __56__HFActionSetValueSource__targetValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristicType];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) _targetValueForCharacteristic:v3];
  }

  return v6;
}

- (BOOL)_isCurrentStateCharacteristic:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCF810];
  v10 = *MEMORY[0x277CCF7F8];
  v11 = v3;
  v12 = *MEMORY[0x277CCF828];
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:3];
  v7 = [v5 characteristicType];

  LOBYTE(v4) = [v6 containsObject:v7];
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_valueForCurrentStateCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [v5 hf_characteristicOfType:*MEMORY[0x277CCF748]];
  if (v6)
  {
    objc_opt_class();
    v7 = [(HFActionSetValueSource *)self _targetValueForCharacteristic:v6];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 characteristicType];
  v11 = [v10 isEqualToString:*MEMORY[0x277CCF7F8]];

  if (v11)
  {
    v12 = &unk_2825242B8;
    if (v9)
    {
      v12 = &unk_2825242D0;
    }

    v13 = v12;
  }

  else
  {
    v14 = [v4 characteristicType];
    v15 = [v14 isEqualToString:*MEMORY[0x277CCF810]];

    if (v15)
    {
      v16 = MEMORY[0x277CCFB18];
    }

    else
    {
      v17 = [v4 characteristicType];
      v18 = [v17 isEqualToString:*MEMORY[0x277CCF828]];

      if (!v18)
      {
        v13 = 0;
        goto LABEL_30;
      }

      v16 = MEMORY[0x277CCFB30];
    }

    v19 = [v5 hf_characteristicOfType:*v16];
    objc_opt_class();
    v20 = [(HFActionSetValueSource *)self _targetValueForCharacteristic:v19];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      v23 = v9;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      v24 = [v22 integerValue];
      v25 = &unk_2825242E8;
      if (v24 == 1)
      {
        v25 = &unk_2825242D0;
      }

      if (v24 == 2)
      {
        v13 = &unk_282524300;
      }

      else
      {
        v13 = v25;
      }
    }

    else
    {
      v13 = &unk_2825242B8;
    }
  }

LABEL_30:

  return v13;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_273 != -1)
  {
    dispatch_once(&_MergedGlobals_273, &__block_literal_global_40_3);
  }

  v3 = qword_280E031C8;

  return v3;
}

void __37__HFActionSetValueSource_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_47_2];
  v2 = [v0 appendCharacteristic:&__block_literal_global_49_0];
  v3 = [v0 build];

  v4 = qword_280E031C8;
  qword_280E031C8 = v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (HFActionSetValueSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end