@interface HDDemoData
+ (id)demoDataDirectory;
- (id)_directoryPath;
@end

@implementation HDDemoData

void __HDDemoData_recommendedDietaryNutrientDailyValues_block_invoke()
{
  v23[39] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC9D8];
  v22[0] = *MEMORY[0x277CCC9D0];
  v22[1] = v0;
  v23[0] = &unk_283CB2F88;
  v23[1] = &unk_283CB2FA0;
  v1 = *MEMORY[0x277CCC9E8];
  v22[2] = *MEMORY[0x277CCC9E0];
  v22[3] = v1;
  v23[2] = &unk_283CB2FB8;
  v23[3] = &unk_283CB2FD0;
  v2 = *MEMORY[0x277CCCA00];
  v22[4] = *MEMORY[0x277CCC9F0];
  v22[5] = v2;
  v23[4] = &unk_283CB2FE8;
  v23[5] = &unk_283CB3000;
  v3 = *MEMORY[0x277CCCA10];
  v22[6] = *MEMORY[0x277CCCA08];
  v22[7] = v3;
  v23[6] = &unk_283CB3018;
  v23[7] = &unk_283CB3030;
  v4 = *MEMORY[0x277CCCA38];
  v22[8] = *MEMORY[0x277CCC9F8];
  v22[9] = v4;
  v23[8] = &unk_283CB2F88;
  v23[9] = &unk_283CB3048;
  v5 = *MEMORY[0x277CCCA48];
  v22[10] = *MEMORY[0x277CCCA40];
  v22[11] = v5;
  v23[10] = &unk_283CB2FA0;
  v23[11] = &unk_283CB3060;
  v6 = *MEMORY[0x277CCCA58];
  v22[12] = *MEMORY[0x277CCCA50];
  v22[13] = v6;
  v23[12] = &unk_283CB3078;
  v23[13] = &unk_283CB2FA0;
  v7 = *MEMORY[0x277CCCA68];
  v22[14] = *MEMORY[0x277CCCA60];
  v22[15] = v7;
  v23[14] = &unk_283CB3018;
  v23[15] = &unk_283CB3090;
  v8 = *MEMORY[0x277CCCA70];
  v22[16] = *MEMORY[0x277CCCA18];
  v22[17] = v8;
  v23[16] = &unk_283CB30A8;
  v23[17] = &unk_283CB30C0;
  v9 = *MEMORY[0x277CCCA80];
  v22[18] = *MEMORY[0x277CCCA78];
  v22[19] = v9;
  v23[18] = &unk_283CB30D8;
  v23[19] = &unk_283CB30F0;
  v10 = *MEMORY[0x277CCCA88];
  v22[20] = *MEMORY[0x277CCCA20];
  v22[21] = v10;
  v23[20] = &unk_283CB3108;
  v23[21] = &unk_283CB3120;
  v11 = *MEMORY[0x277CCCA98];
  v22[22] = *MEMORY[0x277CCCA90];
  v22[23] = v11;
  v23[22] = &unk_283CB3138;
  v23[23] = &unk_283CB42E0;
  v12 = *MEMORY[0x277CCCAA0];
  v22[24] = *MEMORY[0x277CCCA28];
  v22[25] = v12;
  v23[24] = &unk_283CB3150;
  v23[25] = &unk_283CB3168;
  v13 = *MEMORY[0x277CCCAB0];
  v22[26] = *MEMORY[0x277CCCAA8];
  v22[27] = v13;
  v23[26] = &unk_283CB3180;
  v23[27] = &unk_283CB3198;
  v14 = *MEMORY[0x277CCCA30];
  v22[28] = *MEMORY[0x277CCCAB8];
  v22[29] = v14;
  v23[28] = &unk_283CB42F0;
  v23[29] = &unk_283CB31B0;
  v15 = *MEMORY[0x277CCCAC8];
  v22[30] = *MEMORY[0x277CCCAC0];
  v22[31] = v15;
  v23[30] = &unk_283CB31C8;
  v23[31] = &unk_283CB4300;
  v16 = *MEMORY[0x277CCCAD8];
  v22[32] = *MEMORY[0x277CCCAD0];
  v22[33] = v16;
  v23[32] = &unk_283CB4310;
  v23[33] = &unk_283CB3198;
  v17 = *MEMORY[0x277CCCAE8];
  v22[34] = *MEMORY[0x277CCCAE0];
  v22[35] = v17;
  v23[34] = &unk_283CB3048;
  v23[35] = &unk_283CB30F0;
  v18 = *MEMORY[0x277CCCB00];
  v22[36] = *MEMORY[0x277CCCAF0];
  v22[37] = v18;
  v23[36] = &unk_283CB3000;
  v23[37] = &unk_283CB3000;
  v22[38] = *MEMORY[0x277CCCAF8];
  v23[38] = &unk_283CB31E0;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:39];
  v20 = _MergedGlobals_207;
  _MergedGlobals_207 = v19;

  v21 = *MEMORY[0x277D85DE8];
}

void __HDDemoData_canonicalDietaryUnits_block_invoke()
{
  v43[39] = *MEMORY[0x277D85DE8];
  v42[0] = *MEMORY[0x277CCC9D0];
  v41 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[0] = v41;
  v42[1] = *MEMORY[0x277CCC9D8];
  v40 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[1] = v40;
  v42[2] = *MEMORY[0x277CCC9E0];
  v39 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[2] = v39;
  v42[3] = *MEMORY[0x277CCC9E8];
  v38 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[3] = v38;
  v42[4] = *MEMORY[0x277CCC9F0];
  v37 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[4] = v37;
  v42[5] = *MEMORY[0x277CCCA00];
  v36 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[5] = v36;
  v42[6] = *MEMORY[0x277CCCA08];
  v35 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[6] = v35;
  v42[7] = *MEMORY[0x277CCCA10];
  v34 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v43[7] = v34;
  v42[8] = *MEMORY[0x277CCC9F8];
  v33 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[8] = v33;
  v42[9] = *MEMORY[0x277CCCA38];
  v32 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[9] = v32;
  v42[10] = *MEMORY[0x277CCCA40];
  v31 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[10] = v31;
  v42[11] = *MEMORY[0x277CCCA48];
  v30 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[11] = v30;
  v42[12] = *MEMORY[0x277CCCA50];
  v29 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[12] = v29;
  v42[13] = *MEMORY[0x277CCCA58];
  v28 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[13] = v28;
  v42[14] = *MEMORY[0x277CCCA60];
  v27 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[14] = v27;
  v42[15] = *MEMORY[0x277CCCA68];
  v26 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[15] = v26;
  v42[16] = *MEMORY[0x277CCCA18];
  v25 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[16] = v25;
  v42[17] = *MEMORY[0x277CCCA70];
  v24 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[17] = v24;
  v42[18] = *MEMORY[0x277CCCA78];
  v23 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[18] = v23;
  v42[19] = *MEMORY[0x277CCCA80];
  v22 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[19] = v22;
  v42[20] = *MEMORY[0x277CCCA20];
  v21 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[20] = v21;
  v42[21] = *MEMORY[0x277CCCA88];
  v20 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[21] = v20;
  v42[22] = *MEMORY[0x277CCCA90];
  v19 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[22] = v19;
  v42[23] = *MEMORY[0x277CCCA98];
  v18 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[23] = v18;
  v42[24] = *MEMORY[0x277CCCA28];
  v17 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[24] = v17;
  v42[25] = *MEMORY[0x277CCCAA0];
  v16 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[25] = v16;
  v42[26] = *MEMORY[0x277CCCAA8];
  v15 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[26] = v15;
  v42[27] = *MEMORY[0x277CCCAB0];
  v14 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[27] = v14;
  v42[28] = *MEMORY[0x277CCCAB8];
  v13 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[28] = v13;
  v42[29] = *MEMORY[0x277CCCA30];
  v0 = [MEMORY[0x277CCDAB0] gramUnit];
  v43[29] = v0;
  v42[30] = *MEMORY[0x277CCCAC0];
  v1 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[30] = v1;
  v42[31] = *MEMORY[0x277CCCAC8];
  v2 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[31] = v2;
  v42[32] = *MEMORY[0x277CCCAD0];
  v3 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[32] = v3;
  v42[33] = *MEMORY[0x277CCCAD8];
  v4 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[33] = v4;
  v42[34] = *MEMORY[0x277CCCAE0];
  v5 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[34] = v5;
  v42[35] = *MEMORY[0x277CCCAE8];
  v6 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:4];
  v43[35] = v6;
  v42[36] = *MEMORY[0x277CCCAF0];
  v7 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[36] = v7;
  v42[37] = *MEMORY[0x277CCCB00];
  v8 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:3];
  v43[37] = v8;
  v42[38] = *MEMORY[0x277CCCAF8];
  v9 = [MEMORY[0x277CCDAB0] literUnitWithMetricPrefix:4];
  v43[38] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:39];
  v11 = qword_280D67C90;
  qword_280D67C90 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)demoDataDirectory
{
  v60 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  if (([MEMORY[0x277CCDD68] usingDemoDataDatabase] & 1) == 0 && !objc_msgSend(MEMORY[0x277CCDD30], "isRunningStoreDemoMode"))
  {
    v33 = 0;
    goto LABEL_53;
  }

  v2 = 0x277CBE000uLL;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [HDDemoDataGeneratorConfiguration configurationFromDefaults:v3];

  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    if ([MEMORY[0x277CCDD30] runningInStoreDemoModeF201])
    {
      v7 = 60;
    }

    else
    {
      v7 = 1;
    }

    if ([v4 generationPeriodInDays] <= v7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 persistToDefaults:v10];

    goto LABEL_15;
  }

  if ([MEMORY[0x277CCDD30] isRunningStoreDemoMode])
  {
    v8 = [MEMORY[0x277CCDD30] sharedBehavior];
    v9 = [v8 isAppleWatch] ? 1 : 180;

    if ([v4 generationPeriodInDays] > v9)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v11 = [HDDemoData alloc];
  v12 = [v4 profileType];
  if (v11)
  {
    v13 = v12;
    v59.receiver = v11;
    v59.super_class = HDDemoData;
    v11 = objc_msgSendSuper2(&v59, sel_init);
    if (v11)
    {
      v14 = NSHomeDirectory();
      v15 = [v14 stringByAppendingPathComponent:@"Library/Health"];

      v16 = DirectoryPathForHDDemoDataProfileType(v13);
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"DemoData/%@", v16];
      v18 = [v15 stringByAppendingPathComponent:v17];
      demoDataPath = v11->_demoDataPath;
      v11->_demoDataPath = v18;

      v20 = objc_alloc_init(MEMORY[0x277CCAA00]);
      fileManager = v11->_fileManager;
      v11->_fileManager = v20;
    }
  }

  objc_opt_self();
  if (([MEMORY[0x277CCDD68] isGenerateDemoDataSet] & 1) == 0 && (objc_msgSend(MEMORY[0x277CCDD30], "isRunningStoreDemoMode") & 1) == 0)
  {
    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_INFO))
    {
      v35 = v34;
      v36 = [(HDDemoData *)&v11->super.isa _directoryPath];
      LODWORD(v59.receiver) = 138412290;
      *(&v59.receiver + 4) = v36;
      _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_INFO, "Returning demo data directory path: %@", &v59, 0xCu);
    }

    v33 = [(HDDemoData *)&v11->super.isa _directoryPath];
    goto LABEL_52;
  }

  v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23 = [v22 BOOLForKey:@"HealthDemoDataResetDatabaseKey"];

  v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v25 = [v24 objectForKey:@"HealthDemoDataLastRunDateKey"];

  v26 = [MEMORY[0x277CBEAA8] date];
  if (v25 && [MEMORY[0x277CCDD30] isRunningStoreDemoMode])
  {
    v27 = [MEMORY[0x277CBEA80] currentCalendar];
    v28 = [v27 dateByAddingUnit:16 value:-7 toDate:v26 options:0];

    v29 = [MEMORY[0x277CBEA80] currentCalendar];
    v30 = [v29 dateByAddingUnit:16 value:7 toDate:v26 options:0];

    v31 = [v25 hk_isBeforeDate:v28];
    v32 = [v25 hk_isAfterDate:v30];
    if ((v32 & 1) != 0 || v31)
    {
      if (v32)
      {
        _HKInitializeLogging();
        v37 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59.receiver) = 0;
          _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "Will reset demo data database as clock has moved too far back", &v59, 2u);
        }
      }

      if (v31)
      {
        _HKInitializeLogging();
        v38 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59.receiver) = 0;
          _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Will reset demo data database as clock has been moved too far forward", &v59, 2u);
        }
      }

      v2 = 0x277CBE000uLL;
      if (!v11)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    v2 = 0x277CBE000;
    if ((v23 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_27:
    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_40:
    v39 = [*(v2 + 3024) standardUserDefaults];
    [v39 setBool:0 forKey:@"HealthDemoDataResetDatabaseKey"];

    v40 = [*(v2 + 3024) standardUserDefaults];
    [v40 removeObjectForKey:@"HealthDemoDataFirstRunDateKey"];

    v41 = [*(v2 + 3024) standardUserDefaults];
    [v41 removeObjectForKey:@"HealthDemoDataLastRunDateKey"];

    v42 = [*(v2 + 3024) standardUserDefaults];
    [v42 removeObjectForKey:@"HealthDemoDataFirstSampleDateKey"];

    v43 = [*(v2 + 3024) standardUserDefaults];
    [v43 removeObjectForKey:@"HealthDemoDataLastSampleDateKey"];

    v58 = 0;
    if ([(NSFileManager *)v11->_fileManager fileExistsAtPath:v11->_demoDataPath isDirectory:&v58])
    {
      if ((v58 & 1) == 0)
      {
        _HKInitializeLogging();
        v55 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          v56 = v11->_demoDataPath;
          LODWORD(v59.receiver) = 138412290;
          *(&v59.receiver + 4) = v56;
          _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "Demo Data path exists but is not a directory. Aborting. path = %@", &v59, 0xCu);
        }

        goto LABEL_49;
      }

      v45 = v11->_demoDataPath;
      v44 = v11->_fileManager;
      v57 = 0;
      v46 = [(NSFileManager *)v44 removeItemAtPath:v45 error:&v57];
      v47 = v57;
      if (!v46)
      {
        _HKInitializeLogging();
        v48 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v59.receiver) = 138543362;
          *(&v59.receiver + 4) = v47;
          _os_log_error_impl(&dword_228986000, v48, OS_LOG_TYPE_ERROR, "Could not remove demo data directory. error: %{public}@", &v59, 0xCu);
        }

LABEL_48:

        goto LABEL_49;
      }
    }

    else
    {
      v47 = 0;
    }

    _HKInitializeLogging();
    v49 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v59.receiver) = 0;
      _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "Demo data database has been reset", &v59, 2u);
    }

    goto LABEL_48;
  }

  if (v23)
  {
    goto LABEL_27;
  }

LABEL_49:
  _HKInitializeLogging();
  v50 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_INFO))
  {
    v51 = v50;
    v52 = [(HDDemoData *)&v11->super.isa _directoryPath];
    LODWORD(v59.receiver) = 138412290;
    *(&v59.receiver + 4) = v52;
    _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_INFO, "Returning demo data directory path: %@", &v59, 0xCu);
  }

  v33 = [(HDDemoData *)&v11->super.isa _directoryPath];

LABEL_52:
LABEL_53:
  v53 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_directoryPath
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

@end