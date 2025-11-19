@interface CoreCECBusProvider
- (BOOL)areMultipleCECBusses;
- (BOOL)injectRXMessage:(id)a3 error:(id *)a4;
- (BOOL)injectTXMessage:(id)a3 error:(id *)a4;
- (BOOL)receivedMessage:(id)a3;
- (BOOL)refreshDevicesWithInitiator:(id)a3 error:(id *)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (CoreCECBusProvider)initWithBus:(id)a3;
- (CoreCECBusProvider)initWithCoder:(id)a3;
- (CoreCECBusProvider)initWithInterface:(id)a3;
- (NSString)description;
- (id)_cecErrorWithError:(id)a3 fromInterface:(id)a4;
- (id)addDeviceWithAttributes:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)destinationConfirmedForMessage:(id)a3;
- (id)destinationExpectedForMessage:(id)a3;
- (id)propertyForKey:(id)a3 error:(id *)a4;
- (uint64_t)updateAllowHibernation;
- (unsigned)allocateCECAddressForDeviceType:(unint64_t)a3 withCECAddress:(unsigned __int8)a4 error:(id *)a5;
- (void)_changeActiveSourceFrom:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)interface:(id)a3 receivedFrame:(CECFrame *)a4;
- (void)interfacePropertiesChanged:(id)a3;
- (void)makeDeviceInactiveSource:(id)a3;
- (void)pollingOperation:(id)a3 encounteredError:(id)a4 forMessage:(id)a5;
- (void)pollingOperationCompleted:(id)a3;
- (void)reallocateAllCECAddresses:(id)a3;
- (void)setActiveSource:(id)a3;
- (void)setOsdNameASCII:(CECOSDName)a3;
- (void)setSystemAudioModeStatus:(unint64_t)a3;
- (void)setTvLanguageCodeASCII:(CECLanguage)a3;
- (void)updateAllowHibernation;
- (void)willRemoveDevice:(id)a3;
@end

@implementation CoreCECBusProvider

- (CoreCECBusProvider)initWithBus:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreCECBusProvider;
  v3 = [(CoreCECBus *)&v5 initWithBus:a3];
  if (v3)
  {
    v3->_deferLossOfLink = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v3->_realHasLink = 0;
  }

  return v3;
}

- (CoreCECBusProvider)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreCECBusProvider;
  v3 = [(CoreCECBus *)&v5 initWithCoder:a3];
  if (v3)
  {
    v3->_deferLossOfLink = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v3->_realHasLink = 0;
  }

  return v3;
}

- (CoreCECBusProvider)initWithInterface:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  if (![objc_msgSend(a3 "properties")])
  {

    v7 = 0;
    goto LABEL_16;
  }

  v5 = v13;
  if (!v13)
  {
    v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v13 = v5;
    if (gLogCategory_CoreRCBus > 40)
    {
      goto LABEL_8;
    }

    if (gLogCategory_CoreRCBus == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      LODWORD(v5) = v13;
    }

    v15[0] = CECPhysicalAddressStringWithAddress(v5);
    v11 = v15;
    LogPrintF();
LABEL_7:
    v5 = v13;
LABEL_8:
    if (!v5)
    {
      v5 = 0xFFFFLL;
      v13 = -1;
    }
  }

  if (gLogCategory_CoreRCBus <= 40)
  {
    if (gLogCategory_CoreRCBus != -1 || (v6 = _LogCategory_Initialize(), v5 = v13, v6))
    {
      v14 = CECPhysicalAddressStringWithAddress(v5);
      v11 = &v14;
      LogPrintF();
      v5 = v13;
    }
  }

  v7 = [(CoreCECBusProvider *)self initWithLinkState:v12 physicalAddress:v5, v11];
  if (v7)
  {
    -[CoreCECBus setEdidAttributes:](v7, "setEdidAttributes:", [objc_msgSend(a3 "properties")]);
    v8 = a3;
    v7->_interface = v8;
    [(CECInterface *)v8 setDelegate:v7];
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CoreCECBusProvider;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreCECBus description](&v6, sel_description)}];
  [v3 appendFormat:@" HPD: %u;", self->_realHasLink];
  if (self->_deferLossOfLink)
  {
    v4 = "Y";
  }

  else
  {
    v4 = "N";
  }

  [v3 appendFormat:@" defersHPDLoss: %s;", v4];
  return v3;
}

- (void)dealloc
{
  [(CECBusPollingOperation *)self->_pollingOperation setDelegate:0];
  [(CECBusPollingOperation *)self->_pollingOperation stopPolling];

  [(CECInterface *)self->_interface setDelegate:0];
  v3.receiver = self;
  v3.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECBusProvider;
  return [(CoreRCBus *)&v4 copyWithZone:a3];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = [(CoreCECBusProvider *)self interface];

  return [(CoreRCInterface *)v8 setProperty:a3 forKey:a4 error:a5];
}

- (id)propertyForKey:(id)a3 error:(id *)a4
{
  v6 = [(CoreCECBusProvider *)self interface];

  return [(CoreRCInterface *)v6 propertyForKey:a3 error:a4];
}

- (unsigned)allocateCECAddressForDeviceType:(unint64_t)a3 withCECAddress:(unsigned __int8)a4 error:(id *)a5
{
  v11 = a4;
  v10 = 0;
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:];
  }

  if (self->_interface)
  {
    v9 = 0;
    if (CECDeviceTypeForCoreCECDeviceType(&v9, a3))
    {
      [(CECInterface *)self->_interface allocateCECAddress:&v11 forDeviceType:v9 error:&v10];
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:];
  }

  v11 = 15;
  if (a5)
  {
LABEL_12:
    *a5 = v10;
  }

LABEL_13:
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider allocateCECAddressForDeviceType:&v10 withCECAddress:? error:?];
  }

  return v11;
}

- (BOOL)refreshDevicesWithInitiator:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCBus > 10 || gLogCategory_CoreRCBus == -1 && !_LogCategory_Initialize())
  {
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_14:
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    v8 = v10;
    if (!a4)
    {
      return v8 == 0;
    }

    goto LABEL_11;
  }

  [CoreCECBusProvider refreshDevicesWithInitiator:error:];
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (![(CoreCECBusProvider *)self pollingOperation])
  {
    v7 = -[CECBusPollingOperation initWithInterface:initiator:queue:]([CECBusPollingOperation alloc], "initWithInterface:initiator:queue:", -[CoreCECBusProvider interface](self, "interface"), [a3 logicalAddress], objc_msgSend(-[CoreRCBus manager](self, "manager"), "serialQueue"));
    [(CECBusPollingOperation *)v7 setDelegate:self];
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider refreshDevicesWithInitiator:error:];
    }

    [(CECBusPollingOperation *)v7 startPolling];
    [(CoreCECBusProvider *)self setPollingOperation:v7];
  }

  v8 = 0;
  if (a4)
  {
LABEL_11:
    *a4 = v8;
  }

  return v8 == 0;
}

- (void)pollingOperation:(id)a3 encounteredError:(id)a4 forMessage:(id)a5
{
  if (![(CECInterface *)[(CoreCECBusProvider *)self interface] errorIsNack:a4]&& gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)pollingOperationCompleted:(id)a3
{
  [(CECBusPollingOperation *)[(CoreCECBusProvider *)self pollingOperation] setDelegate:0];

  [(CoreCECBusProvider *)self setPollingOperation:0];
}

- (void)_changeActiveSourceFrom:(id)a3 to:(id)a4
{
  [a3 setIsActiveSource:0];
  [a4 setIsActiveSource:1];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(CoreCECBus *)self didChangeActiveSourceFrom:a3 to:a4];
}

- (void)setOsdNameASCII:(CECOSDName)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v4 setOsdNameASCII:*&a3.length, *&a3.characters[7] & 0xFFFFFFFFFFFFFFLL];
  [(CoreCECBus *)self didUpdateProperties:&unk_28593C150];
}

- (void)setTvLanguageCodeASCII:(CECLanguage)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v4 setTvLanguageCodeASCII:*a3.characters & 0xFFFFFFLL];
  [(CoreCECBus *)self didUpdateProperties:&unk_28593C168];
}

- (void)setSystemAudioModeStatus:(unint64_t)a3
{
  if ([(CoreCECBus *)self systemAudioModeStatus]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CoreCECBusProvider;
    [(CoreCECBus *)&v5 setSystemAudioModeStatus:a3];
    [(CoreCECBus *)self didUpdateProperties:&unk_28593C180];
  }
}

- (void)setActiveSource:(id)a3
{
  v5 = [(CoreCECBus *)self activeSource];
  if (a3)
  {
    v6 = [a3 physicalAddress];
  }

  else
  {
    v6 = 0xFFFFLL;
  }

  if ([(CoreCECBus *)self streamPath]!= v6)
  {
    v7.receiver = self;
    v7.super_class = CoreCECBusProvider;
    [(CoreCECBus *)&v7 setStreamPath:v6];
    [(CoreCECBus *)self didUpdateProperties:&unk_28593C198];
  }

  if (v5 != a3)
  {
    [(CoreCECBusProvider *)self _changeActiveSourceFrom:v5 to:a3];
  }
}

- (void)makeDeviceInactiveSource:(id)a3
{
  if ([(CoreCECBus *)self activeSource]== a3)
  {
    if ([(CoreCECBus *)self streamPath]!= 0xFFFF)
    {
      v5.receiver = self;
      v5.super_class = CoreCECBusProvider;
      [(CoreCECBus *)&v5 setStreamPath:0xFFFFLL];
      [(CoreCECBus *)self didUpdateProperties:&unk_28593C1B0];
    }

    [(CoreCECBusProvider *)self _changeActiveSourceFrom:a3 to:0];
  }
}

- (void)updateAllowHibernation
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(CoreRCBus *)self devices];
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isLocalDevice])
        {
          v7 &= [v9 powerStatus] == 2;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v11 = self;
    v12 = v7 & 1;
    LogPrintF();
  }

  v13 = 0;
  if (![(CoreRCBus *)self setAllowHibernation:v7 & 1 error:&v13, v11, v12])
  {
    [(CoreCECBusProvider *)v7 & 1 updateAllowHibernation];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_cecErrorWithError:(id)a3 fromInterface:(id)a4
{
  if (!a3)
  {
    v7 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6700 userInfo:0];
    goto LABEL_7;
  }

  v5 = a3;
  v6 = [a4 errorIsNack:?];
  v7 = MEMORY[0x277CCA9B8];
  if (!v6)
  {
LABEL_7:
    v10 = [v7 cecIOErrorWithUnderlyingError:v5];
    [v10 sendCECErrorAnalyticsWithContext:{-[CoreCECBus analyticsContext](self, "analyticsContext")}];
    return v10;
  }

  v8 = MEMORY[0x277CCA9B8];

  return [v8 cecAcknowledgementErrorWithUnderlyingError:v5];
}

- (BOOL)areMultipleCECBusses
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [-[CoreRCBus manager](self manager];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        v5 += objc_opt_isKindOfClass() & 1;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    LOBYTE(v3) = v5 > 1u;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)injectTXMessage:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider injectTXMessage:error:];
  }

  v7 = [(CoreCECBusProvider *)self sendMessage:a3 error:a4];
  if ([(CoreCECBusProvider *)self areMultipleCECBusses])
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider injectTXMessage:? error:?];
    }
  }

  else if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider injectTXMessage:error:];
  }

  return v7;
}

- (BOOL)injectRXMessage:(id)a3 error:(id *)a4
{
  v5 = [(CoreCECBusProvider *)self receivedMessage:a3, a4];
  if ([(CoreCECBusProvider *)self areMultipleCECBusses])
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider injectRXMessage:v5 error:self];
    }
  }

  else if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

- (void)reallocateAllCECAddresses:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider reallocateAllCECAddresses:];
  }

  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(CoreRCBus *)self devices];
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if ([v9 isLocalDevice])
        {
          v10 = -[CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:](self, "allocateCECAddressForDeviceType:withCECAddress:error:", [v9 deviceType], objc_msgSend(v9, "logicalAddress"), &v30);
          [v9 setSendFromAddress:v10];
          [v9 setLogicalAddress:v10];
          [v9 setPhysicalAddress:{-[CoreCECBus physicalAddress](self, "physicalAddress")}];
          if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            v19 = v30;
            v20 = v9;
            v18 = self;
            LogPrintF();
          }
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v6);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(CoreRCBus *)self devices:v18];
  v12 = [(NSSet *)v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        if ([v16 isLocalDevice] && objc_msgSend(v16, "logicalAddress") != 15)
        {
          [v16 broadcastPresence];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __48__CoreCECBusProvider_reallocateAllCECAddresses___block_invoke;
          v21[3] = &unk_278EA3400;
          v21[4] = v16;
          [v16 dispatchAsyncLowPriority:v21];
        }
      }

      v13 = [(NSSet *)v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)addDeviceWithAttributes:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v48 = 0;
  OUTLINED_FUNCTION_0_7();
  if (v23 ^ v24 | v22 && (v6 != -1 || _LogCategory_Initialize()))
  {
    v37 = a3;
    LogPrintF();
  }

  if (![a3 deviceType])
  {
    v34 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA590];
    v36 = -6705;
LABEL_124:
    v12 = 0;
    v48 = [v34 errorWithDomain:v35 code:v36 userInfo:0];
    goto LABEL_89;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = self;
  v7 = [(CoreRCBus *)self devices];
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
LABEL_9:
    v11 = 0;
    while (1)
    {
      if (*v45 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v44 + 1) + 8 * v11);
      if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v38 = v12;
        LogPrintF();
      }

      if ([v12 isLocalDevice])
      {
        v13 = [v12 deviceType];
        if (v13 == [a3 deviceType])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [(NSSet *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_28;
      }
    }

    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      v38 = v12;
      LogPrintF();
    }

    if ([v12 logicalAddress] == 15 && (objc_msgSend(a3, "options") & 1) == 0)
    {
      if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_113;
      }

LABEL_123:
      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA590];
      v36 = -6761;
      goto LABEL_124;
    }

    if (v12)
    {
      goto LABEL_89;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_0_7();
  if (v23 ^ v24 | v22 && (v14 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = -[CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:](v42, "allocateCECAddressForDeviceType:withCECAddress:error:", [a3 deviceType], 15, &v48);
  if (v15 == 15 && ([a3 options] & 1) == 0)
  {
    if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
LABEL_113:
      LogPrintF();
    }

    goto LABEL_123;
  }

  v16 = [(CoreCECBus *)v42 deviceOnBusWithLogicalAddress:v15];
  if (v16)
  {
    v17 = v16;
    if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      v38 = v17;
      LogPrintF();
    }

    [OUTLINED_FUNCTION_2_6() removeDevice:?];
  }

  v12 = [(CoreCECBusProvider *)v42 addDeviceWithLogicalAddress:v15 physicalAddress:[(CoreCECBus *)v42 physicalAddress] attributes:a3 message:0 reason:2];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v39 = v12;
    LogPrintF();
  }

  if (!v12)
  {
    if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(CECInterface *)v42->_interface deallocateCECAddress:v15 error:0, v39];
    v34 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA590];
    v36 = -6728;
    goto LABEL_124;
  }

  if (([a3 options] & 2) != 0 && (objc_msgSend(v12, "setSystemAudioControlEnabled:error:", 1, &v48) & 1) == 0)
  {
    if (gLogCategory_CoreRCBus > 90 || gLogCategory_CoreRCBus == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_121;
    }

    [v48 localizedDescription];
    goto LABEL_110;
  }

  if (([a3 options] & 4) != 0 && (objc_msgSend(v12, "setAudioReturnChannelControlEnabled:error:", 1, &v48) & 1) == 0)
  {
    if (gLogCategory_CoreRCBus > 90 || gLogCategory_CoreRCBus == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_121;
    }

    [v48 localizedDescription];
LABEL_110:
    LogPrintF();
LABEL_121:
    [OUTLINED_FUNCTION_2_6() removeDevice:?];
    v12 = 0;
    goto LABEL_89;
  }

  [v12 broadcastPresence];
  if ([(CoreCECBus *)v42 activeSource])
  {
    if (![a3 isActiveSource])
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_0_7();
    if (!(v23 ^ v24 | v22) || v18 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_82;
    }

    v19 = [(CoreCECBus *)v42 activeSource];
    v51 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)v42 streamPath]);
    v20 = &v51;
LABEL_69:
    v40 = v19;
    v41 = v20;
    LogPrintF();
LABEL_82:
    [v12 setIsActiveSource:{0, v40, v41}];
    [OUTLINED_FUNCTION_2_6() notifyDelegateDeviceUpdated:?];
    goto LABEL_89;
  }

  if (-[CoreCECBus streamPath](v42, "streamPath") == 0xFFFF || (v21 = -[CoreCECBus streamPath](v42, "streamPath"), v21 != [v12 physicalAddress]))
  {
    v27 = [(CoreCECBus *)v42 streamPath];
    v28 = [a3 isActiveSource];
    if (v27 != 0xFFFF)
    {
      if (!v28)
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_0_7();
      if (!(v23 ^ v24 | v22) || v29 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_82;
      }

      v19 = [(CoreCECBus *)v42 activeSource];
      v49 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)v42 streamPath]);
      v20 = &v49;
      goto LABEL_69;
    }

    if (!v28)
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_0_7();
    if (!(v23 ^ v24 | v22) || v30 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_88;
    }

LABEL_74:
    LogPrintF();
LABEL_88:
    [OUTLINED_FUNCTION_2_6() setActiveSource:?];
    goto LABEL_89;
  }

  [a3 isActiveSource];
  OUTLINED_FUNCTION_0_7();
  if (v26)
  {
    if (!(v23 ^ v24 | v22) || v25 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_88;
    }

    goto LABEL_74;
  }

  if (v23 ^ v24 | v22 && (v25 != -1 || _LogCategory_Initialize()))
  {
    v50 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)v42 streamPath]);
    v40 = &v50;
    LogPrintF();
  }

  [v12 handleDeviceSelected];
LABEL_89:
  if (a4)
  {
    *a4 = v48;
  }

  OUTLINED_FUNCTION_0_7();
  if (v23 ^ v24 | v22 && (v31 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)willRemoveDevice:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 isLocalDevice])
    {
      v5 = [a3 logicalAddress];
      if (v5 != 15)
      {
        v9 = 0;
        if (![(CECInterface *)self->_interface deallocateCECAddress:v5 error:&v9]&& gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          v6 = a3;
          v7 = v9;
          LogPrintF();
        }
      }
    }
  }

  v8.receiver = self;
  v8.super_class = CoreCECBusProvider;
  [(CoreRCBus *)&v8 willRemoveDevice:a3, v6, v7];
}

- (id)destinationConfirmedForMessage:(id)a3
{
  if ([a3 isBroadcast])
  {
    return 0;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v7 = self;
    v8 = [a3 destination];
    LogPrintF();
  }

  [a3 destination];
  v5 = OUTLINED_FUNCTION_1_5();

  return [v5 addDeviceWithLogicalAddress:? message:? reason:?];
}

- (id)destinationExpectedForMessage:(id)a3
{
  if ([a3 isBroadcast])
  {
    return 0;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v7 = self;
    v8 = [a3 destination];
    LogPrintF();
  }

  [a3 destination];
  v5 = OUTLINED_FUNCTION_1_5();

  return [v5 addDeviceWithLogicalAddress:? message:? reason:?];
}

- (void)interface:(id)a3 receivedFrame:(CECFrame *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [CECMessage alloc];
  v12 = *a4;
  v7 = [(CECMessage *)v6 initWithFrame:&v12];
  if (v7)
  {
    v8 = v7;
    if ([(CoreCECBusProvider *)self areMultipleCECBusses])
    {
      if (gLogCategory_CoreRCBus > 40 || gLogCategory_CoreRCBus == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v10 = v8;
      v11 = [(NSUUID *)[(CoreRCBus *)self uniqueID] UUIDString];
    }

    else
    {
      if (gLogCategory_CoreRCBus > 40 || gLogCategory_CoreRCBus == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v10 = v8;
    }

    LogPrintF();
LABEL_13:
    [(CoreCECBusProvider *)self receivedMessage:v8, v10, v11];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)receivedMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  [a3 initiator];
  v5 = [OUTLINED_FUNCTION_1_5() addDeviceWithLogicalAddress:? message:? reason:?];
  if (v5)
  {
    v6 = v5;
    if ([a3 isBroadcast])
    {
      v7 = 0;
    }

    else
    {
      [a3 destination];
      v5 = [OUTLINED_FUNCTION_1_5() addDeviceWithLogicalAddress:? message:? reason:?];
      v7 = v5;
      if (!v5)
      {
        goto LABEL_30;
      }
    }

    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      v20 = v6;
      v21 = v7;
      v18 = self;
      LogPrintF();
    }

    [(CoreCECBus *)self didReceiveRXMessage:a3, v18, v20, v21];
    if (v7 && ![v7 isLocalDevice])
    {
      [v6 trackMessage:a3 toDevice:v7];
      [v7 trackMessage:a3 fromDevice:v6];
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = [v6 filterMessage:a3 toDevice:v7];
      if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v19 = v8;
        LogPrintF();
      }

      if (v8)
      {
        if (v7)
        {
          [v7 handleMessage:v8 fromDevice:v6 broadcast:0];
        }

        else
        {
          v9 = [v8 initiator];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = [(CoreRCBus *)self devices];
          v11 = [(NSSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v22 + 1) + 8 * i);
                if ([v15 isLocalDevice] && objc_msgSend(v15, "logicalAddress") != v9)
                {
                  [v15 handleMessage:v8 fromDevice:v6 broadcast:1];
                }
              }

              v12 = [(NSSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
            }

            while (v12);
          }
        }
      }

      LOBYTE(v5) = 1;
    }
  }

LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)interfacePropertiesChanged:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = -1;
  v15 = 0;
  if (self->_interface == a3 && [objc_msgSend(a3 "properties")])
  {
    v5 = v16;
    v6 = [(CoreCECBus *)self physicalAddress];
    v7 = v16;
    if (v16 != 0xFFFF && v7 != [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")])
    {
      if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v17[0] = CECPhysicalAddressStringWithAddress(v16);
        v14 = v17;
        LogPrintF();
      }

      v8 = [MEMORY[0x277CBEBD0] cecUserDefaults];
      [v8 setLastKnownPhysicalAddress:v16];
    }

    -[CoreCECBus setEdidAttributes:](self, "setEdidAttributes:", [objc_msgSend(a3 "properties")]);
    [(CoreCECBusProvider *)self setLinkState:v15 physicalAddress:v16];
    v9 = [(CoreCECBus *)self activeSource];
    if (v9)
    {
      if (v5 != v6)
      {
        v10 = v9;
        v11 = v16;
        if (v11 == [(CoreCECDevice *)v9 physicalAddress])
        {
          v12 = v16;
          if (v12 != [(CoreCECBus *)self streamPath])
          {
            if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            [(CoreCECBusProvider *)self _changeActiveSourceFrom:v10 to:0];
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)allocateCECAddressForDeviceType:(unsigned __int8 *)a1 withCECAddress:(uint64_t *)a2 error:.cold.4(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

- (uint64_t)setLinkState:(unsigned __int8 *)a1 physicalAddress:(void *)a2 .cold.2(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  [objc_msgSend(a2 "uniqueID")];
  return LogPrintF();
}

- (uint64_t)refreshDevicesWithInitiator:error:.cold.1()
{
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)updateAllowHibernation
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    if (gLogCategory_CoreRCBus != -1 || (result = _LogCategory_Initialize(), result))
    {
      v4 = *a2;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_sendMessage:(uint64_t *)a1 toDevice:withRetryCount:error:.cold.3(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6761 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)_sendMessage:(uint64_t *)a1 toDevice:withRetryCount:error:.cold.5(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] cecAcknowledgementErrorWithUnderlyingError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA590], -6758, 0)}];
  *a1 = result;
  return result;
}

- (uint64_t)_sendMessage:(uint64_t *)a1 toDevice:withRetryCount:error:.cold.6(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
  *a1 = result;
  return result;
}

@end