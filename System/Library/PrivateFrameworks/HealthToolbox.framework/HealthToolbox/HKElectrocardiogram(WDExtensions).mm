@interface HKElectrocardiogram(WDExtensions)
- (id)wd_commaSeparatedData;
- (id)wd_commaSeparatedHeaderWithActiveAlgorithmVersion:()WDExtensions;
@end

@implementation HKElectrocardiogram(WDExtensions)

- (id)wd_commaSeparatedHeaderWithActiveAlgorithmVersion:()WDExtensions
{
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = WDBundle();
  v7 = [v6 localizedStringForKey:@"ECG_CSV_CLASSIFICATION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v8 = HKConditionallyRedactedHeartRhythmString();
  [v5 appendString:v8];

  [v5 appendString:{@", "}];
  v9 = [self _localizedClassificationWithActiveAlgorithmVersion:a3];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_28641D9B8;
  }

  [v5 appendString:v11];

  [v5 appendString:@"\n"];
  v12 = WDBundle();
  v13 = [v12 localizedStringForKey:@"ECG_CSV_SYMPTOMS_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v14 = HKConditionallyRedactedHeartRhythmString();
  [v5 appendString:v14];

  [v5 appendString:{@", "}];
  _localizedSymptoms = [self _localizedSymptoms];
  v16 = [_localizedSymptoms componentsJoinedByString:{@", "}];
  [v5 appendString:v16];

  [v5 appendString:@"\n"];
  v17 = WDBundle();
  v18 = [v17 localizedStringForKey:@"ECG_CSV_SOFTWARE_VERSION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v19 = HKConditionallyRedactedHeartRhythmString();
  [v5 appendString:v19];

  [v5 appendString:{@", "}];
  sourceRevision = [self sourceRevision];
  version = [sourceRevision version];
  v22 = version;
  if (version)
  {
    v23 = version;
  }

  else
  {
    v23 = &stru_28641D9B8;
  }

  [v5 appendString:v23];

  [v5 appendString:@"\n"];
  device = [self device];
  hardwareVersion = [device hardwareVersion];

  if (hardwareVersion)
  {
    v26 = WDBundle();
    v27 = [v26 localizedStringForKey:@"ECG_CSV_DEVICE_VERSION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v28 = HKConditionallyRedactedHeartRhythmString();
    [v5 appendString:v28];

    [v5 appendString:{@", "}];
    v29 = MEMORY[0x277CCACA8];
    device2 = [self device];
    hardwareVersion2 = [device2 hardwareVersion];
    v32 = [v29 stringWithFormat:@"%@", hardwareVersion2];
    [v5 appendString:v32];

    [v5 appendString:@"\n"];
  }

  v33 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v33 setUnitStyle:3];
  samplingFrequency = [self samplingFrequency];
  _foundationMeasurement = [samplingFrequency _foundationMeasurement];

  v36 = WDBundle();
  v37 = [v36 localizedStringForKey:@"ECG_CSV_FREQUENCY_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v38 = HKConditionallyRedactedHeartRhythmString();
  [v5 appendString:v38];

  [v5 appendString:{@", "}];
  if (_foundationMeasurement)
  {
    v39 = [v33 stringFromMeasurement:_foundationMeasurement];
    [v5 appendString:v39];
  }

  [v5 appendString:@"\n"];

  return v5;
}

- (id)wd_commaSeparatedData
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setNumberStyle:1];
  v25 = v3;
  [v3 setUsesGroupingSeparator:0];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  obj = [self leadNames];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        [v2 appendString:@"\n"];
        integerValue = [v7 integerValue];
        v9 = WDBundle();
        v10 = [v9 localizedStringForKey:@"ECG_CSV_LEAD_NAME_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
        v11 = HKConditionallyRedactedHeartRhythmString();
        [v2 appendString:v11];

        [v2 appendString:{@", "}];
        if (integerValue == 1)
        {
          v12 = WDBundle();
          v13 = [v12 localizedStringForKey:@"ECG_LEAD_NAME_I" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
          v9 = HKConditionallyRedactedHeartRhythmString();
        }

        [v2 appendString:v9];

        [v2 appendString:@"\n"];
        v14 = WDBundle();
        v15 = [v14 localizedStringForKey:@"ECG_CSV_UNIT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
        v16 = HKConditionallyRedactedHeartRhythmString();
        [v2 appendString:v16];

        [v2 appendString:{@", "}];
        v17 = WDBundle();
        v18 = [v17 localizedStringForKey:@"ECG_CSV_UNIT_STRING" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
        v19 = HKConditionallyRedactedHeartRhythmString();
        [v2 appendString:v19];

        [v2 appendString:@"\n"];
        [v2 appendString:@"\n"];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __58__HKElectrocardiogram_WDExtensions__wd_commaSeparatedData__block_invoke;
        v26[3] = &unk_2796E6B40;
        v27 = v2;
        v28 = v25;
        [selfCopy _enumerateDataForLead:integerValue block:v26];
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v2;
}

@end