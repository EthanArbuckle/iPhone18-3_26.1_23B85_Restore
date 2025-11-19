@interface HMDeviceConfigurations
- (BOOL)needsUpdateToAHPSConnectionManagerForDevice:(id)a3;
- (BOOL)needsUpdateToDeviceManagerForDevice:(id)a3;
- (BOOL)needsUpdateToPMEConfigurationForDevice:(id)a3;
- (BOOL)restoreConfigsFromCloudRecordIfNeeded:(id)a3;
- (BOOL)setEnableHearingAssistIfNeeded:(id)a3;
- (HMDeviceConfigurations)init;
- (HMDeviceConfigurations)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setupConfigsForPPEIfNeeded:(id)a3 completion:(id)a4;
- (void)updateVolumeIOS:(id)a3 completion:(id)a4;
@end

@implementation HMDeviceConfigurations

- (HMDeviceConfigurations)init
{
  v6.receiver = self;
  v6.super_class = HMDeviceConfigurations;
  v2 = [(HMDeviceConfigurations *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (HMDeviceConfigurations)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDeviceConfigurations *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowListeningModeOff = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAid = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingProtection = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingProtectionPPE = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableMediaAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enablePMEMedia = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enablePMEVoice = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableSwipeGain = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enrollHearingAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enrollPMEVoice = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = HMEarLossDataToArray(v5->_mediaLossDataLeft);
    mediaLossArrayLeft = v5->_mediaLossArrayLeft;
    v5->_mediaLossArrayLeft = v6;

    v8 = HMEarLossDataToArray(v5->_mediaLossDataRight);
    mediaLossArrayRight = v5->_mediaLossArrayRight;
    v5->_mediaLossArrayRight = v8;

    v10 = HMEarLossDataToArray(v5->_voiceLossDataLeft);
    voiceLossArrayLeft = v5->_voiceLossArrayLeft;
    v5->_voiceLossArrayLeft = v10;

    v12 = HMEarLossDataToArray(v5->_voiceLossDataRight);
    voiceLossArrayRight = v5->_voiceLossArrayRight;
    v5->_voiceLossArrayRight = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  v4 = HMEarLossArrayToData(self->_mediaLossArrayLeft);
  mediaLossDataLeft = self->_mediaLossDataLeft;
  self->_mediaLossDataLeft = v4;

  v6 = HMEarLossArrayToData(self->_mediaLossArrayRight);
  mediaLossDataRight = self->_mediaLossDataRight;
  self->_mediaLossDataRight = v6;

  v8 = HMEarLossArrayToData(self->_voiceLossArrayLeft);
  voiceLossDataLeft = self->_voiceLossDataLeft;
  self->_voiceLossDataLeft = v8;

  v10 = HMEarLossArrayToData(self->_voiceLossArrayRight);
  voiceLossDataRight = self->_voiceLossDataRight;
  self->_voiceLossDataRight = v10;

  if (self->_allowListeningModeOff)
  {
    [v24 encodeInteger:? forKey:?];
  }

  amplification = self->_amplification;
  if (amplification)
  {
    [v24 encodeObject:amplification forKey:@"ampl"];
  }

  balance = self->_balance;
  v14 = v24;
  if (balance)
  {
    [v24 encodeObject:balance forKey:@"balc"];
    v14 = v24;
  }

  beamFormer = self->_beamFormer;
  if (beamFormer)
  {
    [v24 encodeObject:beamFormer forKey:@"bmFm"];
    v14 = v24;
  }

  if (self->_enableHearingAid)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enableHearingAssist)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enableHearingProtection)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enableHearingProtectionPPE)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enableMediaAssist)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enablePMEMedia)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enablePMEVoice)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enableSwipeGain)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enrollHearingAssist)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  if (self->_enrollPMEVoice)
  {
    [v24 encodeInteger:? forKey:?];
    v14 = v24;
  }

  v16 = self->_mediaLossDataLeft;
  if (v16)
  {
    [v24 encodeObject:v16 forKey:@"mLDL"];
    v14 = v24;
  }

  v17 = self->_mediaLossDataRight;
  if (v17)
  {
    [v24 encodeObject:v17 forKey:@"mLDR"];
    v14 = v24;
  }

  noiseSuppression = self->_noiseSuppression;
  if (noiseSuppression)
  {
    [v24 encodeObject:noiseSuppression forKey:@"nsSp"];
    v14 = v24;
  }

  ownVoiceLevelGain = self->_ownVoiceLevelGain;
  if (ownVoiceLevelGain)
  {
    [v24 encodeObject:ownVoiceLevelGain forKey:@"oVLG"];
    v14 = v24;
  }

  selectedAudiogram = self->_selectedAudiogram;
  if (selectedAudiogram)
  {
    [v24 encodeObject:selectedAudiogram forKey:@"Agrm"];
    v14 = v24;
  }

  tone = self->_tone;
  if (tone)
  {
    [v24 encodeObject:tone forKey:@"tone"];
    v14 = v24;
  }

  v22 = self->_voiceLossDataLeft;
  if (v22)
  {
    [v24 encodeObject:v22 forKey:@"vLDL"];
    v14 = v24;
  }

  v23 = self->_voiceLossDataRight;
  if (v23)
  {
    [v24 encodeObject:v23 forKey:@"vLDR"];
    v14 = v24;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v78 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v5 = 0;

  amplification = self->_amplification;
  if (amplification)
  {
    v78 = amplification;
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  balance = self->_balance;
  if (balance)
  {
    v78 = balance;
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  beamFormer = self->_beamFormer;
  if (beamFormer)
  {
    v78 = beamFormer;
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  enableHearingAid = self->_enableHearingAid;
  if (self->_enableHearingAid)
  {
    if (enableHearingAid == 1)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "?";
    }

    if (enableHearingAid == 2)
    {
      v14 = "No";
    }

    else
    {
      v14 = v13;
    }

    v78 = v14;
    NSAppendPrintF_safe();
    v15 = v5;

    v5 = v15;
  }

  enableHearingAssist = self->_enableHearingAssist;
  if (self->_enableHearingAssist)
  {
    if (enableHearingAssist == 1)
    {
      v17 = "Yes";
    }

    else
    {
      v17 = "?";
    }

    if (enableHearingAssist == 2)
    {
      v18 = "No";
    }

    else
    {
      v18 = v17;
    }

    v78 = v18;
    NSAppendPrintF_safe();
    v19 = v5;

    v5 = v19;
  }

  enableHearingProtection = self->_enableHearingProtection;
  if (self->_enableHearingProtection)
  {
    if (enableHearingProtection == 1)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "?";
    }

    if (enableHearingProtection == 2)
    {
      v22 = "No";
    }

    else
    {
      v22 = v21;
    }

    v78 = v22;
    NSAppendPrintF_safe();
    v23 = v5;

    v5 = v23;
  }

  enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
  if (self->_enableHearingProtectionPPE)
  {
    if (enableHearingProtectionPPE == 1)
    {
      v25 = "Yes";
    }

    else
    {
      v25 = "?";
    }

    if (enableHearingProtectionPPE == 2)
    {
      v26 = "No";
    }

    else
    {
      v26 = v25;
    }

    v78 = v26;
    NSAppendPrintF_safe();
    v27 = v5;

    v5 = v27;
  }

  enableMediaAssist = self->_enableMediaAssist;
  if (self->_enableMediaAssist)
  {
    if (enableMediaAssist == 1)
    {
      v29 = "Yes";
    }

    else
    {
      v29 = "?";
    }

    if (enableMediaAssist == 2)
    {
      v30 = "No";
    }

    else
    {
      v30 = v29;
    }

    v78 = v30;
    NSAppendPrintF_safe();
    v31 = v5;

    v5 = v31;
  }

  enablePMEMedia = self->_enablePMEMedia;
  if (self->_enablePMEMedia)
  {
    if (enablePMEMedia == 1)
    {
      v33 = "Yes";
    }

    else
    {
      v33 = "?";
    }

    if (enablePMEMedia == 2)
    {
      v34 = "No";
    }

    else
    {
      v34 = v33;
    }

    v78 = v34;
    NSAppendPrintF_safe();
    v35 = v5;

    v5 = v35;
  }

  enablePMEVoice = self->_enablePMEVoice;
  if (self->_enablePMEVoice)
  {
    if (enablePMEVoice == 1)
    {
      v37 = "Yes";
    }

    else
    {
      v37 = "?";
    }

    if (enablePMEVoice == 2)
    {
      v38 = "No";
    }

    else
    {
      v38 = v37;
    }

    v78 = v38;
    NSAppendPrintF_safe();
    v39 = v5;

    v5 = v39;
  }

  enableSwipeGain = self->_enableSwipeGain;
  if (self->_enableSwipeGain)
  {
    if (enableSwipeGain == 1)
    {
      v41 = "Yes";
    }

    else
    {
      v41 = "?";
    }

    if (enableSwipeGain == 2)
    {
      v42 = "No";
    }

    else
    {
      v42 = v41;
    }

    v78 = v42;
    NSAppendPrintF_safe();
    v43 = v5;

    v5 = v43;
  }

  enrollHearingAssist = self->_enrollHearingAssist;
  if (self->_enrollHearingAssist)
  {
    if (enrollHearingAssist == 1)
    {
      v45 = "Yes";
    }

    else
    {
      v45 = "?";
    }

    if (enrollHearingAssist == 2)
    {
      v46 = "No";
    }

    else
    {
      v46 = v45;
    }

    v78 = v46;
    NSAppendPrintF_safe();
    v47 = v5;

    v5 = v47;
  }

  enrollPMEVoice = self->_enrollPMEVoice;
  if (self->_enrollPMEVoice)
  {
    if (enrollPMEVoice == 1)
    {
      v49 = "Yes";
    }

    else
    {
      v49 = "?";
    }

    if (enrollPMEVoice == 2)
    {
      v50 = "No";
    }

    else
    {
      v50 = v49;
    }

    v78 = v50;
    NSAppendPrintF_safe();
    v51 = v5;

    v5 = v51;
  }

  allowListeningModeOff = self->_allowListeningModeOff;
  if (self->_allowListeningModeOff)
  {
    if (allowListeningModeOff == 1)
    {
      v53 = "Yes";
    }

    else
    {
      v53 = "?";
    }

    if (allowListeningModeOff == 2)
    {
      v54 = "No";
    }

    else
    {
      v54 = v53;
    }

    v78 = v54;
    NSAppendPrintF_safe();
    v55 = v5;

    v5 = v55;
  }

  mediaLossArrayLeft = self->_mediaLossArrayLeft;
  if (mediaLossArrayLeft)
  {
    v57 = mediaLossArrayLeft;
    v79 = [(NSArray *)v57 firstObject];
    NSAppendPrintF_safe();
    v58 = v5;

    v5 = v58;
  }

  mediaLossArrayRight = self->_mediaLossArrayRight;
  if (mediaLossArrayRight)
  {
    v60 = mediaLossArrayRight;
    v80 = [(NSArray *)v60 firstObject];
    NSAppendPrintF_safe();
    v61 = v5;

    v5 = v61;
  }

  noiseSuppression = self->_noiseSuppression;
  if (noiseSuppression)
  {
    v81 = noiseSuppression;
    NSAppendPrintF_safe();
    v63 = v5;

    v5 = v63;
  }

  ownVoiceLevelGain = self->_ownVoiceLevelGain;
  if (ownVoiceLevelGain)
  {
    v82 = ownVoiceLevelGain;
    NSAppendPrintF_safe();
    v65 = v5;

    v5 = v65;
  }

  selectedAudiogram = self->_selectedAudiogram;
  if (selectedAudiogram)
  {
    v83 = selectedAudiogram;
    NSAppendPrintF_safe();
    v67 = v5;

    v5 = v67;
  }

  tone = self->_tone;
  if (tone)
  {
    v84 = tone;
    NSAppendPrintF_safe();
    v69 = v5;

    v5 = v69;
  }

  voiceLossArrayLeft = self->_voiceLossArrayLeft;
  if (voiceLossArrayLeft)
  {
    v71 = voiceLossArrayLeft;
    v85 = [(NSArray *)v71 firstObject];
    NSAppendPrintF_safe();
    v72 = v5;

    v5 = v72;
  }

  voiceLossArrayRight = self->_voiceLossArrayRight;
  if (voiceLossArrayRight)
  {
    v74 = voiceLossArrayRight;
    v86 = [(NSArray *)v74 firstObject];
    NSAppendPrintF_safe();
    v75 = v5;

    v5 = v75;
  }

  if (a3 < 21)
  {
    NSAppendPrintF_safe();
    v76 = v5;

    v5 = v76;
  }

  return v5;
}

- (BOOL)needsUpdateToAHPSConnectionManagerForDevice:(id)a3
{
  v4 = a3;
  selectedAudiogram = self->_selectedAudiogram;
  v6 = selectedAudiogram != 0;
  if (selectedAudiogram)
  {
    amplification = self->_amplification;
    self->_amplification = &unk_286437A30;

    balance = self->_balance;
    self->_balance = &unk_286437A30;

    ownVoiceLevelGain = self->_ownVoiceLevelGain;
    self->_ownVoiceLevelGain = &unk_286437A30;

    tone = self->_tone;
    self->_tone = &unk_286437A30;

    noiseSuppression = self->_noiseSuppression;
    self->_noiseSuppression = &unk_286437AD0;

    beamFormer = self->_beamFormer;
    self->_beamFormer = &unk_286437AD0;
  }

  v13 = self->_amplification;
  if (v13)
  {
    [(NSNumber *)v13 floatValue];
    v15 = v14;
    v16 = [v4 amplification];
    [v16 floatValue];
    v18 = v17;

    if (v15 != v18)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:v4];
      }

      v6 = 1;
    }
  }

  v19 = self->_balance;
  if (v19)
  {
    [(NSNumber *)v19 floatValue];
    v21 = v20;
    v22 = [v4 balance];
    [v22 floatValue];
    v24 = v23;

    if (v21 != v24)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:v4];
      }

      v6 = 1;
    }
  }

  v25 = self->_beamFormer;
  if (v25)
  {
    [(NSNumber *)v25 floatValue];
    v27 = v26;
    v28 = [v4 beamFormer];
    [v28 floatValue];
    v30 = v29;

    if (v27 != v30)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:v4];
      }

      v6 = 1;
    }
  }

  v31 = self->_noiseSuppression;
  if (v31)
  {
    [(NSNumber *)v31 floatValue];
    v33 = v32;
    v34 = [v4 noiseSuppression];
    [v34 floatValue];
    v36 = v35;

    if (v33 != v36)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:v4];
      }

      v6 = 1;
    }
  }

  v37 = self->_ownVoiceLevelGain;
  if (v37)
  {
    [(NSNumber *)v37 floatValue];
    v39 = v38;
    v40 = [v4 ownVoiceLevelGain];
    [v40 floatValue];
    v42 = v41;

    if (v39 != v42)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:v4];
      }

      v6 = 1;
    }
  }

  v43 = self->_tone;
  if (v43)
  {
    [(NSNumber *)v43 floatValue];
    v45 = v44;
    v46 = [v4 tone];
    [v46 floatValue];
    v48 = v47;

    if (v45 != v48)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:v4];
      }

      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)needsUpdateToDeviceManagerForDevice:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_4;
  }

  allowListeningModeOff = self->_allowListeningModeOff;
  if (self->_allowListeningModeOff)
  {
    if (allowListeningModeOff == [v4 listeningModeOffAllowed])
    {
LABEL_4:
      LOBYTE(allowListeningModeOff) = 0;
      goto LABEL_5;
    }

    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:v4];
    }

    LOBYTE(allowListeningModeOff) = 1;
  }

LABEL_5:
  if (self->_enrollHearingAssist)
  {
    enrollHearingAssist = self->_enrollHearingAssist;
    if (enrollHearingAssist != [v4 hearingAssistEnrolled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:v4];
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  if (self->_enableHearingAid)
  {
    enableHearingAid = self->_enableHearingAid;
    if (enableHearingAid != [v4 hearingAidEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:v4];
      }

      if (self->_enableHearingAid == 2)
      {
        self->_enableSwipeGain = 2;
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  if (self->_enableSwipeGain)
  {
    enableSwipeGain = self->_enableSwipeGain;
    if (enableSwipeGain != [v4 swipeGainEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:v4];
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  if (self->_selectedAudiogram)
  {
    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [(HMDeviceConfigurations *)v4 needsUpdateToDeviceManagerForDevice:?];
    }

    LOBYTE(allowListeningModeOff) = 1;
  }

  if (_os_feature_enabled_impl())
  {
    enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
    if (enableHearingProtectionPPE != [v4 hearingProtectionPPEEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:v4];
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  v10 = [(HMDeviceConfigurations *)self setEnableHearingAssistIfNeeded:v4];

  return allowListeningModeOff | v10;
}

- (BOOL)needsUpdateToPMEConfigurationForDevice:(id)a3
{
  v4 = a3;
  enableMediaAssist = self->_enableMediaAssist;
  v6 = self->_enableMediaAssist != 0;
  if (self->_enableMediaAssist)
  {
    if (gLogCategory_HMDeviceConfigurations <= 30)
    {
      if (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize())
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:v4];
      }

      enableMediaAssist = self->_enableMediaAssist;
    }

    if (enableMediaAssist == 2)
    {
      *&self->_enablePMEMedia = 514;
    }
  }

  if (self->_enablePMEMedia)
  {
    enablePMEMedia = self->_enablePMEMedia;
    if (enablePMEMedia != [v4 pmeMediaEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:v4];
      }

      v6 = 1;
    }
  }

  if (self->_enablePMEVoice)
  {
    enablePMEVoice = self->_enablePMEVoice;
    if (enablePMEVoice != [v4 pmeVoiceEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:v4];
      }

      v6 = 1;
    }
  }

  if (self->_enrollPMEVoice)
  {
    enrollPMEVoice = self->_enrollPMEVoice;
    if (enrollPMEVoice != [v4 pmeVoiceEnrolled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:v4];
      }

      v6 = 1;
    }
  }

  mediaLossDataLeft = self->_mediaLossDataLeft;
  if (mediaLossDataLeft)
  {
    v11 = [v4 pmeMediaLossDataLeft];
    v12 = mediaLossDataLeft;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {

      goto LABEL_37;
    }

    if (v13)
    {
      v15 = [(NSData *)v12 isEqual:v13];

      if (v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:];
    }

    v6 = 1;
  }

LABEL_37:
  mediaLossDataRight = self->_mediaLossDataRight;
  if (!mediaLossDataRight)
  {
    goto LABEL_48;
  }

  v17 = [v4 pmeMediaLossDataRight];
  v18 = mediaLossDataRight;
  v19 = v17;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_48;
  }

  if (v19)
  {
    v21 = [(NSData *)v18 isEqual:v19];

    if (v21)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:];
  }

  v6 = 1;
LABEL_48:
  voiceLossDataLeft = self->_voiceLossDataLeft;
  if (!voiceLossDataLeft)
  {
    goto LABEL_59;
  }

  v23 = [v4 pmeVoiceLossDataLeft];
  v24 = voiceLossDataLeft;
  v25 = v23;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_59;
  }

  if (v25)
  {
    v27 = [(NSData *)v24 isEqual:v25];

    if (v27)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:];
  }

  v6 = 1;
LABEL_59:
  voiceLossDataRight = self->_voiceLossDataRight;
  if (voiceLossDataRight)
  {
    v29 = [v4 pmeVoiceLossDataRight];
    v30 = voiceLossDataRight;
    v31 = v29;
    v32 = v31;
    if (v30 == v31)
    {
    }

    else
    {
      if (v31)
      {
        v33 = [(NSData *)v30 isEqual:v31];

        if (v33)
        {
          goto LABEL_70;
        }
      }

      else
      {
      }

      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:];
      }

      v6 = 1;
    }
  }

LABEL_70:

  return v6;
}

- (void)setupConfigsForPPEIfNeeded:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
  if (enableHearingProtectionPPE == 2)
  {
    [(HMDeviceConfigurations *)self updateVolumeIOS:v8 completion:v6];
  }

  else
  {
    if (enableHearingProtectionPPE == 1)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations setupConfigsForPPEIfNeeded:v8 completion:?];
      }

      self->_enableHearingProtection = 1;
      self->_allowListeningModeOff = 2;
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (BOOL)restoreConfigsFromCloudRecordIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 cloudRecord];

  if (v5)
  {
    if (self->_enableHearingAid == 1 && !self->_enableSwipeGain && ([v4 cloudRecord], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "swipeGainEnabled"), v10, v11))
    {
      p_enableMediaAssist = &self->_enableMediaAssist;
      enableMediaAssist = self->_enableMediaAssist;
      self->_enableSwipeGain = v11;
      if (enableMediaAssist != 1)
      {
LABEL_21:
        if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceConfigurations restoreConfigsFromCloudRecordIfNeeded:];
        }

        LOBYTE(v6) = 1;
        goto LABEL_25;
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
      p_enableMediaAssist = &self->_enableMediaAssist;
      if (self->_enableMediaAssist != 1)
      {
        goto LABEL_25;
      }
    }

    if (!self->_enablePMEMedia)
    {
      v8 = [v4 cloudRecord];
      v9 = [v8 pmeMediaEnabled];

      if (v9)
      {
        self->_enablePMEMedia = v9;
        v6 = 1;
      }
    }

    if (*p_enableMediaAssist == 1 && !self->_enablePMEVoice && ([v4 cloudRecord], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "pmeVoiceEnabled"), v13, v14))
    {
      self->_enablePMEVoice = v14;
    }

    else if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (gLogCategory_HMDeviceConfigurations <= 90 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceConfigurations restoreConfigsFromCloudRecordIfNeeded:v4];
  }

  LOBYTE(v6) = 0;
LABEL_25:

  return v6;
}

- (BOOL)setEnableHearingAssistIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  enableMediaAssist = self->_enableMediaAssist;
  enableHearingAid = self->_enableHearingAid;
  if (self->_enableMediaAssist)
  {
    if (!self->_enableHearingAid)
    {
      LOBYTE(enableHearingAid) = 1;
      if (enableMediaAssist != 1)
      {
        if ([v4 hearingAidEnabled] == 1)
        {
          LOBYTE(enableHearingAid) = 1;
        }

        else
        {
          LOBYTE(enableHearingAid) = 2;
        }
      }

      goto LABEL_12;
    }

    v8 = enableHearingAid == 1 || enableMediaAssist == 1;
    goto LABEL_9;
  }

  if (self->_enableHearingAid)
  {
    if (enableHearingAid == 1)
    {
LABEL_12:
      self->_enableHearingAssist = enableHearingAid;
      goto LABEL_13;
    }

    v8 = [v4 mediaAssistEnabled] == 1;
LABEL_9:
    if (v8)
    {
      LOBYTE(enableHearingAid) = 1;
    }

    else
    {
      LOBYTE(enableHearingAid) = 2;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (self->_enableHearingAssist && (enableHearingAssist = self->_enableHearingAssist, enableHearingAssist != [v5 hearingAssistEnabled]))
  {
    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations setEnableHearingAssistIfNeeded:v5];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateVolumeIOS:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 aaDevice];
  v8 = [v7 routed];

  if ((v8 & 1) == 0)
  {
    [HMDeviceConfigurations updateVolumeIOS:v6 completion:v5];
    goto LABEL_14;
  }

  v18 = 0.0;
  v9 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v10 = [v9 getVolume:&v18 forCategory:@"Audio/Video"];

  if ((v10 & 1) == 0)
  {
    [HMDeviceConfigurations updateVolumeIOS:v6 completion:?];
    goto LABEL_14;
  }

  *&v11 = v18;
  if (v18 <= 0.5)
  {
    [HMDeviceConfigurations updateVolumeIOS:v6 completion:&v18];
    goto LABEL_14;
  }

  v12 = [MEMORY[0x277D26E58] sharedAVSystemController];
  LODWORD(v13) = 0.5;
  v14 = [v12 setVolumeTo:@"Audio/Video" forCategory:v13];

  if (!v14)
  {
    if (gLogCategory_HMDeviceConfigurations <= 90 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations updateVolumeIOS:v5 completion:?];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else if (!v6)
    {
      goto LABEL_14;
    }

    v6[2](v6);
    goto LABEL_14;
  }

  if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceConfigurations updateVolumeIOS:v5 completion:?];
  }

  v15 = dispatch_time(0, 200000000);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__HMDeviceConfigurations_updateVolumeIOS_completion___block_invoke;
  v16[3] = &unk_2796EE6F8;
  v17 = v6;
  dispatch_after(v15, MEMORY[0x277D85CD0], v16);

LABEL_14:
}

uint64_t __53__HMDeviceConfigurations_updateVolumeIOS_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.1(void *a1)
{
  [a1 amplification];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF();
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.2(void *a1)
{
  [a1 balance];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF();
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.3(void *a1)
{
  [a1 beamFormer];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF();
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.4(void *a1)
{
  [a1 noiseSuppression];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF();
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.5(void *a1)
{
  [a1 ownVoiceLevelGain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF();
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.6(void *a1)
{
  [a1 tone];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF();
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 listeningModeOffAllowed];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 hearingAssistEnrolled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 hearingAidEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 swipeGainEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (void)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.5(void *a1, id *a2)
{
  v4 = [a1 audiogramEnrolledTimestamp];
  v3 = [*a2 startDate];
  LogPrintF();
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 hearingProtectionPPEEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 mediaAssistEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 pmeMediaEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 pmeVoiceEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 pmeVoiceEnrolled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (void)setupConfigsForPPEIfNeeded:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF();
}

- (void)restoreConfigsFromCloudRecordIfNeeded:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF();
}

- (uint64_t)setEnableHearingAssistIfNeeded:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 hearingAssistEnabled];
  if (v1 <= 2)
  {
    v2 = off_2796EE718[v1];
  }

  OUTLINED_FUNCTION_2();
  if (!(!v6 & v5))
  {
    v7 = *(v3 + 8 * v4);
  }

  return LogPrintF();
}

- (void)updateVolumeIOS:(uint64_t)a1 completion:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (gLogCategory_HMDeviceConfigurations <= 90 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    v5 = [a2 bluetoothUUID];
    LogPrintF();
  }

  if (a1)
  {
    v4 = *(a1 + 16);

    v4(a1);
  }
}

- (uint64_t)updateVolumeIOS:(uint64_t)result completion:.cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_HMDeviceConfigurations <= 90)
  {
    if (gLogCategory_HMDeviceConfigurations != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (v1)
  {
    return (*(v1 + 16))(v1);
  }

  return result;
}

- (void)updateVolumeIOS:(int *)a1 completion:(void *)a2 .cold.3(int *a1, void *a2)
{
  v3 = *a1;
  [a2 bluetoothUUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)updateVolumeIOS:(int *)a1 completion:(void *)a2 .cold.4(int *a1, void *a2)
{
  v3 = *a1;
  [a2 bluetoothUUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (uint64_t)updateVolumeIOS:(uint64_t)result completion:(int *)a2 .cold.5(uint64_t result, int *a2)
{
  v2 = result;
  if (gLogCategory_HMDeviceConfigurations > 30)
  {
    goto LABEL_5;
  }

  if (gLogCategory_HMDeviceConfigurations != -1)
  {
    goto LABEL_3;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    v4 = *a2;
LABEL_3:
    result = LogPrintF();
  }

LABEL_5:
  if (v2)
  {
    return (*(v2 + 16))(v2);
  }

  return result;
}

@end