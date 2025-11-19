@interface HMHealthKitUtilities
+ (id)frequencyBins;
+ (id)frequencyToHearingDecibelLevelMapFromAudiogram:(id)a3;
+ (id)requiredFrequencyBins;
+ (id)sharedInstance;
- (BOOL)_isAudiogramValid:(id)a3;
- (BOOL)_updateHMRegionStatusFromFeatureStatus:(id)a3 featureIdentifier:(id)a4;
- (HMHealthKitUtilities)init;
- (unsigned)_regionSupportStatusForFeatureID:(id)a3;
- (unsigned)getRegionSupportStatusForFeatureID:(id)a3;
- (void)_activate;
- (void)_audiogramsQueryHandler:(id)a3 results:(id)a4 error:(id)a5;
- (void)_invalidate;
- (void)_registerForRegionStatusUpdatesWithFeatureIdentifier:(id)a3;
- (void)_startAudiogramQuery;
- (void)activate;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)invalidate;
- (void)startAudiogramQuery;
- (void)updateHMSettingsStruct:(id *)a3 fromAudiogram:(id)a4;
@end

@implementation HMHealthKitUtilities

- (void)_startAudiogramQuery
{
  v3 = [MEMORY[0x277CCD720] audiogramSampleType];
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMHealthKitUtilities__startAudiogramQuery__block_invoke;
  v7[3] = &unk_2796F0190;
  v7[4] = self;
  v6 = [v5 initWithSampleType:v3 predicate:0 limit:0 sortDescriptors:0 resultsHandler:v7];
  if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
  {
    [HMHealthKitUtilities _startAudiogramQuery];
  }

  [v4 executeQuery:v6];
}

+ (id)sharedInstance
{
  if (sharedInstance_sOnce_0 != -1)
  {
    +[HMHealthKitUtilities sharedInstance];
  }

  v3 = sharedInstance_sSelf_0;

  return v3;
}

- (void)startAudiogramQuery
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_audiogramQueryInProgress)
  {
    [(HMHealthKitUtilities *)self _startAudiogramQuery];
    self->_audiogramQueryInProgress = 1;
  }
}

void __44__HMHealthKitUtilities__startAudiogramQuery__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HMHealthKitUtilities__startAudiogramQuery__block_invoke_2;
  v15[3] = &unk_2796F0168;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
  *(*(a1 + 32) + 9) = 0;
}

+ (id)frequencyBins
{
  v2 = frequencyBins_frequencyBins;
  if (!frequencyBins_frequencyBins)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_286439C70, &unk_286439C80, &unk_286439C90, &unk_286439CA0, &unk_286439CB0, &unk_286439CC0, &unk_286439CD0, &unk_286439CE0, 0}];
    v4 = frequencyBins_frequencyBins;
    frequencyBins_frequencyBins = v3;

    v2 = frequencyBins_frequencyBins;
  }

  return v2;
}

+ (id)frequencyToHearingDecibelLevelMapFromAudiogram:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = [v3 sensitivityPoints];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HMHealthKitUtilities_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke;
    v9[3] = &unk_2796F00F0;
    v10 = v3;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    [v5 enumerateObjectsUsingBlock:v9];

    if (v14[3])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __71__HMHealthKitUtilities_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 frequency];
  v8 = [MEMORY[0x277CCDAB0] hertzUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;

  v11 = +[HMHealthKitUtilities frequencyBins];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v37 = 0;
    v14 = [v6 tests];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __71__HMHealthKitUtilities_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke_310;
    v31[3] = &unk_2796F00C8;
    v31[4] = &v38;
    v31[5] = &v32;
    [v14 enumerateObjectsUsingBlock:v31];
    v15 = v39[5];
    if (v15 && v33[5])
    {
      v16 = [MEMORY[0x277CCDAB0] decibelHearingLevelUnit];
      [v15 doubleValueForUnit:v16];
      v18 = v17;

      v19 = v33[5];
      v20 = [MEMORY[0x277CCDAB0] decibelHearingLevelUnit];
      [v19 doubleValueForUnit:v20];
      v22 = v21;

      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v23 setObject:v24 forKey:@"left"];

      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
      [v23 setObject:v25 forKey:@"right"];

      v26 = *(a1 + 40);
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      [v26 setObject:v23 forKey:v27];
    }

    else
    {
      if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
      {
        v28 = [*(a1 + 32) sourceRevision];
        v29 = [v28 source];
        v30 = [v29 name];
        LogPrintF();
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }
}

uint64_t __71__HMHealthKitUtilities_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke_310(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v10 = v3;
    v3 = [v3 side];
    v4 = v10;
    if (!v3)
    {
      v5 = [v10 clampedSensitivity];
      if (v5)
      {
        [v10 clampedSensitivity];
      }

      else
      {
        [v10 sensitivity];
      }
      v6 = ;
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);

      v4 = v10;
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = v4;
    v3 = [v4 side];
    v4 = v11;
    if (v3 == 1)
    {
      v7 = [v11 clampedSensitivity];
      if (v7)
      {
        [v11 clampedSensitivity];
      }

      else
      {
        [v11 sensitivity];
      }
      v8 = ;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);

      v4 = v11;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (id)requiredFrequencyBins
{
  v2 = requiredFrequencyBins_requiredFrequencyBins;
  if (!requiredFrequencyBins_requiredFrequencyBins)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_286439C70, &unk_286439C80, &unk_286439C90, &unk_286439CA0, &unk_286439CC0, &unk_286439CE0, 0}];
    v4 = requiredFrequencyBins_requiredFrequencyBins;
    requiredFrequencyBins_requiredFrequencyBins = v3;

    v2 = requiredFrequencyBins_requiredFrequencyBins;
  }

  return v2;
}

uint64_t __38__HMHealthKitUtilities_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMHealthKitUtilities);
  v1 = sharedInstance_sSelf_0;
  sharedInstance_sSelf_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMHealthKitUtilities)init
{
  v6.receiver = self;
  v6.super_class = HMHealthKitUtilities;
  v2 = [(HMHealthKitUtilities *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMHealthKitUtilities_activate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
    {
      [HMHealthKitUtilities _activate];
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMHealthKitUtilities_invalidate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
  {
    [HMHealthKitUtilities _invalidate];
  }

  featureManagerMap = self->_featureManagerMap;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMHealthKitUtilities__invalidate__block_invoke;
  v7[3] = &unk_2796F0118;
  v7[4] = self;
  [(NSMutableDictionary *)featureManagerMap enumerateKeysAndObjectsUsingBlock:v7];
  [(NSMutableDictionary *)self->_featureManagerMap removeAllObjects];
  v4 = self->_featureManagerMap;
  self->_featureManagerMap = 0;

  validAudiograms = self->_validAudiograms;
  self->_validAudiograms = 0;

  invalidAudiograms = self->_invalidAudiograms;
  self->_invalidAudiograms = 0;

  self->_activateCalled = 0;
}

- (void)_audiogramsQueryHandler:(id)a3 results:(id)a4 error:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (gLogCategory_HMHealthKitUtilities <= 90 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
    {
      [HMHealthKitUtilities _audiogramsQueryHandler:results:error:];
    }

    v11 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v11 reportValidAudiograms:MEMORY[0x277CBEBF8] invalidAudiograms:MEMORY[0x277CBEBF8] error:v10];
  }

  else
  {
    v30 = v8;
    v12 = v9;
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          if ([(HMHealthKitUtilities *)self _isAudiogramValid:v20])
          {
            v21 = v13;
          }

          else
          {
            v21 = v14;
          }

          [v21 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    v22 = [v13 copy];
    validAudiograms = self->_validAudiograms;
    self->_validAudiograms = v22;

    v24 = [v14 copy];
    invalidAudiograms = self->_invalidAudiograms;
    self->_invalidAudiograms = v24;

    v26 = +[HMServiceDaemon sharedHMServiceDaemon];
    v27 = [(NSArray *)self->_validAudiograms copy];
    v28 = [(NSArray *)self->_invalidAudiograms copy];
    [v26 reportValidAudiograms:v27 invalidAudiograms:v28 error:0];

    v8 = v30;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAudiogramValid:(id)a3
{
  v3 = a3;
  v4 = [HMHealthKitUtilities frequencyToHearingDecibelLevelMapFromAudiogram:v3];
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = +[HMHealthKitUtilities requiredFrequencyBins];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__HMHealthKitUtilities__isAudiogramValid___block_invoke;
    v8[3] = &unk_2796F0140;
    v9 = v4;
    v10 = &v11;
    [v5 enumerateObjectsUsingBlock:v8];

    v6 = *(v12 + 24) ^ 1;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    [HMHealthKitUtilities _isAudiogramValid:?];
    v6 = v11;
  }

  return v6 & 1;
}

void __42__HMHealthKitUtilities__isAudiogramValid___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];

  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)updateHMSettingsStruct:(id *)a3 fromAudiogram:(id)a4
{
  v72 = [HMHealthKitUtilities frequencyToHearingDecibelLevelMapFromAudiogram:a4];
  if (v72)
  {
    v5 = +[HMHealthKitUtilities frequencyBins];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v72 objectForKey:v6];
    v8 = [v7 objectForKey:@"left"];
    [v8 floatValue];
    a3->var3.var0 = v9;

    v10 = [v5 objectAtIndexedSubscript:0];
    v11 = [v72 objectForKey:v10];
    v12 = [v11 objectForKey:@"right"];
    [v12 floatValue];
    a3->var4.var0 = v13;

    v14 = [v5 objectAtIndexedSubscript:1];
    v15 = [v72 objectForKey:v14];
    v16 = [v15 objectForKey:@"left"];
    [v16 floatValue];
    a3->var3.var1 = v17;

    v18 = [v5 objectAtIndexedSubscript:1];
    v19 = [v72 objectForKey:v18];
    v20 = [v19 objectForKey:@"right"];
    [v20 floatValue];
    a3->var4.var1 = v21;

    v22 = [v5 objectAtIndexedSubscript:2];
    v23 = [v72 objectForKey:v22];
    v24 = [v23 objectForKey:@"left"];
    [v24 floatValue];
    a3->var3.var2 = v25;

    v26 = [v5 objectAtIndexedSubscript:2];
    v27 = [v72 objectForKey:v26];
    v28 = [v27 objectForKey:@"right"];
    [v28 floatValue];
    a3->var4.var2 = v29;

    v30 = [v5 objectAtIndexedSubscript:3];
    v31 = [v72 objectForKey:v30];
    v32 = [v31 objectForKey:@"left"];
    [v32 floatValue];
    a3->var3.var3 = v33;

    v34 = [v5 objectAtIndexedSubscript:3];
    v35 = [v72 objectForKey:v34];
    v36 = [v35 objectForKey:@"right"];
    [v36 floatValue];
    a3->var4.var3 = v37;

    v38 = [v5 objectAtIndexedSubscript:5];
    v39 = [v72 objectForKey:v38];
    v40 = [v39 objectForKey:@"left"];
    [v40 floatValue];
    a3->var3.var5 = v41;

    v42 = [v5 objectAtIndexedSubscript:5];
    v43 = [v72 objectForKey:v42];
    v44 = [v43 objectForKey:@"right"];
    [v44 floatValue];
    a3->var4.var5 = v45;

    v46 = [v5 objectAtIndexedSubscript:7];
    v47 = [v72 objectForKey:v46];
    v48 = [v47 objectForKey:@"left"];
    [v48 floatValue];
    a3->var3.var7 = v49;

    v50 = [v5 objectAtIndexedSubscript:7];
    v51 = [v72 objectForKey:v50];
    v52 = [v51 objectForKey:@"right"];
    [v52 floatValue];
    a3->var4.var7 = v53;

    v54 = [v5 objectAtIndexedSubscript:4];
    v55 = [v72 objectForKey:v54];

    if (v55)
    {
      v56 = [v55 objectForKey:@"left"];
      [v56 floatValue];
      a3->var3.var4 = v57;

      v58 = [v55 objectForKey:@"right"];
      [v58 floatValue];
      a3->var4.var4 = v59;

      goto LABEL_8;
    }

    var4 = (a3->var3.var3 + a3->var3.var5) * 0.5;
    a3->var3.var4 = var4;
    v61 = (a3->var4.var3 + a3->var4.var5) * 0.5;
    a3->var4.var4 = v61;
    if (gLogCategory_HMHealthKitUtilities <= 30)
    {
      if (gLogCategory_HMHealthKitUtilities != -1)
      {
LABEL_6:
        v70 = var4;
        v71 = v61;
        LogPrintF();
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        var4 = a3->var3.var4;
        v61 = a3->var4.var4;
        goto LABEL_6;
      }
    }

LABEL_8:
    v62 = [v5 objectAtIndexedSubscript:{6, *&v70, *&v71}];
    v63 = [v72 objectForKey:v62];

    if (v63)
    {
      v64 = [v63 objectForKey:@"left"];
      [v64 floatValue];
      a3->var3.var6 = v65;

      v66 = [v63 objectForKey:@"right"];
      [v66 floatValue];
      a3->var4.var6 = v67;
    }

    else
    {
      a3->var3.var6 = (a3->var3.var5 + a3->var3.var7) * 0.5;
      a3->var4.var6 = (a3->var4.var5 + a3->var4.var7) * 0.5;
      if (gLogCategory_HMHealthKitUtilities <= 30)
      {
        if (gLogCategory_HMHealthKitUtilities == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_14;
          }

          var6 = a3->var3.var6;
          v69 = a3->var4.var6;
        }

        LogPrintF();
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  [HMHealthKitUtilities updateHMSettingsStruct:fromAudiogram:];
LABEL_15:
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMHealthKitUtilities_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  block[3] = &unk_2796F00A0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __70__HMHealthKitUtilities_featureStatusProviding_didUpdateFeatureStatus___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) featureIdentifier];
  if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
  {
    v6 = v8;
    v7 = *(a1 + 40);
    LogPrintF();
  }

  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) featureIdentifier];
  LODWORD(v2) = [v2 _updateHMRegionStatusFromFeatureStatus:v3 featureIdentifier:v4];

  if (v2)
  {
    v5 = *(*(a1 + 48) + 56);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

- (unsigned)getRegionSupportStatusForFeatureID:(id)a3
{
  v4 = a3;
  [(HMHealthKitUtilities *)self _registerForRegionStatusUpdatesWithFeatureIdentifier:v4];
  LOBYTE(self) = [(HMHealthKitUtilities *)self _regionSupportStatusForFeatureID:v4];

  return self;
}

- (unsigned)_regionSupportStatusForFeatureID:(id)a3
{
  featureIDRegionStatusMap = self->_featureIDRegionStatusMap;
  if (!featureIDRegionStatusMap)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)featureIDRegionStatusMap objectForKeyedSubscript:a3];
  v5 = [v4 intValue];

  return v5;
}

- (void)_registerForRegionStatusUpdatesWithFeatureIdentifier:(id)a3
{
  v4 = a3;
  featureManagerMap = self->_featureManagerMap;
  if (!featureManagerMap)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_featureManagerMap;
    self->_featureManagerMap = v6;

    featureManagerMap = self->_featureManagerMap;
  }

  v8 = [(NSMutableDictionary *)featureManagerMap objectForKeyedSubscript:v4];
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v8 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureIdentifier:v4 healthStore:v9 countryCodeSource:1];
    [(NSMutableDictionary *)self->_featureManagerMap setObject:v8 forKeyedSubscript:v4];
    v14 = 0;
    v10 = [v8 featureStatusWithError:&v14];
    v11 = v14;
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      [(HMHealthKitUtilities *)self _updateHMRegionStatusFromFeatureStatus:v10 featureIdentifier:v4];
      [v8 registerObserver:self];
    }

    else
    {
      if (gLogCategory_HMHealthKitUtilities <= 90 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
      {
        [HMHealthKitUtilities _registerForRegionStatusUpdatesWithFeatureIdentifier:];
      }

      [(NSMutableDictionary *)self->_featureManagerMap setObject:0 forKeyedSubscript:v4];
    }
  }
}

- (BOOL)_updateHMRegionStatusFromFeatureStatus:(id)a3 featureIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CCBE70];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBE70]];
  v10 = [v9 areAllRequirementsSatisfied];

  v11 = [v6 objectForKeyedSubscript:v8];
  v12 = [v11 highestPriorityUnsatisfiedRequirement];

  v13 = *MEMORY[0x277CCBDF0];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBDF0]];
  v15 = [v14 areAllRequirementsSatisfied];

  v16 = [v6 objectForKeyedSubscript:v13];
  v17 = [v16 highestPriorityUnsatisfiedRequirement];

  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  if (v10)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  featureIDRegionStatusMap = self->_featureIDRegionStatusMap;
  if (!featureIDRegionStatusMap)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = self->_featureIDRegionStatusMap;
    self->_featureIDRegionStatusMap = v21;

    featureIDRegionStatusMap = self->_featureIDRegionStatusMap;
  }

  v23 = [(NSMutableDictionary *)featureIDRegionStatusMap objectForKeyedSubscript:v7];
  v24 = [v23 intValue];

  if (v24 == v19)
  {
    if (gLogCategory_HMHealthKitUtilities <= 10 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
    {
      v28 = *(off_2796F01D0 + (((v24 << 56) - 0x100000000000000) >> 53));
LABEL_23:
      LogPrintF();
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19];
    [(NSMutableDictionary *)self->_featureIDRegionStatusMap setObject:v25 forKeyedSubscript:v7];

    if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
    {
      if ((v24 & 0xFC) == 0)
      {
        v26 = off_2796F01B0[v24 & 3];
      }

      v29 = off_2796F01D0[v19 - 1];
      goto LABEL_23;
    }
  }

  return v24 != v19;
}

- (uint64_t)_isAudiogramValid:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_HMHealthKitUtilities <= 10)
  {
    if (gLogCategory_HMHealthKitUtilities != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

- (void)updateHMSettingsStruct:fromAudiogram:.cold.1()
{
  if (gLogCategory_HMHealthKitUtilities <= 30 && (gLogCategory_HMHealthKitUtilities != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_0();
  }
}

@end