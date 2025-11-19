@interface DASimulatedDeviceDiscovery
- (DASimulatedDeviceDiscovery)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_activate;
- (void)_bluetoothEnsureStarted;
- (void)_bluetoothEnsureStopped;
- (void)_bluetoothFoundDevice:(id)a3;
- (void)_bluetoothLostDevice:(id)a3;
- (void)_bonjourEnsureStarted;
- (void)_bonjourEnsureStopped;
- (void)_bonjourFoundDevice:(id)a3;
- (void)_bonjourLostDevice:(id)a3;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation DASimulatedDeviceDiscovery

- (DASimulatedDeviceDiscovery)init
{
  v6.receiver = self;
  v6.super_class = DASimulatedDeviceDiscovery;
  v2 = [(DASimulatedDeviceDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  objc_opt_class();
  deviceBonjourServiceType = self->_deviceBonjourServiceType;
  NSAppendPrintF();

  return 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DASimulatedDeviceDiscovery_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__DASimulatedDeviceDiscovery_activate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    CFStringGetTypeID();
    v3 = CFPrefs_CopyTypedValue();
    v4 = *(*v2 + 40);
    *(*v2 + 40) = v3;

    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      __38__DASimulatedDeviceDiscovery_activate__block_invoke_cold_1(v2);
    }

    v5 = *v2;

    return [v5 _activate];
  }

  return result;
}

- (void)_activate
{
  [(DASimulatedDeviceDiscovery *)self _bluetoothEnsureStarted];

  [(DASimulatedDeviceDiscovery *)self _bonjourEnsureStarted];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DASimulatedDeviceDiscovery_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __40__DASimulatedDeviceDiscovery_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      __40__DASimulatedDeviceDiscovery_invalidate__block_invoke_cold_1(v2);
    }

    [*v2 _bluetoothEnsureStopped];
    [*v2 _bonjourEnsureStopped];
    v3 = *v2;

    return [v3 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceDiscovery _invalidated];
    }
  }
}

- (void)_bluetoothEnsureStarted
{
  if (!self->_bluetoothScanner)
  {
    v18 = v5;
    v19 = v4;
    v20 = v2;
    v21 = v3;
    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceDiscovery _bluetoothEnsureStarted];
    }

    v7 = objc_alloc_init(getCBDiscoveryClass());
    bluetoothScanner = self->_bluetoothScanner;
    self->_bluetoothScanner = v7;

    [(CBDiscovery *)v7 setDiscoveryFlags:0x1000000800];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke;
    v15[3] = &unk_278F582C0;
    v9 = v7;
    v16 = v9;
    v17 = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke_2;
    v12[3] = &unk_278F582C0;
    v13 = v9;
    v14 = self;
    v10 = v9;
    [(CBDiscovery *)v10 setDeviceLostHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke_3;
    v11[3] = &unk_278F580C0;
    v11[4] = self;
    [(CBDiscovery *)v10 activateWithCompletion:v11];
  }
}

void *__53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bluetoothFoundDevice:a2];
  }

  return result;
}

void *__53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bluetoothFoundDevice:a2];
  }

  return result;
}

void __53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_DASimulatedDeviceDiscovery <= 90 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      __53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke_3_cold_1();
    }

    [*(*(a1 + 32) + 16) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v3 = v6;
  }
}

- (void)_bluetoothEnsureStopped
{
  if (self->_bluetoothScanner)
  {
    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceDiscovery _bluetoothEnsureStopped];
    }

    [(CBDiscovery *)self->_bluetoothScanner invalidate];
    bluetoothScanner = self->_bluetoothScanner;
    self->_bluetoothScanner = 0;
  }
}

- (void)_bluetoothFoundDevice:(id)a3
{
  v14 = a3;
  v4 = objc_alloc_init(DADevice);
  v5 = [v14 identifier];
  [(DADevice *)v4 setIdentifier:v5];

  v6 = [v14 name];
  if (v6)
  {
    [(DADevice *)v4 setName:v6];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v14 identifier];
    v9 = CUPrintNSObject();
    v10 = [v7 initWithFormat:@"Unknown device %@", v9];
    [(DADevice *)v4 setName:v10];
  }

  v11 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:v4];
  if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = _Block_copy(self->_eventHandler);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v11);
  }
}

- (void)_bluetoothLostDevice:(id)a3
{
  v14 = a3;
  v4 = objc_alloc_init(DADevice);
  v5 = [v14 identifier];
  [(DADevice *)v4 setIdentifier:v5];

  v6 = [v14 name];
  if (v6)
  {
    [(DADevice *)v4 setName:v6];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v14 identifier];
    v9 = CUPrintNSObject();
    v10 = [v7 initWithFormat:@"Unknown device %@", v9];
    [(DADevice *)v4 setName:v10];
  }

  v11 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:41 device:v4];
  if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = _Block_copy(self->_eventHandler);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v11);
  }
}

- (void)_bonjourEnsureStarted
{
  if (!self->_bonjourBrowser)
  {
    v13[6] = v5;
    v13[7] = v4;
    v13[12] = v2;
    v13[13] = v3;
    v7 = objc_alloc_init(MEMORY[0x277D02848]);
    bonjourBrowser = self->_bonjourBrowser;
    self->_bonjourBrowser = v7;

    [(CUBonjourBrowser *)v7 setChangeFlags:0xFFFFFFFFLL];
    [(CUBonjourBrowser *)v7 setDispatchQueue:self->_dispatchQueue];
    [(CUBonjourBrowser *)v7 setDomain:@"local."];
    v9 = self->_deviceBonjourServiceType;
    if (!v9)
    {
      CFStringGetTypeID();
      v9 = CFPrefs_CopyTypedValue();
      if (!v9)
      {
        v9 = @"_deviceaccess._udp";
      }
    }

    v10 = v9;
    [(CUBonjourBrowser *)v7 setServiceType:v9];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__DASimulatedDeviceDiscovery__bonjourEnsureStarted__block_invoke;
    v13[3] = &unk_278F582E8;
    v13[4] = v7;
    v13[5] = self;
    [(CUBonjourBrowser *)v7 setDeviceFoundHandler:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__DASimulatedDeviceDiscovery__bonjourEnsureStarted__block_invoke_2;
    v12[3] = &unk_278F582E8;
    v12[4] = v7;
    v12[5] = self;
    [(CUBonjourBrowser *)v7 setDeviceLostHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__DASimulatedDeviceDiscovery__bonjourEnsureStarted__block_invoke_3;
    v11[3] = &unk_278F58310;
    v11[4] = v7;
    v11[5] = self;
    [(CUBonjourBrowser *)v7 setDeviceChangedHandler:v11];
    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceDiscovery _bonjourEnsureStarted];
    }

    [(CUBonjourBrowser *)v7 activate];
  }
}

void *__51__DASimulatedDeviceDiscovery__bonjourEnsureStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bonjourFoundDevice:a2];
  }

  return result;
}

void *__51__DASimulatedDeviceDiscovery__bonjourEnsureStarted__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bonjourLostDevice:a2];
  }

  return result;
}

void *__51__DASimulatedDeviceDiscovery__bonjourEnsureStarted__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bonjourFoundDevice:a2];
  }

  return result;
}

- (void)_bonjourEnsureStopped
{
  if (self->_bonjourBrowser)
  {
    if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceDiscovery _bonjourEnsureStopped];
    }

    [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
    bonjourBrowser = self->_bonjourBrowser;
    self->_bonjourBrowser = 0;
  }
}

- (void)_bonjourFoundDevice:(id)a3
{
  v23 = a3;
  v4 = objc_alloc_init(DADevice);
  v5 = [v23 identifier];
  v6 = [v5 UUIDString];
  [(DADevice *)v4 setIdentifier:v6];

  nameTXTKey = self->_nameTXTKey;
  if (!nameTXTKey || (v8 = nameTXTKey, [v23 txtDictionary], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v8), v10 = objc_claimAutoreleasedReturnValue(), v8, v9, !v10))
  {
    v10 = [v23 name];
  }

  [(DADevice *)v4 setName:v10];
  v11 = [v23 txtDictionary];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:0 error:0];
    [(DADevice *)v4 setTxtRecordData:v12];
  }

  [(DADevice *)v4 setProtocolType:*MEMORY[0x277CE1F30]];
  v13 = [v23 name];
  v14 = [v13 UTF8String];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = "?";
  }

  v16 = [(CUBonjourBrowser *)self->_bonjourBrowser serviceType];
  v17 = [v16 UTF8String];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = "_fake._tcp";
  }

  bonjour_service = nw_endpoint_create_bonjour_service(v15, v18, "local");
  [(DADevice *)v4 setNetworkEndpoint:bonjour_service];

  v20 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:v4];
  if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v21 = _Block_copy(self->_eventHandler);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21, v20);
  }
}

- (void)_bonjourLostDevice:(id)a3
{
  v13 = a3;
  v4 = objc_alloc_init(DADevice);
  v5 = [v13 identifier];
  v6 = [v5 UUIDString];
  [(DADevice *)v4 setIdentifier:v6];

  v7 = [v13 name];
  [(DADevice *)v4 setName:v7];

  v8 = [v13 txtDictionary];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:0 error:0];
    [(DADevice *)v4 setTxtRecordData:v9];
  }

  v10 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:41 device:v4];
  if (gLogCategory_DASimulatedDeviceDiscovery <= 30 && (gLogCategory_DASimulatedDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = _Block_copy(self->_eventHandler);
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v10);
  }
}

void __53__DASimulatedDeviceDiscovery__bluetoothEnsureStarted__block_invoke_3_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

@end