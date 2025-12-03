@interface DADeviceResolver
- (DADeviceResolver)init;
- (id)descriptionWithLevel:(int)level;
- (void)_addEndpoint:(id)endpoint;
- (void)_ensureInitialized;
- (void)_evaluateEndpoints;
- (void)_groupEndpoint:(id)endpoint matchedEndpoint:(id)matchedEndpoint;
- (void)_invalidated;
- (void)_removeEndpoint:(id)endpoint;
- (void)_reportDeviceWithSoloEndpoint:(id)endpoint;
- (void)_reportEvent:(id)event;
- (void)_reportEventType:(int64_t)type;
- (void)_selectEndpoint:(id)endpoint;
- (void)_startResolvingBonjourFullName:(const char *)name interfaceIndex:(unsigned int)index endpoint:(id)endpoint;
- (void)_startResolvingBonjourName:(const char *)name type:(const char *)type interfaceIndex:(unsigned int)index endpoint:(id)endpoint;
- (void)_startResolvingEndpoint:(id)endpoint;
- (void)_startResolvingHostname:(const char *)hostname interfaceIndex:(unsigned int)index endpoint:(id)endpoint;
- (void)_updateSelectedEndpoint:(id)endpoint;
- (void)addEndpoint:(id)endpoint;
- (void)invalidate;
- (void)removeEndpoint:(id)endpoint;
- (void)selectEndpoint:(id)endpoint;
@end

@implementation DADeviceResolver

- (DADeviceResolver)init
{
  v6.receiver = self;
  v6.super_class = DADeviceResolver;
  v2 = [(DADeviceResolver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  if (level < 0x15u)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    v11[5] = 0;
    v5 = objc_opt_class();
    v6 = [(NSMutableDictionary *)self->_devices count];
    v10 = [(NSMutableDictionary *)self->_endpoints count];
    NSAppendPrintF();
    objc_storeStrong(&v17, 0);
    devices = self->_devices;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__DADeviceResolver_descriptionWithLevel___block_invoke;
    v11[3] = &unk_278F57C90;
    v11[4] = &v12;
    [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v11, v5, v6, v10];
    v8 = v13[5];
    if (!v8)
    {
      v8 = &stru_285B4C350;
    }

    v4 = v8;
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    objc_opt_class();
    [(NSMutableDictionary *)self->_devices count];
    [(NSMutableDictionary *)self->_endpoints count];
    v4 = NSPrintF();
  }

  return v4;
}

void __41__DADeviceResolver_descriptionWithLevel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 endpoints];
  v8 = *(*(a1 + 32) + 8);
  obj = *(v8 + 40);
  v9 = objc_opt_class();
  v10 = [v5 name];

  v11 = [v7 count];
  NSAppendPrintF();

  objc_storeStrong((v8 + 40), obj);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__DADeviceResolver_descriptionWithLevel___block_invoke_2;
  v12[3] = &unk_278F57C68;
  v12[4] = *(a1 + 32);
  [v7 enumerateKeysAndObjectsUsingBlock:{v12, v9, v6, v10, v11}];
}

void __41__DADeviceResolver_descriptionWithLevel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  v6 = a3;
  v7 = a2;
  objc_opt_class();
  v8 = [v6 airplayDeviceID];
  v9 = [v6 bonjourName];
  v10 = [v6 bonjourType];
  [v6 bonjourInterfaceIndex];
  v11 = [v6 bonjourHostname];
  v12 = [v6 ipv4String];
  [v6 selected];

  NSAppendPrintF();
  objc_storeStrong((v4 + 40), v5);
}

- (void)addEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__DADeviceResolver_addEndpoint___block_invoke;
  v7[3] = &unk_278F57CB8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_addEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  [(DADeviceResolver *)self _ensureInitialized];
  identifier = [endpointCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_endpoints objectForKeyedSubscript:identifier];
    if (!v5)
    {
      v5 = objc_alloc_init(DAEndpoint);
      [(NSMutableDictionary *)self->_endpoints setObject:v5 forKeyedSubscript:identifier];
    }

    [(DAEndpoint *)v5 updateWithEndpoint:endpointCopy];
    [(DAEndpoint *)v5 setAddTicks:mach_absolute_time()];
    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      [DADeviceResolver _addEndpoint:];
    }

    [(DADeviceResolver *)self _startResolvingEndpoint:v5];
    [(CUCoalescer *)self->_coalescer trigger];
  }

  else
  {
    [DADeviceResolver _addEndpoint:];
  }
}

- (void)removeEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DADeviceResolver_removeEndpoint___block_invoke;
  v7[3] = &unk_278F57CB8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_removeEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  [(DADeviceResolver *)self _ensureInitialized];
  identifier = [endpointCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_endpoints objectForKeyedSubscript:identifier];
    if (v5)
    {
      [(NSMutableDictionary *)self->_endpoints setObject:0 forKeyedSubscript:identifier];
      parentDevice = [v5 parentDevice];
      v7 = parentDevice;
      if (parentDevice)
      {
        endpoints = [parentDevice endpoints];
        v9 = [endpoints mutableCopy];

        [v9 setObject:0 forKeyedSubscript:identifier];
        [v7 setEndpoints:v9];
        if ([v9 count])
        {
          if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
          {
            [DADeviceResolver _removeEndpoint:];
          }

          identifier2 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:v7];
          v11 = _Block_copy(self->_eventHandler);
          v12 = v11;
          if (v11)
          {
            (v11->super.super._error)(v11, identifier2);
          }
        }

        else
        {
          identifier2 = [v7 identifier];
          if (identifier2)
          {
            [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:identifier2];
          }

          if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
          {
            [DADeviceResolver _removeEndpoint:];
          }

          v12 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:41 device:v7];
          v13 = _Block_copy(self->_eventHandler);
          v14 = v13;
          if (v13)
          {
            (*(v13 + 2))(v13, v12);
          }
        }
      }
    }
  }

  else
  {
    [DADeviceResolver _removeEndpoint:];
  }
}

- (void)selectEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DADeviceResolver_selectEndpoint___block_invoke;
  v7[3] = &unk_278F57CB8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_selectEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  [(DADeviceResolver *)self _ensureInitialized];
  if (!endpointCopy)
  {
    v9 = 0;
    v7 = 0;
    v5 = 0;
LABEL_7:
    if (self->_bundleID)
    {
      if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
      {
        [DADeviceResolver _selectEndpoint:];
      }

      persistentDictionaryRepresentation = [v7 persistentDictionaryRepresentation];
      if (persistentDictionaryRepresentation)
      {
        v11 = [[DAEndpoint alloc] initWithPersistentDictionaryRepresentation:persistentDictionaryRepresentation error:0];
      }

      else
      {
        v11 = 0;
      }

      [(DADeviceResolver *)self _updateSelectedEndpoint:v11];
    }

    else if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      [DADeviceResolver _selectEndpoint:];
    }

    goto LABEL_15;
  }

  identifier = [endpointCopy identifier];
  if (identifier)
  {
    v5 = identifier;
    v6 = [(NSMutableDictionary *)self->_endpoints objectForKeyedSubscript:identifier];
    if (v6)
    {
      v7 = v6;
      protocolTypeString = [v6 protocolTypeString];
      if (protocolTypeString)
      {
        v9 = protocolTypeString;
        goto LABEL_7;
      }

      if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
      {
        [DADeviceResolver _selectEndpoint:];
      }

      v9 = 0;
    }

    else
    {
      if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
      {
        [DADeviceResolver _selectEndpoint:];
      }

      v9 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      [DADeviceResolver _selectEndpoint:];
    }

    v9 = 0;
    v7 = 0;
    v5 = 0;
  }

LABEL_15:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DADeviceResolver_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__DADeviceResolver_invalidate__block_invoke(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      __30__DADeviceResolver_invalidate__block_invoke_cold_1(v2);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(*v2 + 96);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v12 + 1) + 8 * i) invalidate];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    [*(*v2 + 96) removeAllObjects];
    v8 = *v2;
    v9 = *(*v2 + 8);
    if (v9)
    {
      DNSServiceRefDeallocate(v9);
      *(*v2 + 8) = 0;
      v8 = *v2;
    }

    [*(v8 + 88) invalidate];
    v10 = *(*v2 + 88);
    *(*v2 + 88) = 0;

    result = [*v2 _invalidated];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    [(DADeviceResolver *)self _reportEventType:20];
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      [DADeviceResolver _invalidated];
    }
  }
}

- (void)_ensureInitialized
{
  v0 = CUPrintErrorCode();
  LogPrintF();
}

void *__38__DADeviceResolver__ensureInitialized__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[11])
  {
    return [result _evaluateEndpoints];
  }

  return result;
}

- (void)_evaluateEndpoints
{
  v3 = mach_absolute_time();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  endpoints = self->_endpoints;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__DADeviceResolver__evaluateEndpoints__block_invoke;
  v7[3] = &unk_278F57D30;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v12;
  v7[7] = v3;
  [(NSMutableDictionary *)endpoints enumerateKeysAndObjectsUsingBlock:v7];
  [(DADeviceResolver *)self _updateSelectedEndpoint:0];
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    [(NSMutableDictionary *)self->_endpoints count];
    v5 = *(v13 + 6);
    v6 = *(v9 + 6);
    mach_absolute_time();
    UpTicksToMicroseconds();
    LogPrintF();
  }

  if (*(v9 + 6))
  {
    [(CUCoalescer *)self->_coalescer trigger];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

void __38__DADeviceResolver__evaluateEndpoints__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if ((v7 - [v6 addTicks]) >= *(*(a1 + 32) + 16))
  {
    v8 = [v6 parentDevice];
    if (v8 && [v6 grouped])
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__1;
      v21 = __Block_byref_object_dispose__1;
      v22 = 0;
      v9 = *(*(a1 + 32) + 32);
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __38__DADeviceResolver__evaluateEndpoints__block_invoke_2;
      v14 = &unk_278F57D08;
      v10 = v6;
      v15 = v10;
      v16 = &v17;
      [v9 enumerateKeysAndObjectsUsingBlock:&v11];
      if (v18[5])
      {
        [*(a1 + 32) _groupEndpoint:v10 matchedEndpoint:{v11, v12, v13, v14}];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else if (!v8)
      {
        [*(a1 + 32) _reportDeviceWithSoloEndpoint:{v10, v11, v12, v13, v14}];
      }

      _Block_object_dispose(&v17, 8);
    }
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __38__DADeviceResolver__evaluateEndpoints__block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8 != v7 && [v8 sameDeviceAsEndpoint:v7])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)_groupEndpoint:(id)endpoint matchedEndpoint:(id)matchedEndpoint
{
  endpointCopy = endpoint;
  matchedEndpointCopy = matchedEndpoint;
  [endpointCopy mergeMissingInfoFromEndpoint:matchedEndpointCopy];
  [matchedEndpointCopy mergeMissingInfoFromEndpoint:endpointCopy];
  parentDevice = [matchedEndpointCopy parentDevice];
  if (parentDevice)
  {
    v9 = parentDevice;
    endpoints = [(DADevice *)parentDevice endpoints];
    v11 = [endpoints mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    uUIDString = v13;

    identifier = [endpointCopy identifier];
    if (identifier)
    {
      [uUIDString setObject:endpointCopy forKeyedSubscript:identifier];
    }

    [(DADevice *)v9 setEndpoints:uUIDString];
  }

  else
  {
    v9 = objc_alloc_init(DADevice);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [(DADevice *)v9 setIdentifier:uUIDString];
    [matchedEndpointCopy setParentDevice:v9];
    identifier = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifier2 = [endpointCopy identifier];
    if (identifier2)
    {
      [identifier setObject:endpointCopy forKeyedSubscript:identifier2];
    }

    identifier3 = [matchedEndpointCopy identifier];

    if (identifier3)
    {
      [identifier setObject:matchedEndpointCopy forKeyedSubscript:identifier3];
    }

    [(DADevice *)v9 setEndpoints:identifier];
    devices = self->_devices;
    if (!devices)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = self->_devices;
      self->_devices = v20;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:v9 forKeyedSubscript:uUIDString];
  }

  parentDevice2 = [endpointCopy parentDevice];
  v23 = parentDevice2;
  if (parentDevice2)
  {
    identifier4 = [parentDevice2 identifier];
    if (identifier4)
    {
      [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:identifier4];
    }

    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      [DADeviceResolver _groupEndpoint:matchedEndpoint:];
    }

    v25 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:41 device:v23];
    v26 = _Block_copy(self->_eventHandler);
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, v25);
    }
  }

  [endpointCopy setParentDevice:v9];
  [endpointCopy setGrouped:1];
  [matchedEndpointCopy setGrouped:1];
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v28 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:v9];
  v29 = _Block_copy(self->_eventHandler);
  v30 = v29;
  if (v29)
  {
    (*(v29 + 2))(v29, v28);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DADeviceResolver__groupEndpoint_matchedEndpoint___block_invoke;
  block[3] = &unk_278F57D58;
  v35 = endpointCopy;
  selfCopy = self;
  v37 = matchedEndpointCopy;
  v32 = matchedEndpointCopy;
  v33 = endpointCopy;
  dispatch_async(dispatchQueue, block);
}

void __51__DADeviceResolver__groupEndpoint_matchedEndpoint___block_invoke(uint64_t a1)
{
  v40[11] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) airplayDeviceID];
  v3 = &unk_285B528D0;
  v4 = &unk_285B528E8;
  if (!v2)
  {
    v3 = &unk_285B528E8;
  }

  v38 = v3;

  v5 = [*(a1 + 32) underlyingDADevice];
  v6 = [v5 url];

  if (v6)
  {
    v7 = [v5 url];
    v8 = [v7 absoluteString];
    v37 = [v8 length];

    v4 = &unk_285B528D0;
  }

  else
  {
    v37 = 0;
  }

  v9 = *(*(a1 + 40) + 64);
  if (v9)
  {
    v36 = [v9 copy];
  }

  else
  {
    v36 = @"NoBundleId";
  }

  v10 = [*(a1 + 32) parentDevice];
  v11 = [v10 protocolType];

  if (v11)
  {
    v12 = [v5 protocolType];
    v13 = [v12 identifier];
LABEL_16:

    v22 = &unk_285B528D0;
    goto LABEL_17;
  }

  v14 = [*(a1 + 32) underlyingDADevice];
  v15 = [v14 protocolType];
  v16 = [v15 identifier];

  if (v16)
  {
    v17 = *(a1 + 32);
LABEL_15:
    v12 = [v17 underlyingDADevice];
    v21 = [v12 protocolType];
    v13 = [v21 identifier];

    goto LABEL_16;
  }

  v18 = [*(a1 + 48) underlyingDADevice];
  v19 = [v18 protocolType];
  v20 = [v19 identifier];

  if (v20)
  {
    v17 = *(a1 + 48);
    goto LABEL_15;
  }

  v13 = @"-";
  v22 = &unk_285B528E8;
LABEL_17:
  v23 = [*(a1 + 32) bonjourFullName];

  if (v23)
  {
    v24 = v5;
    v34 = [*(a1 + 32) bonjourFullName];
  }

  else
  {
    v24 = v5;
    v34 = @"no-full-name";
  }

  v25 = MEMORY[0x277CCABB0];
  v26 = [*(a1 + 32) underlyingDADevice];
  v27 = [v25 numberWithBool:{objc_msgSend(v26, "supportsGrouping")}];

  v39[0] = @"BundleID";
  v39[1] = @"SupportsAirPlay";
  v40[0] = v36;
  v40[1] = v38;
  v39[2] = @"SupportsBonjour";
  v39[3] = @"SupportsSSDP";
  v40[2] = v22;
  v40[3] = v4;
  v40[4] = v13;
  v39[4] = @"BonjourServices";
  v39[5] = @"SSDPURLLength";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
  v40[5] = v28;
  v39[6] = @"SSDPProtocol";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "protocol")}];
  v40[6] = v29;
  v39[7] = @"DeviceFlags";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "flags")}];
  v40[7] = v30;
  v39[8] = @"DeviceType";
  v31 = DADeviceTypeToString([v24 type]);
  v40[8] = v31;
  v40[9] = v27;
  v39[9] = @"SupportsGrouping";
  v39[10] = @"ProtocolType";
  v40[10] = v13;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:11];

  [DADeviceAccessAnalytics sendAnalyticsInfo:v32 forEvent:@"com.apple.DeviceAccess.DeviceInfo" withDeviceIdentifier:v35];
  v33 = *MEMORY[0x277D85DE8];
}

void __50__DADeviceResolver__reportDeviceWithSoloEndpoint___block_invoke(uint64_t a1)
{
  v38[11] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) airplayDeviceID];
  v3 = &unk_285B528D0;
  v4 = &unk_285B528E8;
  if (!v2)
  {
    v3 = &unk_285B528E8;
  }

  v36 = v3;

  v5 = [*(a1 + 32) underlyingDADevice];
  v6 = [v5 url];

  if (v6)
  {
    v7 = [v5 url];
    v8 = [v7 absoluteString];
    v35 = [v8 length];

    v4 = &unk_285B528D0;
  }

  else
  {
    v35 = 0;
  }

  v9 = *(*(a1 + 40) + 64);
  if (v9)
  {
    v34 = [v9 copy];
  }

  else
  {
    v34 = @"NoBundleId";
  }

  v10 = [*(a1 + 32) parentDevice];
  v11 = [v10 protocolType];

  if (v11)
  {
    v12 = [v5 protocolType];
    v13 = [v12 identifier];
LABEL_13:

    v18 = &unk_285B528D0;
    goto LABEL_14;
  }

  v14 = [*(a1 + 32) underlyingDADevice];
  v15 = [v14 protocolType];
  v16 = [v15 identifier];

  if (v16)
  {
    v12 = [*(a1 + 32) underlyingDADevice];
    v17 = [v12 protocolType];
    v13 = [v17 identifier];

    goto LABEL_13;
  }

  v13 = @"-";
  v18 = &unk_285B528E8;
LABEL_14:
  v19 = [*(a1 + 32) name];

  if (v19)
  {
    v33 = @"no-name";
  }

  else
  {
    v33 = [*(a1 + 32) name];
  }

  v20 = [*(a1 + 32) bonjourFullName];

  v21 = v5;
  if (v20)
  {
    v32 = [*(a1 + 32) bonjourFullName];
  }

  else
  {
    v32 = @"no-full-name";
  }

  v22 = MEMORY[0x277CCABB0];
  v23 = [*(a1 + 32) underlyingDADevice];
  v24 = [v22 numberWithBool:{objc_msgSend(v23, "supportsGrouping")}];

  v37[0] = @"BundleID";
  v37[1] = @"SupportsAirPlay";
  v38[0] = v34;
  v38[1] = v36;
  v37[2] = @"SupportsBonjour";
  v37[3] = @"SupportsSSDP";
  v38[2] = v18;
  v38[3] = v4;
  v25 = v13;
  v38[4] = v13;
  v37[4] = @"BonjourServices";
  v37[5] = @"SSDPURLLength";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
  v38[5] = v26;
  v37[6] = @"SSDPProtocol";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "protocol")}];
  v38[6] = v27;
  v37[7] = @"DeviceFlags";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "flags")}];
  v38[7] = v28;
  v37[8] = @"DeviceType";
  v29 = DADeviceTypeToString([v21 type]);
  v38[8] = v29;
  v38[9] = v24;
  v37[9] = @"SupportsGrouping";
  v37[10] = @"ProtocolType";
  v38[10] = v25;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:11];

  [DADeviceAccessAnalytics sendAnalyticsInfo:v30 forEvent:@"com.apple.DeviceAccess.DeviceInfo" withDeviceIdentifier:v32];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_reportEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    [DADeviceResolver _reportEvent:];
  }

  v4 = _Block_copy(self->_eventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, eventCopy);
  }
}

- (void)_reportEventType:(int64_t)type
{
  v4 = [[DAEvent alloc] initWithEventType:type];
  [(DADeviceResolver *)self _reportEvent:v4];
}

- (void)_updateSelectedEndpoint:(id)endpoint
{
  v96 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  prefNameBasedSelect = self->_prefNameBasedSelect;
  v91 = prefNameBasedSelect;
  v48 = endpointCopy;
  selfCopy = self;
  if (endpointCopy && prefNameBasedSelect)
  {
    v6 = endpointCopy;
    endpoints = self->_endpoints;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __44__DADeviceResolver__updateSelectedEndpoint___block_invoke;
    v85[3] = &unk_278F57D08;
    v8 = v6;
    v86 = v8;
    v87 = &v88;
    [(NSMutableDictionary *)endpoints enumerateKeysAndObjectsUsingBlock:v85];
  }

  else if (!endpointCopy)
  {
    goto LABEL_40;
  }

  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    bundleID = v48;
    LogPrintF();
  }

  v9 = v48;
  protocolTypeString = [(NSString *)v9 protocolTypeString];
  array = [MEMORY[0x277CBEB18] array];
  p_selectedProtocolStr = &self->_selectedProtocolStr;
  if ([(NSString *)self->_selectedProtocolStr isEqualToString:protocolTypeString])
  {
    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v13 = self->_selectedEndpoints;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v81 objects:v95 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = *v82;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v82 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v81 + 1) + 8 * i);
          if (v15)
          {
            persistentDictionaryRepresentation = [*(*(&v81 + 1) + 8 * i) persistentDictionaryRepresentation];
            [array addObject:persistentDictionaryRepresentation];
          }

          else if ([*(*(&v81 + 1) + 8 * i) matchesSelectedEndpoint:v9 allowName:*(v89 + 24)])
          {
            v15 = v18;
          }

          else
          {
            persistentDictionaryRepresentation2 = [v18 persistentDictionaryRepresentation];
            [array addObject:persistentDictionaryRepresentation2];

            v15 = 0;
          }
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v81 objects:v95 count:16];
      }

      while (v14);

      if (v15)
      {
        if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
          [(NSMutableArray *)selfCopy->_selectedEndpoints removeObject:v15, v15, v9];
        }

        else
        {
          [(NSMutableArray *)selfCopy->_selectedEndpoints removeObject:v15, bundleID, v47];
        }
      }
    }

    else
    {

      v15 = 0;
    }

    [(NSMutableArray *)selfCopy->_selectedEndpoints addObject:v9, bundleID];
    persistentDictionaryRepresentation3 = [(NSString *)v9 persistentDictionaryRepresentation];
    [array addObject:persistentDictionaryRepresentation3];
  }

  else
  {
    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      v45 = *p_selectedProtocolStr;
      v47 = protocolTypeString;
      LogPrintF();
    }

    objc_storeStrong(p_selectedProtocolStr, protocolTypeString);
    [(NSMutableArray *)self->_selectedEndpoints removeAllObjects];
    persistentDictionaryRepresentation3 = [(NSString *)v9 persistentDictionaryRepresentation];
    [array addObject:persistentDictionaryRepresentation3];
    v15 = 0;
  }

  bundleID = selfCopy->_bundleID;
  NSPrintF();
  CFPrefs_SetValue();

  self = selfCopy;
LABEL_40:
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__1;
  v79 = __Block_byref_object_dispose__1;
  v80 = [MEMORY[0x277CBEB18] arrayWithArray:{self->_selectedEndpoints, bundleID, v47}];
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__1;
  v73 = __Block_byref_object_dispose__1;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__1;
  v67 = __Block_byref_object_dispose__1;
  v68 = 0;
  v22 = self->_endpoints;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __44__DADeviceResolver__updateSelectedEndpoint___block_invoke_2;
  v62[3] = &unk_278F57D80;
  v62[4] = self;
  v62[5] = &v88;
  v62[6] = &v75;
  v62[7] = &v63;
  v62[8] = &v69;
  [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v62];
  v23 = _Block_copy(self->_eventHandler);
  if (v23)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v24 = v70[5];
    v25 = [v24 countByEnumeratingWithState:&v58 objects:v94 count:16];
    if (v25)
    {
      v26 = *v59;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v59 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v58 + 1) + 8 * j);
          if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
          {
            v46 = v28;
            LogPrintF();
          }

          parentDevice = [v28 parentDevice];
          v30 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:parentDevice];
          v23[2](v23, v30);
        }

        v25 = [v24 countByEnumeratingWithState:&v58 objects:v94 count:16];
      }

      while (v25);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v31 = v64[5];
    v32 = [v31 countByEnumeratingWithState:&v54 objects:v93 count:16];
    if (v32)
    {
      v33 = *v55;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v54 + 1) + 8 * k);
          if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
          {
            v46 = v35;
            LogPrintF();
          }

          parentDevice2 = [v35 parentDevice];
          v37 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:parentDevice2];
          v23[2](v23, v37);
        }

        v32 = [v31 countByEnumeratingWithState:&v54 objects:v93 count:16];
      }

      while (v32);
    }
  }

  if (selfCopy->_selectedEndpoints && [v76[5] count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v76[5];
    v39 = [v38 countByEnumeratingWithState:&v50 objects:v92 count:16];
    if (v39)
    {
      v40 = *v51;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(v38);
          }

          if (gLogCategory_DADeviceResolver <= 30)
          {
            v42 = *(*(&v50 + 1) + 8 * m);
            if (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v50 objects:v92 count:16];
      }

      while (v39);
    }
  }

  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v88, 8);
  v43 = *MEMORY[0x277D85DE8];
}

void __44__DADeviceResolver__updateSelectedEndpoint___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = v7;
  if (*(a1 + 32) != v7)
  {
    v9 = [v7 parentDevice];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v8 protocolTypeString];
      LODWORD(v10) = [v10 isEqual:v11];

      if (v10)
      {
        v12 = [*(a1 + 32) name];
        v13 = [v8 name];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
        }
      }
    }
  }
}

void __44__DADeviceResolver__updateSelectedEndpoint___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 parentDevice];

  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = *(a1[4] + 48);
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if ([v4 matchesSelectedEndpoint:v11 allowName:{*(*(a1[5] + 8) + 24), v21}])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      [*(*(a1[6] + 8) + 40) removeObject:v11];

      if ([v4 selected])
      {
        goto LABEL_17;
      }

      [v4 setSelected:1];
      v15 = a1[7];
      v13 = a1 + 7;
      v12 = v15;
    }

    else
    {
LABEL_10:

      if (![v4 selected])
      {
        goto LABEL_17;
      }

      [v4 setSelected:0];
      v14 = a1[8];
      v13 = a1 + 8;
      v12 = v14;
    }

    v16 = *(*(v12 + 8) + 40);
    if (!v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = *(*v13 + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v16 = *(*(*v13 + 8) + 40);
    }

    [v16 addObject:{v4, v21}];
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_startResolvingEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  ipv4String = [endpointCopy ipv4String];
  if (![ipv4String length])
  {
    bonjourHostname = [endpointCopy bonjourHostname];
    uTF8String = [bonjourHostname UTF8String];

    if (uTF8String)
    {
      [(DADeviceResolver *)self _startResolvingHostname:uTF8String interfaceIndex:0 endpoint:endpointCopy];
    }

    else
    {
      bonjourFullName = [endpointCopy bonjourFullName];
      uTF8String2 = [bonjourFullName UTF8String];

      bonjourInterfaceIndex = [endpointCopy bonjourInterfaceIndex];
      if (uTF8String2)
      {
        [(DADeviceResolver *)self _startResolvingBonjourFullName:uTF8String2 interfaceIndex:bonjourInterfaceIndex endpoint:endpointCopy];
      }

      else
      {
        bonjourName = [endpointCopy bonjourName];
        uTF8String3 = [bonjourName UTF8String];

        bonjourType = [endpointCopy bonjourType];
        uTF8String4 = [bonjourType UTF8String];

        if (uTF8String3 && uTF8String4)
        {
          [(DADeviceResolver *)self _startResolvingBonjourName:uTF8String3 type:uTF8String4 interfaceIndex:bonjourInterfaceIndex endpoint:endpointCopy];
        }

        else if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
        {
          [DADeviceResolver _startResolvingEndpoint:];
        }
      }
    }
  }
}

- (void)_startResolvingBonjourFullName:(const char *)name interfaceIndex:(unsigned int)index endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    [DADeviceResolver _startResolvingBonjourFullName:endpointCopy interfaceIndex:? endpoint:?];
  }

  v9 = objc_alloc_init(DADeviceResolveOperation);
  [(DADeviceResolveOperation *)v9 setResolver:self];
  [(DADeviceResolveOperation *)v9 setEndpoint:endpointCopy];
  sdRef = self->_bonjourSharedService;
  if (DNSServiceQueryRecord(&sdRef, 0x404000u, index, name, 0x21u, 1u, _resolveSRVCallack, v9))
  {
    [DADeviceResolver _startResolvingBonjourFullName:interfaceIndex:endpoint:];
  }

  else
  {
    [(DADeviceResolveOperation *)v9 setSrvQuery:sdRef];
    [(NSMutableSet *)self->_resolveOperations addObject:v9];
  }
}

- (void)_startResolvingBonjourName:(const char *)name type:(const char *)type interfaceIndex:(unsigned int)index endpoint:(id)endpoint
{
  v16 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    identifier = [endpointCopy identifier];
    LogPrintF();
  }

  if (!DNSServiceConstructFullName(fullName, name, type, "local."))
  {
    v11 = objc_alloc_init(DADeviceResolveOperation);
    [(DADeviceResolveOperation *)v11 setResolver:self];
    [(DADeviceResolveOperation *)v11 setEndpoint:endpointCopy];
    sdRef = self->_bonjourSharedService;
    if (DNSServiceQueryRecord(&sdRef, 0x404000u, index, fullName, 0x21u, 1u, _resolveSRVCallack, v11))
    {
      [DADeviceResolver _startResolvingBonjourName:type:interfaceIndex:endpoint:];
    }

    else
    {
      [(DADeviceResolveOperation *)v11 setSrvQuery:sdRef];
      [(NSMutableSet *)self->_resolveOperations addObject:v11];
    }

    goto LABEL_8;
  }

  if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    v11 = CUPrintErrorCode();
    LogPrintF();
LABEL_8:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startResolvingHostname:(const char *)hostname interfaceIndex:(unsigned int)index endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    [DADeviceResolver _startResolvingHostname:endpointCopy interfaceIndex:? endpoint:?];
  }

  v9 = objc_alloc_init(DADeviceResolveOperation);
  [(DADeviceResolveOperation *)v9 setResolver:self];
  [(DADeviceResolveOperation *)v9 setEndpoint:endpointCopy];
  sdRef = self->_bonjourSharedService;
  if (DNSServiceGetAddrInfo(&sdRef, 0x4000u, index, 1u, hostname, _resolveHostnameCallback, v9))
  {
    [DADeviceResolver _startResolvingHostname:interfaceIndex:endpoint:];
  }

  else
  {
    [(DADeviceResolveOperation *)v9 setAddrInfoQuery:sdRef];
    [(NSMutableSet *)self->_resolveOperations addObject:v9];
  }
}

- (void)_reportDeviceWithSoloEndpoint:(id)endpoint
{
  v22[1] = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  identifier = [endpointCopy identifier];
  if (identifier)
  {
    v6 = objc_alloc_init(DADevice);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [(DADevice *)v6 setIdentifier:uUIDString];
    v21 = identifier;
    v22[0] = endpointCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(DADevice *)v6 setEndpoints:v9];

    [endpointCopy setParentDevice:v6];
    devices = self->_devices;
    if (!devices)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = self->_devices;
      self->_devices = v11;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:v6 forKeyedSubscript:uUIDString];
    if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:v6];
    v14 = _Block_copy(self->_eventHandler);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v13);
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DADeviceResolver__reportDeviceWithSoloEndpoint___block_invoke;
    block[3] = &unk_278F57CB8;
    v19 = endpointCopy;
    selfCopy = self;
    dispatch_async(dispatchQueue, block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_addEndpoint:.cold.2()
{
  if (gLogCategory_DADeviceResolver <= 90)
  {
    if (gLogCategory_DADeviceResolver != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_removeEndpoint:.cold.3()
{
  if (gLogCategory_DADeviceResolver <= 90)
  {
    if (gLogCategory_DADeviceResolver != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (void)_startResolvingBonjourFullName:(void *)a1 interfaceIndex:endpoint:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)_startResolvingBonjourFullName:interfaceIndex:endpoint:.cold.2()
{
  if (gLogCategory_DADeviceResolver <= 90)
  {
    OUTLINED_FUNCTION_1_0();
    if (!v0 || _LogCategory_Initialize())
    {
      v1 = CUPrintErrorCode();
      LogPrintF();
    }
  }
}

- (void)_startResolvingBonjourName:type:interfaceIndex:endpoint:.cold.1()
{
  if (gLogCategory_DADeviceResolver <= 90 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    v0 = CUPrintErrorCode();
    LogPrintF();
  }
}

- (void)_startResolvingHostname:(void *)a1 interfaceIndex:endpoint:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)_startResolvingHostname:interfaceIndex:endpoint:.cold.2()
{
  if (gLogCategory_DADeviceResolver <= 90)
  {
    OUTLINED_FUNCTION_1_0();
    if (!v0 || _LogCategory_Initialize())
    {
      v1 = CUPrintErrorCode();
      LogPrintF();
    }
  }
}

@end