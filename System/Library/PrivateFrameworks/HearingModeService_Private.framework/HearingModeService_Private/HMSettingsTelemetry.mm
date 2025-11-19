@interface HMSettingsTelemetry
+ (id)sharedInstance;
- (HMSettingsTelemetry)init;
- (void)_sendSettingsChanges:(id)a3 record:(id)a4;
- (void)sendSettingsChanges:(id)a3 record:(id)a4;
@end

@implementation HMSettingsTelemetry

+ (id)sharedInstance
{
  if (sharedInstance_sOnce != -1)
  {
    +[HMSettingsTelemetry sharedInstance];
  }

  v3 = sharedInstance_sSelf;

  return v3;
}

uint64_t __37__HMSettingsTelemetry_sharedInstance__block_invoke()
{
  sharedInstance_sSelf = objc_alloc_init(HMSettingsTelemetry);

  return MEMORY[0x2821F96F8]();
}

- (HMSettingsTelemetry)init
{
  v8.receiver = self;
  v8.super_class = HMSettingsTelemetry;
  v2 = [(HMSettingsTelemetry *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("HMSettingsTelemetry", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)sendSettingsChanges:(id)a3 record:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMSettingsTelemetry_sendSettingsChanges_record___block_invoke;
  block[3] = &unk_2796F00A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendSettingsChanges:(id)a3 record:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (v25 && v6)
  {
    if ([v25 allowListeningModeOff])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v25 allowListeningModeOff], @"OffListeningMode", v6);
    }

    v7 = [v25 amplification];

    if (v7)
    {
      v8 = [v25 amplification];
      v9 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:v8];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v9 forFeature:@"Amplification" forDevice:v6];
    }

    v10 = [v25 balance];

    if (v10)
    {
      v11 = [v25 balance];
      v12 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:v11];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v12 forFeature:@"Balance" forDevice:v6];
    }

    v13 = [v25 beamFormer];

    if (v13)
    {
      v14 = [v25 beamFormer];
      v15 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:v14];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v15 forFeature:@"ConversationBoost" forDevice:v6];
    }

    if ([v25 enableMediaAssist])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v25 enableMediaAssist], @"MediaAssist", v6);
    }

    if ([v25 enablePMEMedia])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v25 enablePMEMedia], @"PMEMedia", v6);
    }

    if ([v25 enablePMEVoice])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [v25 enablePMEVoice], @"PMEVoice", v6);
    }

    v16 = [v25 noiseSuppression];

    if (v16)
    {
      v17 = [v25 noiseSuppression];
      v18 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:v17];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v18 forFeature:@"AmbientNoiseReduction" forDevice:v6];
    }

    v19 = [v25 ownVoiceLevelGain];

    if (v19)
    {
      v20 = [v25 ownVoiceLevelGain];
      v21 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:v20];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v21 forFeature:@"OwnVoiceLevelGain" forDevice:v6];
    }

    v22 = [v25 tone];

    if (v22)
    {
      v23 = [v25 tone];
      v24 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:v23];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v24 forFeature:@"Tone" forDevice:v6];
    }
  }

  else
  {
    [HMSettingsTelemetry _sendSettingsChanges:record:];
  }
}

- (void)_sendSettingsChanges:record:.cold.1()
{
  if (gLogCategory_HMSettingsTelemetry <= 90 && (gLogCategory_HMSettingsTelemetry != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

@end