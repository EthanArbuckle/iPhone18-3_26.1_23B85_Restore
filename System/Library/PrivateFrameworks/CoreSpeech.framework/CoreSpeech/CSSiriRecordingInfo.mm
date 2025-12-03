@interface CSSiriRecordingInfo
- (BOOL)codecIsNarrowband;
- (BOOL)isBluetooth;
- (CSSiriRecordingInfo)initWithDictation:(BOOL)dictation codec:(id)codec;
- (CSSiriRecordingInfo)initWithDictation:(BOOL)dictation fingerprintOnly:(BOOL)only secureOfflineOnly:(BOOL)offlineOnly audioAlertStyle:(int64_t)style recordSettings:(id)settings recordRoute:(id)route recordDeviceInfo:(id)info playbackRoute:(id)self0 audioDeviceID:(unsigned int)self1 audioSessionID:(unsigned int)self2 voiceTriggerEventInfo:(id)self3 activationAlertStartTimestamp:(double)self4 startRecordingTimestamp:(double)self5 firstBufferTimestamp:(double)self6 firstBufferHostTime:(unint64_t)self7 estimatedSpeechEndHostTime:(unint64_t)self8 deviceIdentifier:(id)self9 includeBTInfo:(BOOL)tInfo speechEvent:(int64_t)event;
- (NSString)headsetAddress;
- (NSString)productId;
- (NSString)vendorId;
- (void)_fetchBTInfo;
@end

@implementation CSSiriRecordingInfo

- (NSString)headsetAddress
{
  headsetAddress = self->_headsetAddress;
  if (headsetAddress)
  {
    address = headsetAddress;
  }

  else
  {
    _bluetoothDeviceInfo = [(CSSiriRecordingInfo *)self _bluetoothDeviceInfo];
    address = [_bluetoothDeviceInfo address];
  }

  return address;
}

- (NSString)productId
{
  v2 = MEMORY[0x277CCABB0];
  _bluetoothDeviceInfo = [(CSSiriRecordingInfo *)self _bluetoothDeviceInfo];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(_bluetoothDeviceInfo, "productID")}];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (NSString)vendorId
{
  v2 = MEMORY[0x277CCABB0];
  _bluetoothDeviceInfo = [(CSSiriRecordingInfo *)self _bluetoothDeviceInfo];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(_bluetoothDeviceInfo, "vendorID")}];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (BOOL)codecIsNarrowband
{
  if ([(NSString *)self->_codec isEqualToString:*MEMORY[0x277D487D8]])
  {
    return 1;
  }

  codec = self->_codec;
  v5 = *MEMORY[0x277D48808];

  return [(NSString *)codec isEqualToString:v5];
}

- (void)_fetchBTInfo
{
  if (self->_headsetAddress)
  {
    v8 = +[CSSiriBluetoothManager sharedInstance];
    v3 = [v8 deviceWithAddress:self->_headsetAddress];
    bluetoothDevice = self->_bluetoothDevice;
    self->_bluetoothDevice = v3;
LABEL_3:

    remoteDeviceUID = v8;
    goto LABEL_4;
  }

  if (![(NSString *)self->_source isEqualToString:*MEMORY[0x277D488A8]])
  {
    return;
  }

  remoteDeviceUID = [(CSFAudioRecordDeviceInfo *)self->_deviceInfo remoteDeviceUID];
  if (remoteDeviceUID)
  {
    v8 = remoteDeviceUID;
    bluetoothDevice = +[CSSiriBluetoothManager sharedInstance];
    v6 = [bluetoothDevice deviceWithUID:v8];
    v7 = self->_bluetoothDevice;
    self->_bluetoothDevice = v6;

    goto LABEL_3;
  }

LABEL_4:
}

- (BOOL)isBluetooth
{
  if ([(NSString *)self->_source isEqualToString:*MEMORY[0x277D488B0]])
  {
    return 1;
  }

  source = self->_source;
  v5 = *MEMORY[0x277D488A8];

  return [(NSString *)source isEqualToString:v5];
}

- (CSSiriRecordingInfo)initWithDictation:(BOOL)dictation codec:(id)codec
{
  codecCopy = codec;
  v12.receiver = self;
  v12.super_class = CSSiriRecordingInfo;
  v7 = [(CSSiriRecordingInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_isDictation = dictation;
    v9 = [codecCopy copy];
    codec = v8->_codec;
    v8->_codec = v9;
  }

  return v8;
}

- (CSSiriRecordingInfo)initWithDictation:(BOOL)dictation fingerprintOnly:(BOOL)only secureOfflineOnly:(BOOL)offlineOnly audioAlertStyle:(int64_t)style recordSettings:(id)settings recordRoute:(id)route recordDeviceInfo:(id)info playbackRoute:(id)self0 audioDeviceID:(unsigned int)self1 audioSessionID:(unsigned int)self2 voiceTriggerEventInfo:(id)self3 activationAlertStartTimestamp:(double)self4 startRecordingTimestamp:(double)self5 firstBufferTimestamp:(double)self6 firstBufferHostTime:(unint64_t)self7 estimatedSpeechEndHostTime:(unint64_t)self8 deviceIdentifier:(id)self9 includeBTInfo:(BOOL)tInfo speechEvent:(int64_t)event
{
  v125 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  routeCopy = route;
  infoCopy = info;
  playbackRouteCopy = playbackRoute;
  eventInfoCopy = eventInfo;
  identifierCopy = identifier;
  v118.receiver = self;
  v118.super_class = CSSiriRecordingInfo;
  v32 = [(CSSiriRecordingInfo *)&v118 init];

  if (!v32)
  {
    goto LABEL_137;
  }

  v32->_isDictation = dictation;
  v32->_isFingerprintOnly = only;
  v32->_isSecureOfflineOnly = offlineOnly;
  v32->_audioAlertStyle = style;
  v33 = *MEMORY[0x277CB8280];
  v34 = settingsCopy;
  v35 = [v34 objectForKey:v33];
  intValue = [v35 intValue];

  v37 = [v34 objectForKey:*MEMORY[0x277CB82B0]];
  intValue2 = [v37 intValue];

  v39 = [v34 objectForKey:*MEMORY[0x277CB8288]];
  intValue3 = [v39 intValue];

  v41 = [v34 objectForKey:*MEMORY[0x277CB82E0]];

  intValue4 = [v41 intValue];
  if (intValue == 1819304813 && intValue2 == 1 && intValue3 == 16)
  {
    v43 = 0;
    if (intValue4 <= 15999)
    {
      if (intValue4 == 8000)
      {
        v44 = MEMORY[0x277D48800];
      }

      else
      {
        if (intValue4 != 11025)
        {
          goto LABEL_28;
        }

        v44 = MEMORY[0x277D487E0];
      }
    }

    else
    {
      switch(intValue4)
      {
        case 16000:
          v44 = MEMORY[0x277D487E8];
          break;
        case 22050:
          v44 = MEMORY[0x277D487F0];
          break;
        case 32000:
          v44 = MEMORY[0x277D487F8];
          break;
        default:
          goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (intValue == 1869641075)
  {
    if (intValue4 == 8000)
    {
      v44 = MEMORY[0x277D487D8];
      goto LABEL_27;
    }

    if (intValue4 == 16000)
    {
      v44 = MEMORY[0x277D487D0];
      goto LABEL_27;
    }

LABEL_21:
    v43 = 0;
    goto LABEL_28;
  }

  if (intValue != 1936745848)
  {
    goto LABEL_21;
  }

  if (intValue4 == 8000)
  {
    v44 = MEMORY[0x277D48808];
    goto LABEL_27;
  }

  if (intValue4 != 16000)
  {
    goto LABEL_21;
  }

  v44 = MEMORY[0x277D48810];
LABEL_27:
  v43 = *v44;
LABEL_28:
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v46 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  v47 = [v46 stringByAppendingPathComponent:@"forceSiriPCMAudio"];
  v48 = [defaultManager fileExistsAtPath:v47];

  if (v48)
  {
    v49 = *MEMORY[0x277D48810];

    v43 = v49;
  }

  v112 = eventInfoCopy;
  codec = v32->_codec;
  v32->_codec = v43;

  if (!v32->_codec)
  {
    v51 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v122 = "[CSSiriRecordingInfo initWithDictation:fingerprintOnly:secureOfflineOnly:audioAlertStyle:recordSettings:recordRoute:recordDeviceInfo:playbackRoute:audioDeviceID:audioSessionID:voiceTriggerEventInfo:activationAlertStartTimestamp:startRecordingTimestamp:firstBufferTimestamp:firstBufferHostTime:estimatedSpeechEndHostTime:deviceIdentifier:includeBTInfo:speechEvent:]";
      v123 = 2114;
      v124 = v34;
      _os_log_error_impl(&dword_222E4D000, v51, OS_LOG_TYPE_ERROR, "%s No SACodec for settings %{public}@", buf, 0x16u);
    }
  }

  dCopy = d;
  v53 = routeCopy;
  v54 = *MEMORY[0x277CB81E8];
  v55 = [v53 isEqualToString:*MEMORY[0x277CB81E8]];
  v56 = MEMORY[0x277D488D0];
  v57 = MEMORY[0x277CB8190];
  v58 = MEMORY[0x277D488D0];
  if ((v55 & 1) == 0)
  {
    if ([v53 isEqualToString:*MEMORY[0x277CB8190]])
    {
      v58 = MEMORY[0x277D488B8];
    }

    else if ([v53 isEqualToString:*MEMORY[0x277CB81E0]])
    {
      v58 = MEMORY[0x277D488E0];
    }

    else if ([v53 isEqualToString:*MEMORY[0x277CB8168]])
    {
      v58 = MEMORY[0x277D488B0];
    }

    else if ([v53 isEqualToString:*MEMORY[0x277CB8200]])
    {
      v58 = MEMORY[0x277D488D8];
    }

    else if ([v53 isEqualToString:*MEMORY[0x277CB81B0]])
    {
      v58 = MEMORY[0x277D488C0];
    }

    else if ([v53 isEqualToString:*MEMORY[0x277CB8348]])
    {
      v58 = MEMORY[0x277D488C8];
    }

    else
    {
      if (([v53 isEqualToString:*MEMORY[0x277CB8320]] & 1) == 0)
      {

        goto LABEL_51;
      }

      v58 = MEMORY[0x277D488A8];
    }
  }

  v59 = *v58;

  if (v59)
  {
    source = v32->_source;
    v32->_source = v59;
    v61 = v59;
    goto LABEL_55;
  }

LABEL_51:
  if (!d)
  {
    goto LABEL_53;
  }

  ioPropertyDataSize = 4;
  *buf = 0;
  if (AudioDeviceGetProperty(d, 0, 1u, 0x7472616Eu, &ioPropertyDataSize, buf))
  {
    goto LABEL_53;
  }

  v62 = 0;
  if (*buf > 1818848868)
  {
    if (*buf == 1818848869)
    {
      v66 = *v56;
      goto LABEL_80;
    }

    if (*buf != 1970496032)
    {
      goto LABEL_54;
    }

    v65 = MEMORY[0x277D488D8];
LABEL_72:
    v66 = *v65;
LABEL_80:
    v62 = v66;
    goto LABEL_54;
  }

  if (*buf != 1651274862)
  {
    if (*buf != 1651275109)
    {
      goto LABEL_54;
    }

    v65 = MEMORY[0x277D488B0];
    goto LABEL_72;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (!AudioDeviceGetProperty(d, 0, 1u, 0x73737263u, &ioPropertyDataSize, &outPropertyData))
  {
    if (outPropertyData == 1768778083)
    {
      v65 = MEMORY[0x277D488B8];
      goto LABEL_72;
    }

    if (outPropertyData == 1701669219)
    {
      v65 = MEMORY[0x277D488E0];
      goto LABEL_72;
    }
  }

LABEL_53:
  v62 = 0;
LABEL_54:
  v61 = v62;
  source = v32->_source;
  v32->_source = v61;
LABEL_55:

  v63 = v53;
  if ([v63 isEqualToString:v54])
  {
    v64 = 1;
LABEL_85:

    goto LABEL_86;
  }

  if ([v63 isEqualToString:*v57])
  {
    v64 = 2;
    goto LABEL_85;
  }

  if ([v63 isEqualToString:*MEMORY[0x277CB81E0]])
  {
    v64 = 3;
    goto LABEL_85;
  }

  if ([v63 isEqualToString:*MEMORY[0x277CB8168]])
  {
    v64 = 4;
    goto LABEL_85;
  }

  if ([v63 isEqualToString:*MEMORY[0x277CB8200]])
  {
    v64 = 5;
    goto LABEL_85;
  }

  if ([v63 isEqualToString:*MEMORY[0x277CB81B0]])
  {
    v64 = 6;
    goto LABEL_85;
  }

  if ([v63 isEqualToString:*MEMORY[0x277CB8348]])
  {
    v64 = 8;
    goto LABEL_85;
  }

  if ([v63 isEqualToString:*MEMORY[0x277CB8320]])
  {
    v64 = 7;
    goto LABEL_85;
  }

  if (!d)
  {
    goto LABEL_104;
  }

  ioPropertyDataSize = 4;
  *buf = 0;
  if (AudioDeviceGetProperty(d, 0, 1u, 0x7472616Eu, &ioPropertyDataSize, buf))
  {
    goto LABEL_104;
  }

  if (*buf > 1818848868)
  {
    if (*buf == 1818848869)
    {
      v64 = 1;
    }

    else
    {
      if (*buf != 1970496032)
      {
        goto LABEL_104;
      }

      v64 = 5;
    }
  }

  else
  {
    if (*buf != 1651274862)
    {
      if (*buf == 1651275109)
      {
        v64 = 4;
        goto LABEL_86;
      }

LABEL_104:
      v64 = 0;
      goto LABEL_86;
    }

    outPropertyData = 0;
    ioPropertyDataSize = 4;
    if (AudioDeviceGetProperty(d, 0, 1u, 0x73737263u, &ioPropertyDataSize, &outPropertyData))
    {
      goto LABEL_104;
    }

    if (outPropertyData == 1768778083)
    {
      v64 = 2;
    }

    else
    {
      if (outPropertyData != 1701669219)
      {
        goto LABEL_104;
      }

      v64 = 3;
    }
  }

LABEL_86:
  v32->_mhSource = v64;
  v67 = playbackRouteCopy;
  v68 = [v67 isEqualToString:*MEMORY[0x277CB81A0]];
  v69 = MEMORY[0x277CB8158];
  if (v68)
  {
    v70 = MEMORY[0x277D48878];
  }

  else if ([v67 isEqualToString:*MEMORY[0x277CB8198]])
  {
    v70 = MEMORY[0x277D48870];
  }

  else if ([v67 isEqualToString:*MEMORY[0x277CB81D0]])
  {
    v70 = MEMORY[0x277D48890];
  }

  else if ([v67 isEqualToString:*v69])
  {
    v70 = MEMORY[0x277D48858];
  }

  else if ([v67 isEqualToString:*MEMORY[0x277CB8168]])
  {
    v70 = MEMORY[0x277D48860];
  }

  else if ([v67 isEqualToString:*MEMORY[0x277CB8178]])
  {
    v70 = MEMORY[0x277D48868];
  }

  else if ([v67 isEqualToString:*MEMORY[0x277CB81B0]])
  {
    v70 = MEMORY[0x277D48880];
  }

  else if ([v67 isEqualToString:*MEMORY[0x277CB8200]])
  {
    v70 = MEMORY[0x277D488A0];
  }

  else
  {
    if (![v67 isEqualToString:*MEMORY[0x277CB81C0]])
    {
      v71 = 0;
      if (!v67)
      {
        goto LABEL_110;
      }

      goto LABEL_108;
    }

    v70 = MEMORY[0x277D48888];
  }

  v71 = *v70;
  if (!v67)
  {
    goto LABEL_110;
  }

LABEL_108:
  if (!v71)
  {
    v71 = *MEMORY[0x277D48898];
  }

LABEL_110:

  destination = v32->_destination;
  v32->_destination = v71;

  route = v63;
  if (!v63)
  {
    route = [infoCopy route];
  }

  v74 = [route copy];
  route = v32->_route;
  v32->_route = v74;

  if (!v63)
  {
  }

  v76 = [infoCopy copy];
  deviceInfo = v32->_deviceInfo;
  v32->_deviceInfo = v76;

  v78 = [v113 copy];
  voiceTriggerEventInfo = v32->_voiceTriggerEventInfo;
  v32->_voiceTriggerEventInfo = v78;

  v32->_activationAlertStartTimestamp = timestamp;
  v32->_startRecordingTimestamp = recordingTimestamp;
  v32->_firstBufferTimestamp = bufferTimestamp;
  uUIDString = identifierCopy;
  v32->_firstBufferHostTime = time;
  if (!identifierCopy)
  {
    dCopy = [infoCopy remoteDeviceUID];
    uUIDString = [dCopy UUIDString];
  }

  v81 = [uUIDString copy];
  deviceIdentifier = v32->_deviceIdentifier;
  v32->_deviceIdentifier = v81;

  if (!identifierCopy)
  {
  }

  v32->_speechEvent = event;
  v83 = [v34 objectForKey:@"CSSpeechRecordSettingsKey_isDucking"];
  v32->_isDucking = [v83 BOOLValue];

  v32->_audioSessionID = iD;
  v32->_estimatedSpeechEndHostTime = hostTime;
  if (([v63 isEqualToString:*v69] & 1) != 0 || (objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CB8168]) & 1) != 0 || objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CB8178]))
  {
    v84 = [MEMORY[0x277CB83F8] retrieveSessionWithID:iD];
    currentRoute = [v84 currentRoute];
    inputs = [currentRoute inputs];
    firstObject = [inputs firstObject];

    portName = [firstObject portName];
    v89 = [portName copy];
    headsetName = v32->_headsetName;
    v32->_headsetName = v89;

    v91 = [firstObject UID];
    v92 = [v91 copy];
    headsetAddress = v32->_headsetAddress;
    v32->_headsetAddress = v92;

    isEarpieceActiveNoiseCancelationEnabled = [v84 isEarpieceActiveNoiseCancelationEnabled];
    v95 = *MEMORY[0x277D488E8];
    if (isEarpieceActiveNoiseCancelationEnabled)
    {
      v96 = *MEMORY[0x277D488E8];
    }

    else
    {
      v96 = 0;
    }

    objc_storeStrong(&v32->_dspStatus, v96);
  }

  eventInfoCopy = v113;
  if ([v63 isEqualToString:*MEMORY[0x277CB8320]])
  {
    remoteDeviceUID = [infoCopy remoteDeviceUID];
    v98 = remoteDeviceUID != 0;
  }

  else
  {
    v98 = 0;
  }

  v99 = v32->_headsetAddress;
  if (!v99)
  {
LABEL_131:
    if (v98)
    {
      goto LABEL_132;
    }

    goto LABEL_134;
  }

  if (v32->_deviceIdentifier)
  {
    v98 = 1;
    goto LABEL_131;
  }

  v110 = [(NSString *)v99 copy];
  v111 = v32->_deviceIdentifier;
  v32->_deviceIdentifier = v110;

  if (v32->_headsetAddress != 0 || v98)
  {
LABEL_132:
    if (tInfo)
    {
      [(CSSiriRecordingInfo *)v32 _fetchBTInfo];
    }
  }

LABEL_134:
  if (([v63 isEqualToString:*MEMORY[0x277CB81B0]] & 1) != 0 || objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CB8348]))
  {
    currentCarPlayExternalDevice = [MEMORY[0x277CE64E8] currentCarPlayExternalDevice];
    screenIDs = [currentCarPlayExternalDevice screenIDs];
    v102 = [screenIDs componentsJoinedByString:{@", "}];
    v103 = v32->_deviceIdentifier;
    v32->_deviceIdentifier = v102;

    modelName = [currentCarPlayExternalDevice modelName];
    v105 = [modelName copy];
    modelName = v32->_modelName;
    v32->_modelName = v105;
  }

LABEL_137:
  v107 = v32;

  v108 = *MEMORY[0x277D85DE8];
  return v107;
}

@end