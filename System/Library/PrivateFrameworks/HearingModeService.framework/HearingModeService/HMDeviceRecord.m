@interface HMDeviceRecord
+ (char)getHMMultiStateFromPMEState:(unsigned __int8)a3;
+ (char)multiStateForAAFeatureCapability:(unsigned __int8)a3;
- (BOOL)updateWithAADevice:(id)a3;
- (BOOL)updateWithCloudRecordInfo:(id)a3;
- (BOOL)updateWithHearingAidConfigData:(id)a3;
- (BOOL)updateWithHearingProtectionValue:(unsigned __int8)a3;
- (BOOL)updateWithPMEConfigData:(id)a3;
- (HMDeviceRecord)init;
- (HMDeviceRecord)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)_deriveMediaAssistStateIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)invokePendingOcclusionCompletionsWithError:(id)a3;
@end

@implementation HMDeviceRecord

+ (char)getHMMultiStateFromPMEState:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (char)multiStateForAAFeatureCapability:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (HMDeviceRecord)init
{
  v10.receiver = self;
  v10.super_class = HMDeviceRecord;
  v2 = [(HMDeviceRecord *)&v10 init];
  v3 = v2;
  if (v2)
  {
    amplification = v2->_amplification;
    v2->_amplification = &unk_286437A40;

    balance = v3->_balance;
    v3->_balance = &unk_286437A40;

    ownVoiceLevelGain = v3->_ownVoiceLevelGain;
    v3->_ownVoiceLevelGain = &unk_286437A40;

    tone = v3->_tone;
    v3->_tone = &unk_286437A40;

    v8 = v3;
  }

  return v3;
}

- (HMDeviceRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDeviceRecord *)self init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_earTipFitTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2Capability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2RegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionOcclusionResult = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPECapability = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPEEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPERegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingTestRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hideOffModeCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningModeOffAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaAssistEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeMediaEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeVoiceEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeVoiceEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_swipeGainEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    earLossDataLeft = v5->_earLossDataLeft;
    if (earLossDataLeft)
    {
      v10 = HMEarLossDataToArray(earLossDataLeft);
      earLossArrayLeft = v5->_earLossArrayLeft;
      v5->_earLossArrayLeft = v10;
    }

    earLossDataRight = v5->_earLossDataRight;
    if (earLossDataRight)
    {
      v13 = HMEarLossDataToArray(earLossDataRight);
      earLossArrayRight = v5->_earLossArrayRight;
      v5->_earLossArrayRight = v13;
    }

    pmeMediaLossDataLeft = v5->_pmeMediaLossDataLeft;
    if (pmeMediaLossDataLeft)
    {
      v16 = HMEarLossDataToArray(pmeMediaLossDataLeft);
      pmeMediaLossPresetsLeft = v5->_pmeMediaLossPresetsLeft;
      v5->_pmeMediaLossPresetsLeft = v16;
    }

    pmeMediaLossDataRight = v5->_pmeMediaLossDataRight;
    if (pmeMediaLossDataRight)
    {
      v19 = HMEarLossDataToArray(pmeMediaLossDataRight);
      pmeMediaLossPresetsRight = v5->_pmeMediaLossPresetsRight;
      v5->_pmeMediaLossPresetsRight = v19;
    }

    pmeVoiceLossDataLeft = v5->_pmeVoiceLossDataLeft;
    if (pmeVoiceLossDataLeft)
    {
      v22 = HMEarLossDataToArray(pmeVoiceLossDataLeft);
      pmeVoiceLossPresetsLeft = v5->_pmeVoiceLossPresetsLeft;
      v5->_pmeVoiceLossPresetsLeft = v22;
    }

    pmeVoiceLossDataRight = v5->_pmeVoiceLossDataRight;
    if (pmeVoiceLossDataRight)
    {
      v25 = HMEarLossDataToArray(pmeVoiceLossDataRight);
      pmeVoiceLossPresetsRight = v5->_pmeVoiceLossPresetsRight;
      v5->_pmeVoiceLossPresetsRight = v25;
    }

    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  amplification = self->_amplification;
  v24 = v4;
  if (amplification)
  {
    [v4 encodeObject:amplification forKey:@"ampl"];
    v4 = v24;
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v24 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    v4 = v24;
  }

  balance = self->_balance;
  if (balance)
  {
    [v24 encodeObject:balance forKey:@"balc"];
    v4 = v24;
  }

  beamFormer = self->_beamFormer;
  if (beamFormer)
  {
    [v24 encodeObject:beamFormer forKey:@"bmFm"];
    v4 = v24;
  }

  bluetoothUUID = self->_bluetoothUUID;
  if (bluetoothUUID)
  {
    [v24 encodeObject:bluetoothUUID forKey:@"btUUID"];
    v4 = v24;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [v24 encodeObject:bluetoothAddress forKey:@"btAdS"];
    v4 = v24;
  }

  bluetoothAddressData = self->_bluetoothAddressData;
  if (bluetoothAddressData)
  {
    [v24 encodeObject:bluetoothAddressData forKey:@"btAd"];
    v4 = v24;
  }

  if (self->_earTipFitTestCapability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  earLossDataLeft = self->_earLossDataLeft;
  if (earLossDataLeft)
  {
    [v24 encodeObject:earLossDataLeft forKey:@"ElLT"];
    v4 = v24;
  }

  earLossDataRight = self->_earLossDataRight;
  if (earLossDataRight)
  {
    [v24 encodeObject:earLossDataRight forKey:@"ELRT"];
    v4 = v24;
  }

  if (self->_hearingAidV2Capability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingAidEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingAssistCapability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingAssistEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingAssistEnrolled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingAssistRegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingProtectionCapability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingProtectionEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  hearingProtectionOcclusionResult = self->_hearingProtectionOcclusionResult;
  if (hearingProtectionOcclusionResult)
  {
    [v24 encodeInteger:hearingProtectionOcclusionResult forKey:@"hPOc"];
    v4 = v24;
  }

  if (self->_hearingProtectionPPECapability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  if (hearingProtectionPPECapLevel)
  {
    [v24 encodeObject:hearingProtectionPPECapLevel forKey:@"ppeL"];
    v4 = v24;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingProtectionRegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingTestCapability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingTestRegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hideOffModeCapability)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_mediaAssistEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  noiseSuppression = self->_noiseSuppression;
  if (noiseSuppression)
  {
    [v24 encodeObject:noiseSuppression forKey:@"nsSp"];
    v4 = v24;
  }

  if (self->_hearingAidV2RegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_hearingProtectionPPERegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_pmeMediaEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  pmeMediaLossDataLeft = self->_pmeMediaLossDataLeft;
  if (pmeMediaLossDataLeft)
  {
    [v24 encodeObject:pmeMediaLossDataLeft forKey:@"pmML"];
    v4 = v24;
  }

  pmeMediaLossDataRight = self->_pmeMediaLossDataRight;
  if (pmeMediaLossDataRight)
  {
    [v24 encodeObject:pmeMediaLossDataRight forKey:@"pmMR"];
    v4 = v24;
  }

  pmeVoiceLossDataLeft = self->_pmeVoiceLossDataLeft;
  if (pmeVoiceLossDataLeft)
  {
    [v24 encodeObject:pmeVoiceLossDataLeft forKey:@"pmVL"];
    v4 = v24;
  }

  pmeVoiceLossDataRight = self->_pmeVoiceLossDataRight;
  if (pmeVoiceLossDataRight)
  {
    [v24 encodeObject:pmeVoiceLossDataRight forKey:@"pmVR"];
    v4 = v24;
  }

  if (self->_pmeVoiceEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_pmeVoiceEnrolled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_swipeGainEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  tone = self->_tone;
  if (tone)
  {
    [v24 encodeObject:tone forKey:@"tone"];
    v4 = v24;
  }

  safetyInformation = self->_safetyInformation;
  if (safetyInformation)
  {
    [v24 encodeObject:safetyInformation forKey:@"sInf"];
    v4 = v24;
  }

  ownVoiceLevelGain = self->_ownVoiceLevelGain;
  if (ownVoiceLevelGain)
  {
    [v24 encodeObject:ownVoiceLevelGain forKey:@"oVLG"];
    v4 = v24;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v68 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v5 = 0;

  v6 = self->_amplification;
  if (v6)
  {
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  v8 = self->_audiogramEnrolledTimestamp;
  if (v8)
  {
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  v10 = self->_balance;
  if (v10)
  {
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  v12 = self->_beamFormer;
  if (v12)
  {
    NSAppendPrintF_safe();
    v13 = v5;

    v5 = v13;
  }

  v14 = self->_bluetoothAddress;
  if (v14)
  {
    NSAppendPrintF_safe();
    v15 = v5;

    v5 = v15;
  }

  v16 = self->_bluetoothUUID;
  if (v16)
  {
    NSAppendPrintF_safe();
    v17 = v5;

    v5 = v17;
  }

  if (self->_hearingAidEnabled)
  {
    self->_hearingAidEnabled;
    NSAppendPrintF_safe();
    v18 = v5;

    v5 = v18;
  }

  if (self->_hearingAidV2Capability)
  {
    self->_hearingAidV2Capability;
    NSAppendPrintF_safe();
    v19 = v5;

    v5 = v19;
  }

  hearingAidV2RegionStatus = self->_hearingAidV2RegionStatus;
  if (self->_hearingAidV2RegionStatus)
  {
    if (hearingAidV2RegionStatus <= 3)
    {
      v21 = off_2796EE8D8[hearingAidV2RegionStatus - 1];
    }

    NSAppendPrintF_safe();
    v22 = v5;

    v5 = v22;
  }

  if (self->_hearingAssistCapability)
  {
    self->_hearingAssistCapability;
    NSAppendPrintF_safe();
    v23 = v5;

    v5 = v23;
  }

  if (self->_hearingAssistEnabled)
  {
    self->_hearingAssistEnabled;
    NSAppendPrintF_safe();
    v24 = v5;

    v5 = v24;
  }

  if (self->_hearingAssistEnrolled)
  {
    self->_hearingAssistEnrolled;
    NSAppendPrintF_safe();
    v25 = v5;

    v5 = v25;
  }

  hearingAssistRegionStatus = self->_hearingAssistRegionStatus;
  if (self->_hearingAssistRegionStatus)
  {
    if (hearingAssistRegionStatus <= 3)
    {
      v27 = off_2796EE8D8[hearingAssistRegionStatus - 1];
    }

    NSAppendPrintF_safe();
    v28 = v5;

    v5 = v28;
  }

  if (self->_hearingProtectionCapability)
  {
    self->_hearingProtectionCapability;
    NSAppendPrintF_safe();
    v29 = v5;

    v5 = v29;
  }

  if (self->_hearingProtectionEnabled)
  {
    self->_hearingProtectionEnabled;
    NSAppendPrintF_safe();
    v30 = v5;

    v5 = v30;
  }

  hearingProtectionOcclusionResult = self->_hearingProtectionOcclusionResult;
  if (hearingProtectionOcclusionResult)
  {
    if (hearingProtectionOcclusionResult <= 7)
    {
      v32 = off_2796EE8A0[hearingProtectionOcclusionResult - 1];
    }

    NSAppendPrintF_safe();
    v33 = v5;

    v5 = v33;
  }

  if (self->_hearingProtectionPPECapability)
  {
    self->_hearingProtectionPPECapability;
    NSAppendPrintF_safe();
    v34 = v5;

    v5 = v34;
  }

  v35 = self->_hearingProtectionPPECapLevel;
  if (v35)
  {
    NSAppendPrintF_safe();
    v36 = v5;

    v5 = v36;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    self->_hearingProtectionPPEEnabled;
    NSAppendPrintF_safe();
    v37 = v5;

    v5 = v37;
  }

  hearingProtectionPPERegionStatus = self->_hearingProtectionPPERegionStatus;
  if (self->_hearingProtectionPPERegionStatus)
  {
    if (hearingProtectionPPERegionStatus <= 3)
    {
      v39 = off_2796EE8D8[hearingProtectionPPERegionStatus - 1];
    }

    NSAppendPrintF_safe();
    v40 = v5;

    v5 = v40;
  }

  hearingProtectionRegionStatus = self->_hearingProtectionRegionStatus;
  if (self->_hearingProtectionRegionStatus)
  {
    if (hearingProtectionRegionStatus <= 3)
    {
      v42 = off_2796EE8D8[hearingProtectionRegionStatus - 1];
    }

    NSAppendPrintF_safe();
    v43 = v5;

    v5 = v43;
  }

  if (self->_hearingTestCapability)
  {
    self->_hearingTestCapability;
    NSAppendPrintF_safe();
    v44 = v5;

    v5 = v44;
  }

  hearingTestOcclusionResult = self->_hearingTestOcclusionResult;
  if (hearingTestOcclusionResult)
  {
    if (hearingTestOcclusionResult <= 7)
    {
      v46 = off_2796EE8A0[hearingTestOcclusionResult - 1];
    }

    NSAppendPrintF_safe();
    v47 = v5;

    v5 = v47;
  }

  hearingTestRegionStatus = self->_hearingTestRegionStatus;
  if (self->_hearingTestRegionStatus)
  {
    if (hearingTestRegionStatus <= 3)
    {
      v49 = off_2796EE8D8[hearingTestRegionStatus - 1];
    }

    NSAppendPrintF_safe();
    v50 = v5;

    v5 = v50;
  }

  if (self->_hideOffModeCapability)
  {
    self->_hideOffModeCapability;
    NSAppendPrintF_safe();
    v51 = v5;

    v5 = v51;
  }

  if (self->_listeningModeOffAllowed)
  {
    self->_listeningModeOffAllowed;
    NSAppendPrintF_safe();
    v52 = v5;

    v5 = v52;
  }

  if (self->_mediaAssistEnabled)
  {
    self->_mediaAssistEnabled;
    NSAppendPrintF_safe();
    v53 = v5;

    v5 = v53;
  }

  v54 = self->_noiseSuppression;
  if (v54)
  {
    NSAppendPrintF_safe();
    v55 = v5;

    v5 = v55;
  }

  if (self->_pmeMediaEnabled)
  {
    self->_pmeMediaEnabled;
    NSAppendPrintF_safe();
    v56 = v5;

    v5 = v56;
  }

  if (self->_pmeVoiceEnabled)
  {
    self->_pmeVoiceEnabled;
    NSAppendPrintF_safe();
    v57 = v5;

    v5 = v57;
  }

  if (self->_pmeVoiceEnrolled)
  {
    self->_pmeVoiceEnrolled;
    NSAppendPrintF_safe();
    v58 = v5;

    v5 = v58;
  }

  if (self->_swipeGainEnabled)
  {
    self->_swipeGainEnabled;
    NSAppendPrintF_safe();
    v59 = v5;

    v5 = v59;
  }

  v60 = self->_tone;
  if (v60)
  {
    NSAppendPrintF_safe();
    v61 = v5;

    v5 = v61;
  }

  v62 = self->_ownVoiceLevelGain;
  if (v62)
  {
    NSAppendPrintF_safe();
    v63 = v5;

    v5 = v63;
  }

  if (self->_earTipFitTestCapability)
  {
    self->_earTipFitTestCapability;
    NSAppendPrintF_safe();
    v64 = v5;

    v5 = v64;
  }

  if (a3 < 21)
  {
    NSAppendPrintF_safe();
    v65 = v5;

    v5 = v65;
  }

  v66 = v5;

  return v5;
}

- (void)invokePendingOcclusionCompletionsWithError:(id)a3
{
  v4 = a3;
  pendingOcclusionCompletionsMap = self->_pendingOcclusionCompletionsMap;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke;
  v11 = &unk_2796EE880;
  v12 = self;
  v13 = v4;
  v6 = v4;
  [(NSMutableDictionary *)pendingOcclusionCompletionsMap enumerateKeysAndObjectsUsingBlock:&v8];
  [(NSMutableDictionary *)self->_pendingOcclusionCompletionsMap removeAllObjects:v8];
  v7 = self->_pendingOcclusionCompletionsMap;
  self->_pendingOcclusionCompletionsMap = 0;
}

void __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [*(a1 + 32) getOcclusionResultForFeatureID:{objc_msgSend(v5, "unsignedIntValue")}];
        if (gLogCategory_HMDeviceRecord <= 30 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
        {
          __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke_cold_1(v11, a1 + 32, v12);
        }

        (*(v11 + 16))(v11, v12, *(a1 + 40));
        ++v10;
      }

      while (v8 != v10);
      v13 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v8 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateWithAADevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddressData];
  bluetoothAddress = self->_bluetoothAddressData;
  v7 = v5;
  v8 = v7;
  v9 = bluetoothAddress != v7;
  if (bluetoothAddress == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (bluetoothAddress != 0))
    {
      v10 = [(NSData *)bluetoothAddress isEqual:v7];

      if (v10)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_bluetoothAddressData, v5);
    v11 = CUPrintNSDataAddress();
    bluetoothAddress = self->_bluetoothAddress;
    self->_bluetoothAddress = v11;
  }

LABEL_9:
  v12 = [v4 identifier];
  bluetoothUUID = self->_bluetoothUUID;
  v14 = v12;
  v15 = v14;
  if (bluetoothUUID == v14)
  {
  }

  else
  {
    if ((v14 == 0) != (bluetoothUUID != 0))
    {
      v16 = [(NSString *)bluetoothUUID isEqual:v14];

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v17 = v15;
    bluetoothUUID = self->_bluetoothUUID;
    self->_bluetoothUUID = v17;
    v9 = 1;
  }

LABEL_17:
  v18 = [v4 audiogramEnrolledTimestamp];
  v19 = v18;
  if (v18 && ([v18 isEqualToDate:self->_audiogramEnrolledTimestamp] & 1) == 0)
  {
    objc_storeStrong(&self->_audiogramEnrolledTimestamp, v19);
    v9 = 1;
  }

  v20 = [v4 audioStreamState];
  v21 = v20 != [(AudioAccessoryDevice *)self->_aaDevice audioStreamState]|| v9;
  v22 = [v4 hearingAidCapability];
  if (v22 == 1)
  {
    hearingAssistCapability = 2;
  }

  else
  {
    hearingAssistCapability = self->_hearingAssistCapability;
  }

  if (v22 == 2)
  {
    hearingAssistCapability = 1;
  }

  if (hearingAssistCapability != self->_hearingAssistCapability)
  {
    self->_hearingAssistCapability = hearingAssistCapability;
    v21 = 1;
  }

  v24 = [v4 hearingAidEnabled];
  if (self->_hearingAidEnabled != v24)
  {
    self->_hearingAidEnabled = v24;
    v21 = 1;
  }

  v25 = [v4 hearingAssistEnabled];
  if (self->_hearingAssistEnabled != v25)
  {
    self->_hearingAssistEnabled = v25;
    v21 = 1;
  }

  v26 = [v4 hearingAidEnrolled];
  if (self->_hearingAssistEnrolled != v26)
  {
    self->_hearingAssistEnrolled = v26;
    v21 = 1;
  }

  v27 = [v4 hearingProtectionCapability];
  v28 = 2 * (v27 == 1);
  if (v27 == 2)
  {
    v28 = 1;
  }

  if (v28 != self->_hearingProtectionCapability)
  {
    self->_hearingProtectionCapability = v28;
    v21 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v29 = [v4 hearingAidV2Capability];
    v30 = 2 * (v29 == 1);
    if (v29 == 2)
    {
      v30 = 1;
    }

    if (v30 != self->_hearingAidV2Capability)
    {
      self->_hearingAidV2Capability = v30;
      v21 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v31 = [v4 hearingProtectionPPECapability];
    v32 = 2 * (v31 == 1);
    if (v31 == 2)
    {
      v32 = 1;
    }

    if (v32 != self->_hearingProtectionPPECapability)
    {
      self->_hearingProtectionPPECapability = v32;
      v21 = 1;
    }
  }

  if ([v4 hearingProtectionPPEEnabled] == 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  if (_os_feature_enabled_impl() && v33 != [(HMDeviceRecord *)self hearingProtectionPPEEnabled])
  {
    self->_hearingProtectionPPEEnabled = v33;
    v21 = 1;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "hearingProtectionPPECapLevel")}];
  if (_os_feature_enabled_impl())
  {
    v35 = [(HMDeviceRecord *)self hearingProtectionPPECapLevel];

    if (v34 != v35)
    {
      objc_storeStrong(&self->_hearingProtectionPPECapLevel, v34);
      v21 = 1;
    }
  }

  v36 = [v4 hearingTestCapability];
  v37 = 2 * (v36 == 1);
  if (v36 == 2)
  {
    v37 = 1;
  }

  if (v37 != self->_hearingTestCapability)
  {
    self->_hearingTestCapability = v37;
    v21 = 1;
  }

  v38 = +[HMDeviceRecord multiStateForAAFeatureCapability:](HMDeviceRecord, "multiStateForAAFeatureCapability:", [v4 hideOffListeningModeCapability]);
  if (self->_hideOffModeCapability != v38)
  {
    self->_hideOffModeCapability = v38;
    v21 = 1;
  }

  v56 = v15;
  v39 = [v4 listeningModeOffAllowed];
  v40 = v19;
  v41 = v8;
  if (_os_feature_enabled_impl() && self->_listeningModeOffAllowed != v39)
  {
    self->_listeningModeOffAllowed = v39;
    v21 = 1;
  }

  v42 = [v4 placementMode];
  v43 = [(AudioAccessoryDevice *)self->_aaDevice placementMode];
  v44 = [v4 primaryPlacement];
  v45 = [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement];
  v46 = [v4 secondaryPlacement];
  v49 = v46 != [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]|| v44 != v45 || v42 != v43;
  v50 = [v4 hearingAidGainSwipeEnabled];
  if (self->_swipeGainEnabled == v50)
  {
    v51 = v49 | v21;
  }

  else
  {
    self->_swipeGainEnabled = v50;
    v51 = 1;
  }

  [(HMDeviceRecord *)self _deriveMediaAssistStateIfNeeded];
  if ([v4 earTipFitTestCapability] == 2)
  {
    v52 = 1;
  }

  else
  {
    v52 = 2 * ([v4 earTipFitTestCapability] == 1);
  }

  if (v52 != self->_earTipFitTestCapability)
  {
    self->_earTipFitTestCapability = v52;
    v51 = 1;
  }

  aaDevice = self->_aaDevice;
  self->_aaDevice = v4;

  return v51 & 1;
}

- (BOOL)updateWithCloudRecordInfo:(id)a3
{
  v4 = a3;
  if (!self->_cloudRecord)
  {
    v5 = [objc_alloc(MEMORY[0x277CEF830]) initWithBluetoothAddress:self->_bluetoothAddress];
    cloudRecord = self->_cloudRecord;
    self->_cloudRecord = v5;
  }

  v7 = [v4 mediaAssistEnabled];
  if (v7 && self->_mediaAssistEnabled != v7)
  {
    self->_mediaAssistEnabled = v7;
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setMediaAssistEnabled:?];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if ([v4 pmeMediaEnabled])
  {
    -[HMDeviceCloudRecordInfo setPmeMediaEnabled:](self->_cloudRecord, "setPmeMediaEnabled:", [v4 pmeMediaEnabled]);
  }

  if ([v4 pmeVoiceEnabled])
  {
    -[HMDeviceCloudRecordInfo setPmeVoiceEnabled:](self->_cloudRecord, "setPmeVoiceEnabled:", [v4 pmeVoiceEnabled]);
  }

  if ([v4 swipeGainEnabled])
  {
    -[HMDeviceCloudRecordInfo setSwipeGainEnabled:](self->_cloudRecord, "setSwipeGainEnabled:", [v4 swipeGainEnabled]);
  }

  v9 = [v4 diagnosticMeasurementsCount];

  if (v9)
  {
    v10 = [v4 diagnosticMeasurementsCount];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setDiagnosticMeasurementsCount:v10];
  }

  v11 = [v4 bottomMicFaultCountLeft];

  if (v11)
  {
    v12 = [v4 bottomMicFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setBottomMicFaultCountLeft:v12];
  }

  v13 = [v4 topMicFaultCountLeft];

  if (v13)
  {
    v14 = [v4 topMicFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTopMicFaultCountLeft:v14];
  }

  v15 = [v4 innerMicFaultCountLeft];

  if (v15)
  {
    v16 = [v4 innerMicFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setInnerMicFaultCountLeft:v16];
  }

  v17 = [v4 speakerFaultCountLeft];

  if (v17)
  {
    v18 = [v4 speakerFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setSpeakerFaultCountLeft:v18];
  }

  v19 = [v4 frontVentFaultCountLeft];

  if (v19)
  {
    v20 = [v4 frontVentFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFrontVentFaultCountLeft:v20];
  }

  v21 = [v4 rearVentFaultCountLeft];

  if (v21)
  {
    v22 = [v4 rearVentFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setRearVentFaultCountLeft:v22];
  }

  v23 = [v4 totalHarmonicDistortionFaultCountLeft];

  if (v23)
  {
    v24 = [v4 totalHarmonicDistortionFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTotalHarmonicDistortionFaultCountLeft:v24];
  }

  v25 = [v4 freqAccuracyFaultCountLeft];

  if (v25)
  {
    v26 = [v4 freqAccuracyFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFreqAccuracyFaultCountLeft:v26];
  }

  v27 = [v4 latestDiagnosticTimestampLeft];

  if (v27)
  {
    v28 = [v4 latestDiagnosticTimestampLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setLatestDiagnosticTimestampLeft:v28];
  }

  v29 = [v4 bottomMicFaultCountRight];

  if (v29)
  {
    v30 = [v4 bottomMicFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setBottomMicFaultCountRight:v30];
  }

  v31 = [v4 topMicFaultCountRight];

  if (v31)
  {
    v32 = [v4 topMicFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTopMicFaultCountRight:v32];
  }

  v33 = [v4 innerMicFaultCountRight];

  if (v33)
  {
    v34 = [v4 innerMicFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setInnerMicFaultCountRight:v34];
  }

  v35 = [v4 speakerFaultCountRight];

  if (v35)
  {
    v36 = [v4 speakerFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setSpeakerFaultCountRight:v36];
  }

  v37 = [v4 frontVentFaultCountRight];

  if (v37)
  {
    v38 = [v4 frontVentFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFrontVentFaultCountRight:v38];
  }

  v39 = [v4 rearVentFaultCountRight];

  if (v39)
  {
    v40 = [v4 rearVentFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setRearVentFaultCountRight:v40];
  }

  v41 = [v4 totalHarmonicDistortionFaultCountRight];

  if (v41)
  {
    v42 = [v4 totalHarmonicDistortionFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTotalHarmonicDistortionFaultCountRight:v42];
  }

  v43 = [v4 freqAccuracyFaultCountRight];

  if (v43)
  {
    v44 = [v4 freqAccuracyFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFreqAccuracyFaultCountRight:v44];
  }

  v45 = [v4 latestDiagnosticTimestampRight];

  if (v45)
  {
    v46 = [v4 latestDiagnosticTimestampRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setLatestDiagnosticTimestampRight:v46];
  }

  return v8;
}

- (BOOL)updateWithPMEConfigData:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    [v5 getBytes:v45 length:132];
    v7 = [HMDeviceRecord getHMMultiStateFromPMEState:BYTE3(v45[0])];
    pmeMediaEnabled = self->_pmeMediaEnabled;
    v9 = v7 != pmeMediaEnabled;
    if (v7 != pmeMediaEnabled)
    {
      self->_pmeMediaEnabled = v7;
    }

    v10 = [HMDeviceRecord getHMMultiStateFromPMEState:BYTE2(v45[0])];
    if (self->_pmeVoiceEnabled != v10)
    {
      self->_pmeVoiceEnabled = v10;
      v9 = 1;
    }

    v11 = [HMDeviceRecord getHMMultiStateFromPMEState:BYTE1(v45[0])];
    if (self->_pmeVoiceEnrolled != v11)
    {
      self->_pmeVoiceEnrolled = v11;
      v9 = 1;
    }

    if (self->_hearingAssistEnabled == 1)
    {
      goto LABEL_46;
    }

    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v45 + 4 length:32];
    pmeVoiceLossDataLeft = self->_pmeVoiceLossDataLeft;
    v14 = v12;
    v15 = pmeVoiceLossDataLeft;
    v16 = v15;
    if (v14 == v15)
    {

      v18 = v14;
    }

    else
    {
      if ((v14 != 0) != (v15 == 0))
      {
        v17 = [(NSData *)v14 isEqual:v15];

        if (v17)
        {
LABEL_21:
          v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45[2] + 4 length:32];
          pmeMediaLossDataLeft = self->_pmeMediaLossDataLeft;
          v22 = v20;
          v23 = pmeMediaLossDataLeft;
          v24 = v23;
          if (v22 == v23)
          {

            v26 = v22;
          }

          else
          {
            if ((v22 != 0) != (v23 == 0))
            {
              v25 = [(NSData *)v22 isEqual:v23];

              if (v25)
              {
LABEL_29:
                v28 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45[4] + 4 length:32];
                pmeVoiceLossDataRight = self->_pmeVoiceLossDataRight;
                v30 = v28;
                v31 = pmeVoiceLossDataRight;
                v32 = v31;
                if (v30 == v31)
                {

                  v34 = v30;
                }

                else
                {
                  if ((v30 != 0) != (v31 == 0))
                  {
                    v33 = [(NSData *)v30 isEqual:v31];

                    if (v33)
                    {
LABEL_37:
                      v36 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45[6] + 4 length:32];
                      pmeMediaLossDataRight = self->_pmeMediaLossDataRight;
                      v38 = v36;
                      v39 = pmeMediaLossDataRight;
                      v40 = v39;
                      if (v38 == v39)
                      {

                        v42 = v38;
                      }

                      else
                      {
                        if ((v38 != 0) != (v39 == 0))
                        {
                          v41 = [(NSData *)v38 isEqual:v39];

                          if (v41)
                          {
                            goto LABEL_45;
                          }
                        }

                        else
                        {
                        }

                        v43 = v38;
                        v42 = self->_pmeMediaLossDataRight;
                        self->_pmeMediaLossDataRight = v43;
                        v9 = 1;
                      }

LABEL_45:
LABEL_46:
                      objc_storeStrong(&self->_configDataPME, a3);
                      [(HMDeviceRecord *)self _deriveMediaAssistStateIfNeeded];
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                  }

                  v35 = v30;
                  v34 = self->_pmeVoiceLossDataRight;
                  self->_pmeVoiceLossDataRight = v35;
                  v9 = 1;
                }

                goto LABEL_37;
              }
            }

            else
            {
            }

            v27 = v22;
            v26 = self->_pmeMediaLossDataLeft;
            self->_pmeMediaLossDataLeft = v27;
            v9 = 1;
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      v19 = v14;
      v18 = self->_pmeVoiceLossDataLeft;
      self->_pmeVoiceLossDataLeft = v19;
      v9 = 1;
    }

    goto LABEL_21;
  }

  if (gLogCategory_HMDeviceRecord <= 90 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceRecord updateWithPMEConfigData:?];
  }

  v9 = 0;
LABEL_47:

  return v9;
}

- (void)_deriveMediaAssistStateIfNeeded
{
  hearingAssistEnabled = self->_hearingAssistEnabled;
  if ((self->_hearingAssistEnabled || self->_pmeMediaEnabled || self->_pmeVoiceEnabled) && !self->_mediaAssistEnabled)
  {
    mediaAssistEnabled = 1;
    if (self->_pmeMediaEnabled != 1)
    {
      if (self->_pmeVoiceEnabled == 1)
      {
        mediaAssistEnabled = 1;
      }

      else
      {
        mediaAssistEnabled = 2;
      }
    }

    if (hearingAssistEnabled == 2)
    {
      mediaAssistEnabled = 2;
    }

    else if (hearingAssistEnabled != 1)
    {
      return;
    }

    self->_mediaAssistEnabled = mediaAssistEnabled;
    if (gLogCategory_HMDeviceRecord > 30)
    {
      return;
    }

    if (gLogCategory_HMDeviceRecord == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      mediaAssistEnabled = self->_mediaAssistEnabled;
    }

    bluetoothUUID = self->_bluetoothUUID;
    if (mediaAssistEnabled <= 2)
    {
      v6 = off_2796EE930[mediaAssistEnabled];
    }

    LogPrintF();
  }
}

- (BOOL)updateWithHearingAidConfigData:(id)a3
{
  v5 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_81;
  }

  if (!v5)
  {
    if (gLogCategory_HMDeviceRecord > 90 || gLogCategory_HMDeviceRecord == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_81;
    }

    bluetoothUUID = self->_bluetoothUUID;
LABEL_14:
    LogPrintF();
    goto LABEL_81;
  }

  memset(v136, 0, 100);
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  [v5 getBytes:v136 length:100];
  *&v6 = LOBYTE(v136[0]);
  version = self->_version;
  v8 = LOBYTE(v136[0]) != version;
  if (LOBYTE(v136[0]) != version)
  {
    self->_version = v136[0];
  }

  if (BYTE1(v136[0]) == 2)
  {
    v10 = *(&v136[2] + 3);
    v9 = *&v136[3];
    v11 = fmax(fmin(*(&v136[2] + 1), 1.5), -1.5);
    v12 = fmax(fmin(*(&v136[5] + 1), 1.5), -1.5);
    v13 = fmaxf(fminf(*(&v136[5] + 2), 1.0), -1.0);
    *(&v129 + 1) = v11;
    v14 = v12 - v11;
    v15 = v12 + ((v12 - v11) * -0.5);
    if (gLogCategory_HMDeviceRecord > 10)
    {
      goto LABEL_18;
    }

    if (gLogCategory_HMDeviceRecord == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_18:
        v16 = (v14 + 1.0) * 0.5;
        *&v17 = OUTLINED_FUNCTION_7();
        v19 = [v18 numberWithFloat:v17];
        amplification = self->_amplification;
        v21 = v19;
        v22 = amplification;
        OUTLINED_FUNCTION_3_0();
        if (v23)
        {
        }

        else
        {
          OUTLINED_FUNCTION_2_0();
          if ((v24 ^ (amplification == 0)))
          {
            v25 = OUTLINED_FUNCTION_4();

            if (v25)
            {
LABEL_26:
              *&v26 = v16;
              v30 = [MEMORY[0x277CCABB0] numberWithFloat:{v26, v111}];
              balance = self->_balance;
              v32 = v30;
              v33 = balance;
              OUTLINED_FUNCTION_3_0();
              if (v23)
              {
              }

              else
              {
                OUTLINED_FUNCTION_2_0();
                if ((v34 ^ (balance == 0)))
                {
                  v35 = OUTLINED_FUNCTION_4();

                  if (v35)
                  {
LABEL_34:
                    *&v38 = OUTLINED_FUNCTION_7();
                    v40 = [v39 numberWithFloat:v38];
                    tone = self->_tone;
                    v42 = v40;
                    v43 = tone;
                    OUTLINED_FUNCTION_3_0();
                    if (v23)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_0();
                      if ((v44 ^ (tone == 0)))
                      {
                        v45 = OUTLINED_FUNCTION_4();

                        if (v45)
                        {
LABEL_42:
                          *&v46 = v10;
                          v50 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
                          beamFormer = self->_beamFormer;
                          v52 = v50;
                          v53 = beamFormer;
                          OUTLINED_FUNCTION_3_0();
                          if (v23)
                          {
                          }

                          else
                          {
                            OUTLINED_FUNCTION_2_0();
                            if ((v54 ^ (beamFormer == 0)))
                            {
                              v55 = OUTLINED_FUNCTION_4();

                              if (v55)
                              {
LABEL_50:
                                *&v58 = OUTLINED_FUNCTION_6();
                                v60 = [v59 numberWithFloat:v58];
                                noiseSuppression = self->_noiseSuppression;
                                v62 = v60;
                                v63 = noiseSuppression;
                                OUTLINED_FUNCTION_3_0();
                                if (v23)
                                {
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_2_0();
                                  if ((v64 ^ (noiseSuppression == 0)))
                                  {
                                    v65 = OUTLINED_FUNCTION_4();

                                    if (v65)
                                    {
LABEL_58:
                                      v133[0] = *(v136 + 4);
                                      v133[1] = *(&v136[1] + 4);
                                      v133[2] = *(&v136[2] + 4);
                                      v130 = *(&v136[3] + 4);
                                      v131 = *(&v136[4] + 4);
                                      v132 = *(&v136[5] + 4);
                                      v69 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v133 length:32];
                                      earLossDataLeft = self->_earLossDataLeft;
                                      v71 = v69;
                                      v72 = earLossDataLeft;
                                      v73 = v72;
                                      if (v71 == v72)
                                      {

                                        earLossArrayLeft = v71;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_2_0();
                                        if ((v74 ^ (v73 == 0)))
                                        {
                                          v75 = [(NSArray *)v71 isEqual:v73];

                                          if (v75)
                                          {
LABEL_66:
                                            v78 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v130 length:32];
                                            earLossDataRight = self->_earLossDataRight;
                                            v80 = v78;
                                            v81 = earLossDataRight;
                                            v82 = v81;
                                            if (v80 == v81)
                                            {

                                              earLossArrayRight = v80;
                                            }

                                            else
                                            {
                                              if ((v80 != 0) != (v81 == 0))
                                              {
                                                v83 = [(NSArray *)v80 isEqual:v81];

                                                if (v83)
                                                {
LABEL_74:
                                                  if (self->_version < 2u)
                                                  {
                                                    goto LABEL_78;
                                                  }

                                                  [v5 getBytes:v134 length:104];
                                                  *&v94 = OUTLINED_FUNCTION_6();
                                                  v96 = [v95 numberWithFloat:v94];
                                                  ownVoiceLevelGain = self->_ownVoiceLevelGain;
                                                  v98 = v96;
                                                  v99 = ownVoiceLevelGain;
                                                  v100 = v99;
                                                  if (v98 == v99)
                                                  {

                                                    if (v8)
                                                    {
                                                      goto LABEL_86;
                                                    }

                                                    goto LABEL_83;
                                                  }

                                                  if ((v98 != 0) != (v99 == 0))
                                                  {
                                                    v101 = [(NSNumber *)v98 isEqual:v99];

                                                    if (v101)
                                                    {
LABEL_78:
                                                      if (v8)
                                                      {
LABEL_86:
                                                        if (self->_version < 2u)
                                                        {
                                                          if (gLogCategory_HMDeviceRecord <= 30)
                                                          {
                                                            if (gLogCategory_HMDeviceRecord == -1)
                                                            {
                                                              if (!_LogCategory_Initialize())
                                                              {
                                                                goto LABEL_97;
                                                              }

                                                              v110 = self->_version;
                                                            }

                                                            OUTLINED_FUNCTION_0_1(v84, v85, v86, v87, v88, v89, v90, v91, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v126, v128, v129, *&v130, *(&v130 + 1), *&v131, *(&v131 + 1), *&v132, *(&v132 + 1), *v133);
                                                            v125 = self->_noiseSuppression;
LABEL_93:
                                                            LogPrintF();
                                                          }
                                                        }

                                                        else if (gLogCategory_HMDeviceRecord <= 30)
                                                        {
                                                          if (gLogCategory_HMDeviceRecord == -1)
                                                          {
                                                            if (!_LogCategory_Initialize())
                                                            {
                                                              goto LABEL_97;
                                                            }

                                                            v107 = self->_version;
                                                          }

                                                          OUTLINED_FUNCTION_0_1(v84, v85, v86, v87, v88, v89, v90, v91, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v126, v128, v129, *&v130, *(&v130 + 1), *&v131, *(&v131 + 1), *&v132, *(&v132 + 1), *v133);
                                                          v124 = self->_noiseSuppression;
                                                          v127 = self->_ownVoiceLevelGain;
                                                          goto LABEL_93;
                                                        }

LABEL_97:
                                                        v102 = 1;
                                                        goto LABEL_98;
                                                      }

LABEL_83:
                                                      v102 = 0;
LABEL_98:
                                                      objc_storeStrong(&self->_configDataHearingAid, a3);

                                                      goto LABEL_99;
                                                    }
                                                  }

                                                  else
                                                  {
                                                  }

                                                  *&v103 = OUTLINED_FUNCTION_6();
                                                  v105 = [v104 numberWithFloat:v103];
                                                  v106 = self->_ownVoiceLevelGain;
                                                  self->_ownVoiceLevelGain = v105;

                                                  goto LABEL_86;
                                                }
                                              }

                                              else
                                              {
                                              }

                                              objc_storeStrong(&self->_earLossDataRight, v78);
                                              v93 = HMEarLossDataToArray(self->_earLossDataRight);
                                              earLossArrayRight = self->_earLossArrayRight;
                                              self->_earLossArrayRight = v93;
                                              v8 = 1;
                                            }

                                            goto LABEL_74;
                                          }
                                        }

                                        else
                                        {
                                        }

                                        objc_storeStrong(&self->_earLossDataLeft, v69);
                                        v77 = HMEarLossDataToArray(self->_earLossDataLeft);
                                        earLossArrayLeft = self->_earLossArrayLeft;
                                        self->_earLossArrayLeft = v77;
                                        v8 = 1;
                                      }

                                      goto LABEL_66;
                                    }
                                  }

                                  else
                                  {
                                  }

                                  *&v66 = OUTLINED_FUNCTION_6();
                                  v68 = [v67 numberWithFloat:v66];
                                  v62 = self->_noiseSuppression;
                                  self->_noiseSuppression = v68;
                                  v8 = 1;
                                }

                                goto LABEL_58;
                              }
                            }

                            else
                            {
                            }

                            *&v56 = v10;
                            v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
                            v52 = self->_beamFormer;
                            self->_beamFormer = v57;
                            v8 = 1;
                          }

                          goto LABEL_50;
                        }
                      }

                      else
                      {
                      }

                      *&v47 = OUTLINED_FUNCTION_7();
                      v49 = [v48 numberWithFloat:v47];
                      v42 = self->_tone;
                      self->_tone = v49;
                      v8 = 1;
                    }

                    goto LABEL_42;
                  }
                }

                else
                {
                }

                *&v36 = v16;
                v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
                v32 = self->_balance;
                self->_balance = v37;
                v8 = 1;
              }

              goto LABEL_34;
            }
          }

          else
          {
          }

          *&v27 = OUTLINED_FUNCTION_7();
          v29 = [v28 numberWithFloat:v27];
          v21 = self->_amplification;
          self->_amplification = v29;
          v8 = 1;
        }

        goto LABEL_26;
      }

      *&v6 = self->_version;
    }

    v120 = v10;
    v121 = v9;
    v118 = v15;
    v119 = v14;
    v116 = v12;
    v117 = v13;
    v115 = *(&v129 + 1);
    v111 = self->_bluetoothUUID;
    v114 = v6;
    LogPrintF();
    goto LABEL_18;
  }

  if (gLogCategory_HMDeviceRecord <= 90)
  {
    if (gLogCategory_HMDeviceRecord == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_81;
      }

      v109 = self->_version;
    }

    goto LABEL_14;
  }

LABEL_81:
  v102 = 0;
LABEL_99:

  return v102;
}

- (BOOL)updateWithHearingProtectionValue:(unsigned __int8)a3
{
  v3 = a3;
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    if (v3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v6 == self->_hearingProtectionEnabled)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      self->_hearingProtectionEnabled = v6;
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

void __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = MEMORY[0x2530950A0]();
  v6 = *(*a2 + 96);
  if (a3 <= 7)
  {
    v7 = off_2796EE8F0[a3];
  }

  v8 = *(*a2 + 96);
  LogPrintF();
}

@end