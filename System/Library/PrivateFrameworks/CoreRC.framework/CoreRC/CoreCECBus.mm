@interface CoreCECBus
- (BOOL)setOSDName:(id)a3 error:(id *)a4;
- (BOOL)setTvLanguageCode:(id)a3 error:(id *)a4;
- (CECOSDName)osdNameASCII;
- (CoreCECBus)initWithBus:(id)a3;
- (CoreCECBus)initWithCoder:(id)a3;
- (CoreCECBus)initWithLinkState:(BOOL)a3 physicalAddress:(unsigned __int16)a4;
- (CoreCECDevice)activeSource;
- (CoreCECPhysicalDevice)rootPhysicalDevice;
- (NSDictionary)analyticsContext;
- (NSString)osdName;
- (NSString)tvLanguageCode;
- (id)addDeviceWithAttributes:(id)a3 error:(id *)a4;
- (id)delegate;
- (id)description;
- (id)deviceOnBusWithLogicalAddress:(unsigned __int8)a3;
- (void)dealloc;
- (void)didChangeActiveSourceFrom:(id)a3 to:(id)a4;
- (void)didChangeLinkState:(BOOL)a3 physicalAddress:(unsigned __int16)a4;
- (void)didReceiveRXMessage:(id)a3;
- (void)didSendTXMessage:(id)a3 error:(id)a4;
- (void)didUpdateProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)notifyDelegateLinkStateUpdated;
- (void)removeDeviceWithType:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setLinkState:(BOOL)a3 physicalAddress:(unsigned __int16)a4;
@end

@implementation CoreCECBus

- (NSDictionary)analyticsContext
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CoreRCBus *)self devices];
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [*(*(&v11 + 1) + 8 * v8) analyticsDescription], objc_msgSend(*(*(&v11 + 1) + 8 * v8), "analyticsKey"));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (CoreCECBus)initWithBus:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11.receiver = self;
    v11.super_class = CoreCECBus;
    v5 = [(CoreRCBus *)&v11 initWithBus:a3];
    if (v5)
    {
      v5->_hasLink = [a3 hasLink];
      *&v5->_osdNameASCII.length = [a3 osdNameASCII];
      *&v5->_osdNameASCII.characters[7] = v6;
      v5->_osdNameASCII.characters[13] = v7;
      *&v5->_osdNameASCII.characters[11] = v8;
      v5->_physicalAddress = [a3 physicalAddress];
      v5->_edidAttributes = [objc_msgSend(a3 "edidAttributes")];
      v5->_streamPath = [a3 streamPath];
      v5->_lastStreamPath = [a3 lastStreamPath];
      v9 = [a3 tvLanguageCodeASCII];
      *v5->_tvLanguageCodeASCII.characters = v9;
      v5->_tvLanguageCodeASCII.characters[2] = BYTE2(v9);
      v5->_systemAudioModeStatus = [a3 systemAudioModeStatus];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreCECBus)initWithLinkState:(BOOL)a3 physicalAddress:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = CoreCECBus;
  result = [(CoreRCBus *)&v7 init];
  if (result)
  {
    result->_hasLink = a3;
    result->_physicalAddress = a4;
    result->_streamPath = -1;
    result->_lastStreamPath = -1;
    *&result->_osdNameASCII.characters[6] = 0;
    *&result->_osdNameASCII.length = 0;
    *result->_tvLanguageCodeASCII.characters = 28277;
    result->_tvLanguageCodeASCII.characters[2] = 100;
    result->_systemAudioModeStatus = 0;
  }

  return result;
}

- (CoreCECBus)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CoreCECBus;
  v4 = [(CoreRCBus *)&v14 initWithCoder:?];
  if (v4)
  {
    v13 = 0;
    v4[48] = [a3 decodeBoolForKey:@"hasLink"];
    *(v4 + 25) = [a3 decodeIntegerForKey:@"physicalAddress"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"edidAttributes"];
    *(v4 + 8) = v5;
    if (v5)
    {
      v6 = v5;
    }

    *(v4 + 26) = [a3 decodeIntegerForKey:@"streamPath"];
    *(v4 + 27) = [a3 decodeIntegerForKey:@"lastStreamPath"];
    v7 = [a3 decodeBytesForKey:@"osdNameASCII" returnedLength:&v13];
    v8 = v4 + 80;
    if (v7 && v13 == 15)
    {
      v9 = *v7;
      *(v4 + 87) = *(v7 + 7);
      *v8 = v9;
    }

    else
    {
      *(v4 + 87) = 0;
      *v8 = 0;
    }

    v10 = [a3 decodeBytesForKey:@"tvLanguageCodeASCII" returnedLength:&v13];
    if (v10 && v13 == 3)
    {
      v11 = *v10;
      v4[58] = *(v10 + 2);
    }

    else
    {
      v4[58] = 100;
      v11 = 28277;
    }

    *(v4 + 28) = v11;
    *(v4 + 9) = [a3 decodeIntegerForKey:@"systemAudioModeStatus"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreCECBus;
  [(CoreRCBus *)&v5 encodeWithCoder:?];
  [a3 encodeBool:self->_hasLink forKey:@"hasLink"];
  [a3 encodeInteger:self->_physicalAddress forKey:@"physicalAddress"];
  [a3 encodeObject:self->_edidAttributes forKey:@"edidAttributes"];
  [a3 encodeInteger:self->_streamPath forKey:@"streamPath"];
  [a3 encodeInteger:self->_lastStreamPath forKey:@"lastStreamPath"];
  [a3 encodeBytes:&self->_osdNameASCII length:15 forKey:@"osdNameASCII"];
  [a3 encodeBytes:&self->_tvLanguageCodeASCII length:3 forKey:@"tvLanguageCodeASCII"];
  [a3 encodeInteger:self->_systemAudioModeStatus forKey:@"systemAudioModeStatus"];
}

- (id)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CoreCECBus;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCBus description](&v9, sel_description)}];
  v4 = [(CoreCECBus *)self hasLink];
  v5 = "N";
  if (v4)
  {
    v5 = "Y";
  }

  [v3 appendFormat:@" Link: %s;", v5];
  v11[0] = CECPhysicalAddressStringWithAddress([(CoreCECBus *)self physicalAddress]);
  [v3 appendFormat:@" PA: %s;", v11];
  [v3 appendFormat:@" Name: %@;", -[CoreCECBus osdName](self, "osdName")];
  [v3 appendFormat:@" System Audio Mode: %@;", CoreCECSystemAudioModeStatusString(-[CoreCECBus systemAudioModeStatus](self, "systemAudioModeStatus"))];
  [v3 appendFormat:@" TV-Language: %@;", -[CoreCECBus tvLanguageCode](self, "tvLanguageCode")];
  if ([(CoreCECBus *)self streamPath]== 0xFFFF)
  {
    v6 = "None";
  }

  else
  {
    v10 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)self streamPath]);
    v6 = &v10;
  }

  [v3 appendFormat:@" Route: %s;", v6];
  if ([(CoreCECBus *)self activeSource])
  {
    [v3 appendFormat:@" Active Source: %@;", -[NSUUID UUIDString](-[CoreRCDevice uniqueID](-[CoreCECBus activeSource](self, "activeSource"), "uniqueID"), "UUIDString")];
  }

  if ([(CoreCECBus *)self edidAttributes])
  {
    [v3 appendFormat:@" EDID: %@", -[CoreCECBus edidAttributes](self, "edidAttributes")];
  }

  result = v3;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  self->_edidAttributes = 0;
  v3.receiver = self;
  v3.super_class = CoreCECBus;
  [(CoreRCBus *)&v3 dealloc];
}

- (id)delegate
{
  v3.receiver = self;
  v3.super_class = CoreCECBus;
  return [(CoreRCBus *)&v3 delegate];
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = CoreCECBus;
  [(CoreRCBus *)&v3 setDelegate:a3];
}

- (CoreCECDevice)activeSource
{
  v3 = [(NSSet *)[(CoreRCBus *)self devices] objectsPassingTest:&__block_literal_global_0];
  if ([(NSSet *)v3 count]>= 2 && gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECBus *)self activeSource];
  }

  return [(NSSet *)v3 anyObject];
}

- (NSString)osdName
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = [(CoreCECBus *)self osdNameASCII];
  v8 = v2;
  v10 = v3;
  v9 = v4;
  result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v7 + 1 length:v7 encoding:1];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)tvLanguageCode
{
  v2 = [(CoreCECBus *)self tvLanguageCodeASCII];
  v4 = v2;
  v5 = BYTE2(v2);
  return [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v4 length:3 encoding:1];
}

- (id)addDeviceWithAttributes:(id)a3 error:(id *)a4
{
  v4 = [[CoreCECDevice alloc] initWithBus:self local:1 logicalAddress:15 physicalAddress:[(CoreCECBus *)self physicalAddress] attributes:a3];

  return v4;
}

- (void)removeDeviceWithType:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus removeDeviceWithType:];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CoreRCBus *)self devices];
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 deviceType] == a3)
        {
          v13.receiver = self;
          v13.super_class = CoreCECBus;
          [(CoreRCBus *)&v13 removeDevice:v10];
          if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            [CoreCECBus removeDeviceWithType:];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v11 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (CoreCECPhysicalDevice)rootPhysicalDevice
{
  v2 = [(CoreRCBus *)self devices];

  return [CoreCECPhysicalDevice physicalDeviceTreeWithLogicalDevices:v2];
}

- (void)setLinkState:(BOOL)a3 physicalAddress:(unsigned __int16)a4
{
  self->_hasLink = a3;
  self->_physicalAddress = a4;
  [CoreCECBus didChangeLinkState:"didChangeLinkState:physicalAddress:" physicalAddress:?];
}

- (BOOL)setOSDName:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  *&v13[7] = 0;
  *&v13[1] = 0;
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus setOSDName:error:];
  }

  v7 = [a3 dataUsingEncoding:1 allowLossyConversion:0];
  if (!v7)
  {
    v11 = -6705;
LABEL_15:
    [(CoreCECBus *)a4 setOSDName:v11 error:&v12];
    result = v12;
    goto LABEL_10;
  }

  v8 = v7;
  if ([v7 length] > 0xE)
  {
    v11 = -6743;
    goto LABEL_15;
  }

  v13[0] = [v8 length];
  [v8 getBytes:&v13[1] length:14];
  [(CoreCECBus *)self setOsdNameASCII:*v13, *&v13[8] | ((*&v13[12] | (v13[14] << 16)) << 32)];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus setOSDName:? error:?];
  }

  result = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setTvLanguageCode:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus setTvLanguageCode:error:];
  }

  v7 = [objc_msgSend(a3 "lowercaseString")];
  if (!v7)
  {
    v10 = -6705;
LABEL_15:
    [(CoreCECBus *)a4 setOSDName:v10 error:&v13];
    return v13;
  }

  v8 = v7;
  if ([v7 length] != 3)
  {
    v10 = -6743;
    goto LABEL_15;
  }

  v12 = 0;
  v11 = 0;
  [v8 getBytes:&v11 length:3];
  [(CoreCECBus *)self setTvLanguageCodeASCII:v11 | (v12 << 16)];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus setTvLanguageCode:? error:?];
  }

  return 1;
}

- (id)deviceOnBusWithLogicalAddress:(unsigned __int8)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CoreRCBus *)self devices];
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 logicalAddress] == v3 && (!objc_msgSend(v9, "isLocalDevice") || !objc_msgSend(v9, "isUnregistered")))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)didChangeActiveSourceFrom:(id)a3 to:(id)a4
{
  v7 = [(CoreCECBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    objc_opt_class();
    LogPrintF();
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecBus:self activeSourceHasChangedTo:a4 fromDevice:a3];
  }
}

- (void)didChangeLinkState:(BOOL)a3 physicalAddress:(unsigned __int16)a4
{
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus didChangeLinkState:physicalAddress:];
  }

  [(CoreCECBus *)self didUpdateProperties:&unk_28593C108];
}

- (void)didReceiveRXMessage:(id)a3
{
  v5 = [(CoreCECBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus didReceiveRXMessage:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v5 cecBus:self rxMessageReceived:a3];
  }
}

- (void)didSendTXMessage:(id)a3 error:(id)a4
{
  v7 = [(CoreCECBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus didSendTXMessage:error:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 cecBus:self txMessageSent:a3 error:a4];
  }
}

- (void)didUpdateProperties:(id)a3
{
  if ([a3 containsObject:@"hasLink"])
  {
    if (!self->_hasLink)
    {
      [(CoreCECBus *)self notifyDelegateLinkStateUpdated];
    }

    v5.receiver = self;
    v5.super_class = CoreCECBus;
    [(CoreRCBus *)&v5 didUpdateProperties:a3];
    if (self->_hasLink)
    {
      [(CoreCECBus *)self notifyDelegateLinkStateUpdated];
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CoreCECBus;
    [(CoreRCBus *)&v5 didUpdateProperties:a3];
  }
}

- (void)notifyDelegateLinkStateUpdated
{
  v3 = [(CoreCECBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBus notifyDelegateLinkStateUpdated];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(CoreCECBus *)self hasLink];

    [v3 cecBus:self linkStateHasBeenUpdated:v4];
  }
}

- (CECOSDName)osdNameASCII
{
  p_osdNameASCII = &self->_osdNameASCII;
  v3 = *&self->_osdNameASCII.length;
  v4 = *&p_osdNameASCII->characters[7] | ((*&p_osdNameASCII->characters[11] | (p_osdNameASCII->characters[13] << 16)) << 32);
  *&result.characters[7] = v4;
  *&result.characters[11] = WORD2(v4);
  result.characters[13] = BYTE6(v4);
  result.length = v3;
  *result.characters = *(&v3 + 1);
  *&result.characters[4] = *(&v3 + 5);
  result.characters[6] = HIBYTE(v3);
  return result;
}

- (uint64_t)setOSDName:(_BYTE *)a3 error:.cold.3(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
  if (a1)
  {
    *a1 = result;
  }

  *a3 = 0;
  return result;
}

@end