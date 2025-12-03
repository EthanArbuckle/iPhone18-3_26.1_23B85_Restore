@interface HFCameraAudioManager
- (HFCameraAudioManager)initWithCameraProfile:(id)profile cameraStream:(id)stream valueManager:(id)manager;
- (float)incomingAudioVolume;
- (id)_enableAudioIfNecessaryForAudioControl:(id)control minVolume:(float)volume;
- (id)_readValuesForCharacteristics:(id)characteristics;
- (id)_writeValuesForCharacteristics:(id)characteristics;
- (id)enableRemoteMicrophoneIfNecessary;
- (id)enableRemoteSpeakerIfNecessary;
- (id)setIncomingAudioEnabled:(BOOL)enabled;
- (id)setIncomingAudioVolume:(float)volume;
- (id)setOutgoingAudioEnabled:(BOOL)enabled;
- (id)updateAudioStreamSetting:(unint64_t)setting;
- (unint64_t)audioStreamSetting;
@end

@implementation HFCameraAudioManager

- (HFCameraAudioManager)initWithCameraProfile:(id)profile cameraStream:(id)stream valueManager:(id)manager
{
  profileCopy = profile;
  streamCopy = stream;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = HFCameraAudioManager;
  v11 = [(HFCameraAudioManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HFCameraAudioManager *)v11 setCameraProfile:profileCopy];
    [(HFCameraAudioManager *)v12 setCameraStream:streamCopy];
    [(HFCameraAudioManager *)v12 setValueManager:managerCopy];
  }

  return v12;
}

- (unint64_t)audioStreamSetting
{
  cameraStream = [(HFCameraAudioManager *)self cameraStream];
  audioStreamSetting = [cameraStream audioStreamSetting];

  return audioStreamSetting;
}

- (float)incomingAudioVolume
{
  cameraStream = [(HFCameraAudioManager *)self cameraStream];
  audioVolume = [cameraStream audioVolume];
  [audioVolume floatValue];
  v5 = v4;

  return v5;
}

- (id)setOutgoingAudioEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = 3;
  }

  else
  {
    cameraStream = [(HFCameraAudioManager *)self cameraStream];
    audioStreamSetting = [cameraStream audioStreamSetting];

    if (audioStreamSetting == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return [(HFCameraAudioManager *)self updateAudioStreamSetting:v4];
}

- (id)setIncomingAudioEnabled:(BOOL)enabled
{
  if (enabled)
  {
    cameraStream = [(HFCameraAudioManager *)self cameraStream];
    audioStreamSetting = [cameraStream audioStreamSetting];

    if (audioStreamSetting == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  return [(HFCameraAudioManager *)self updateAudioStreamSetting:v6];
}

- (id)setIncomingAudioVolume:(float)volume
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    volumeCopy = volume;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Setting incoming audio volume to %.1f", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HFCameraAudioManager_setIncomingAudioVolume___block_invoke;
  v10[3] = &unk_277DF4668;
  v10[4] = self;
  volumeCopy2 = volume;
  v6 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v10];
  v7 = [v6 addFailureBlock:&__block_literal_global_21];
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

void __47__HFCameraAudioManager_setIncomingAudioVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 cameraStream];
  LODWORD(v5) = *(a1 + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v7 updateAudioVolume:v6 completionHandler:v4];
}

void __47__HFCameraAudioManager_setIncomingAudioVolume___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Error setting incoming audio volume:%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)updateAudioStreamSetting:(unint64_t)setting
{
  v29 = *MEMORY[0x277D85DE8];
  cameraProfile = [(HFCameraAudioManager *)self cameraProfile];
  streamControl = [cameraProfile streamControl];
  streamState = [streamControl streamState];

  v8 = HFLogForCategory(0x1CuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if ((streamState - 3) > 1)
  {
    if (v9)
    {
      if (setting - 1 >= 3)
      {
        NSLog(&cfstr_UnknownHmcamer.isa, setting);
        v11 = 0;
      }

      else
      {
        v11 = off_277DF4790[setting - 1];
      }

      cameraProfile2 = [(HFCameraAudioManager *)self cameraProfile];
      hf_prettyDescription = [cameraProfile2 hf_prettyDescription];
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updating audio stream setting to %@ for %@", buf, 0x16u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke;
    v24[3] = &unk_277DF46B0;
    v24[4] = self;
    v24[5] = setting;
    v17 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v24];
    v18 = [v17 addFailureBlock:&__block_literal_global_4_0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_5;
    v23[3] = &unk_277DF4700;
    v23[4] = self;
    v19 = [v17 addCompletionBlock:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_3;
    v22[3] = &unk_277DF4748;
    v22[4] = self;
    v22[5] = setting;
    futureWithNoResult = [v17 flatMap:v22];
  }

  else
  {
    if (v9)
    {
      if (setting - 1 >= 3)
      {
        NSLog(&cfstr_UnknownHmcamer.isa, setting);
        v10 = 0;
      }

      else
      {
        v10 = off_277DF4790[setting - 1];
      }

      cameraProfile3 = [(HFCameraAudioManager *)self cameraProfile];
      hf_prettyDescription2 = [cameraProfile3 hf_prettyDescription];
      *buf = 138412546;
      v26 = v10;
      v27 = 2112;
      v28 = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring request to update audio stream setting to %@ for %@, as the stream is stopping or has already stopped.", buf, 0x16u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v20 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cameraStream];
  [v5 updateAudioStreamSetting:*(a1 + 40) completionHandler:v4];
}

void __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Error updating audio stream setting:%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_2_7;
  v7[3] = &unk_277DF46D8;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  [v5 dispatchCameraObserverMessage:v7 sender:0];
}

void __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_2_7(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) cameraStream];
    [v4 cameraStream:v3 didUpdateAudioStreamSettingWithError:*(a1 + 40)];
  }
}

id __49__HFCameraAudioManager_updateAudioStreamSetting___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 40);
  if (v3 == 3)
  {
    v4 = [*(a1 + 32) enableRemoteSpeakerIfNecessary];
    [v2 addObject:v4];

    v3 = *(a1 + 40);
  }

  if (v3 != 1)
  {
    v5 = [*(a1 + 32) enableRemoteMicrophoneIfNecessary];
    [v2 addObject:v5];
  }

  v6 = [MEMORY[0x277D2C900] combineAllFutures:v2];
  v7 = [v6 flatMap:&__block_literal_global_15];

  return v7;
}

- (id)enableRemoteSpeakerIfNecessary
{
  cameraProfile = [(HFCameraAudioManager *)self cameraProfile];
  speakerControl = [cameraProfile speakerControl];
  LODWORD(v5) = 0.5;
  v6 = [(HFCameraAudioManager *)self _enableAudioIfNecessaryForAudioControl:speakerControl minVolume:v5];

  return v6;
}

- (id)enableRemoteMicrophoneIfNecessary
{
  cameraProfile = [(HFCameraAudioManager *)self cameraProfile];
  microphoneControl = [cameraProfile microphoneControl];
  LODWORD(v5) = 0.5;
  v6 = [(HFCameraAudioManager *)self _enableAudioIfNecessaryForAudioControl:microphoneControl minVolume:v5];

  return v6;
}

- (id)_enableAudioIfNecessaryForAudioControl:(id)control minVolume:(float)volume
{
  controlCopy = control;
  v7 = [MEMORY[0x277CBEB58] set];
  mute = [controlCopy mute];
  [v7 na_safeAddObject:mute];

  volume = [controlCopy volume];
  [v7 na_safeAddObject:volume];

  if ([v7 count])
  {
    v10 = [(HFCameraAudioManager *)self _readValuesForCharacteristics:v7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__HFCameraAudioManager__enableAudioIfNecessaryForAudioControl_minVolume___block_invoke;
    v13[3] = &unk_277DF4770;
    volumeCopy = volume;
    v14 = controlCopy;
    selfCopy = self;
    futureWithNoResult = [v10 flatMap:v13];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __73__HFCameraAudioManager__enableAudioIfNecessaryForAudioControl_minVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mute];
  v6 = [v5 characteristicType];
  v7 = [v4 responseForCharacteristicType:v6];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [*(a1 + 32) volume];
  v10 = [v9 characteristicType];
  v11 = [v4 responseForCharacteristicType:v10];

  v12 = [v11 valueWithExpectedClass:objc_opt_class()];

  if (v8)
  {
    v13 = [v8 BOOLValue];
    if (v12)
    {
LABEL_3:
      v14 = [*(a1 + 32) volume];
      v15 = [v14 metadata];
      v16 = [v15 hf_percentageForCharacteristicValue:v12];

      [v16 floatValue];
      v18 = v17 < *(a1 + 48);

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if ((v13 | v18))
  {
    v19 = objc_alloc_init(HFCharacteristicValueSet);
    if (v13)
    {
      v20 = [*(a1 + 32) mute];
      [(HFCharacteristicValueSet *)v19 setValue:MEMORY[0x277CBEC28] forCharacteristic:v20];
    }

    if (v18)
    {
      v21 = [*(a1 + 32) volume];
      v22 = [v21 metadata];
      v23 = [v22 hf_characteristicValueForPercentage:*(a1 + 48)];

      if (v23)
      {
        v24 = [*(a1 + 32) volume];
        [(HFCharacteristicValueSet *)v19 setValue:v23 forCharacteristic:v24];
      }
    }

    v25 = [*(a1 + 40) _writeValuesForCharacteristics:v19];
  }

  else
  {
    v25 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v25;
}

- (id)_readValuesForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  valueManager = [(HFCameraAudioManager *)self valueManager];
  v6 = objc_opt_new();
  [valueManager beginTransactionWithReason:@"HFCameraAudioManagerReadReason" readPolicy:v6 logger:0];

  valueManager2 = [(HFCameraAudioManager *)self valueManager];
  v8 = [valueManager2 readValuesForCharacteristics:characteristicsCopy];

  valueManager3 = [(HFCameraAudioManager *)self valueManager];
  [valueManager3 commitTransactionWithReason:@"HFCameraAudioManagerReadReason"];

  return v8;
}

- (id)_writeValuesForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  valueManager = [(HFCameraAudioManager *)self valueManager];
  v6 = objc_opt_new();
  [valueManager beginTransactionWithReason:@"HFCameraAudioManagerWriteReason" readPolicy:v6 logger:0];

  valueManager2 = [(HFCameraAudioManager *)self valueManager];
  v8 = [valueManager2 writeValuesForCharacteristics:characteristicsCopy];

  valueManager3 = [(HFCameraAudioManager *)self valueManager];
  [valueManager3 commitTransactionWithReason:@"HFCameraAudioManagerWriteReason"];

  return v8;
}

@end