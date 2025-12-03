@interface HMEnrollmentService
- (BOOL)_isAudiogramValid:(id)valid;
- (HMEnrollmentService)initWithDeviceAddress:(id)address;
- (NSArray)invalidAudiograms;
- (NSArray)validAudiograms;
- (float)getAmplification;
- (float)getBalance;
- (float)getBeamFormer;
- (float)getNoiseSuppression;
- (float)getTone;
- (void)_accessoryReceivedHearingModeSettings:(id)settings;
- (void)_accessorySendHearingModeSettings;
- (void)_activate;
- (void)_audiogramsQueryHandler:(id)handler results:(id)results error:(id)error;
- (void)_getHearingModeSettings:(id *)settings fromAudiogram:(id)audiogram;
- (void)_invalidate;
- (void)_startAudiogramQuery;
- (void)activate;
- (void)invalidate;
- (void)resetTunings;
- (void)setAmplification:(float)amplification;
- (void)setBalance:(float)balance;
- (void)setBeamFormer:(float)former;
- (void)setNoiseSuppression:(float)suppression;
- (void)setSelectedAudiogram:(id)audiogram;
- (void)setTone:(float)tone;
- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler;
@end

@implementation HMEnrollmentService

- (HMEnrollmentService)initWithDeviceAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = HMEnrollmentService;
  v6 = [(HMEnrollmentService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v7->_bluetoothDeviceAddress, address);
    v7->_amplification = 0.5;
    *&v7->_tone = 0x3F0000003F000000;
    v8 = v7;
  }

  return v7;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMEnrollmentService_activate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    [HMEnrollmentService _activate];
  }

  [(HMEnrollmentService *)self _startAudiogramQuery];
  v3 = self->_accessoryManager;
  if (!v3)
  {
    v4 = objc_alloc_init(HMAccessoryManager);
    accessoryManager = self->_accessoryManager;
    self->_accessoryManager = v4;

    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __32__HMEnrollmentService__activate__block_invoke;
    v9 = &unk_2796EE978;
    selfCopy = self;
    v3 = v4;
    v11 = v3;
    [(HMAccessoryManager *)self->_accessoryManager setSettingsUpdateHandler:&v6];
    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _activate];
    }

    [(HMAccessoryManager *)v3 activateWithBluetoothDeviceAddress:self->_bluetoothDeviceAddress, v6, v7, v8, v9, selfCopy];
  }
}

void __32__HMEnrollmentService__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMEnrollmentService__activate__block_invoke_2;
  block[3] = &unk_2796EE950;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __32__HMEnrollmentService__activate__block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 8) == *(result + 40))
  {
    v2 = result;
    if (gLogCategory_HMEnrollmentService <= 10 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      __32__HMEnrollmentService__activate__block_invoke_2_cold_1(v2);
    }

    v3 = *(v2 + 32);
    v4 = *(v2 + 48);

    return [v3 _accessoryReceivedHearingModeSettings:v4];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMEnrollmentService_invalidate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  accessoryManager = self->_accessoryManager;
  if (accessoryManager)
  {
    [(HMAccessoryManager *)accessoryManager invalidate];
    [(HMAccessoryManager *)self->_accessoryManager setSettingsUpdateHandler:0];
    v4 = self->_accessoryManager;
    self->_accessoryManager = 0;
  }
}

- (NSArray)validAudiograms
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_validAudiograms;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)invalidAudiograms
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_invalidAudiograms;
  objc_sync_exit(selfCopy);

  return v3;
}

- (float)getAmplification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  amplification = selfCopy->_amplification;
  objc_sync_exit(selfCopy);

  return amplification;
}

- (void)setAmplification:(float)amplification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_amplification = amplification;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMEnrollmentService_setAmplification___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (float)getBalance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  balance = selfCopy->_balance;
  objc_sync_exit(selfCopy);

  return balance;
}

- (void)setBalance:(float)balance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_balance = balance;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMEnrollmentService_setBalance___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (float)getBeamFormer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  beamFormer = selfCopy->_beamFormer;
  objc_sync_exit(selfCopy);

  return beamFormer;
}

- (void)setBeamFormer:(float)former
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_beamFormer = former;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMEnrollmentService_setBeamFormer___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (float)getNoiseSuppression
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  noiseSuppression = selfCopy->_noiseSuppression;
  objc_sync_exit(selfCopy);

  return noiseSuppression;
}

- (void)setNoiseSuppression:(float)suppression
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_noiseSuppression = suppression;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMEnrollmentService_setNoiseSuppression___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)setSelectedAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selectedAudiogram = selfCopy->_selectedAudiogram;
  selfCopy->_selectedAudiogram = audiogramCopy;
  v7 = audiogramCopy;

  selfCopy->_amplification = 0.5;
  *&selfCopy->_tone = 0x3F0000003F000000;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMEnrollmentService_setSelectedAudiogram___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);

  objc_sync_exit(selfCopy);
}

- (float)getTone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  tone = selfCopy->_tone;
  objc_sync_exit(selfCopy);

  return tone;
}

- (void)setTone:(float)tone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_tone = tone;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMEnrollmentService_setTone___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMEnrollmentService_triggerOnDemandFaultCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796EE5E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)resetTunings
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&selfCopy->_tone = xmmword_251F84A20;
  selfCopy->_noiseSuppression = 0.0;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMEnrollmentService_resetTunings__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)_accessorySendHearingModeSettings
{
  v38 = 0.0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v3 = self->_currentConfig;
  v4 = v3;
  if (v3)
  {
    [(NSData *)v3 getBytes:v33 length:100];
  }

  else if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    [HMEnrollmentService _accessorySendHearingModeSettings];
  }

  LODWORD(v33[0]) = 6554113;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_selectedAudiogram;
  objc_sync_exit(selfCopy);

  if (v6)
  {
    [(HMEnrollmentService *)selfCopy _getHearingModeSettings:v33 fromAudiogram:v6];
  }

  if (gLogCategory_HMEnrollmentService <= 30)
  {
    v7 = *(v33 + 1);
    v8 = *(&v35 + 1);
    if (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize())
    {
      [(HMEnrollmentService *)v7 _accessorySendHearingModeSettings];
    }

    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [(HMEnrollmentService *)v8 _accessorySendHearingModeSettings];
    }
  }

  [(HMEnrollmentService *)selfCopy getTone];
  v10 = v9;
  [(HMEnrollmentService *)selfCopy getBalance];
  v12 = v11;
  [(HMEnrollmentService *)selfCopy getAmplification];
  v14 = v13;
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    v27 = v12;
    v28 = v14;
    v26 = v10;
    LogPrintF();
  }

  v15 = v10 * 2.0 + -1.0;
  v16 = v14 * 2.0 + -1.0;
  v17 = v12 * 2.0 + -1.0;
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    v27 = v17;
    v28 = v16;
    v26 = v15;
    LogPrintF();
  }

  v18 = fmax(fmin((v16 - (v17 * 0.5)), 1.5), -1.5);
  v19 = fmax(fmin(((v17 * 0.5) + v16), 1.5), -1.5);
  v20 = fmaxf(fminf(v15, 1.0), -1.0);
  *(&v34 + 4) = __PAIR64__(LODWORD(v20), LODWORD(v18));
  *(&v37 + 4) = __PAIR64__(LODWORD(v20), LODWORD(v19));
  beamFormer = selfCopy->_beamFormer;
  *(&v37 + 3) = beamFormer;
  noiseSuppression = selfCopy->_noiseSuppression;
  *(&v34 + 3) = beamFormer;
  *&v35 = noiseSuppression;
  v38 = noiseSuppression;
  if (gLogCategory_HMEnrollmentService <= 30)
  {
    if (gLogCategory_HMEnrollmentService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      v19 = *(&v37 + 1);
      v20 = *(&v34 + 2);
      v18 = *(&v34 + 1);
      beamFormer = *(&v34 + 3);
      noiseSuppression = *&v35;
    }

    v31 = beamFormer;
    v32 = noiseSuppression;
    v29 = v16;
    v30 = v17;
    v27 = v19;
    v28 = v20;
    v26 = v18;
    LogPrintF();
  }

LABEL_26:
  v23 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:{100, *&v26, *&v27, *&v28, *&v29, *&v30, *&v31, *&v32}];
  v24 = [v23 copy];
  currentConfig = self->_currentConfig;
  self->_currentConfig = v24;

  [(HMAccessoryManager *)selfCopy->_accessoryManager writeHearingModeSetting:self->_currentConfig];
}

- (void)_accessoryReceivedHearingModeSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
    [settingsCopy getBytes:v30 length:100];
    if (BYTE1(v30[0]) == 2)
    {
      v6 = LOBYTE(v30[0]);
      v8 = *(&v31 + 3);
      v7 = *&v32;
      v9 = fmax(fmin(*(&v31 + 1), 1.5), -1.5);
      v10 = fmax(fmin(*(&v34 + 1), 1.5), -1.5);
      v11 = fmaxf(fminf(*(&v34 + 2), 1.0), -1.0);
      v12 = v10 - v9;
      v13 = v10 + ((v10 - v9) * -0.5);
      if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
      {
        v28 = v8;
        noiseSuppression = v7;
        v26 = v13;
        v27 = v12;
        v24 = v10;
        v25 = v11;
        v23 = v9;
        v22 = v6;
        LogPrintF();
      }

      v14 = (v13 + 1.0) * 0.5;
      v15 = (v12 + 1.0) * 0.5;
      v16 = (v11 + 1.0) * 0.5;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      selfCopy->_tone = v16;
      selfCopy->_balance = v15;
      selfCopy->_amplification = v14;
      selfCopy->_beamFormer = v8;
      selfCopy->_noiseSuppression = v7;
      objc_sync_exit(selfCopy);

      if (gLogCategory_HMEnrollmentService <= 30)
      {
        v18 = *(v30 + 1);
        v19 = *(&v32 + 1);
        if (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize())
        {
          [HMEnrollmentService _accessoryReceivedHearingModeSettings:v18];
        }

        if (gLogCategory_HMEnrollmentService <= 30)
        {
          if (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize())
          {
            [HMEnrollmentService _accessoryReceivedHearingModeSettings:v19];
          }

          if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
          {
            v28 = v8;
            noiseSuppression = selfCopy->_noiseSuppression;
            v26 = v14;
            v27 = v15;
            v24 = v10;
            v25 = v16;
            v23 = v9;
            v22 = v6;
            LogPrintF();
          }
        }
      }

      v20 = [v5 mutableCopy];
      currentConfig = selfCopy->_currentConfig;
      selfCopy->_currentConfig = v20;
    }

    else if (gLogCategory_HMEnrollmentService <= 90 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _accessoryReceivedHearingModeSettings:];
    }
  }

  else if (gLogCategory_HMEnrollmentService <= 90 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    [HMEnrollmentService _accessoryReceivedHearingModeSettings:];
  }
}

- (void)_getHearingModeSettings:(id *)settings fromAudiogram:(id)audiogram
{
  v72 = [HMAudiogramUtility frequencyToHearingDecibelLevelMapFromAudiogram:audiogram];
  if (v72)
  {
    v5 = +[HMAudiogramUtility frequencyBins];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v72 objectForKey:v6];
    v8 = [v7 objectForKey:@"left"];
    [v8 floatValue];
    settings->var3.var0 = v9;

    v10 = [v5 objectAtIndexedSubscript:0];
    v11 = [v72 objectForKey:v10];
    v12 = [v11 objectForKey:@"right"];
    [v12 floatValue];
    settings->var4.var0 = v13;

    v14 = [v5 objectAtIndexedSubscript:1];
    v15 = [v72 objectForKey:v14];
    v16 = [v15 objectForKey:@"left"];
    [v16 floatValue];
    settings->var3.var1 = v17;

    v18 = [v5 objectAtIndexedSubscript:1];
    v19 = [v72 objectForKey:v18];
    v20 = [v19 objectForKey:@"right"];
    [v20 floatValue];
    settings->var4.var1 = v21;

    v22 = [v5 objectAtIndexedSubscript:2];
    v23 = [v72 objectForKey:v22];
    v24 = [v23 objectForKey:@"left"];
    [v24 floatValue];
    settings->var3.var2 = v25;

    v26 = [v5 objectAtIndexedSubscript:2];
    v27 = [v72 objectForKey:v26];
    v28 = [v27 objectForKey:@"right"];
    [v28 floatValue];
    settings->var4.var2 = v29;

    v30 = [v5 objectAtIndexedSubscript:3];
    v31 = [v72 objectForKey:v30];
    v32 = [v31 objectForKey:@"left"];
    [v32 floatValue];
    settings->var3.var3 = v33;

    v34 = [v5 objectAtIndexedSubscript:3];
    v35 = [v72 objectForKey:v34];
    v36 = [v35 objectForKey:@"right"];
    [v36 floatValue];
    settings->var4.var3 = v37;

    v38 = [v5 objectAtIndexedSubscript:5];
    v39 = [v72 objectForKey:v38];
    v40 = [v39 objectForKey:@"left"];
    [v40 floatValue];
    settings->var3.var5 = v41;

    v42 = [v5 objectAtIndexedSubscript:5];
    v43 = [v72 objectForKey:v42];
    v44 = [v43 objectForKey:@"right"];
    [v44 floatValue];
    settings->var4.var5 = v45;

    v46 = [v5 objectAtIndexedSubscript:7];
    v47 = [v72 objectForKey:v46];
    v48 = [v47 objectForKey:@"left"];
    [v48 floatValue];
    settings->var3.var7 = v49;

    v50 = [v5 objectAtIndexedSubscript:7];
    v51 = [v72 objectForKey:v50];
    v52 = [v51 objectForKey:@"right"];
    [v52 floatValue];
    settings->var4.var7 = v53;

    v54 = [v5 objectAtIndexedSubscript:4];
    v55 = [v72 objectForKey:v54];

    if (v55)
    {
      v56 = [v55 objectForKey:@"left"];
      [v56 floatValue];
      settings->var3.var4 = v57;

      v58 = [v55 objectForKey:@"right"];
      [v58 floatValue];
      settings->var4.var4 = v59;

      goto LABEL_8;
    }

    var4 = (settings->var3.var3 + settings->var3.var5) * 0.5;
    settings->var3.var4 = var4;
    v61 = (settings->var4.var3 + settings->var4.var5) * 0.5;
    settings->var4.var4 = v61;
    if (gLogCategory_HMEnrollmentService <= 30)
    {
      if (gLogCategory_HMEnrollmentService != -1)
      {
LABEL_6:
        v70 = var4;
        v71 = v61;
        LogPrintF();
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        var4 = settings->var3.var4;
        v61 = settings->var4.var4;
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
      settings->var3.var6 = v65;

      v66 = [v63 objectForKey:@"right"];
      [v66 floatValue];
      settings->var4.var6 = v67;
    }

    else
    {
      settings->var3.var6 = (settings->var3.var5 + settings->var3.var7) * 0.5;
      settings->var4.var6 = (settings->var4.var5 + settings->var4.var7) * 0.5;
      if (gLogCategory_HMEnrollmentService <= 30)
      {
        if (gLogCategory_HMEnrollmentService == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_14;
          }

          var6 = settings->var3.var6;
          v69 = settings->var4.var6;
        }

        LogPrintF();
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  [HMEnrollmentService _getHearingModeSettings:fromAudiogram:];
LABEL_15:
}

- (void)_startAudiogramQuery
{
  audiogramSampleType = [MEMORY[0x277CCD720] audiogramSampleType];
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMEnrollmentService__startAudiogramQuery__block_invoke;
  v7[3] = &unk_2796EE9C8;
  v7[4] = self;
  v6 = [v5 initWithSampleType:audiogramSampleType predicate:0 limit:0 sortDescriptors:0 resultsHandler:v7];
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    [HMEnrollmentService _startAudiogramQuery];
  }

  [v4 executeQuery:v6];
}

void __43__HMEnrollmentService__startAudiogramQuery__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__HMEnrollmentService__startAudiogramQuery__block_invoke_2;
  v15[3] = &unk_2796EE9A0;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

- (void)_audiogramsQueryHandler:(id)handler results:(id)results error:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  resultsCopy = results;
  errorCopy = error;
  if (errorCopy)
  {
    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _audiogramsQueryHandler:results:error:];
    }

    audiogramsAvailableHandler = self->_audiogramsAvailableHandler;
    if (audiogramsAvailableHandler)
    {
      (*(audiogramsAvailableHandler + 2))(audiogramsAvailableHandler, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], errorCopy);
    }
  }

  else
  {
    p_validAudiograms = &self->_validAudiograms;
    if (!self->_validAudiograms)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *p_validAudiograms;
      *p_validAudiograms = v12;
    }

    p_invalidAudiograms = &self->_invalidAudiograms;
    if (!self->_invalidAudiograms)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *p_invalidAudiograms;
      *p_invalidAudiograms = v15;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_audiograms, results);
    v29 = handlerCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = selfCopy->_audiograms;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if ([(HMEnrollmentService *)selfCopy _isAudiogramValid:v22])
          {
            v23 = p_validAudiograms;
          }

          else
          {
            v23 = p_invalidAudiograms;
          }

          [*v23 addObject:v22];
        }

        v19 = [(NSArray *)v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    handlerCopy = v29;
    objc_sync_exit(selfCopy);

    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _audiogramsQueryHandler:p_invalidAudiograms results:? error:?];
    }

    v25 = selfCopy->_audiogramsAvailableHandler;
    if (v25)
    {
      v26 = [*p_validAudiograms copy];
      v27 = [*p_invalidAudiograms copy];
      v25[2](v25, v26, v27, 0);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAudiogramValid:(id)valid
{
  validCopy = valid;
  v4 = [HMAudiogramUtility frequencyToHearingDecibelLevelMapFromAudiogram:validCopy];
  if (!v4)
  {
    [HMEnrollmentService _isAudiogramValid:?];
    v8 = v38;
    goto LABEL_20;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v5 = +[HMAudiogramUtility requiredFrequencyBins];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __41__HMEnrollmentService__isAudiogramValid___block_invoke;
  v34[3] = &unk_2796EE9F0;
  v6 = v4;
  v35 = v6;
  v7 = validCopy;
  v36 = v7;
  v37 = &v38;
  [v5 enumerateObjectsUsingBlock:v34];

  if (!v39[3])
  {
    v9 = [v6 objectForKey:&unk_286437CC8];
    v10 = [v6 objectForKey:&unk_286437CE0];
    v11 = [v6 objectForKey:&unk_286437CF8];
    v12 = [v9 objectForKey:@"left"];
    [v12 floatValue];
    v13 = [v10 objectForKey:@"left"];
    [v13 floatValue];

    v14 = [v9 objectForKey:@"right"];
    [v14 floatValue];
    v16 = v15;
    v17 = [v10 objectForKey:@"right"];
    [v17 floatValue];
    v19 = vabds_f32(v16, v18);

    if (v19 <= 20.0)
    {
      v25 = [v10 objectForKey:@"left"];
      [v25 floatValue];
      v26 = [v11 objectForKey:@"left"];
      [v26 floatValue];

      v27 = [v10 objectForKey:@"right"];
      [v27 floatValue];
      v29 = v28;
      v30 = [v11 objectForKey:@"right"];
      [v30 floatValue];
      v32 = vabds_f32(v29, v31);

      if (v32 <= 20.0)
      {
        v8 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (gLogCategory_HMEnrollmentService > 30 || gLogCategory_HMEnrollmentService == -1 && !_LogCategory_Initialize())
      {
LABEL_17:
        v8 = 0;
        goto LABEL_18;
      }

      sourceRevision = [v7 sourceRevision];
      source = [sourceRevision source];
      name = [source name];
      v23 = [v10 description];
      v24 = [v11 description];
      LogPrintF();
    }

    else
    {
      if (gLogCategory_HMEnrollmentService > 30 || gLogCategory_HMEnrollmentService == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      sourceRevision = [v7 sourceRevision];
      source = [sourceRevision source];
      name = [source name];
      v23 = [v9 description];
      v24 = [v10 description];
      LogPrintF();
    }

    goto LABEL_17;
  }

  v8 = 0;
LABEL_19:

  _Block_object_dispose(&v38, 8);
LABEL_20:

  return v8;
}

void __41__HMEnrollmentService__isAudiogramValid___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  v7 = v8;
  if (!v6)
  {
    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      __41__HMEnrollmentService__isAudiogramValid___block_invoke_cold_1(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v7 = v8;
  }
}

- (void)_getHearingModeSettings:fromAudiogram:.cold.1()
{
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1();
  }
}

- (uint64_t)_audiogramsQueryHandler:(id *)a1 results:(id *)a2 error:.cold.2(id *a1, id *a2)
{
  [*a1 count];
  [*a2 count];
  return LogPrintF();
}

- (uint64_t)_isAudiogramValid:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_HMEnrollmentService <= 30)
  {
    if (gLogCategory_HMEnrollmentService != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

void __41__HMEnrollmentService__isAudiogramValid___block_invoke_cold_1(uint64_t a1)
{
  v3 = [*(a1 + 40) sourceRevision];
  v1 = [v3 source];
  v2 = [v1 name];
  LogPrintF();
}

@end