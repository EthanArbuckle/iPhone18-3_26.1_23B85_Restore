@interface CSSiriRecordingInfo
- (BOOL)codecIsNarrowband;
- (BOOL)isBluetooth;
- (CSSiriRecordingInfo)initWithDictation:(BOOL)a3 codec:(id)a4;
- (CSSiriRecordingInfo)initWithDictation:(BOOL)a3 fingerprintOnly:(BOOL)a4 secureOfflineOnly:(BOOL)a5 audioAlertStyle:(int64_t)a6 recordSettings:(id)a7 recordRoute:(id)a8 recordDeviceInfo:(id)a9 playbackRoute:(id)a10 audioDeviceID:(unsigned int)a11 audioSessionID:(unsigned int)a12 voiceTriggerEventInfo:(id)a13 activationAlertStartTimestamp:(double)a14 startRecordingTimestamp:(double)a15 firstBufferTimestamp:(double)a16 firstBufferHostTime:(unint64_t)a17 estimatedSpeechEndHostTime:(unint64_t)a18 deviceIdentifier:(id)a19 includeBTInfo:(BOOL)a20 speechEvent:(int64_t)a21;
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
    v3 = headsetAddress;
  }

  else
  {
    v4 = [(CSSiriRecordingInfo *)self _bluetoothDeviceInfo];
    v3 = [v4 address];
  }

  return v3;
}

- (NSString)productId
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(CSSiriRecordingInfo *)self _bluetoothDeviceInfo];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(v3, "productID")}];
  v5 = [v4 stringValue];

  return v5;
}

- (NSString)vendorId
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(CSSiriRecordingInfo *)self _bluetoothDeviceInfo];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(v3, "vendorID")}];
  v5 = [v4 stringValue];

  return v5;
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

    v5 = v8;
    goto LABEL_4;
  }

  if (![(NSString *)self->_source isEqualToString:*MEMORY[0x277D488A8]])
  {
    return;
  }

  v5 = [(CSFAudioRecordDeviceInfo *)self->_deviceInfo remoteDeviceUID];
  if (v5)
  {
    v8 = v5;
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

- (CSSiriRecordingInfo)initWithDictation:(BOOL)a3 codec:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CSSiriRecordingInfo;
  v7 = [(CSSiriRecordingInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_isDictation = a3;
    v9 = [v6 copy];
    codec = v8->_codec;
    v8->_codec = v9;
  }

  return v8;
}

- (CSSiriRecordingInfo)initWithDictation:(BOOL)a3 fingerprintOnly:(BOOL)a4 secureOfflineOnly:(BOOL)a5 audioAlertStyle:(int64_t)a6 recordSettings:(id)a7 recordRoute:(id)a8 recordDeviceInfo:(id)a9 playbackRoute:(id)a10 audioDeviceID:(unsigned int)a11 audioSessionID:(unsigned int)a12 voiceTriggerEventInfo:(id)a13 activationAlertStartTimestamp:(double)a14 startRecordingTimestamp:(double)a15 firstBufferTimestamp:(double)a16 firstBufferHostTime:(unint64_t)a17 estimatedSpeechEndHostTime:(unint64_t)a18 deviceIdentifier:(id)a19 includeBTInfo:(BOOL)a20 speechEvent:(int64_t)a21
{
  v125 = *MEMORY[0x277D85DE8];
  v116 = a7;
  v115 = a8;
  v117 = a9;
  v114 = a10;
  v30 = a13;
  v31 = a19;
  v118.receiver = self;
  v118.super_class = CSSiriRecordingInfo;
  v32 = [(CSSiriRecordingInfo *)&v118 init];

  if (!v32)
  {
    goto LABEL_137;
  }

  v32->_isDictation = a3;
  v32->_isFingerprintOnly = a4;
  v32->_isSecureOfflineOnly = a5;
  v32->_audioAlertStyle = a6;
  v33 = *MEMORY[0x277CB8280];
  v34 = v116;
  v35 = [v34 objectForKey:v33];
  v36 = [v35 intValue];

  v37 = [v34 objectForKey:*MEMORY[0x277CB82B0]];
  v38 = [v37 intValue];

  v39 = [v34 objectForKey:*MEMORY[0x277CB8288]];
  v40 = [v39 intValue];

  v41 = [v34 objectForKey:*MEMORY[0x277CB82E0]];

  v42 = [v41 intValue];
  if (v36 == 1819304813 && v38 == 1 && v40 == 16)
  {
    v43 = 0;
    if (v42 <= 15999)
    {
      if (v42 == 8000)
      {
        v44 = MEMORY[0x277D48800];
      }

      else
      {
        if (v42 != 11025)
        {
          goto LABEL_28;
        }

        v44 = MEMORY[0x277D487E0];
      }
    }

    else
    {
      switch(v42)
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

  if (v36 == 1869641075)
  {
    if (v42 == 8000)
    {
      v44 = MEMORY[0x277D487D8];
      goto LABEL_27;
    }

    if (v42 == 16000)
    {
      v44 = MEMORY[0x277D487D0];
      goto LABEL_27;
    }

LABEL_21:
    v43 = 0;
    goto LABEL_28;
  }

  if (v36 != 1936745848)
  {
    goto LABEL_21;
  }

  if (v42 == 8000)
  {
    v44 = MEMORY[0x277D48808];
    goto LABEL_27;
  }

  if (v42 != 16000)
  {
    goto LABEL_21;
  }

  v44 = MEMORY[0x277D48810];
LABEL_27:
  v43 = *v44;
LABEL_28:
  v45 = [MEMORY[0x277CCAA00] defaultManager];
  v46 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  v47 = [v46 stringByAppendingPathComponent:@"forceSiriPCMAudio"];
  v48 = [v45 fileExistsAtPath:v47];

  if (v48)
  {
    v49 = *MEMORY[0x277D48810];

    v43 = v49;
  }

  v112 = v30;
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

  v52 = a11;
  v53 = v115;
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
  if (!a11)
  {
    goto LABEL_53;
  }

  ioPropertyDataSize = 4;
  *buf = 0;
  if (AudioDeviceGetProperty(a11, 0, 1u, 0x7472616Eu, &ioPropertyDataSize, buf))
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
  if (!AudioDeviceGetProperty(a11, 0, 1u, 0x73737263u, &ioPropertyDataSize, &outPropertyData))
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

  if (!a11)
  {
    goto LABEL_104;
  }

  ioPropertyDataSize = 4;
  *buf = 0;
  if (AudioDeviceGetProperty(a11, 0, 1u, 0x7472616Eu, &ioPropertyDataSize, buf))
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
    if (AudioDeviceGetProperty(a11, 0, 1u, 0x73737263u, &ioPropertyDataSize, &outPropertyData))
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
  v67 = v114;
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

  v73 = v63;
  if (!v63)
  {
    v73 = [v117 route];
  }

  v74 = [v73 copy];
  route = v32->_route;
  v32->_route = v74;

  if (!v63)
  {
  }

  v76 = [v117 copy];
  deviceInfo = v32->_deviceInfo;
  v32->_deviceInfo = v76;

  v78 = [v113 copy];
  voiceTriggerEventInfo = v32->_voiceTriggerEventInfo;
  v32->_voiceTriggerEventInfo = v78;

  v32->_activationAlertStartTimestamp = a14;
  v32->_startRecordingTimestamp = a15;
  v32->_firstBufferTimestamp = a16;
  v80 = v31;
  v32->_firstBufferHostTime = a17;
  if (!v31)
  {
    v52 = [v117 remoteDeviceUID];
    v80 = [v52 UUIDString];
  }

  v81 = [v80 copy];
  deviceIdentifier = v32->_deviceIdentifier;
  v32->_deviceIdentifier = v81;

  if (!v31)
  {
  }

  v32->_speechEvent = a21;
  v83 = [v34 objectForKey:@"CSSpeechRecordSettingsKey_isDucking"];
  v32->_isDucking = [v83 BOOLValue];

  v32->_audioSessionID = a12;
  v32->_estimatedSpeechEndHostTime = a18;
  if (([v63 isEqualToString:*v69] & 1) != 0 || (objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CB8168]) & 1) != 0 || objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CB8178]))
  {
    v84 = [MEMORY[0x277CB83F8] retrieveSessionWithID:a12];
    v85 = [v84 currentRoute];
    v86 = [v85 inputs];
    v87 = [v86 firstObject];

    v88 = [v87 portName];
    v89 = [v88 copy];
    headsetName = v32->_headsetName;
    v32->_headsetName = v89;

    v91 = [v87 UID];
    v92 = [v91 copy];
    headsetAddress = v32->_headsetAddress;
    v32->_headsetAddress = v92;

    v94 = [v84 isEarpieceActiveNoiseCancelationEnabled];
    v95 = *MEMORY[0x277D488E8];
    if (v94)
    {
      v96 = *MEMORY[0x277D488E8];
    }

    else
    {
      v96 = 0;
    }

    objc_storeStrong(&v32->_dspStatus, v96);
  }

  v30 = v113;
  if ([v63 isEqualToString:*MEMORY[0x277CB8320]])
  {
    v97 = [v117 remoteDeviceUID];
    v98 = v97 != 0;
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
    if (a20)
    {
      [(CSSiriRecordingInfo *)v32 _fetchBTInfo];
    }
  }

LABEL_134:
  if (([v63 isEqualToString:*MEMORY[0x277CB81B0]] & 1) != 0 || objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CB8348]))
  {
    v100 = [MEMORY[0x277CE64E8] currentCarPlayExternalDevice];
    v101 = [v100 screenIDs];
    v102 = [v101 componentsJoinedByString:{@", "}];
    v103 = v32->_deviceIdentifier;
    v32->_deviceIdentifier = v102;

    v104 = [v100 modelName];
    v105 = [v104 copy];
    modelName = v32->_modelName;
    v32->_modelName = v105;
  }

LABEL_137:
  v107 = v32;

  v108 = *MEMORY[0x277D85DE8];
  return v107;
}

@end