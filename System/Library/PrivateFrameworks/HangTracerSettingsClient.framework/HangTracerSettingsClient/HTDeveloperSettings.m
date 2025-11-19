@interface HTDeveloperSettings
- (BOOL)isEnabled;
- (BOOL)isInternalBuild;
- (HTDeveloperSettings)init;
- (HTDeveloperSettings)initWithDefaults:(id)a3 savedSettingsDefaults:(id)a4;
- (NSArray)availableThresholdsLongNames;
- (NSArray)availableThresholdsShortNames;
- (NSArray)availableThresholdsValues;
- (int64_t)hangTracerThreshold;
- (void)setEnabled:(BOOL)a3;
- (void)setHangTracerThreshold:(int64_t)a3;
@end

@implementation HTDeveloperSettings

- (HTDeveloperSettings)init
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277D0FA18]];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277D0FA10]];
  v7 = [(HTDeveloperSettings *)self initWithDefaults:v4 savedSettingsDefaults:v6];

  return v7;
}

- (HTDeveloperSettings)initWithDefaults:(id)a3 savedSettingsDefaults:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HTDeveloperSettings;
  v9 = [(HTDeveloperSettings *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaults, a3);
    objc_storeStrong(&v10->_savedSettingsDefaults, a4);
    v11 = objc_opt_new();
    shortDurationFormatter = v10->_shortDurationFormatter;
    v10->_shortDurationFormatter = v11;

    [(NSMeasurementFormatter *)v10->_shortDurationFormatter setUnitStyle:1];
    [(NSMeasurementFormatter *)v10->_shortDurationFormatter setUnitOptions:1];
    v13 = objc_opt_new();
    [(NSMeasurementFormatter *)v10->_shortDurationFormatter setNumberFormatter:v13];

    v14 = [(NSMeasurementFormatter *)v10->_shortDurationFormatter numberFormatter];
    [v14 setNumberStyle:0];

    v15 = [(NSMeasurementFormatter *)v10->_shortDurationFormatter numberFormatter];
    [v15 setMaximumFractionDigits:0];

    v16 = objc_opt_new();
    longDurationFormatter = v10->_longDurationFormatter;
    v10->_longDurationFormatter = v16;

    [(NSMeasurementFormatter *)v10->_longDurationFormatter setUnitStyle:3];
    [(NSMeasurementFormatter *)v10->_longDurationFormatter setUnitOptions:1];
    v18 = v10;
  }

  return v10;
}

- (BOOL)isEnabled
{
  defaults = self->_defaults;
  v3 = keyWithPrefix(*MEMORY[0x277D0FA90], *MEMORY[0x277D0FAB0]);
  LOBYTE(defaults) = [(NSUserDefaults *)defaults BOOLForKey:v3];

  return defaults;
}

- (BOOL)isInternalBuild
{
  v2 = [MEMORY[0x277D0FA28] sharedPrefs];
  v3 = [v2 isInternal];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v98[17] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    defaults = self->_defaults;
    v6 = *MEMORY[0x277D0FAB0];
    v7 = keyWithPrefix(*MEMORY[0x277D0FA90], *MEMORY[0x277D0FAB0]);
    [(NSUserDefaults *)defaults setBool:1 forKey:v7];

    v8 = self->_defaults;
    v9 = keyWithPrefix(*MEMORY[0x277D0FAF8], v6);
    [(NSUserDefaults *)v8 setBool:1 forKey:v9];

    v10 = self->_defaults;
    v11 = keyWithPrefix(*MEMORY[0x277D0FB38], v6);
    [(NSUserDefaults *)v10 setBool:1 forKey:v11];

    v12 = self->_defaults;
    v13 = keyWithPrefix(*MEMORY[0x277D0FA88], v6);
    [(NSUserDefaults *)v12 setInteger:500 forKey:v13];

    v14 = self->_defaults;
    v15 = keyWithPrefix(*MEMORY[0x277D0FAE0], v6);
    [(NSUserDefaults *)v14 setInteger:500 forKey:v15];

    v16 = [MEMORY[0x277D0FA28] sharedPrefs];
    LOBYTE(v15) = [v16 isInternal];

    if ((v15 & 1) == 0)
    {
      v17 = self->_defaults;
      v18 = keyWithPrefix(*MEMORY[0x277D0FAB8], v6);
      [(NSUserDefaults *)v17 setInteger:0 forKey:v18];

      v19 = self->_defaults;
      v20 = keyWithPrefix(*MEMORY[0x277D0FAD0], v6);
      [(NSUserDefaults *)v19 setInteger:0 forKey:v20];

      v21 = self->_defaults;
      v22 = keyWithPrefix(*MEMORY[0x277D0FAD8], v6);
      [(NSUserDefaults *)v21 setInteger:0 forKey:v22];

      v23 = self->_defaults;
      v24 = keyWithPrefix(*MEMORY[0x277D0FAE8], v6);
      [(NSUserDefaults *)v23 setFloat:v24 forKey:0.0];

      v25 = self->_defaults;
      v26 = keyWithPrefix(*MEMORY[0x277D0FB40], v6);
      [(NSUserDefaults *)v25 setBool:0 forKey:v26];
    }

    v27 = self->_defaults;
    v28 = keyWithPrefix(*MEMORY[0x277D0FAC0], v6);
    [(NSUserDefaults *)v27 setInteger:120 forKey:v28];

    v29 = self->_defaults;
    v30 = keyWithPrefix(*MEMORY[0x277D0FA68], v6);
    [(NSUserDefaults *)v29 setInteger:60 forKey:v30];

    v31 = self->_defaults;
    v32 = keyWithPrefix(*MEMORY[0x277D0FAC8], v6);
    [(NSUserDefaults *)v31 setInteger:250 forKey:v32];

    v33 = self->_defaults;
    v34 = keyWithPrefix(*MEMORY[0x277D0FA98], v6);
    LODWORD(v35) = 1120403456;
    [(NSUserDefaults *)v33 setFloat:v34 forKey:v35];

    v36 = self->_defaults;
    v37 = *MEMORY[0x277D0FA60];
    v38 = keyWithPrefix(*MEMORY[0x277D0FB00], v6);
    [(NSUserDefaults *)v36 setObject:v37 forKey:v38];

    v39 = self->_defaults;
    v40 = keyWithPrefix(*MEMORY[0x277D0FAF0], v6);
    [(NSUserDefaults *)v39 setInteger:250 forKey:v40];

    v41 = self->_defaults;
    if (bootSessionUUID_onceToken != -1)
    {
      [HTDeveloperSettings setEnabled:];
    }

    v42 = *MEMORY[0x277D0FB30];
    v43 = bootSessionUUID_bootUUID;
    v44 = keyWithPrefix(v42, v6);
    [(NSUserDefaults *)v41 setObject:v43 forKey:v44];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v45 = HTPrefsKeysToRestoreForPrefix();
    v46 = [v45 countByEnumeratingWithState:&v91 objects:v97 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v92;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v92 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v91 + 1) + 8 * i);
          savedSettingsDefaults = self->_savedSettingsDefaults;
          v52 = savedSettingPrefixedDefaultsKey(v50);
          v53 = [(NSUserDefaults *)savedSettingsDefaults objectForKey:v52];

          if (v53)
          {
            v54 = self->_defaults;
            v55 = keyWithPrefix(v50, v6);
            [(NSUserDefaults *)v54 setObject:v53 forKey:v55];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v91 objects:v97 count:16];
      }

      while (v47);
    }
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v56 = *MEMORY[0x277D0FAB0];
    v57 = HTPrefsKeysToRestoreForPrefix();
    v58 = [v57 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v88;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v88 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v87 + 1) + 8 * j);
          v63 = self->_defaults;
          v64 = keyWithPrefix(v62, v56);
          v65 = [(NSUserDefaults *)v63 objectForKey:v64];

          v66 = self->_savedSettingsDefaults;
          v67 = savedSettingPrefixedDefaultsKey(v62);
          [(NSUserDefaults *)v66 setObject:v65 forKey:v67];
        }

        v59 = [v57 countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v59);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v68 = *MEMORY[0x277D0FAF8];
    v98[0] = *MEMORY[0x277D0FA90];
    v98[1] = v68;
    v69 = *MEMORY[0x277D0FAE0];
    v98[2] = *MEMORY[0x277D0FB38];
    v98[3] = v69;
    v70 = *MEMORY[0x277D0FAB8];
    v98[4] = *MEMORY[0x277D0FA88];
    v98[5] = v70;
    v71 = *MEMORY[0x277D0FAD8];
    v98[6] = *MEMORY[0x277D0FAD0];
    v98[7] = v71;
    v72 = *MEMORY[0x277D0FB40];
    v98[8] = *MEMORY[0x277D0FAE8];
    v98[9] = v72;
    v73 = *MEMORY[0x277D0FA68];
    v98[10] = *MEMORY[0x277D0FAC0];
    v98[11] = v73;
    v74 = *MEMORY[0x277D0FA98];
    v98[12] = *MEMORY[0x277D0FAC8];
    v98[13] = v74;
    v75 = *MEMORY[0x277D0FAF0];
    v98[14] = *MEMORY[0x277D0FB00];
    v98[15] = v75;
    v98[16] = *MEMORY[0x277D0FB30];
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:{17, 0}];
    v76 = [v45 countByEnumeratingWithState:&v83 objects:v95 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v84;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v84 != v78)
          {
            objc_enumerationMutation(v45);
          }

          v80 = self->_defaults;
          v81 = keyWithPrefix(*(*(&v83 + 1) + 8 * k), v56);
          [(NSUserDefaults *)v80 removeObjectForKey:v81];
        }

        v77 = [v45 countByEnumeratingWithState:&v83 objects:v95 count:16];
      }

      while (v77);
    }
  }

  notify_post(*MEMORY[0x277D0FA20]);
  configureTailspinForThirdPartyDevelopment(v3);
  v82 = *MEMORY[0x277D85DE8];
}

- (int64_t)hangTracerThreshold
{
  defaults = self->_defaults;
  v3 = keyWithPrefix(*MEMORY[0x277D0FAE0], *MEMORY[0x277D0FAB0]);
  v4 = [(NSUserDefaults *)defaults integerForKey:v3];

  return v4;
}

- (void)setHangTracerThreshold:(int64_t)a3
{
  defaults = self->_defaults;
  v6 = *MEMORY[0x277D0FAB0];
  v7 = keyWithPrefix(*MEMORY[0x277D0FAE0], *MEMORY[0x277D0FAB0]);
  [(NSUserDefaults *)defaults setInteger:a3 forKey:v7];

  v8 = self->_defaults;
  v9 = keyWithPrefix(*MEMORY[0x277D0FA88], v6);
  [(NSUserDefaults *)v8 setInteger:a3 forKey:v9];

  v10 = *MEMORY[0x277D0FA20];

  notify_post(v10);
}

- (NSArray)availableThresholdsValues
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HTDeveloperSettings hangTracerThreshold](self, "hangTracerThreshold")}];
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_28632B000];
  if (-[HTDeveloperSettings hangTracerThreshold](self, "hangTracerThreshold") && ([v4 containsObject:v3] & 1) == 0)
  {
    [v4 addObject:v3];
    [v4 sortUsingSelector:sel_compare_];
  }

  v5 = [v4 copy];

  return v5;
}

- (NSArray)availableThresholdsShortNames
{
  v3 = [(HTDeveloperSettings *)self availableThresholdsValues];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __52__HTDeveloperSettings_availableThresholdsShortNames__block_invoke;
  v11 = &unk_2796A9468;
  v12 = self;
  v13 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __52__HTDeveloperSettings_availableThresholdsShortNames__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = MEMORY[0x277CCAB10];
  v5 = a2;
  v6 = [v4 alloc];
  v7 = [v5 integerValue];

  v8 = [MEMORY[0x277CCADD0] milliseconds];
  v9 = [v6 initWithDoubleValue:v8 unit:v7];
  v10 = [v3 stringFromMeasurement:v9];

  [*(a1 + 40) addObject:v10];
}

- (NSArray)availableThresholdsLongNames
{
  v3 = [(HTDeveloperSettings *)self availableThresholdsValues];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__HTDeveloperSettings_availableThresholdsLongNames__block_invoke;
  v11 = &unk_2796A9468;
  v12 = self;
  v13 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __51__HTDeveloperSettings_availableThresholdsLongNames__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if (v3 > 999)
  {
    v7 = [MEMORY[0x277CCADD0] seconds];
    v3 /= 0x3E8uLL;
  }

  else
  {
    v7 = [MEMORY[0x277CCADD0] milliseconds];
  }

  v4 = *(*(a1 + 32) + 32);
  v5 = [objc_alloc(MEMORY[0x277CCAB10]) initWithDoubleValue:v7 unit:v3];
  v6 = [v4 stringFromMeasurement:v5];

  [*(a1 + 40) addObject:v6];
}

@end