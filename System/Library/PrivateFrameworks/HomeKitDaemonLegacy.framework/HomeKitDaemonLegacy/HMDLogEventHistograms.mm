@interface HMDLogEventHistograms
+ (void)initialize;
@end

@implementation HMDLogEventHistograms

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = MEMORY[0x277D17DB8];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629668, &unk_286629680, &unk_286629698, &unk_2866296B0, &unk_2866296C8, &unk_2866296E0, &unk_2866296F8, &unk_286629710, &unk_286629728, &unk_286629740, &unk_286629758, &unk_286629770, 0}];
    v6 = [v4 unsignedClosedOpenFixedIntervalMapper:v5];
    v7 = _memoryHistogram;
    _memoryHistogram = v6;

    v8 = MEMORY[0x277D17DB8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629788, &unk_286629758, &unk_2866297A0, &unk_2866297B8, &unk_2866297D0, &unk_2866297E8, &unk_286629800, &unk_286629818, &unk_286629830, &unk_286629848, &unk_286629860, &unk_286629878, &unk_286629890, 0}];
    v10 = [v8 unsignedClosedOpenFixedIntervalMapper:v9];
    v11 = _latencyHistogram;
    _latencyHistogram = v10;

    v12 = MEMORY[0x277D17DB8];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629668, &unk_286629680, &unk_286629698, &unk_2866296B0, &unk_2866298A8, &unk_2866296C8, &unk_2866298C0, &unk_2866298D8, &unk_2866298F0, &unk_2866296E0, 0}];
    v14 = [v12 unsignedClosedOpenFixedIntervalMapper:v13];
    v15 = _successRateHistogram;
    _successRateHistogram = v14;

    v16 = MEMORY[0x277D17DB8];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629908, &unk_286629920, &unk_286629938, &unk_286629950, &unk_286629968, &unk_286629668, &unk_286629980, &unk_286629998, &unk_2866299B0, &unk_2866296E0, &unk_286629788, &unk_286629758, &unk_286629770, &unk_2866299C8, &unk_2866299E0, &unk_2866299F8, &unk_286629A10, &unk_286629A28, 0}];
    v18 = [v16 unsignedClosedOpenFixedIntervalMapper:v17];
    v19 = _lowVolumeHistogram;
    _lowVolumeHistogram = v18;

    v20 = MEMORY[0x277D17DB8];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629908, &unk_286629668, &unk_2866299B0, &unk_2866296E0, &unk_286629788, &unk_286629758, &unk_286629770, &unk_2866299E0, &unk_2866299F8, &unk_286629A10, &unk_286629A28, &unk_286629A40, &unk_286629A58, &unk_286629A70, &unk_286629A88, &unk_286629AA0, 0}];
    v22 = [v20 unsignedClosedOpenFixedIntervalMapper:v21];
    v23 = _highVolumeHistogram;
    _highVolumeHistogram = v22;

    v24 = MEMORY[0x277D17DB8];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629908, &unk_286629920, &unk_286629938, &unk_286629950, &unk_286629968, &unk_286629668, &unk_286629680, 0}];
    v26 = [v24 unsignedClosedOpenFixedIntervalMapper:v25];
    v27 = _configurationDataHistogram;
    _configurationDataHistogram = v26;

    v28 = MEMORY[0x277D17DB8];
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286629AB8, &unk_286629AD0, &unk_286629AE8, &unk_286629B00, &unk_286629B18, &unk_286629B30, &unk_286629B48, &unk_286629B60, &unk_286629B78, &unk_286629B90, &unk_286629BA8, &unk_286629BC0, &unk_286629BD8, &unk_286629BF0, &unk_286629C08, &unk_286629C20, &unk_286629C38, &unk_286629C50, &unk_286629C68, &unk_286629C80, 0}];
    v29 = [v28 unsignedOpenClosedFixedIntervalMapper:v31];
    v30 = _dataSizeKBHistogram;
    _dataSizeKBHistogram = v29;
  }
}

@end