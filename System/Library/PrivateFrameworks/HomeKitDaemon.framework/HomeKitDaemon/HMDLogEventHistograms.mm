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
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E740D8, &unk_283E740F0, &unk_283E74108, &unk_283E74120, &unk_283E74138, &unk_283E74150, &unk_283E74168, &unk_283E74180, &unk_283E74198, &unk_283E741B0, &unk_283E741C8, &unk_283E741E0, 0}];
    v6 = [v4 unsignedClosedOpenFixedIntervalMapper:v5];
    v7 = _memoryHistogram;
    _memoryHistogram = v6;

    v8 = MEMORY[0x277D17DB8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E741F8, &unk_283E741C8, &unk_283E74210, &unk_283E74228, &unk_283E74240, &unk_283E74258, &unk_283E74270, &unk_283E74288, &unk_283E742A0, &unk_283E742B8, &unk_283E742D0, &unk_283E742E8, &unk_283E74300, 0}];
    v10 = [v8 unsignedClosedOpenFixedIntervalMapper:v9];
    v11 = _latencyHistogram;
    _latencyHistogram = v10;

    v12 = MEMORY[0x277D17DB8];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E740D8, &unk_283E740F0, &unk_283E74108, &unk_283E74120, &unk_283E74318, &unk_283E74138, &unk_283E74330, &unk_283E74348, &unk_283E74360, &unk_283E74150, 0}];
    v14 = [v12 unsignedClosedOpenFixedIntervalMapper:v13];
    v15 = _successRateHistogram;
    _successRateHistogram = v14;

    v16 = MEMORY[0x277D17DB8];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E74378, &unk_283E74390, &unk_283E743A8, &unk_283E743C0, &unk_283E743D8, &unk_283E740D8, &unk_283E743F0, &unk_283E74408, &unk_283E74420, &unk_283E74150, &unk_283E741F8, &unk_283E741C8, &unk_283E741E0, &unk_283E74438, &unk_283E74450, &unk_283E74468, &unk_283E74480, &unk_283E74498, 0}];
    v18 = [v16 unsignedClosedOpenFixedIntervalMapper:v17];
    v19 = _lowVolumeHistogram;
    _lowVolumeHistogram = v18;

    v20 = MEMORY[0x277D17DB8];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E74378, &unk_283E740D8, &unk_283E74420, &unk_283E74150, &unk_283E741F8, &unk_283E741C8, &unk_283E741E0, &unk_283E74450, &unk_283E74468, &unk_283E74480, &unk_283E74498, &unk_283E744B0, &unk_283E744C8, &unk_283E744E0, &unk_283E744F8, &unk_283E74510, 0}];
    v22 = [v20 unsignedClosedOpenFixedIntervalMapper:v21];
    v23 = _highVolumeHistogram;
    _highVolumeHistogram = v22;

    v24 = MEMORY[0x277D17DB8];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E74378, &unk_283E74390, &unk_283E743A8, &unk_283E743C0, &unk_283E743D8, &unk_283E740D8, &unk_283E740F0, 0}];
    v26 = [v24 unsignedClosedOpenFixedIntervalMapper:v25];
    v27 = _configurationDataHistogram;
    _configurationDataHistogram = v26;

    v28 = MEMORY[0x277D17DB8];
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283E74528, &unk_283E74540, &unk_283E74558, &unk_283E74570, &unk_283E74588, &unk_283E745A0, &unk_283E745B8, &unk_283E745D0, &unk_283E745E8, &unk_283E74600, &unk_283E74618, &unk_283E74630, &unk_283E74648, &unk_283E74660, &unk_283E74678, &unk_283E74690, &unk_283E746A8, &unk_283E746C0, &unk_283E746D8, &unk_283E746F0, 0}];
    v29 = [v28 unsignedOpenClosedFixedIntervalMapper:v31];
    v30 = _dataSizeKBHistogram;
    _dataSizeKBHistogram = v29;
  }
}

@end