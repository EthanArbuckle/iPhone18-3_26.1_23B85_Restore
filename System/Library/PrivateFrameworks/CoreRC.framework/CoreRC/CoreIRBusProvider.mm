@interface CoreIRBusProvider
+ (NSSet)deviceDictClasses;
- (BOOL)addMappingsFromRemote:(id)a3 toLearningSession:(id)a4;
- (BOOL)deleteDevicePrefsWithUUID:(id)a3 UUIDKey:(id)a4;
- (BOOL)mergePersistentMappingsFromSession:(id)a3 ofDevice:(id)a4;
- (BOOL)recreateDevices;
- (BOOL)saveDevicePrefsWithDict:(id)a3 error:(id *)a4;
- (BOOL)setPairedAppleRemote:(id)a3 error:(id *)a4;
- (BOOL)setPrefsPropertyForUUID:(id)a3 UUIDKey:(id)a4 object:(id)a5 key:(id)a6;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)updatePersistentValue:(id)a3 forProperty:(id)a4 ofDevice:(id)a5;
- (CoreIRBusProvider)initWithInterface:(id)a3;
- (id)_addDeviceWithType:(unint64_t)a3 matching:(id)a4 transportProperties:(id)a5 error:(id *)a6;
- (id)addDeviceWithType:(unint64_t)a3 matching:(id)a4 error:(id *)a5;
- (id)addDeviceWithType:(unint64_t)a3 matching:(id)a4 learningSession:(id)a5 error:(id *)a6;
- (id)copyDevicePrefs:(id *)a3;
- (id)copyPrefsPropertyForUUID:(id)a3 UUIDKey:(id)a4 key:(id)a5;
- (id)getExistingDeviceWithType:(unint64_t)a3 matching:(id)a4;
- (id)propertyForKey:(id)a3 error:(id *)a4;
- (id)thirdPartyRemotes;
- (uint64_t)updateAllowHibernation;
- (uint64_t)updateLearnedProtocols;
- (void)_recreatePairedDeviceFromDefaults:(id)a3 key:(id)a4;
- (void)_removeMappingForCommand:(unint64_t)a3 from:(id)a4;
- (void)dealloc;
- (void)didAddDevice:(id)a3;
- (void)didRemoveDevice:(id)a3;
- (void)interface:(id)a3 receivedCommand:(id)a4;
- (void)migrateOldRemotes;
- (void)setManager:(id)a3;
- (void)updateAllowHibernation;
- (void)updateLearnedProtocols;
- (void)willAddToManager:(id)a3;
- (void)willRemoveDevice:(id)a3;
@end

@implementation CoreIRBusProvider

- (CoreIRBusProvider)initWithInterface:(id)a3
{
  v8.receiver = self;
  v8.super_class = CoreIRBusProvider;
  v4 = [(CoreIRBus *)&v8 init];
  if (v4)
  {
    v5 = a3;
    v4->_interface = v5;
    if (v5 && ([(IRInterface *)v5 setDelegate:v4], v6 = [[CoreIRDeviceProvider alloc] initWithBus:v4 local:1], (v4->_localDevice = v6) != 0))
    {
      [(CoreIRDevice *)v4->_localDevice setIsTransmitter:[(IRInterface *)v4->_interface isTxInterface]];
      [(CoreIRDevice *)v4->_localDevice setIsReceiver:[(IRInterface *)v4->_interface isRxInterface]];
      if ([(IRInterface *)v4->_interface buttons])
      {
        -[CoreIRDevice setButtons:](v4->_localDevice, "setButtons:", [MEMORY[0x277CBEA60] arrayWithArray:{-[IRInterface buttons](v4->_interface, "buttons")}]);
      }

      v4->_stateHandler = os_state_add_handler();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

_DWORD *__39__CoreIRBusProvider_initWithInterface___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v11 = 0;
  v2 = [*(a1 + 32) copyDevicePrefs:&v11];
  v3 = v2;
  if (v2)
  {
    v4 = v11 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@", v2), "dataUsingEncoding:", 4];
    v7 = v11;
    if (!v11 || gLogCategory_CoreRCBus > 90)
    {
      goto LABEL_13;
    }

    if (gLogCategory_CoreRCBus == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v7 = v11;
    }

    v10 = v7;
    LogPrintF();
LABEL_13:
    v8 = [v6 length];
    v5 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    __strlcpy_chk();
    *v5 = 1;
    v5[1] = v8;
    [v6 getBytes:v5 + 50 length:v8];

    return v5;
  }

  return 0;
}

+ (NSSet)deviceDictClasses
{
  result = deviceDictClasses__deviceDictClasses;
  if (!deviceDictClasses__deviceDictClasses)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    result = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    deviceDictClasses__deviceDictClasses = result;
  }

  return result;
}

- (void)dealloc
{
  [(IRInterface *)self->_interface setDelegate:0];

  v3.receiver = self;
  v3.super_class = CoreIRBusProvider;
  [(CoreIRBus *)&v3 dealloc];
}

- (void)setManager:(id)a3
{
  if (a3)
  {
    v4.receiver = self;
    v4.super_class = CoreIRBusProvider;
    [(CoreRCBus *)&v4 setManager:?];
    [(CoreRCBus *)self addDevice:self->_localDevice];
  }

  else
  {
    [(CoreRCBus *)self removeDevice:self->_localDevice];
    v4.receiver = self;
    v4.super_class = CoreIRBusProvider;
    [(CoreRCBus *)&v4 setManager:0];
  }
}

- (void)willAddToManager:(id)a3
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider willAddToManager:?];
  }

  [(CoreIRBusProvider *)self recreateDevices];
  if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
  {
    [(CoreIRBusProvider *)self migrateOldRemotes];
  }

  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreRCBus *)&v5 willAddToManager:a3];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v11 = self;
    v12 = a4;
    LogPrintF();
  }

  v9 = [(CoreIRBusProvider *)self interface:v11];

  return [(CoreRCInterface *)v9 setProperty:a3 forKey:a4 error:a5];
}

- (id)propertyForKey:(id)a3 error:(id *)a4
{
  v10 = 0;
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v8 = self;
    v9 = a3;
    LogPrintF();
  }

  result = [(CoreRCInterface *)[(CoreIRBusProvider *)self interface:v8] propertyForKey:a3 error:&v10];
  if (a4)
  {
    if (!result)
    {
      *a4 = v10;
    }
  }

  return result;
}

- (void)didRemoveDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreRCBus *)&v5 didRemoveDevice:?];
  if ([a3 is3rdPartyRemote])
  {
    [(CoreIRBusProvider *)self updateLearnedProtocols];
  }

  [(CoreIRBusProvider *)self updateAllowHibernation];
}

- (void)updateAllowHibernation
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  if ([(IRInterface *)[(CoreIRBusProvider *)self interface] canWakeFor3rdPartyIR]|| (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v3 = [(CoreRCBus *)self devices], (v4 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v17 count:16]) == 0))
  {
    v7 = 1;
  }

  else
  {
    v5 = v4;
    v6 = *v13;
    LODWORD(v7) = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 = ([*(*(&v12 + 1) + 8 * i) is3rdPartyRemote] ^ 1) & v7;
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v10 = self;
    v11 = v7;
    LogPrintF();
  }

  if (![(CoreRCBus *)self setAllowHibernation:v7 error:&v16, v10, v11])
  {
    [(CoreIRBusProvider *)v7 updateAllowHibernation];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateLearnedProtocols
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CoreRCBus *)self devices];
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 is3rdPartyRemote])
        {
          v6 = [v9 protocolMask] | v6;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([(IRInterface *)[(CoreIRBusProvider *)self interface] setLearnedProtocolMask:v6 error:&v15])
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [(CoreIRBusProvider *)self updateLearnedProtocols];
    }
  }

  else
  {
    [(CoreIRBusProvider *)gLogCategory_CoreRCBus updateLearnedProtocols];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)thirdPartyRemotes
{
  v2 = [(CoreRCBus *)self devices];

  return [(NSSet *)v2 objectsPassingTest:&__block_literal_global];
}

uint64_t __38__CoreIRBusProvider_thirdPartyRemotes__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isAppleRemote])
  {
    return 0;
  }

  result = [a2 isTransmitter];
  if (result)
  {
    return [a2 isLocalDevice] ^ 1;
  }

  return result;
}

- (id)addDeviceWithType:(unint64_t)a3 matching:(id)a4 learningSession:(id)a5 error:(id *)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v28 = @"CoreIRDLearntDevicePropertyMatching";
  v29[0] = a4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v23 = a4;
    v24 = a5;
    v21 = self;
    v22 = a3;
    LogPrintF();
  }

  if (a5 && [a5 mappings])
  {
    v12 = [(CoreIRBusProvider *)self _addDeviceWithType:a3 matching:a4 transportProperties:v11 error:&v25];
    if (v12)
    {
      v13 = v12;
      if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        [CoreIRBusProvider addDeviceWithType:a5 matching:? learningSession:? error:?];
      }

      if ([v13 setMappingWithSession:a5 error:{&v25, v21, v22, v23, v24}])
      {
        if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]&& [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
        {
          v14 = 17;
        }

        else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface])
        {
          v14 = 1;
        }

        else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
        {
          v14 = 16;
        }

        else
        {
          v14 = 0;
        }

        v15 = [a5 mappings];
        v16 = MEMORY[0x277CBEB38];
        v27[0] = [v13 uniqueID];
        v27[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        v27[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        v27[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a5, "reason")}];
        v27[4] = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
        v26[0] = @"CoreIRDevicePrefDictUUID";
        v26[1] = @"CoreIRDevicePrefDictInterfaceType";
        v26[2] = @"CoreIRDevicePrefDictType";
        v26[3] = @"CoreIRDevicePrefDictReason";
        v26[4] = @"CoreIRDevicePrefDictMappings";
        v18 = [v16 dictionaryWithObjects:v17 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 5)}];
        [v18 addEntriesFromDictionary:v11];
        [v18 addEntriesFromDictionary:{objc_msgSend(v13, "persistentProperties")}];
        [(CoreIRBusProvider *)self saveDevicePrefsWithDict:v18 error:a6];
        [(CoreRCBus *)self addDevice:v13];
        goto LABEL_21;
      }
    }
  }

  else
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
  }

  v13 = 0;
  if (a6)
  {
    *a6 = v25;
  }

LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_addDeviceWithType:(unint64_t)a3 matching:(id)a4 transportProperties:(id)a5 error:(id *)a6
{
  v14 = 0;
  v9 = [-[CoreRCBus manager](self "manager")];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 isLocalDevice] & 1) == 0)
    {
      [v10 setMatchingDict:a4];
      [v10 setIsTransmitter:a3 & 1];
      [v10 setIsReceiver:(a3 >> 4) & 1];
      goto LABEL_5;
    }

    v12 = -6734;
  }

  else
  {
    v12 = -6728;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
  v14 = v13;
  v10 = 0;
  if (a6)
  {
    *a6 = v13;
  }

LABEL_5:
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v10;
}

- (id)getExistingDeviceWithType:(unint64_t)a3 matching:(id)a4
{
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CoreRCBus *)self devices];
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ((([v11 isTransmitter] ^ v5) & 1) == 0 && ((v5 & 0x10) == 0) != objc_msgSend(v11, "isReceiver") && objc_msgSend(objc_msgSend(v11, "matchingDict"), "isEqual:", a4))
        {
          if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            [CoreIRBusProvider getExistingDeviceWithType:matching:];
          }

          goto LABEL_15;
        }
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)addMappingsFromRemote:(id)a3 toLearningSession:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"buttons"];
  if (v4)
  {
    v5 = v4;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (!v6)
    {
LABEL_27:
      LOBYTE(v30) = 1;
      goto LABEL_35;
    }

    v7 = v6;
    v8 = *v39;
    v35 = *v39;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v39 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v38 + 1) + 8 * v9);
      v11 = [objc_msgSend(v10 objectForKey:{@"protocolID", v33, v34), "unsignedIntValue"}];
      if (v11 == 8)
      {
        break;
      }

      v12 = v11;
      v13 = [objc_msgSend(v10 objectForKey:{@"usagePage", "unsignedIntValue"}];
      v14 = [objc_msgSend(v10 objectForKey:{@"usageCode", "unsignedIntValue"}];
      v37 = 0;
      if (CoreRCCommandFromLegacyHIDUsage(&v37, v13, v14))
      {
        v15 = [v10 objectForKey:@"commandPattern"];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = [v15 count];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = v7;
        v20 = malloc_type_calloc(8uLL, v17, 0x97E07DE9uLL);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        for (i = 0; i != v18; ++i)
        {
          v21[i] = [objc_msgSend(v16 objectAtIndex:{i), "unsignedLongLongValue"}];
        }

        v23 = [v10 objectForKey:@"repeatPattern"];
        if (!v23 || (v24 = v23, (v25 = [v23 count]) == 0) || (v26 = v25, (v27 = malloc_type_calloc(8uLL, v25, 0x947B01E1uLL)) == 0))
        {
          free(v21);
          break;
        }

        v28 = v27;
        for (j = 0; j != v26; ++j)
        {
          v28[j] = [objc_msgSend(v24 objectAtIndex:{j), "unsignedLongLongValue"}];
        }

        if (([a4 addMappingWithProtocolID:v12 options:0 commandToMap:v37 commands:v21 commandCount:v18 repeats:v28 repeatCount:v26] & 1) == 0)
        {
          free(v21);
          free(v28);
          break;
        }

        free(v21);
        free(v28);
        v8 = v35;
        v7 = v19;
      }

      else if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v33 = v13;
        v34 = v14;
        LogPrintF();
      }

      if (++v9 == v7)
      {
        v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_27;
      }
    }
  }

  if (gLogCategory_CoreRCBus > 90)
  {
LABEL_34:
    LOBYTE(v30) = 0;
    goto LABEL_35;
  }

  if (gLogCategory_CoreRCBus != -1 || (v30 = _LogCategory_Initialize()) != 0)
  {
    LogPrintF();
    goto LABEL_34;
  }

LABEL_35:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)_recreatePairedDeviceFromDefaults:(id)a3 key:(id)a4
{
  v5 = [a3 objectForKey:a4];
  if (v5)
  {
    v6 = v5;
    v8 = 0;
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreIRBusProvider _recreatePairedDeviceFromDefaults:key:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = -[CoreIRBusProvider _addAppleRemoteWithDeviceUID:](self, "_addAppleRemoteWithDeviceUID:", [v6 unsignedCharValue]);
      if (v7)
      {
        if (![(CoreIRBusProvider *)self setPairedAppleRemote:v7 error:&v8])
        {
          [CoreIRBusProvider _recreatePairedDeviceFromDefaults:? key:?];
        }
      }
    }
  }
}

- (void)willRemoveDevice:(id)a3
{
  -[CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:](self, "deleteDevicePrefsWithUUID:UUIDKey:", [a3 uniqueID], @"CoreIRDevicePrefDictUUID");
  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreIRBus *)&v5 willRemoveDevice:a3];
}

- (BOOL)saveDevicePrefsWithDict:(id)a3 error:(id *)a4
{
  v4 = a3;
  v74 = *MEMORY[0x277D85DE8];
  v53 = 0;
  if (!a3)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    LODWORD(v13) = 0;
    v21 = 0;
LABEL_61:
    v10 = 0;
    v8 = 0;
LABEL_62:
    v53 = v22;
    if (!v22)
    {
      goto LABEL_48;
    }

    goto LABEL_31;
  }

  v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v5)
  {
    v7 = objc_opt_new();
    goto LABEL_6;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
    LODWORD(v13) = 0;
    v21 = 0;
    LODWORD(v4) = 0;
    goto LABEL_61;
  }

  v7 = [v6 mutableCopy];
LABEL_6:
  v8 = v7;
  if (!v7 || (v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v53]) == 0)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
    LODWORD(v13) = 0;
    v21 = 0;
    LODWORD(v4) = 0;
    v10 = 0;
    goto LABEL_62;
  }

  v10 = v9;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v49 objects:v73 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v4 = 0;
    v14 = *v50;
    while (2)
    {
      v15 = v8;
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v15);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_29;
        }

        if ([v17 length] > v13)
        {
          v13 = [v17 length];
        }

        v18 = [v17 length];
        v19 = __CFADD__(v4, v18);
        v4 += v18;
        if (v19)
        {
LABEL_29:
          [CoreIRBusProvider saveDevicePrefsWithDict:? error:?];
          v21 = 0;
          v8 = v15;
          goto LABEL_30;
        }
      }

      v8 = v15;
      v12 = [v15 countByEnumeratingWithState:&v49 objects:v73 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
    v4 = 0;
  }

  if ([v10 length] > v13)
  {
    LODWORD(v13) = [v10 length];
  }

  v20 = [v10 length];
  v19 = __CFADD__(v4, v20);
  v4 += v20;
  if (v19 || v4 > 0xE1000)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6751 userInfo:0];
    v21 = 0;
    goto LABEL_62;
  }

  [v8 addObject:v10];
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [(CoreIRBusProvider *)v10 saveDevicePrefsWithDict:v4 error:v8];
  }

  v21 = 1;
LABEL_30:
  v22 = v53;
  if (v53)
  {
LABEL_31:
    if ([v22 code] == -6751 || objc_msgSend(v53, "code") == -6717)
    {
      v40 = v21;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = [(CoreRCBus *)self devices:v10];
      v24 = [(NSSet *)v23 countByEnumeratingWithState:&v45 objects:v72 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        v27 = 0;
        v42 = 0;
        v44 = 0;
        v28 = *v46;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v46 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v45 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 += [v30 isReceiver];
              v27 += [v30 isTransmitter];
              if ([v30 is3rdPartyRemote])
              {
                ++v44;
              }

              else
              {
                v42 += [v30 isAppleRemote];
              }
            }
          }

          v25 = [(NSSet *)v23 countByEnumeratingWithState:&v45 objects:v72 count:16];
        }

        while (v25);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v42 = 0;
        v44 = 0;
      }

      v8 = v39;
      v21 = v40;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v35 = [v53 code];
        v36 = [v38 length];
        v37 = [v39 count];
        *buf = 67111168;
        v55 = v35;
        v56 = 1024;
        v57 = v36;
        v58 = 1024;
        v59 = v13;
        v60 = 1024;
        v61 = v37;
        v62 = 1024;
        v63 = v4;
        v64 = 1024;
        v65 = v26;
        v66 = 1024;
        v67 = v27;
        v68 = 1024;
        v69 = v44;
        v21 = v40;
        v70 = 1024;
        v71 = v42;
        _os_log_fault_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "CoreRC saveDevicePrefsWithDict failed:0x%x newEntrySize:%u maxEntrySize:%u numEntries:%u totalSize:%u numRx:%u numTx:%u num3rdParty:%u numApple:%u", buf, 0x38u);
      }
    }
  }

LABEL_48:

  if (a4)
  {
    v31 = v21;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = v53;
    if (!v53)
    {
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6700 userInfo:0];
    }

    *a4 = v32;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)deleteDevicePrefsWithUUID:(id)a3 UUIDKey:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_33;
  }

  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider deleteDevicePrefsWithUUID:a3 UUIDKey:?];
  }

  v6 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v6)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v6 mutableCopy];
    if (v6 && +[CoreIRBusProvider deviceDictClasses])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v18 + 1) + 8 * v10);
            v17 = 0;
            v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:+[CoreIRBusProvider deviceDictClasses](CoreIRBusProvider fromData:"deviceDictClasses") error:{v11, &v17}];
            if (v12)
            {
              v13 = [v12 objectForKeyedSubscript:a4];
              if (v13 && [a3 isEqual:v13])
              {
                [v6 removeObject:v11];
                [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
                {
                  [CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:];
                }

                result = 1;
                goto LABEL_30;
              }
            }

            else
            {
              [CoreIRBusProvider deleteDevicePrefsWithUUID:? UUIDKey:?];
            }

            ++v10;
          }

          while (v8 != v10);
          v14 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          v8 = v14;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        [CoreIRBusProvider deleteDevicePrefsWithUUID:a3 UUIDKey:?];
      }
    }
  }

  else
  {
LABEL_33:
    v6 = 0;
  }

LABEL_25:
  [(CoreIRBusProvider *)a3 deleteDevicePrefsWithUUID:v6 UUIDKey:&v17];
  result = v17;
LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setPrefsPropertyForUUID:(id)a3 UUIDKey:(id)a4 object:(id)a5 key:(id)a6
{
  v7 = 0;
  v35 = *MEMORY[0x277D85DE8];
  if (a3 && a4 && a5 && a6)
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      v25 = a5;
      v26 = a6;
      v24 = [a3 UUIDString];
      LogPrintF();
    }

    v7 = [objc_msgSend(MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v7 mutableCopy];
        if (v7 && +[CoreIRBusProvider deviceDictClasses])
        {
          v27 = a5;
          v28 = a6;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v11 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v31;
            while (2)
            {
              v14 = 0;
              do
              {
                if (*v31 != v13)
                {
                  objc_enumerationMutation(v7);
                }

                v15 = *(*(&v30 + 1) + 8 * v14);
                v29 = 0;
                v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:+[CoreIRBusProvider deviceDictClasses](CoreIRBusProvider fromData:"deviceDictClasses") error:{v15, &v29}];
                if (v16)
                {
                  v17 = v16;
                  v18 = [v16 objectForKeyedSubscript:a4];
                  if (v18 && [a3 isEqual:v18])
                  {
                    [v7 removeObject:v15];
                    [v17 setObject:v27 forKey:v28];
                    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v29];
                    if (!v21)
                    {
                      [CoreIRBusProvider setPrefsPropertyForUUID:v7 UUIDKey:? object:? key:?];
                      goto LABEL_29;
                    }

                    [v7 addObject:v21];
                    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
                    {
                      [CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:];
                    }

                    LOBYTE(v20) = 1;
                    goto LABEL_39;
                  }
                }

                else
                {
                  [CoreIRBusProvider setPrefsPropertyForUUID:? UUIDKey:? object:? key:?];
                }

                ++v14;
              }

              while (v12 != v14);
              v19 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
              v12 = v19;
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            [CoreIRBusProvider setPrefsPropertyForUUID:a3 UUIDKey:? object:? key:?];
          }
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

LABEL_29:
  if (gLogCategory_CoreRCBus > 60)
  {
    goto LABEL_33;
  }

  if (gLogCategory_CoreRCBus != -1 || (v20 = _LogCategory_Initialize()) != 0)
  {
    [CoreIRBusProvider setPrefsPropertyForUUID:a3 UUIDKey:? object:? key:?];
LABEL_33:
    LOBYTE(v20) = 0;
  }

LABEL_39:
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)copyPrefsPropertyForUUID:(id)a3 UUIDKey:(id)a4 key:(id)a5
{
  v6 = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_17;
  }

  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider copyPrefsPropertyForUUID:a3 UUIDKey:? key:?];
  }

  v10 = [(CoreIRBusProvider *)self copyDevicePrefs:0];
  v6 = v10;
  if (v10 && (v22 = 0u, v23 = 0u, v20 = 0u, v21 = 0u, (v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16]) != 0))
  {
    v12 = v11;
    v13 = *v21;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      v16 = [v15 objectForKeyedSubscript:a4];
      if (v16)
      {
        if ([a3 isEqual:v16])
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    v17 = [v15 objectForKeyedSubscript:a5];

    if (v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_17:
  }

  if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider copyPrefsPropertyForUUID:a3 UUIDKey:? key:?];
  }

  v17 = 0;
LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)updatePersistentValue:(id)a3 forProperty:(id)a4 ofDevice:(id)a5
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider updatePersistentValue:forProperty:ofDevice:];
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_11:
    [CoreIRBusProvider updatePersistentValue:a5 forProperty:&v10 ofDevice:?];
    return v10;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!a3 || !a5 || !-[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:](self, "setPrefsPropertyForUUID:UUIDKey:object:key:", [a5 uniqueID], @"CoreIRDevicePrefDictUUID", a3, a4))
  {
    goto LABEL_11;
  }

  return 1;
}

- (BOOL)mergePersistentMappingsFromSession:(id)a3 ofDevice:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider mergePersistentMappingsFromSession:ofDevice:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a3 mappings];
    if (a4)
    {
      v8 = v7;
      if (v7)
      {
        v9 = -[CoreIRBusProvider copyPrefsPropertyForUUID:UUIDKey:key:](self, "copyPrefsPropertyForUUID:UUIDKey:key:", [a4 uniqueID], @"CoreIRDevicePrefDictUUID", @"CoreIRDevicePrefDictMappings");
        if (v9)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v13 = *v21;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v8);
                }

                v15 = *(*(&v20 + 1) + 8 * i);
                -[CoreIRBusProvider _removeMappingForCommand:from:](self, "_removeMappingForCommand:from:", [objc_msgSend(v15 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}], v9);
                if ([objc_msgSend(v15 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}] == 46)
                {
                  [(CoreIRBusProvider *)self _removeMappingForCommand:67 from:v9];
                  [(CoreIRBusProvider *)self _removeMappingForCommand:47 from:v9];
                  v12 = 1;
                }
              }

              v11 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v11);
            if (v12)
            {
              [(CoreIRBusProvider *)self _removeMappingForCommand:67 from:v8];
              [(CoreIRBusProvider *)self _removeMappingForCommand:47 from:v8];
            }
          }

          [v9 addObjectsFromArray:v8];
          v8 = v9;
        }

        v16 = -[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:](self, "setPrefsPropertyForUUID:UUIDKey:object:key:", [a4 uniqueID], @"CoreIRDevicePrefDictUUID", v8, @"CoreIRDevicePrefDictMappings");

        if (v16)
        {
          LOBYTE(v17) = 1;
          goto LABEL_28;
        }
      }
    }
  }

  if (gLogCategory_CoreRCBus > 90)
  {
LABEL_27:
    LOBYTE(v17) = 0;
    goto LABEL_28;
  }

  if (gLogCategory_CoreRCBus != -1 || (v17 = _LogCategory_Initialize()) != 0)
  {
    [CoreIRBusProvider mergePersistentMappingsFromSession:ofDevice:];
    goto LABEL_27;
  }

LABEL_28:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)interface:(id)a3 receivedCommand:(id)a4
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  localDevice = self->_localDevice;

  [(CoreIRDeviceProvider *)localDevice handleIRCommand:a4];
}

- (void)didAddDevice:(id)a3
{
  v6 = 0;
  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreRCBus *)&v5 didAddDevice:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 is3rdPartyRemote])
    {
      [(CoreIRBusProvider *)self updateLearnedProtocols];
      if (![(IRInterface *)[(CoreIRBusProvider *)self interface] canWakeFor3rdPartyIR]&& ![(CoreRCBus *)self setAllowHibernation:0 error:&v6]&& gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }
}

- (id)addDeviceWithType:(unint64_t)a3 matching:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v24 = @"CoreIRTransportPropertyMatching";
  v25[0] = a4;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v19 = self;
    v20 = a4;
    LogPrintF();
  }

  v10 = [(CoreIRBusProvider *)self getExistingDeviceWithType:a3 matching:a4, v19, v20];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v11 = [(CoreIRBusProvider *)self _addDeviceWithType:a3 matching:a4 transportProperties:v9 error:&v21];
    if (v11)
    {
      v12 = v11;
      if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]&& [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
      {
        v13 = 17;
      }

      else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface])
      {
        v13 = 1;
      }

      else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
      {
        v13 = 16;
      }

      else
      {
        v13 = 0;
      }

      v14 = MEMORY[0x277CBEB38];
      v23[0] = [v12 uniqueID];
      v23[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v23[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
      v22[0] = @"CoreIRDevicePrefDictUUID";
      v22[1] = @"CoreIRDevicePrefDictInterfaceType";
      v22[2] = @"CoreIRDevicePrefDictType";
      v16 = [v14 dictionaryWithObjects:v15 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v22, 3)}];
      [v16 addEntriesFromDictionary:v9];
      [v16 addEntriesFromDictionary:{objc_msgSend(v12, "persistentProperties")}];
      [(CoreIRBusProvider *)self saveDevicePrefsWithDict:v16 error:a5];
      [(CoreRCBus *)self addDevice:v12];
    }

    else
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v21;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)migrateOldRemotes
{
  v33[17] = *MEMORY[0x277D85DE8];
  v33[0] = 0;
  OUTLINED_FUNCTION_1_1();
  if (v5 ^ v6 | v4 && (v3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleTVIR"];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_69;
  }

  if ([v7 BOOLForKey:@"HasMigrated"])
  {
    v14 = 0;
    v24 = 0;
    v31 = 0;
    goto LABEL_61;
  }

  [(CoreIRBusProvider *)self _recreatePairedDeviceFromDefaults:v8 key:@"pairedDeviceUID"];
  obj = [v8 arrayForKey:@"remotes"];
  if (obj)
  {
    if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      v29 = obj;
      LogPrintF();
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v12 = OUTLINED_FUNCTION_3_0(v31, v9, v10, v11);
    if (v12)
    {
      v13 = v12;
      v30 = v8;
      v14 = 0;
      v15 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(8 * i);
          OUTLINED_FUNCTION_1_1();
          if (v5 ^ v6 | v4 && (v18 != -1 || OUTLINED_FUNCTION_2_1()))
          {
            v29 = v17;
            LogPrintF();
          }

          v19 = [v17 valueForKey:{@"name", v29}];
          if (v19)
          {
            v23 = v19;
            v24 = [[CoreIRLearningSessionProvider alloc] initWithReason:1];
            if (!v24)
            {
              v27 = -6728;
              goto LABEL_55;
            }

            if ([(CoreIRBusProvider *)self addMappingsFromRemote:v17 toLearningSession:v24])
            {
              if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || OUTLINED_FUNCTION_2_1()))
              {
                v29 = [(CoreIRLearningSessionProvider *)v24 mappings];
                LogPrintF();
              }

              v25 = [(CoreIRBusProvider *)self addDeviceWithType:1 matching:v31 learningSession:v24 error:v33, v29];
              if (!v25)
              {
                v27 = -6700;
LABEL_55:
                v33[0] = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v27 userInfo:0];
LABEL_56:
                v8 = v30;
                goto LABEL_57;
              }

              v26 = v25;

              v19 = [v26 setOSDName:v23 error:0];
            }

            else
            {
              if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (!v14)
              {
                v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v14 addObject:v23];
            }
          }

          else if (gLogCategory_CoreRCBus <= 90)
          {
            if (gLogCategory_CoreRCBus != -1 || (v19 = _LogCategory_Initialize(), v19))
            {
              v19 = LogPrintF();
            }
          }
        }

        v13 = OUTLINED_FUNCTION_3_0(v19, v20, v21, v22);
        if (v13)
        {
          continue;
        }

        break;
      }

      if (!v14)
      {
        v24 = 0;
        goto LABEL_56;
      }

      v8 = v30;
      [v30 setObject:v14 forKey:@"UnmigratableRemoteNames"];
      [v30 synchronize];
      if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v29 = v14;
        LogPrintF();
      }
    }

    else
    {
      v14 = 0;
    }

    v24 = 0;
  }

  else
  {
LABEL_69:
    v14 = 0;
    v24 = 0;
    v31 = 0;
  }

LABEL_57:
  [v8 setBool:1 forKey:{@"HasMigrated", v29}];
  [v8 synchronize];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_61:

  if (v33[0] && gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)recreateDevices
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  -[CoreIRBusProvider _recreatePairedDeviceFromDefaults:key:](self, "_recreatePairedDeviceFromDefaults:key:", [MEMORY[0x277CBEBD0] standardUserDefaults], @"CoreIRAppleRemotePrefPairedUID");
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v36 = [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface];
    v38 = [(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface];
    v34 = self;
    LogPrintF();
  }

  v3 = [(CoreIRBusProvider *)self copyDevicePrefs:&v44, v34, v36, v38];
  v4 = v3;
  if (v3)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v41;
      obj = v4;
LABEL_8:
      v8 = 0;
      while (1)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          v35 = v9;
          LogPrintF();
        }

        v10 = [-[CoreIRBusProvider objectForKey:](v9 objectForKey:{@"CoreIRDevicePrefDictInterfaceType", v35, v37), "unsignedIntegerValue"}];
        if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]&& (v10 & 0xFFFFFFFFFFFFFFEFLL) == 1 || [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface]&& (v10 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
        {
          [-[CoreIRBusProvider objectForKey:](v9 objectForKey:{@"CoreIRDevicePrefDictType", "unsignedIntegerValue"}];
          v11 = [(CoreIRBusProvider *)v9 objectForKey:@"CoreIRTransportPropertyMatching"];
          if (!v11)
          {
            v17 = [(CoreIRBusProvider *)v9 objectForKey:@"CoreIRDLearntDevicePropertyMatching"];
            if (!v17)
            {
              goto LABEL_48;
            }

            v18 = v17;
            v45 = @"CoreIRDLearntDevicePropertyMatching";
            v46 = v17;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            OUTLINED_FUNCTION_1_1();
            if (v15 ^ v16 | v14 && (v19 != -1 || OUTLINED_FUNCTION_2_1()))
            {
              v35 = self;
              v37 = v18;
              LogPrintF();
            }

            v22 = [OUTLINED_FUNCTION_0_2() _addDeviceWithType:? matching:? transportProperties:? error:?];
            if (!v22)
            {
LABEL_50:
              v28 = 0;
              goto LABEL_51;
            }

            v21 = v22;
            v23 = -[CoreIRLearningSession initWithReason:]([CoreIRLearningSessionProvider alloc], "initWithReason:", [-[CoreIRBusProvider objectForKey:](v9 objectForKey:{@"CoreIRDevicePrefDictReason", "unsignedIntegerValue"}]);
            if (!v23)
            {
              v29 = MEMORY[0x277CCA9B8];
              v30 = *MEMORY[0x277CCA590];
              v31 = -6728;
              goto LABEL_49;
            }

            v24 = v23;
            [(CoreIRLearningSessionProvider *)v23 setMappings:[(CoreIRBusProvider *)v9 objectForKey:@"CoreIRDevicePrefDictMappings"]];
            OUTLINED_FUNCTION_1_1();
            if (v15 ^ v16 | v14 && (v25 != -1 || OUTLINED_FUNCTION_2_1()))
            {
              v35 = [(CoreIRLearningSessionProvider *)v24 mappings];
              LogPrintF();
            }

            v26 = [v21 setMappingWithSession:v24 error:{&v44, v35}];

            if ((v26 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_43;
          }

          v12 = v11;
          v47 = @"CoreIRTransportPropertyMatching";
          v48 = v11;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          OUTLINED_FUNCTION_1_1();
          if (v15 ^ v16 | v14 && (v13 != -1 || OUTLINED_FUNCTION_2_1()))
          {
            v35 = self;
            v37 = v12;
            LogPrintF();
          }

          v20 = [OUTLINED_FUNCTION_0_2() getExistingDeviceWithType:? matching:?];
          if (!v20)
          {
            v21 = [OUTLINED_FUNCTION_0_2() _addDeviceWithType:? matching:? transportProperties:? error:?];
            if (!v21)
            {
              goto LABEL_50;
            }

LABEL_43:
            [v21 setPersistentProperties:{v9, v35}];
            v27 = [(CoreIRBusProvider *)v9 objectForKeyedSubscript:@"CoreIRDevicePrefDictUUID"];
            if (!v27)
            {
LABEL_48:
              v29 = MEMORY[0x277CCA9B8];
              v30 = *MEMORY[0x277CCA590];
              v31 = -6700;
LABEL_49:
              v28 = 0;
              v44 = [v29 errorWithDomain:v30 code:v31 userInfo:{0, v35}];
LABEL_51:
              v4 = obj;
              goto LABEL_52;
            }

            [v21 setUniqueID:v27];
            [(CoreRCBus *)self addDevice:v21];
            goto LABEL_45;
          }

          [(CoreIRBusProvider *)self willRemoveDevice:v20];
        }

LABEL_45:
        if (v6 == ++v8)
        {
          v4 = obj;
          v6 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v6)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  v28 = 1;
LABEL_52:
  [v4 removeAllObjects];

  if (v44 && gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v32 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)copyDevicePrefs:(id *)a3
{
  v22[17] = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v4 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v4)
  {
    v6 = 0;
LABEL_19:
    v15 = 50;
    goto LABEL_20;
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[CoreIRBusProvider deviceDictClasses])
    {
      v6 = objc_opt_new();
      v8 = OUTLINED_FUNCTION_4_0(v6, v7);
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0];
        do
        {
          v11 = 0;
          do
          {
            if (MEMORY[0] != v10)
            {
              objc_enumerationMutation(v5);
            }

            v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:+[CoreIRBusProvider deviceDictClasses](CoreIRBusProvider fromData:"deviceDictClasses" error:{v21), *(8 * v11), v22}];
            if (v12)
            {
              v12 = [v6 addObject:v12];
            }

            else if (gLogCategory_CoreRCBus <= 90)
            {
              if (gLogCategory_CoreRCBus != -1 || (v12 = _LogCategory_Initialize(), v12))
              {
                v21 = [v22[0] localizedDescription];
                v12 = LogPrintF();
              }
            }

            ++v11;
          }

          while (v9 != v11);
          v14 = OUTLINED_FUNCTION_4_0(v12, v13);
          v9 = v14;
        }

        while (v14);
      }

      goto LABEL_19;
    }

    v18 = -6728;
  }

  else
  {
    v18 = -6756;
  }

  v19 = *MEMORY[0x277CCA590];
  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v18 userInfo:0];
  v22[0] = v20;
  if (a3)
  {
    if (!v20)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v19 code:-6700 userInfo:0];
    }

    v6 = 0;
    *a3 = v20;
  }

  else
  {
    v6 = 0;
  }

  v15 = 90;
LABEL_20:
  if (v15 >= gLogCategory_CoreRCBus && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [v6 count];
    [v22[0] code];
    LogPrintF();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_removeMappingForCommand:(unint64_t)a3 from:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = OUTLINED_FUNCTION_5_0(self, a2, a3, a4, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, v32, v34);
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(a4);
          }

          v14 = *(v25 + 8 * i);
          v15 = [objc_msgSend(v14 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}];
          if (v15 == a3)
          {
            [a4 removeObject:v14];
            goto LABEL_12;
          }
        }

        v11 = OUTLINED_FUNCTION_5_0(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v33, v35);
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)setPairedAppleRemote:(id)a3 error:(id *)a4
{
  if ([(CoreIRBus *)self pairedAppleRemote]== a3)
  {
    if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    LOBYTE(v9) = 1;
  }

  else
  {
    v7 = [(CoreIRBusProvider *)self interface];
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = [(CoreIRBus *)self pairedAppleRemote];
    }

    v9 = [(IRInterface *)v7 setPairState:a3 != 0 forDeviceUID:[(CoreIRDevice *)v8 deviceUID] error:a4];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v11 = [v10 objectForKey:@"CoreIRAppleRemotePrefPairedUID"];
      if (a3)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(a3, "deviceUID")}];
      }

      else
      {
        v12 = 0;
      }

      if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
      {
        if (a3)
        {
          [v10 setObject:v12 forKey:@"CoreIRAppleRemotePrefPairedUID"];
        }

        else
        {
          [v10 removeObjectForKey:@"CoreIRAppleRemotePrefPairedUID"];
        }
      }

      [v10 synchronize];
      v14.receiver = self;
      v14.super_class = CoreIRBusProvider;
      LOBYTE(v9) = [(CoreIRBus *)&v14 setPairedAppleRemote:a3 error:a4];
    }
  }

  return v9;
}

- (uint64_t)willAddToManager:(void *)a1 .cold.1(void *a1)
{
  [objc_msgSend(a1 "interface")];
  [objc_msgSend(a1 "interface")];
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

- (uint64_t)updateLearnedProtocols
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      [a2 interface];
      v5 = *a3;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)addDeviceWithType:(uint64_t *)a1 matching:learningSession:error:.cold.2(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)_recreatePairedDeviceFromDefaults:(uint64_t)result key:.cold.2(uint64_t result)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCBus != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)saveDevicePrefsWithDict:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6717 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)saveDevicePrefsWithDict:(void *)a3 error:.cold.3(void *a1, uint64_t a2, void *a3)
{
  [a1 length];
  [a3 count];
  return LogPrintF();
}

- (uint64_t)deleteDevicePrefsWithUUID:(uint64_t)result UUIDKey:.cold.3(uint64_t result)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCBus != -1 || (result = _LogCategory_Initialize(), result))
    {
      [*v1 localizedDescription];
      return LogPrintF();
    }
  }

  return result;
}

- (void)deleteDevicePrefsWithUUID:(_BYTE *)a3 UUIDKey:.cold.5(void *a1, void *a2, _BYTE *a3)
{
  if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [a1 UUIDString];
    LogPrintF();
  }

  *a3 = 0;
}

- (void)setPrefsPropertyForUUID:(id *)a1 UUIDKey:(void *)a2 object:key:.cold.2(id *a1, void *a2)
{
  if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [*a1 localizedDescription];
    LogPrintF();
  }
}

- (uint64_t)setPrefsPropertyForUUID:(uint64_t)result UUIDKey:object:key:.cold.3(uint64_t result)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCBus != -1 || (result = _LogCategory_Initialize(), result))
    {
      [*v1 localizedDescription];
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)updatePersistentValue:(uint64_t)a1 forProperty:(_BYTE *)a2 ofDevice:.cold.2(uint64_t a1, _BYTE *a2)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    if (gLogCategory_CoreRCBus != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

@end