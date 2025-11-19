@interface HMAudiogramUtility
+ (id)frequencyBins;
+ (id)frequencyToHearingDecibelLevelMapFromAudiogram:(id)a3;
+ (id)requiredFrequencyBins;
@end

@implementation HMAudiogramUtility

+ (id)requiredFrequencyBins
{
  v2 = requiredFrequencyBins_requiredFrequencyBins;
  if (!requiredFrequencyBins_requiredFrequencyBins)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_286437A50, &unk_286437A60, &unk_286437A70, &unk_286437A80, &unk_286437A90, &unk_286437AA0, 0}];
    v4 = requiredFrequencyBins_requiredFrequencyBins;
    requiredFrequencyBins_requiredFrequencyBins = v3;

    v2 = requiredFrequencyBins_requiredFrequencyBins;
  }

  return v2;
}

+ (id)frequencyBins
{
  v2 = frequencyBins_frequencyBins;
  if (!frequencyBins_frequencyBins)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_286437A50, &unk_286437A60, &unk_286437A70, &unk_286437A80, &unk_286437AB0, &unk_286437A90, &unk_286437AC0, &unk_286437AA0, 0}];
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
    v9[2] = __69__HMAudiogramUtility_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke;
    v9[3] = &unk_2796EEA40;
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

void __69__HMAudiogramUtility_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 frequency];
  v8 = [MEMORY[0x277CCDAB0] hertzUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;

  v11 = +[HMAudiogramUtility frequencyBins];
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
    v31[2] = __69__HMAudiogramUtility_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke_452;
    v31[3] = &unk_2796EEA18;
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
      if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
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

uint64_t __69__HMAudiogramUtility_frequencyToHearingDecibelLevelMapFromAudiogram___block_invoke_452(uint64_t a1, void *a2)
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

@end