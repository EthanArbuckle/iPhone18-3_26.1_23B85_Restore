@interface CoreCECDevice
- (BOOL)deckControlSetDeckStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)setAudioMuteStatus:(BOOL)a3 error:(id *)a4;
- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setAudioVolumeStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)setPowerStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)setSupportedAudioFormats:(id)a3 error:(id *)a4;
- (BOOL)setSystemAudioControlEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)systemAudioModeRequest:(unint64_t)a3 error:(id *)a4;
- (CoreCECDevice)initWithCoder:(id)a3;
- (CoreCECDevice)initWithDevice:(id)a3;
- (NSString)analyticsDescription;
- (id)delegate;
- (id)description;
- (uint64_t)notifyDelegateActiveSourceStatusHasChanged;
- (unint64_t)defaultKnownDeviceFeaturesMaskForCECVersion:(unint64_t)a3;
- (unint64_t)featureSupportStatus:(unint64_t)a3;
- (void)dealloc;
- (void)deckControlCommandHasBeenReceived:(unint64_t)a3 fromDevice:(id)a4;
- (void)deckControlPlayHasBeenReceived:(unint64_t)a3 fromDevice:(id)a4;
- (void)deckControlStatusHasBeenUpdated:(unint64_t)a3 fromDevice:(id)a4;
- (void)didChangePowerStatus:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)notifyDelegateActiveSourceStatusHasChanged;
- (void)notifyDelegateDeckControlCommandHasBeenReceived:(id)a3 command:(unint64_t)a4;
- (void)notifyDelegateDeckControlPlayHasBeenReceived:(id)a3 playMode:(unint64_t)a4;
- (void)notifyDelegateDeckControlStatusHasBeenUpdated:(id)a3 deckInfo:(unint64_t)a4;
- (void)notifyDelegateFeatureAbort:(id)a3;
- (void)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4;
- (void)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4;
- (void)notifyDelegateShouldAssertActiveSource;
- (void)notifyDelegateStandbyRequestHasBeenReceived:(id)a3;
- (void)receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4;
- (void)receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4;
- (void)removeFromBus;
- (void)sendLogicalAddressErrorAnalyticsForMessage:(const char *)a3;
- (void)setDeckStatus:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setFeature:(unint64_t)a3 supportStatus:(unint64_t)a4;
- (void)setIsActiveSource:(BOOL)a3;
- (void)standbyRequestHasBeenReceived:(id)a3;
@end

@implementation CoreCECDevice

- (NSString)analyticsDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CoreCECDevice *)self logicalAddress];
  v5 = [(CoreCECDevice *)self physicalAddress];
  v6 = [(CoreCECDevice *)self cecVersion];
  v7 = [(CoreCECDevice *)self vendorID];
  v8 = [(CoreRCDevice *)self isLocalDevice];
  v9 = @"R";
  if (v8)
  {
    v9 = @"L";
  }

  return [v3 stringWithFormat:@"%02X_%04X_%02lX_%06lX_%@", v4, v5, v6, v7, v9];
}

- (void)sendLogicalAddressErrorAnalyticsForMessage:(const char *)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_28593C0C8];
  [v4 addEntriesFromDictionary:{objc_msgSend(-[CoreRCDevice bus](self, "bus"), "analyticsContext")}];
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice(Analytics) sendLogicalAddressErrorAnalyticsForMessage:?];
  }

  v5 = MEMORY[0x277CCA9B8];

  [v5 sendCECErrorAnalyticsWithContext:v4];
}

- (CoreCECDevice)initWithDevice:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreCECDevice;
    v5 = [(CoreRCDevice *)&v7 initWithDevice:a3];
    if (v5)
    {
      v5->_logicalAddress = [a3 logicalAddress];
      v5->_physicalAddress = [a3 physicalAddress];
      v5->_deviceType = [a3 deviceType];
      v5->_cecVersion = [a3 cecVersion];
      v5->_vendorID = [a3 vendorID];
      v5->_powerStatus = [a3 powerStatus];
      v5->_deckStatus = [a3 deckStatus];
      v5->_isActiveSource = [a3 isActiveSource];
      v5->_systemAudioControlEnabled = [a3 systemAudioControlEnabled];
      v5->_allDeviceTypes = [a3 allDeviceTypes];
      v5->_deviceFeatures = [a3 deviceFeatures];
      v5->_knownDeviceFeatures = [a3 knownDeviceFeatures];
      v5->_rcProfile = [objc_msgSend(a3 "rcProfile")];
      v5->_audioReturnChannelControlEnabled = [a3 audioReturnChannelControlEnabled];
      v5->_audioVolumeStatus = [a3 audioVolumeStatus];
      v5->_audioMuteStatus = [a3 audioMuteStatus];
      v5->_audioFormats = [objc_msgSend(a3 "audioFormats")];
      v5->_audioFormatsCount = [a3 audioFormatsCount];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreCECDevice)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CoreCECDevice;
  v4 = [(CoreRCDevice *)&v9 initWithCoder:?];
  if (v4)
  {
    v4->_logicalAddress = [a3 decodeIntegerForKey:@"logicalAddress"];
    v4->_physicalAddress = [a3 decodeIntegerForKey:@"physicalAddress"];
    v4->_deviceType = [a3 decodeIntegerForKey:@"deviceType"];
    v4->_cecVersion = [a3 decodeIntegerForKey:@"cecVersion"];
    v4->_vendorID = [a3 decodeIntegerForKey:@"vendorID"];
    v4->_powerStatus = [a3 decodeIntegerForKey:@"powerStatus"];
    v4->_deckStatus = [a3 decodeIntegerForKey:@"deckStatus"];
    v4->_isActiveSource = [a3 decodeBoolForKey:@"isActiveSource"];
    v4->_systemAudioControlEnabled = [a3 decodeBoolForKey:@"systemAudioControlEnabled"];
    v4->_allDeviceTypes = [a3 decodeIntegerForKey:@"allDeviceTypes"];
    v4->_deviceFeatures = [a3 decodeIntegerForKey:@"deviceFeatures"];
    v4->_knownDeviceFeatures = [a3 decodeIntegerForKey:@"knownDeviceFeatures"];
    v4->_rcProfile = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(+[CoreCECTypesInternal defaultTypes](CoreCECTypesInternal forKey:{"defaultTypes"), "rcProfileClasses"), @"rcProfile", "copy"}];
    v4->_audioReturnChannelControlEnabled = [a3 decodeBoolForKey:@"audioReturnChannelControlEnabled"];
    v4->_audioVolumeStatus = [a3 decodeIntegerForKey:@"audioVolumeStatus"];
    v4->_audioMuteStatus = [a3 decodeBoolForKey:@"audioMuteStatus"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v4->_audioFormats = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"audioFormats", "copy"}];
    v4->_audioFormatsCount = [a3 decodeIntegerForKey:@"audioFormatsCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_logicalAddress forKey:@"logicalAddress"];
  [a3 encodeInteger:self->_physicalAddress forKey:@"physicalAddress"];
  [a3 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [a3 encodeInteger:self->_cecVersion forKey:@"cecVersion"];
  [a3 encodeInteger:self->_vendorID forKey:@"vendorID"];
  [a3 encodeInteger:self->_powerStatus forKey:@"powerStatus"];
  [a3 encodeInteger:self->_deckStatus forKey:@"deckStatus"];
  [a3 encodeBool:self->_isActiveSource forKey:@"isActiveSource"];
  [a3 encodeBool:self->_systemAudioControlEnabled forKey:@"systemAudioControlEnabled"];
  [a3 encodeInteger:self->_allDeviceTypes forKey:@"allDeviceTypes"];
  [a3 encodeInteger:self->_deviceFeatures forKey:@"deviceFeatures"];
  [a3 encodeInteger:self->_knownDeviceFeatures forKey:@"knownDeviceFeatures"];
  [a3 encodeObject:self->_rcProfile forKey:@"rcProfile"];
  [a3 encodeBool:self->_audioReturnChannelControlEnabled forKey:@"audioReturnChannelControlEnabled"];
  [a3 encodeInteger:self->_audioVolumeStatus forKey:@"audioVolumeStatus"];
  [a3 encodeBool:self->_audioMuteStatus forKey:@"audioMuteStatus"];
  [a3 encodeObject:self->_audioFormats forKey:@"audioFormats"];
  [a3 encodeInteger:self->_audioFormatsCount forKey:@"audioFormatsCount"];
}

- (id)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = CoreCECDevice;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCDevice description](&v10, sel_description)}];
  [v3 appendFormat:@" LA: %u (%@);", -[CoreCECDevice logicalAddress](self, "logicalAddress"), CoreCECAddressString(-[CoreCECDevice logicalAddress](self, "logicalAddress"))];
  v11[0] = CECPhysicalAddressStringWithAddress([(CoreCECDevice *)self physicalAddress]);
  [v3 appendFormat:@" PA: %s;", v11];
  [v3 appendFormat:@" Type: %@;", CoreCECDeviceTypeString(-[CoreCECDevice deviceType](self, "deviceType"))];
  [v3 appendFormat:@" CEC: %@;", CoreCECVersionString(-[CoreCECDevice cecVersion](self, "cecVersion"))];
  [v3 appendFormat:@" Vendor: %@;", CoreCECVendorIDString(-[CoreCECDevice vendorID](self, "vendorID"))];
  [v3 appendFormat:@" Power: %@;", CoreCECPowerStatusString(-[CoreCECDevice powerStatus](self, "powerStatus"))];
  if ([(CoreCECDevice *)self deviceType]== 2 || [(CoreCECDevice *)self deviceType]== 4)
  {
    [v3 appendFormat:@" Deck: %@;", CoreCECDeckInfoString(-[CoreCECDevice deckStatus](self, "deckStatus"))];
  }

  if ([(CoreRCDevice *)self isLocalDevice])
  {
    if ([(CoreCECDevice *)self systemAudioControlEnabled])
    {
      v4 = "Y";
    }

    else
    {
      v4 = "N";
    }

    [v3 appendFormat:@" System Audio Control: %s;", v4];
  }

  if ([(CoreCECDevice *)self deviceType]== 1)
  {
    [v3 appendFormat:@" Volume: %lu;", -[CoreCECDevice audioVolumeStatus](self, "audioVolumeStatus")];
    if ([(CoreCECDevice *)self audioMuteStatus])
    {
      v5 = "Y";
    }

    else
    {
      v5 = "N";
    }

    [v3 appendFormat:@" Mute: %s;", v5];
    if ([(CoreCECDevice *)self audioReturnChannelControlEnabled])
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    [v3 appendFormat:@" ARC Enable: %s;", v6];
    [v3 appendFormat:@" AudFmts: %lu;", -[CoreCECDevice audioFormatsCount](self, "audioFormatsCount")];
  }

  if (self->_isActiveSource)
  {
    v7 = "Y";
  }

  else
  {
    v7 = "N";
  }

  [v3 appendFormat:@" Active Source: %s;", v7];
  [v3 appendFormat:@" All Device Types: 0x%02X;", -[CoreCECDevice allDeviceTypes](self, "allDeviceTypes")];
  [v3 appendFormat:@" Features: 0x%08lX;", -[CoreCECDevice deviceFeatures](self, "deviceFeatures")];
  [v3 appendFormat:@" KnownFeatures: 0x%08lX;", -[CoreCECDevice knownDeviceFeatures](self, "knownDeviceFeatures")];
  [v3 appendFormat:@" RCProfile: %@;", CoreCECRCProfileString(-[CoreCECDevice rcProfile](self, "rcProfile"))];
  result = v3;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v3 dealloc];
}

- (id)delegate
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  return [(CoreRCDevice *)&v3 delegate];
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v3 setDelegate:a3];
}

- (unint64_t)defaultKnownDeviceFeaturesMaskForCECVersion:(unint64_t)a3
{
  if ([(CoreCECDevice *)self cecVersion]< 6 || [(CoreCECDevice *)self cecVersion]>= 0x40)
  {
    return 0;
  }

  else
  {
    return 0x1FFFFFLL;
  }
}

- (void)setIsActiveSource:(BOOL)a3
{
  if (self->_isActiveSource != a3)
  {
    self->_isActiveSource = a3;
    [(CoreCECDevice *)self notifyDelegateActiveSourceStatusHasChanged];
  }
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)a3 error:(id *)a4
{
  if ([(CoreCECDevice *)self deviceType]!= 2 && [(CoreCECDevice *)self deviceType]!= 4)
  {
    [CoreCECDevice deckControlSetDeckStatus:? error:?];
LABEL_9:
    v7 = v9;
    if (!a4)
    {
      return v7 == 0;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    goto LABEL_9;
  }

  v7 = 0;
  self->_deckStatus = a3;
  if (a4)
  {
LABEL_5:
    *a4 = v7;
  }

  return v7 == 0;
}

- (BOOL)setSystemAudioControlEnabled:(BOOL)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSystemAudioControlEnabled:error:];
  }

  self->_systemAudioControlEnabled = a3;
  return 1;
}

- (BOOL)systemAudioModeRequest:(unint64_t)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice systemAudioModeRequest:error:];
  }

  return 1;
}

- (BOOL)setPowerStatus:(unint64_t)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setPowerStatus:error:];
  }

  if (self->_powerStatus != a3)
  {
    [(CoreCECDevice *)self willChangePowerStatus:a3];
    self->_powerStatus = a3;
    [(CoreCECDevice *)self didChangePowerStatus:a3];
  }

  return 1;
}

- (void)didChangePowerStatus:(unint64_t)a3
{
  v4 = [(CoreRCDevice *)self bus];

  [v4 notifyDelegateDeviceUpdated:self];
}

- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioReturnChannelControlEnabled:error:];
  }

  self->_audioReturnChannelControlEnabled = a3;
  return 1;
}

- (BOOL)setAudioVolumeStatus:(unint64_t)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioVolumeStatus:error:];
  }

  if (a3 > 0x64)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6737 userInfo:0];
    }
  }

  else
  {
    self->_audioVolumeStatus = a3;
  }

  return a3 < 0x65;
}

- (BOOL)setAudioMuteStatus:(BOOL)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioMuteStatus:error:];
  }

  self->_audioMuteStatus = a3;
  return 1;
}

- (BOOL)setSupportedAudioFormats:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSupportedAudioFormats:error:];
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_17:
    v14 = 0;
    self->_audioFormats = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_5:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = &stru_285935118;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        [objc_msgSend(a3 objectForKeyedSubscript:{v12), "getBytes:length:", &v17, 3}];
        v13 = [v12 integerValue];
        v10 = [(__CFString *)v10 stringByAppendingFormat:@"0x%02lx:0x%02x%02x%02x ", v13, v17, SBYTE1(v17), SBYTE2(v17)];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSupportedAudioFormats:error:];
  }

  self->_audioFormats = a3;
  v14 = [a3 count];
LABEL_18:
  self->_audioFormatsCount = v14;
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (unint64_t)featureSupportStatus:(unint64_t)a3
{
  v4 = 1 << a3;
  if (([(CoreCECDevice *)self deviceFeatures]& v4) != 0)
  {
    return 2;
  }

  if (([(CoreCECDevice *)self knownDeviceFeatures]& v4) != 0)
  {
    if (gLogCategory_CoreRCDevice > 40)
    {
      return 1;
    }

    if (gLogCategory_CoreRCDevice == -1)
    {
      v5 = 1;
      if (!_LogCategory_Initialize())
      {
        return v5;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    if (gLogCategory_CoreRCDevice > 40)
    {
      return 0;
    }

    if (gLogCategory_CoreRCDevice == -1)
    {
      v5 = 0;
      if (!_LogCategory_Initialize())
      {
        return v5;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  LogPrintF();
  return v5;
}

- (void)setFeature:(unint64_t)a3 supportStatus:(unint64_t)a4
{
  switch(a4)
  {
    case 0uLL:
      v8 = ~(1 << a3);
      [(CoreCECDevice *)self setDeviceFeatures:[(CoreCECDevice *)self deviceFeatures]& v8];
      v7 = [(CoreCECDevice *)self knownDeviceFeatures]& v8;
      goto LABEL_8;
    case 1uLL:
      v5 = 1 << a3;
      v6 = [(CoreCECDevice *)self deviceFeatures]& ~v5;
      goto LABEL_6;
    case 2uLL:
      v5 = 1 << a3;
      v6 = [(CoreCECDevice *)self deviceFeatures]| v5;
LABEL_6:
      [(CoreCECDevice *)self setDeviceFeatures:v6];
      v7 = [(CoreCECDevice *)self knownDeviceFeatures]| v5;
LABEL_8:

      [(CoreCECDevice *)self setKnownDeviceFeatures:v7];
      return;
  }

  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)removeFromBus
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice removeFromBus];
  }

  v3 = [(CoreRCDevice *)self bus];

  [v3 removeDevice:self];
}

- (void)deckControlCommandHasBeenReceived:(unint64_t)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlCommandHasBeenReceived:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlCommandHasBeenReceived:a4 command:a3];
}

- (void)deckControlPlayHasBeenReceived:(unint64_t)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlPlayHasBeenReceived:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlPlayHasBeenReceived:a4 playMode:a3];
}

- (void)deckControlStatusHasBeenUpdated:(unint64_t)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlStatusHasBeenUpdated:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlStatusHasBeenUpdated:a4 deckInfo:a3];
}

- (void)standbyRequestHasBeenReceived:(id)a3
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice standbyRequestHasBeenReceived:];
  }

  [(CoreCECDevice *)self notifyDelegateStandbyRequestHasBeenReceived:a3];
}

- (void)receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice receivedRequestSystemAudioModeStatusChangeTo:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:a3 fromDevice:a4];
}

- (void)receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice receivedRequestAudioReturnChannelStatusChangeTo:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:a3 fromDevice:a4];
}

- (void)notifyDelegateShouldAssertActiveSource
{
  v3 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateShouldAssertActiveSource];
  }

  if (objc_opt_respondsToSelector())
  {

    [v3 cecDeviceShouldAssertActiveSource:self];
  }
}

- (void)notifyDelegateActiveSourceStatusHasChanged
{
  v3 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateActiveSourceStatusHasChanged];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(CoreCECDevice *)self isActiveSource];

    [v3 cecDevice:self activeSourceStatusHasChanged:v4];
  }
}

- (void)notifyDelegateDeckControlCommandHasBeenReceived:(id)a3 command:(unint64_t)a4
{
  v7 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlCommandHasBeenReceived:command:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecDevice:self deckControlCommandHasBeenReceived:a4 fromDevice:a3];
  }
}

- (void)notifyDelegateDeckControlPlayHasBeenReceived:(id)a3 playMode:(unint64_t)a4
{
  v7 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlPlayHasBeenReceived:playMode:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecDevice:self deckControlPlayHasBeenReceived:a4 fromDevice:a3];
  }
}

- (void)notifyDelegateDeckControlStatusHasBeenUpdated:(id)a3 deckInfo:(unint64_t)a4
{
  v7 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlStatusHasBeenUpdated:deckInfo:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecDevice:self deckControlStatusHasBeenUpdated:a4 fromDevice:a3];
  }
}

- (void)notifyDelegateFeatureAbort:(id)a3
{
  v5 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateFeatureAbort:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v5 cecDevice:self featureAbort:a3];
  }
}

- (void)notifyDelegateStandbyRequestHasBeenReceived:(id)a3
{
  v5 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateStandbyRequestHasBeenReceived:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v5 cecDevice:self standbyRequestHasBeenReceived:a3];
  }
}

- (void)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4
{
  v7 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:fromDevice:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecDevice:self receivedRequestSystemAudioModeStatusChangeTo:a3 fromDevice:a4];
  }
}

- (void)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 fromDevice:(id)a4
{
  v7 = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:fromDevice:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecDevice:self receivedRequestAudioReturnChannelStatusChangeTo:a3 fromDevice:a4];
  }
}

- (void)setDeckStatus:(unint64_t)a3
{
  if (a3)
  {
    self->_deckStatus = a3;
  }
}

- (uint64_t)deckControlSetDeckStatus:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)setPowerStatus:error:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v0 = OUTLINED_FUNCTION_5_1();
  CoreCECPowerStatusString(v0);
  return LogPrintF();
}

- (uint64_t)deckControlCommandHasBeenReceived:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckControlModeString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)deckControlPlayHasBeenReceived:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECPlayModeString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)deckControlStatusHasBeenUpdated:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckInfoString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)standbyRequestHasBeenReceived:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_1();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)receivedRequestSystemAudioModeStatusChangeTo:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)receivedRequestAudioReturnChannelStatusChangeTo:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)notifyDelegateActiveSourceStatusHasChanged
{
  objc_opt_class();
  [OUTLINED_FUNCTION_2_4() isActiveSource];
  return LogPrintF();
}

- (uint64_t)notifyDelegateDeckControlCommandHasBeenReceived:command:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckControlModeString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)notifyDelegateDeckControlPlayHasBeenReceived:playMode:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECPlayModeString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)notifyDelegateDeckControlStatusHasBeenUpdated:deckInfo:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckInfoString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)notifyDelegateStandbyRequestHasBeenReceived:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_1();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

- (uint64_t)notifyDelegateRequestSystemAudioModeStatusChangeTo:didFinishWithResult:error:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v0 = OUTLINED_FUNCTION_5_1();
  CoreCECActivationStatusString(v0);
  return LogPrintF();
}

- (uint64_t)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF();
}

@end