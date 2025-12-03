@interface CoreCECDevice
- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error;
- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error;
- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error;
- (BOOL)setPowerStatus:(unint64_t)status error:(id *)error;
- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error;
- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error;
- (CoreCECDevice)initWithCoder:(id)coder;
- (CoreCECDevice)initWithDevice:(id)device;
- (NSString)analyticsDescription;
- (id)delegate;
- (id)description;
- (uint64_t)notifyDelegateActiveSourceStatusHasChanged;
- (unint64_t)defaultKnownDeviceFeaturesMaskForCECVersion:(unint64_t)version;
- (unint64_t)featureSupportStatus:(unint64_t)status;
- (void)dealloc;
- (void)deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)device;
- (void)deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)device;
- (void)deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)device;
- (void)didChangePowerStatus:(unint64_t)status;
- (void)encodeWithCoder:(id)coder;
- (void)notifyDelegateActiveSourceStatusHasChanged;
- (void)notifyDelegateDeckControlCommandHasBeenReceived:(id)received command:(unint64_t)command;
- (void)notifyDelegateDeckControlPlayHasBeenReceived:(id)received playMode:(unint64_t)mode;
- (void)notifyDelegateDeckControlStatusHasBeenUpdated:(id)updated deckInfo:(unint64_t)info;
- (void)notifyDelegateFeatureAbort:(id)abort;
- (void)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)notifyDelegateShouldAssertActiveSource;
- (void)notifyDelegateStandbyRequestHasBeenReceived:(id)received;
- (void)receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)removeFromBus;
- (void)sendLogicalAddressErrorAnalyticsForMessage:(const char *)message;
- (void)setDeckStatus:(unint64_t)status;
- (void)setDelegate:(id)delegate;
- (void)setFeature:(unint64_t)feature supportStatus:(unint64_t)status;
- (void)setIsActiveSource:(BOOL)source;
- (void)standbyRequestHasBeenReceived:(id)received;
@end

@implementation CoreCECDevice

- (NSString)analyticsDescription
{
  v3 = MEMORY[0x277CCACA8];
  logicalAddress = [(CoreCECDevice *)self logicalAddress];
  physicalAddress = [(CoreCECDevice *)self physicalAddress];
  cecVersion = [(CoreCECDevice *)self cecVersion];
  vendorID = [(CoreCECDevice *)self vendorID];
  isLocalDevice = [(CoreRCDevice *)self isLocalDevice];
  v9 = @"R";
  if (isLocalDevice)
  {
    v9 = @"L";
  }

  return [v3 stringWithFormat:@"%02X_%04X_%02lX_%06lX_%@", logicalAddress, physicalAddress, cecVersion, vendorID, v9];
}

- (void)sendLogicalAddressErrorAnalyticsForMessage:(const char *)message
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

- (CoreCECDevice)initWithDevice:(id)device
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreCECDevice;
    v5 = [(CoreRCDevice *)&v7 initWithDevice:device];
    if (v5)
    {
      v5->_logicalAddress = [device logicalAddress];
      v5->_physicalAddress = [device physicalAddress];
      v5->_deviceType = [device deviceType];
      v5->_cecVersion = [device cecVersion];
      v5->_vendorID = [device vendorID];
      v5->_powerStatus = [device powerStatus];
      v5->_deckStatus = [device deckStatus];
      v5->_isActiveSource = [device isActiveSource];
      v5->_systemAudioControlEnabled = [device systemAudioControlEnabled];
      v5->_allDeviceTypes = [device allDeviceTypes];
      v5->_deviceFeatures = [device deviceFeatures];
      v5->_knownDeviceFeatures = [device knownDeviceFeatures];
      v5->_rcProfile = [objc_msgSend(device "rcProfile")];
      v5->_audioReturnChannelControlEnabled = [device audioReturnChannelControlEnabled];
      v5->_audioVolumeStatus = [device audioVolumeStatus];
      v5->_audioMuteStatus = [device audioMuteStatus];
      v5->_audioFormats = [objc_msgSend(device "audioFormats")];
      v5->_audioFormatsCount = [device audioFormatsCount];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreCECDevice)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CoreCECDevice;
  v4 = [(CoreRCDevice *)&v9 initWithCoder:?];
  if (v4)
  {
    v4->_logicalAddress = [coder decodeIntegerForKey:@"logicalAddress"];
    v4->_physicalAddress = [coder decodeIntegerForKey:@"physicalAddress"];
    v4->_deviceType = [coder decodeIntegerForKey:@"deviceType"];
    v4->_cecVersion = [coder decodeIntegerForKey:@"cecVersion"];
    v4->_vendorID = [coder decodeIntegerForKey:@"vendorID"];
    v4->_powerStatus = [coder decodeIntegerForKey:@"powerStatus"];
    v4->_deckStatus = [coder decodeIntegerForKey:@"deckStatus"];
    v4->_isActiveSource = [coder decodeBoolForKey:@"isActiveSource"];
    v4->_systemAudioControlEnabled = [coder decodeBoolForKey:@"systemAudioControlEnabled"];
    v4->_allDeviceTypes = [coder decodeIntegerForKey:@"allDeviceTypes"];
    v4->_deviceFeatures = [coder decodeIntegerForKey:@"deviceFeatures"];
    v4->_knownDeviceFeatures = [coder decodeIntegerForKey:@"knownDeviceFeatures"];
    v4->_rcProfile = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(+[CoreCECTypesInternal defaultTypes](CoreCECTypesInternal forKey:{"defaultTypes"), "rcProfileClasses"), @"rcProfile", "copy"}];
    v4->_audioReturnChannelControlEnabled = [coder decodeBoolForKey:@"audioReturnChannelControlEnabled"];
    v4->_audioVolumeStatus = [coder decodeIntegerForKey:@"audioVolumeStatus"];
    v4->_audioMuteStatus = [coder decodeBoolForKey:@"audioMuteStatus"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v4->_audioFormats = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"audioFormats", "copy"}];
    v4->_audioFormatsCount = [coder decodeIntegerForKey:@"audioFormatsCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_logicalAddress forKey:@"logicalAddress"];
  [coder encodeInteger:self->_physicalAddress forKey:@"physicalAddress"];
  [coder encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coder encodeInteger:self->_cecVersion forKey:@"cecVersion"];
  [coder encodeInteger:self->_vendorID forKey:@"vendorID"];
  [coder encodeInteger:self->_powerStatus forKey:@"powerStatus"];
  [coder encodeInteger:self->_deckStatus forKey:@"deckStatus"];
  [coder encodeBool:self->_isActiveSource forKey:@"isActiveSource"];
  [coder encodeBool:self->_systemAudioControlEnabled forKey:@"systemAudioControlEnabled"];
  [coder encodeInteger:self->_allDeviceTypes forKey:@"allDeviceTypes"];
  [coder encodeInteger:self->_deviceFeatures forKey:@"deviceFeatures"];
  [coder encodeInteger:self->_knownDeviceFeatures forKey:@"knownDeviceFeatures"];
  [coder encodeObject:self->_rcProfile forKey:@"rcProfile"];
  [coder encodeBool:self->_audioReturnChannelControlEnabled forKey:@"audioReturnChannelControlEnabled"];
  [coder encodeInteger:self->_audioVolumeStatus forKey:@"audioVolumeStatus"];
  [coder encodeBool:self->_audioMuteStatus forKey:@"audioMuteStatus"];
  [coder encodeObject:self->_audioFormats forKey:@"audioFormats"];
  [coder encodeInteger:self->_audioFormatsCount forKey:@"audioFormatsCount"];
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

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v3 setDelegate:delegate];
}

- (unint64_t)defaultKnownDeviceFeaturesMaskForCECVersion:(unint64_t)version
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

- (void)setIsActiveSource:(BOOL)source
{
  if (self->_isActiveSource != source)
  {
    self->_isActiveSource = source;
    [(CoreCECDevice *)self notifyDelegateActiveSourceStatusHasChanged];
  }
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error
{
  if ([(CoreCECDevice *)self deviceType]!= 2 && [(CoreCECDevice *)self deviceType]!= 4)
  {
    [CoreCECDevice deckControlSetDeckStatus:? error:?];
LABEL_9:
    v7 = v9;
    if (!error)
    {
      return v7 == 0;
    }

    goto LABEL_5;
  }

  if (!status)
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    goto LABEL_9;
  }

  v7 = 0;
  self->_deckStatus = status;
  if (error)
  {
LABEL_5:
    *error = v7;
  }

  return v7 == 0;
}

- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSystemAudioControlEnabled:error:];
  }

  self->_systemAudioControlEnabled = enabled;
  return 1;
}

- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice systemAudioModeRequest:error:];
  }

  return 1;
}

- (BOOL)setPowerStatus:(unint64_t)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setPowerStatus:error:];
  }

  if (self->_powerStatus != status)
  {
    [(CoreCECDevice *)self willChangePowerStatus:status];
    self->_powerStatus = status;
    [(CoreCECDevice *)self didChangePowerStatus:status];
  }

  return 1;
}

- (void)didChangePowerStatus:(unint64_t)status
{
  v4 = [(CoreRCDevice *)self bus];

  [v4 notifyDelegateDeviceUpdated:self];
}

- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioReturnChannelControlEnabled:error:];
  }

  self->_audioReturnChannelControlEnabled = enabled;
  return 1;
}

- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioVolumeStatus:error:];
  }

  if (status > 0x64)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6737 userInfo:0];
    }
  }

  else
  {
    self->_audioVolumeStatus = status;
  }

  return status < 0x65;
}

- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioMuteStatus:error:];
  }

  self->_audioMuteStatus = status;
  return 1;
}

- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSupportedAudioFormats:error:];
    if (formats)
    {
      goto LABEL_5;
    }

LABEL_17:
    v14 = 0;
    self->_audioFormats = 0;
    goto LABEL_18;
  }

  if (!formats)
  {
    goto LABEL_17;
  }

LABEL_5:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [formats allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        [objc_msgSend(formats objectForKeyedSubscript:{v12), "getBytes:length:", &v17, 3}];
        integerValue = [v12 integerValue];
        v10 = [(__CFString *)v10 stringByAppendingFormat:@"0x%02lx:0x%02x%02x%02x ", integerValue, v17, SBYTE1(v17), SBYTE2(v17)];
      }

      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSupportedAudioFormats:error:];
  }

  self->_audioFormats = formats;
  v14 = [formats count];
LABEL_18:
  self->_audioFormatsCount = v14;
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (unint64_t)featureSupportStatus:(unint64_t)status
{
  v4 = 1 << status;
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

- (void)setFeature:(unint64_t)feature supportStatus:(unint64_t)status
{
  switch(status)
  {
    case 0uLL:
      v8 = ~(1 << feature);
      [(CoreCECDevice *)self setDeviceFeatures:[(CoreCECDevice *)self deviceFeatures]& v8];
      v7 = [(CoreCECDevice *)self knownDeviceFeatures]& v8;
      goto LABEL_8;
    case 1uLL:
      v5 = 1 << feature;
      v6 = [(CoreCECDevice *)self deviceFeatures]& ~v5;
      goto LABEL_6;
    case 2uLL:
      v5 = 1 << feature;
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

- (void)deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlCommandHasBeenReceived:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlCommandHasBeenReceived:device command:received];
}

- (void)deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlPlayHasBeenReceived:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlPlayHasBeenReceived:device playMode:received];
}

- (void)deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlStatusHasBeenUpdated:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlStatusHasBeenUpdated:device deckInfo:updated];
}

- (void)standbyRequestHasBeenReceived:(id)received
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice standbyRequestHasBeenReceived:];
  }

  [(CoreCECDevice *)self notifyDelegateStandbyRequestHasBeenReceived:received];
}

- (void)receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice receivedRequestSystemAudioModeStatusChangeTo:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:to fromDevice:device];
}

- (void)receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice receivedRequestAudioReturnChannelStatusChangeTo:fromDevice:];
  }

  [(CoreCECDevice *)self notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:to fromDevice:device];
}

- (void)notifyDelegateShouldAssertActiveSource
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateShouldAssertActiveSource];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDeviceShouldAssertActiveSource:self];
  }
}

- (void)notifyDelegateActiveSourceStatusHasChanged
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateActiveSourceStatusHasChanged];
  }

  if (objc_opt_respondsToSelector())
  {
    isActiveSource = [(CoreCECDevice *)self isActiveSource];

    [delegate cecDevice:self activeSourceStatusHasChanged:isActiveSource];
  }
}

- (void)notifyDelegateDeckControlCommandHasBeenReceived:(id)received command:(unint64_t)command
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlCommandHasBeenReceived:command:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self deckControlCommandHasBeenReceived:command fromDevice:received];
  }
}

- (void)notifyDelegateDeckControlPlayHasBeenReceived:(id)received playMode:(unint64_t)mode
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlPlayHasBeenReceived:playMode:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self deckControlPlayHasBeenReceived:mode fromDevice:received];
  }
}

- (void)notifyDelegateDeckControlStatusHasBeenUpdated:(id)updated deckInfo:(unint64_t)info
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlStatusHasBeenUpdated:deckInfo:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self deckControlStatusHasBeenUpdated:info fromDevice:updated];
  }
}

- (void)notifyDelegateFeatureAbort:(id)abort
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateFeatureAbort:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self featureAbort:abort];
  }
}

- (void)notifyDelegateStandbyRequestHasBeenReceived:(id)received
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateStandbyRequestHasBeenReceived:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self standbyRequestHasBeenReceived:received];
  }
}

- (void)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:fromDevice:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self receivedRequestSystemAudioModeStatusChangeTo:to fromDevice:device];
  }
}

- (void)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:fromDevice:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self receivedRequestAudioReturnChannelStatusChangeTo:to fromDevice:device];
  }
}

- (void)setDeckStatus:(unint64_t)status
{
  if (status)
  {
    self->_deckStatus = status;
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