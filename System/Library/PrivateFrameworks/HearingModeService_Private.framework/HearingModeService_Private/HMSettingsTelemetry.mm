@interface HMSettingsTelemetry
+ (id)sharedInstance;
- (HMSettingsTelemetry)init;
- (void)_sendSettingsChanges:(id)changes record:(id)record;
- (void)sendSettingsChanges:(id)changes record:(id)record;
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

- (void)sendSettingsChanges:(id)changes record:(id)record
{
  changesCopy = changes;
  recordCopy = record;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMSettingsTelemetry_sendSettingsChanges_record___block_invoke;
  block[3] = &unk_2796F00A0;
  block[4] = self;
  v12 = changesCopy;
  v13 = recordCopy;
  v9 = recordCopy;
  v10 = changesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendSettingsChanges:(id)changes record:(id)record
{
  changesCopy = changes;
  recordCopy = record;
  if (changesCopy && recordCopy)
  {
    if ([changesCopy allowListeningModeOff])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy allowListeningModeOff], @"OffListeningMode", recordCopy);
    }

    amplification = [changesCopy amplification];

    if (amplification)
    {
      amplification2 = [changesCopy amplification];
      v9 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:amplification2];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v9 forFeature:@"Amplification" forDevice:recordCopy];
    }

    balance = [changesCopy balance];

    if (balance)
    {
      balance2 = [changesCopy balance];
      v12 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:balance2];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v12 forFeature:@"Balance" forDevice:recordCopy];
    }

    beamFormer = [changesCopy beamFormer];

    if (beamFormer)
    {
      beamFormer2 = [changesCopy beamFormer];
      v15 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:beamFormer2];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v15 forFeature:@"ConversationBoost" forDevice:recordCopy];
    }

    if ([changesCopy enableMediaAssist])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enableMediaAssist], @"MediaAssist", recordCopy);
    }

    if ([changesCopy enablePMEMedia])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enablePMEMedia], @"PMEMedia", recordCopy);
    }

    if ([changesCopy enablePMEVoice])
    {
      -[HMSettingsTelemetry _submitFeaturesChangeMetrics:forFeature:forDevice:](self, "_submitFeaturesChangeMetrics:forFeature:forDevice:", [changesCopy enablePMEVoice], @"PMEVoice", recordCopy);
    }

    noiseSuppression = [changesCopy noiseSuppression];

    if (noiseSuppression)
    {
      noiseSuppression2 = [changesCopy noiseSuppression];
      v18 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:noiseSuppression2];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v18 forFeature:@"AmbientNoiseReduction" forDevice:recordCopy];
    }

    ownVoiceLevelGain = [changesCopy ownVoiceLevelGain];

    if (ownVoiceLevelGain)
    {
      ownVoiceLevelGain2 = [changesCopy ownVoiceLevelGain];
      v21 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:ownVoiceLevelGain2];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v21 forFeature:@"OwnVoiceLevelGain" forDevice:recordCopy];
    }

    tone = [changesCopy tone];

    if (tone)
    {
      tone2 = [changesCopy tone];
      v24 = [(HMSettingsTelemetry *)self _convertToServerBucketValue:tone2];

      [(HMSettingsTelemetry *)self _submitFeaturesChangeMetrics:v24 forFeature:@"Tone" forDevice:recordCopy];
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