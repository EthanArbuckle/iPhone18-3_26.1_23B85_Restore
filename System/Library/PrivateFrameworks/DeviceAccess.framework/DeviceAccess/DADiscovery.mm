@interface DADiscovery
- (BOOL)runningExtension;
- (DADiscovery)init;
- (DADiscovery)initWithConfiguration:(id)a3 error:(id *)a4;
- (DADiscovery)initWithConfigurations:(id)a3 error:(id *)a4;
- (DADiscovery)initWithXPCObject:(id)a3 error:(id *)a4;
- (NSArray)discoveredDevices;
- (id)_ensureXPCStarted;
- (id)_uuidFromExtension:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)_activateDirect;
- (void)_activateExtension:(id)a3;
- (void)_activateXPCCompleted:(id)a3;
- (void)_activateXPCStart:(BOOL)a3;
- (void)_findExtensionPoint:(id)a3 bundleID:(id)a4 entitlement:(id)a5 completion:(id)a6;
- (void)_getAuthorizedDevicesCompleted:(id)a3 completionHandler:(id)a4;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportASKEvent:(id)a3;
- (void)_reportEvent:(id)a3;
- (void)_reportEventType:(int64_t)a3;
- (void)_startExtensions:(id)a3 bundleID:(id)a4 entitlement:(id)a5 completion:(id)a6;
- (void)_stopExtensons;
- (void)_updateNEPolicy:(id)a3 remove:(BOOL)a4;
- (void)_xpcReceivedDAEvent:(id)a3;
- (void)_xpcReceivedDeviceEvent:(id)a3;
- (void)_xpcReceivedMessage:(id)a3;
- (void)activate;
- (void)encodeWithXPCObject:(id)a3;
- (void)finishMigration;
- (void)getAuthorizedDevices:(id)a3;
- (void)invalidate;
- (void)invalidateWithReason:(unint64_t)a3;
- (void)migrateDevices;
- (void)modifyDeviceWithIdentifier:(id)a3 settings:(id)a4 completionHandler:(id)a5;
- (void)reportDeviceChanged:(id)a3 appID:(id)a4;
- (void)respondToBluetoothPairingRequest:(id)a3 completionHandler:(id)a4;
- (void)respondToWiFiAwarePairingRequest:(id)a3 completionHandler:(id)a4;
- (void)runOtherDiscovery;
- (void)setDeviceAppAccessInfo:(id)a3 device:(id)a4 completionHandler:(id)a5;
- (void)setState:(int64_t)a3 device:(id)a4 simulateApp:(BOOL)a5 completionHandler:(id)a6;
- (void)xpcReceivedMessage:(id)a3;
@end

@implementation DADiscovery

- (DADiscovery)init
{
  v5.receiver = self;
  v5.super_class = DADiscovery;
  v2 = [(DADiscovery *)&v5 init];
  if (v2)
  {
    v2->_clientID = CUXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v2->_lock._os_unfair_lock_opaque = 0;
    v3 = v2;
  }

  return v2;
}

- (DADiscovery)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = [(DADiscovery *)self init];
  if (v14)
  {
    v15 = [v6 copy];
    configuration = v14->_configuration;
    v14->_configuration = v15;

    v17 = v14;
  }

  else
  {
    [(DADiscovery *)a4 initWithConfiguration:v7 error:v8, v9, v10, v11, v12, v13];
  }

  return v14;
}

- (DADiscovery)initWithConfigurations:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = [(DADiscovery *)self init];
  if (v14)
  {
    v15 = [v6 copy];
    configurations = v14->_configurations;
    v14->_configurations = v15;

    v17 = v14;
  }

  else
  {
    [(DADiscovery *)a4 initWithConfiguration:v7 error:v8, v9, v10, v11, v12, v13];
  }

  return v14;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_bundleID UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "bndI", v5);
  }

  deviceOTANameToBroadcast = self->_deviceOTANameToBroadcast;
  xdict = v4;
  v7 = [(NSString *)deviceOTANameToBroadcast UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(xdict, "ldNm", v7);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  configuration = self->_configuration;
  CUXPCEncodeObject();
  configurations = self->_configurations;
  CUXPCEncodeNSArrayOfObjects();
  xpc_dictionary_set_uint64(xdict, "dsFs", self->_flags);
}

- (id)descriptionWithLevel:(int)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v4 = objc_opt_class();
  bundleID = self->_bundleID;
  deviceOTANameToBroadcast = self->_deviceOTANameToBroadcast;
  v21 = v4;
  clientID = self->_clientID;
  NSAppendPrintF();
  v5 = 0;
  v6 = v5;
  extensions = self->_extensions;
  if (extensions)
  {
    v32 = v5;
    v8 = extensions;
    [(NSMutableSet *)v8 count:v21];
    NSAppendPrintF();
    v9 = v32;

    v6 = v9;
  }

  configuration = self->_configuration;
  if (configuration)
  {
    v31 = v6;
    v22 = configuration;
    NSAppendPrintF();
    v11 = v6;

    v6 = v11;
  }

  v12 = self->_configurations;
  v13 = v12;
  if (v12)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [(NSArray *)v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        v18 = v6;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v23 = *(*(&v27 + 1) + 8 * v17);
          NSAppendPrintF();
          v6 = v18;

          ++v17;
          v18 = v6;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v34 count:16, v23];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)discoveredDevices
{
  os_unfair_lock_lock(&self->_lock);
  deviceMap = self->_deviceMap;
  if (deviceMap)
  {
    v4 = [(NSMutableDictionary *)deviceMap allValues];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)runningExtension
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_extensions;
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(NSMutableSet *)v3 count];

  return v4 != 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__DADiscovery_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __23__DADiscovery_activate__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __23__DADiscovery_activate__block_invoke_cold_1(v1);
    }
  }

  v2 = *(v1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    v3 = *(v1 + 32);
    if (v3[56] == 1)
    {

      return [v3 _activateDirect];
    }

    else
    {

      return [v3 _activateXPCStart:0];
    }
  }

  return result;
}

- (void)_activateDirect
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery _activateDirect];
  }

  v3 = [(DADiscoveryConfiguration *)self->_configuration bundleID];
  bundleID = v3;
  if (!v3)
  {
    bundleID = self->_bundleID;
  }

  v5 = bundleID;

  self->_activateTimeInterval = CFAbsoluteTimeGetCurrent();
  if (v5)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __30__DADiscovery__activateDirect__block_invoke;
    v17[3] = &unk_278F57E20;
    v17[4] = self;
    [(DADiscovery *)self _findExtensionPoint:@"com.apple.discovery-extension" bundleID:v5 entitlement:@"com.apple.developer.media-device-discovery-extension" completion:v17];
    if ((self->_flags & 4) != 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __30__DADiscovery__activateDirect__block_invoke_2;
      v15[3] = &unk_278F57E48;
      v15[4] = self;
      v16 = v5;
      [(DADiscovery *)self _findExtensionPoint:@"com.apple.accessory-setup-extension" bundleID:v16 entitlement:@"com.apple.developer.accessory-setup-discovery-extension" completion:v15];
    }

    else
    {
      [(DADiscovery *)self runOtherDiscovery];
    }
  }

  else
  {
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery _activateDirect];
    }

    v12 = DAErrorF(350001, "Bundle does not exist", v6, v7, v8, v9, v10, v11, v14);
    v13 = [[DAEvent alloc] initWithEventType:10 error:v12];
    [(DADiscovery *)self _reportEvent:v13];
  }
}

void __30__DADiscovery__activateDirect__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _activateExtension:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __30__DADiscovery__activateDirect__block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 32) _activateExtension:*(*(&v19 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    goto LABEL_9;
  }

  v16 = *(a1 + 32);
  if (!v16[11] && !v16[12])
  {
    v10 = DAErrorF(350001, "Extension or configurations not available on %@", v4, v5, v6, v7, v8, v9, *(a1 + 40));
    v17 = *(a1 + 32);
    v18 = [[DAEvent alloc] initWithEventType:32 error:v10];
    [v17 _reportEvent:v18];

LABEL_9:
    goto LABEL_10;
  }

  if (([v16 flags] & 0x10) != 0)
  {
    [gDADaemonServer runUpgradeWithDiscovery:*(a1 + 32)];
  }

  else if (([*(a1 + 32) flags] & 8) != 0)
  {
    [gDADaemonServer runMigrationWithDiscovery:*(a1 + 32) fromPostOnboarding:0];
  }

  else
  {
    [gDADaemonServer runSystemDiscovery];
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)runOtherDiscovery
{
  v3 = [(DADiscoveryConfiguration *)self->_configuration bundleID];
  bundleID = v3;
  if (!v3)
  {
    bundleID = self->_bundleID;
  }

  v14 = bundleID;

  v11 = v14;
  if ((self->_flags & 0x20) != 0)
  {
    if (self->_configuration || self->_configurations)
    {
      [gDADaemonServer runSystemDiscovery];
    }

    else
    {
      v12 = DAErrorF(350001, "Device discovery configurations not provided for %@", v5, v6, v7, v8, v9, v10, v14);
      v13 = [[DAEvent alloc] initWithEventType:32 error:v12];
      [(DADiscovery *)self _reportEvent:v13];
    }

    v11 = v14;
  }
}

- (void)migrateDevices
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DADiscovery_migrateDevices__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__DADiscovery_migrateDevices__block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __29__DADiscovery_migrateDevices__block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);

  return [v2 finishMigration];
}

- (void)finishMigration
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery finishMigration];
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  [(DADiscovery *)self encodeWithXPCObject:xdict];
  xpc_dictionary_set_string(xdict, "mTyp", "DscM");
  v3 = [(DADiscovery *)self _ensureXPCStarted];
  xpc_connection_send_message_with_reply(v3, xdict, self->_dispatchQueue, &__block_literal_global);
}

uint64_t __30__DADiscovery_finishMigration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_DADiscovery <= 30)
  {
    v5 = v2;
    if (gLogCategory_DADiscovery != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __30__DADiscovery_finishMigration__block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_activateExtension:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DADiscoveryExtension);
  [(DADiscoveryExtension *)v5 setDispatchQueue:self->_dispatchQueue];
  [(DADiscoveryExtension *)v5 setEkExtension:v4];

  [(DADiscoveryExtension *)v5 setParent:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__DADiscovery__activateExtension___block_invoke;
  v10[3] = &unk_278F57CB8;
  v10[4] = self;
  v10[5] = v5;
  [(DADiscoveryExtension *)v5 setInvalidationHandler:v10];
  extensions = self->_extensions;
  if (!extensions)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->_extensions;
    self->_extensions = v7;

    extensions = self->_extensions;
  }

  [(NSMutableSet *)extensions addObject:v5];
  v9 = [(DADiscovery *)self _uuidFromExtension:v5];
  if (v9)
  {
    [(DADiscovery *)self _updateNEPolicy:v9 remove:0];
  }

  [(DADiscoveryExtension *)v5 activate];
}

uint64_t __34__DADiscovery__activateExtension___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _invalidated];
}

- (void)_activateXPCStart:(BOOL)a3
{
  if (a3)
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      [DADiscovery _activateXPCStart:];
    }
  }

  else if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  [(DADiscovery *)self encodeWithXPCObject:v4];
  xpc_dictionary_set_string(v4, "mTyp", "DscA");
  v5 = [(DADiscovery *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__DADiscovery__activateXPCStart___block_invoke;
  handler[3] = &unk_278F57E90;
  handler[4] = self;
  xpc_connection_send_message_with_reply(v5, v4, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  v39 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__DADiscovery__activateXPCCompleted___block_invoke;
  aBlock[3] = &unk_278F57EB8;
  aBlock[4] = self;
  aBlock[5] = &v34;
  v5 = _Block_copy(aBlock);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v35[5];
  v35[5] = v6;

  if (!v35[5])
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v23 = self;
      LogPrintF();
    }

    v32 = 0;
    if (![(DADiscoveryConfiguration *)self->_configuration presenceOnly])
    {
      objc_opt_class();
      CUXPCDecodeNSArrayOfClass();
    }

    if ([v32 count])
    {
      os_unfair_lock_lock(&self->_lock);
      if (!self->_deviceMap)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        deviceMap = self->_deviceMap;
        self->_deviceMap = v8;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v32;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v11)
      {
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [v14 identifier];
            if (v15)
            {
              [(NSMutableDictionary *)self->_deviceMap setObject:v14 forKeyedSubscript:v15];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v11);
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    [(DADiscovery *)self _reportEventType:10];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v32;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v40 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:*(*(&v24 + 1) + 8 * j)];
          [(DADiscovery *)self _reportEvent:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v40 count:16];
      }

      while (v17);
    }

    if (xpc_dictionary_get_BOOL(v4, "dvPr"))
    {
      v21 = [[DAEventDevicesPresent alloc] initWithPresent:1 devicesMigrated:0];
      [(DADiscovery *)self _reportEvent:v21];
    }
  }

  v5[2](v5);

  _Block_object_dispose(&v34, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __37__DADiscovery__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  if (gLogCategory_DADiscovery <= 90)
  {
    if (gLogCategory_DADiscovery == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v4 = *(*(*(a1 + 40) + 8) + 40);
    }

    v2 = *(a1 + 32);
    v5 = CUPrintNSError();
    LogPrintF();
  }

LABEL_7:
  v3 = *(a1 + 32);
  v6 = [[DAEvent alloc] initWithEventType:10 error:*(*(*(a1 + 40) + 8) + 40)];
  [v3 _reportEvent:v6];
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = self->_xpcListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__DADiscovery__ensureXPCStarted__block_invoke;
    handler[3] = &unk_278F57E90;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    v5 = mach_service;
  }

  return v5;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    v7 = v2;
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery _interrupted];
    }

    [(DADiscovery *)self _reportEventType:60, v3, v7, v4];

    [(DADiscovery *)self _activateXPCStart:1];
  }
}

- (void)invalidate
{
  [gDADaemonServer runSystemDiscovery];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DADiscovery_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__DADiscovery_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      __25__DADiscovery_invalidate__block_invoke_cold_1(v2);
    }

    v3 = *(*v2 + 48);
    if (v3)
    {
      xpc_connection_cancel(v3);
    }

    [*v2 _stopExtensons];
    v4 = *v2;

    return [v4 _invalidated];
  }

  return result;
}

- (void)invalidateWithReason:(unint64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__DADiscovery_invalidateWithReason___block_invoke;
  v4[3] = &unk_278F57EE0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void __36__DADiscovery_invalidateWithReason___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    if (gLogCategory_DADiscovery <= 50 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      __36__DADiscovery_invalidateWithReason___block_invoke_cold_1(a1);
    }

    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "mTyp", "DsSp");
    v3 = *(a1 + 40);
    if (v3)
    {
      xpc_dictionary_set_uint64(v2, "DSpRn", v3);
    }

    v4 = [*(a1 + 32) _ensureXPCStarted];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__DADiscovery_invalidateWithReason___block_invoke_2;
    handler[3] = &unk_278F57E90;
    handler[4] = v5;
    xpc_connection_send_message_with_reply(v4, v2, v6, handler);
  }
}

void __36__DADiscovery_invalidateWithReason___block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __36__DADiscovery_invalidateWithReason___block_invoke_2_cold_1();
  }

  [*(a1 + 32) invalidate];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableSet *)self->_extensions count]&& !self->_xpcCnx)
  {
    [(DADiscovery *)self _reportEventType:20];
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery _invalidated];
    }
  }
}

- (void)_reportEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery _reportEvent:];
  }

  v4 = _Block_copy(self->_eventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)_reportEventType:(int64_t)a3
{
  v4 = [[DAEvent alloc] initWithEventType:a3];
  [(DADiscovery *)self _reportEvent:v4];
}

- (void)getAuthorizedDevices:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__DADiscovery_getAuthorizedDevices___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__DADiscovery_getAuthorizedDevices___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "GADv");
  v3 = objc_alloc_init(DASession);
  v4 = [*(*(a1 + 32) + 88) bundleID];
  v5 = v4;
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 120);
  }

  [(DASession *)v3 setBundleID:v5];

  [(DASession *)v3 setClientID:*(*(a1 + 32) + 60)];
  CUXPCEncodeObject();
  v6 = [*(a1 + 32) _ensureXPCStarted];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__DADiscovery_getAuthorizedDevices___block_invoke_2;
  v10[3] = &unk_278F57F08;
  v10[4] = v8;
  v11 = v7;
  xpc_connection_send_message_with_reply(v6, v2, v9, v10);
}

- (void)_getAuthorizedDevicesCompleted:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__DADiscovery__getAuthorizedDevicesCompleted_completionHandler___block_invoke;
  aBlock[3] = &unk_278F57F30;
  v14 = &v15;
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v16[5];
  v16[5] = v9;

  if (!v16[5])
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v11 = CUPrintNSObjectOneLine();
      LogPrintF();
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v8[2](v8);

  _Block_object_dispose(&v15, 8);
}

uint64_t __64__DADiscovery__getAuthorizedDevicesCompleted_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory_DADiscovery <= 90)
  {
    if (gLogCategory_DADiscovery == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 40);
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(*(v2 + 8) + 40);
    }

    v8 = CUPrintNSError();
    LogPrintF();

    v2 = *(a1 + 40);
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (void)respondToBluetoothPairingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke;
  block[3] = &unk_278F57F80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 50 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "BTPM");
  xpc_dictionary_set_string(v2, "mSTyp", "BTPRsp");
  v3 = *(a1 + 32);
  CUXPCEncodeObject();
  v4 = [*(a1 + 40) _ensureXPCStarted];
  v5 = *(*(a1 + 40) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v7 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

uint64_t __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  v6 = v2;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (v3 = _LogCategory_Initialize(), v2 = v6, v3))
    {
      __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2_cold_1();
      v2 = v6;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v6);
    v2 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v2);
}

- (void)respondToWiFiAwarePairingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke;
  block[3] = &unk_278F57F80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 50 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "wFPM");
  v3 = *(a1 + 32);
  CUXPCEncodeObject();
  v4 = [*(a1 + 40) _ensureXPCStarted];
  v5 = *(*(a1 + 40) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v7 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v4, v2, v5, handler);
}

uint64_t __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  v6 = v2;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (v3 = _LogCategory_Initialize(), v2 = v6, v3))
    {
      __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2_cold_1();
      v2 = v6;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v6);
    v2 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v2);
}

- (void)setState:(int64_t)a3 device:(id)a4 simulateApp:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a6;
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke;
  v14[3] = &unk_278F57FD0;
  v15 = v9;
  v16 = self;
  v17 = v10;
  v18 = a3;
  v12 = v10;
  v13 = v9;
  dispatch_async(dispatchQueue, v14);
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SDvS");
  v3 = *(a1 + 32);
  CUXPCEncodeObject();
  xpc_dictionary_set_int64(v2, "dvSt", *(a1 + 56));
  v4 = objc_alloc_init(DASession);
  v5 = [*(*(a1 + 40) + 88) bundleID];
  v6 = v5;
  if (!v5)
  {
    v6 = *(*(a1 + 40) + 120);
  }

  [(DASession *)v4 setBundleID:v6];

  [(DASession *)v4 setClientID:*(*(a1 + 40) + 60)];
  CUXPCEncodeObject();
  v7 = [*(a1 + 40) _ensureXPCStarted];
  v8 = *(*(a1 + 40) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57FA8;
  v9 = *(a1 + 32);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v13 = v9;
  v15 = v10;
  v14 = v11;
  xpc_connection_send_message_with_reply(v7, v2, v8, handler);
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setDeviceAppAccessInfo:(id)a3 device:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke;
  v15[3] = &unk_278F57FF8;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke(id *a1)
{
  if (([a1[4] flags] & 0x408) != 0)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "mTyp", "SAAi");
    v3 = objc_alloc_init(DASession);
    v4 = [*(a1[5] + 11) bundleID];
    v5 = v4;
    if (!v4)
    {
      v5 = *(a1[5] + 15);
    }

    [(DASession *)v3 setBundleID:v5];

    [(DASession *)v3 setClientID:*(a1[5] + 15)];
    CUXPCEncodeObject();
    v6 = a1[4];
    CUXPCEncodeObject();
    v7 = a1[6];
    CUXPCEncodeObject();
    v8 = [a1[5] _ensureXPCStarted];
    v9 = *(a1[5] + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2;
    v10[3] = &unk_278F57F08;
    v11 = a1[6];
    v12 = a1[7];
    xpc_connection_send_message_with_reply(v8, v2, v9, v10);
  }

  else
  {
    __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_cold_1(a1);
  }
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2_cold_1(a1, v2);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)modifyDeviceWithIdentifier:(id)a3 settings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke;
  v15[3] = &unk_278F58020;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

void __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = objc_alloc_init(DASession);
  v4 = [*(*(a1 + 32) + 88) bundleID];
  v5 = v4;
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 120);
  }

  [(DASession *)v3 setBundleID:v5];

  [(DASession *)v3 setClientID:*(*(a1 + 32) + 60)];
  xpc_dictionary_set_string(v2, "mTyp", "MdSt");
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = [v6 UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(v7, "id", v8);
  }

  v9 = *(a1 + 48);
  CUXPCEncodeObject();
  CUXPCEncodeObject();
  v10 = [*(a1 + 32) _ensureXPCStarted];
  v11 = *(*(a1 + 32) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v13 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v10, v7, v11, handler);
}

void __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

- (void)reportDeviceChanged:(id)a3 appID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:42 device:v5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_extensions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) reportEventToExtension:{v6, v13}];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)xpcReceivedMessage:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (gLogCategory_DADiscovery <= 9)
  {
    if (gLogCategory_DADiscovery != -1 || (v5 = _LogCategory_Initialize(), v4 = v15, v5))
    {
      [DADiscovery xpcReceivedMessage:];
      v4 = v15;
    }
  }

  if (MEMORY[0x24C1DC9E0](v4) == MEMORY[0x277D86468])
  {
    [(DADiscovery *)self _xpcReceivedMessage:v15];
  }

  else if (v15 == MEMORY[0x277D863F0])
  {
    [(DADiscovery *)self _interrupted];
  }

  else if (v15 == MEMORY[0x277D863F8])
  {
    if (!self->_invalidateCalled && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery xpcReceivedMessage:];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(DADiscovery *)self _invalidated];
  }

  else
  {
    v12 = DAErrorF(350000, "XPC event error", v6, v7, v8, v9, v10, v11, v14);
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery xpcReceivedMessage:];
    }
  }
}

- (void)_xpcReceivedMessage:(id)a3
{
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "mTyp");
  if (string)
  {
    if (!strcmp(string, "Evnt"))
    {
      [(DADiscovery *)self _xpcReceivedDAEvent:v5];
    }

    else if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery _xpcReceivedMessage:];
  }
}

- (void)_xpcReceivedDAEvent:(id)a3
{
  v4 = a3;
  if (MEMORY[0x24C1DC9E0]() != MEMORY[0x277D86468])
  {
    [DADiscovery _xpcReceivedDAEvent:];
    goto LABEL_14;
  }

  v9 = 0;
  v5 = [DAEvent allocInitWithXPCObject:v4 error:&v9];
  v6 = v9;
  if (v5)
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery _xpcReceivedDAEvent:];
    }

    if (([v5 eventType] - 40) > 2)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(DADiscovery *)self _xpcReceivedDeviceEvent:v5];
LABEL_10:
      v7 = _Block_copy(self->_eventHandler);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, v5);
      }

      goto LABEL_13;
    }

    [DADiscovery _xpcReceivedDAEvent:];
  }

  else
  {
    [DADiscovery _xpcReceivedDAEvent:?];
  }

LABEL_13:

LABEL_14:
}

- (void)_xpcReceivedDeviceEvent:(id)a3
{
  v9 = a3;
  v4 = [v9 device];
  v5 = [v4 identifier];
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_deviceMap)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      deviceMap = self->_deviceMap;
      self->_deviceMap = v6;
    }

    if ([v9 eventType] == 41)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4;
    }

    [(NSMutableDictionary *)self->_deviceMap setObject:v8 forKeyedSubscript:v5];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [DADiscovery _xpcReceivedDeviceEvent:];
  }
}

- (void)_findExtensionPoint:(id)a3 bundleID:(id)a4 entitlement:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:v10];
  v15 = MEMORY[0x277CC5E00];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke;
  v20[3] = &unk_278F58070;
  v20[4] = self;
  v21 = v10;
  v23 = v12;
  v24 = v13;
  v22 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  v19 = v10;
  [v15 executeQuery:v14 completionHandler:v20];
}

void __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2;
  v6[3] = &unk_278F58048;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v12 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2_cold_1(a1);
  }

  if ((*(*(a1 + 48) + 32) & 1) != 0 || ![*(a1 + 40) count])
  {
    v8 = *(*(a1 + 72) + 16);

    return v8();
  }

  else
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);

    return [v2 _startExtensions:v3 bundleID:v4 entitlement:v5 completion:v6];
  }
}

- (void)_startExtensions:(id)a3 bundleID:(id)a4 entitlement:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26 = a6;
  v27 = [MEMORY[0x277CBEB18] array];
  v12 = v10;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v18 bundleIdentifier];
        v20 = [v19 stringByDeletingPathExtension];

        if (v12 && ([v20 isEqual:v12] & 1) == 0)
        {
          if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            v24 = v12;
            v25 = v20;
            LogPrintF();
          }
        }

        else
        {
          v21 = [v18 entitlementNamed:v11 ofClass:objc_opt_class()];
          v22 = [v21 BOOLValue];

          if (v22)
          {
            [v27 addObject:v18];
          }

          else if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            [DADiscovery _startExtensions:v18 bundleID:? entitlement:? completion:?];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  if (v26)
  {
    v26[2](v26, v27);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_stopExtensons
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_extensions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(DADiscovery *)self _uuidFromExtension:v8, v11];
        if (v9)
        {
          [(DADiscovery *)self _updateNEPolicy:v9 remove:1];
        }

        [v8 invalidate];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateNEPolicy:(id)a3 remove:(BOOL)a4
{
  v4 = a4;
  v121[3] = *MEMORY[0x277D85DE8];
  v107 = a3;
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery _updateNEPolicy:remove:];
  }

  if (v107)
  {
    if (v4)
    {
      policySessions = self->_policySessions;
      p_policySessions = &self->_policySessions;
      v8 = [v107 UUIDString];
      v9 = [(NSMutableDictionary *)policySessions objectForKeyedSubscript:v8];

      if (v9)
      {
        if (([v9 removeAllPolicies] & 1) == 0 && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        if (([v9 apply] & 1) == 0 && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v10 = *p_policySessions;
        v11 = [v107 UUIDString];
        [v10 setObject:0 forKeyedSubscript:v11];

        if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:? remove:?];
        }
      }

      else
      {
        [DADiscovery _updateNEPolicy:remove:];
      }
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CD92F0]);
      if (v9)
      {
        v12 = objc_alloc(MEMORY[0x277CD92D8]);
        v13 = [MEMORY[0x277CD92E8] skipWithOrder:20];
        v14 = [MEMORY[0x277CD92E0] allInterfaces];
        v121[0] = v14;
        v15 = [MEMORY[0x277CD92E0] customEntitlement:@"com.apple.developer.media-device-discovery-extension"];
        v121[1] = v15;
        v16 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
        v121[2] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:3];
        v18 = [v12 initWithOrder:0 result:v13 conditions:v17];

        v103 = v18;
        if (![v9 addPolicy:v18] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v19 = objc_alloc(MEMORY[0x277CD92D8]);
        v20 = [MEMORY[0x277CD92E8] skipWithOrder:100];
        v21 = [MEMORY[0x277CD92E0] allInterfaces];
        v120[0] = v21;
        v22 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
        v120[1] = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
        v24 = [v19 initWithOrder:10 result:v20 conditions:v23];

        v102 = v24;
        if (![v9 addPolicy:v24] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v104 = self;
        v25 = objc_alloc(MEMORY[0x277CD92D8]);
        v26 = [MEMORY[0x277CD92E8] skipWithOrder:65];
        v27 = [MEMORY[0x277CD92E0] allInterfaces];
        v119[0] = v27;
        v28 = [MEMORY[0x277CD92E0] schemeUsingPort:53];
        v119[1] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:2];
        v30 = [v25 initWithOrder:25 result:v26 conditions:v29];

        v101 = v30;
        if (![v9 addPolicy:v30] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v31 = MEMORY[0x277CD92E0];
        v32 = [MEMORY[0x277CD91B8] endpointWithHostname:@"224.0.0.0" port:@"0"];
        v105 = [v31 remoteAddress:v32 prefix:4];

        v33 = MEMORY[0x277CD92E0];
        v34 = [MEMORY[0x277CD91B8] endpointWithHostname:@"ff00::" port:@"0"];
        v35 = [v33 remoteAddress:v34 prefix:8];

        v36 = MEMORY[0x277CD92E0];
        v37 = [MEMORY[0x277CD91B8] endpointWithHostname:@"255.255.255.255" port:@"0"];
        v38 = [v36 remoteAddress:v37 prefix:32];

        v39 = MEMORY[0x277CD92E0];
        v40 = [MEMORY[0x277CD91B8] endpointWithHostname:@"224.0.0.0" port:@"0"];
        v41 = [v39 localAddress:v40 prefix:4];

        v42 = MEMORY[0x277CD92E0];
        v43 = [MEMORY[0x277CD91B8] endpointWithHostname:@"ff00::" port:@"0"];
        v44 = [v42 localAddress:v43 prefix:8];

        v45 = MEMORY[0x277CD92E0];
        v46 = [MEMORY[0x277CD91B8] endpointWithHostname:@"255.255.255.255" port:@"0"];
        v47 = [v45 localAddress:v46 prefix:32];

        v118[0] = v105;
        v118[1] = v35;
        v99 = v38;
        v100 = v35;
        v118[2] = v38;
        v118[3] = v41;
        v97 = v44;
        v98 = v41;
        v118[4] = v44;
        v118[5] = v47;
        v96 = v47;
        [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:6];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        obj = v111 = 0u;
        v48 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v109;
          do
          {
            v51 = 0;
            do
            {
              if (*v109 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v52 = *(*(&v108 + 1) + 8 * v51);
              v53 = objc_alloc(MEMORY[0x277CD92D8]);
              v54 = [MEMORY[0x277CD92E8] skipWithOrder:50];
              v55 = [MEMORY[0x277CD92E0] allInterfaces];
              v116[0] = v55;
              v56 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
              v116[1] = v56;
              v116[2] = v52;
              v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:3];
              v58 = [v53 initWithOrder:30 result:v54 conditions:v57];

              if (![v9 addPolicy:v58] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
              {
                [DADiscovery _updateNEPolicy:remove:];
              }

              ++v51;
            }

            while (v49 != v51);
            v59 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
            v49 = v59;
          }

          while (v59);
        }

        v60 = objc_alloc(MEMORY[0x277CD92D8]);
        v61 = [MEMORY[0x277CD92E8] skipWithOrder:100];
        v62 = [MEMORY[0x277CD92E0] allInterfaces];
        v115[0] = v62;
        v63 = [MEMORY[0x277CD92E0] localNetworks];
        v115[1] = v63;
        v64 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
        v115[2] = v64;
        v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:3];
        v66 = [v60 initWithOrder:35 result:v61 conditions:v65];

        if (![v9 addPolicy:v66] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v67 = objc_alloc(MEMORY[0x277CD92D8]);
        v68 = [MEMORY[0x277CD92E8] drop];
        v69 = [MEMORY[0x277CD92E0] allInterfaces];
        v114[0] = v69;
        v70 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
        v114[1] = v70;
        v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
        v72 = [v67 initWithOrder:40 result:v68 conditions:v71];

        v95 = v72;
        if (![v9 addPolicy:v72] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v73 = objc_alloc(MEMORY[0x277CD92D8]);
        v74 = [MEMORY[0x277CD92E8] skipWithOrder:100];
        v75 = [MEMORY[0x277CD92E0] allInterfaces];
        v113[0] = v75;
        v76 = [MEMORY[0x277CD92E0] customEntitlement:@"com.apple.developer.networking.multicast"];
        v113[1] = v76;
        v77 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
        v113[2] = v77;
        v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:3];
        v79 = [v73 initWithOrder:60 result:v74 conditions:v78];

        v80 = v79;
        if (![v9 addPolicy:v79] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        v81 = objc_alloc(MEMORY[0x277CD92D8]);
        v82 = [MEMORY[0x277CD92E8] drop];
        v83 = [MEMORY[0x277CD92E0] allInterfaces];
        v112[0] = v83;
        v84 = [MEMORY[0x277CD92E0] effectiveApplication:v107];
        v112[1] = v84;
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
        v86 = [v81 initWithOrder:70 result:v82 conditions:v85];

        if (![v9 addPolicy:v86] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:remove:];
        }

        if ([v9 apply])
        {
          v87 = &v104->_policySessions;
          v88 = v104->_policySessions;
          if (!v88)
          {
            v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v90 = *v87;
            *v87 = v89;

            v88 = *v87;
          }

          v91 = [v107 UUIDString];
          [v88 setObject:v9 forKeyedSubscript:v91];

          v93 = v101;
          v92 = v102;
          if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            [DADiscovery _updateNEPolicy:v87 remove:?];
          }
        }

        else
        {
          v93 = v101;
          v92 = v102;
          if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            [DADiscovery _updateNEPolicy:remove:];
          }
        }
      }

      else
      {
        [DADiscovery _updateNEPolicy:remove:];
      }
    }
  }

  else
  {
    [DADiscovery _updateNEPolicy:remove:];
  }

  v94 = *MEMORY[0x277D85DE8];
}

- (id)_uuidFromExtension:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v4 = [v3 ekExtension];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    [v5 UTF8String];
    v6 = NEHelperCacheCopyAppUUIDMapping();
    v7 = v6;
    if (v6 && MEMORY[0x24C1DC9E0](v6) == MEMORY[0x277D86440])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __34__DADiscovery__uuidFromExtension___block_invoke;
      applier[3] = &unk_278F58098;
      applier[4] = &v11;
      xpc_array_apply(v7, applier);
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __34__DADiscovery__uuidFromExtension___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x24C1DC9E0]() == MEMORY[0x277D864D0])
  {
    bytes = xpc_uuid_get_bytes(v4);
    if (bytes)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  return 1;
}

- (DADiscovery)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DADiscovery *)self init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_19;
    }

    v19 = objc_opt_class();
    v17 = OUTLINED_FUNCTION_8();
LABEL_18:
    DAErrorF(v17, v18, v8, v9, v10, v11, v12, v13, v19);
    *a4 = v15 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x24C1DC9E0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
    {
      goto LABEL_19;
    }

    v18 = "XPC non-dict";
    v17 = 350004;
    goto LABEL_18;
  }

  CUXPCDecodeNSString();
  CUXPCDecodeNSString();
  v14 = CUXPCDecodeUInt64RangedEx();
  if (v14 != 6)
  {
    if (v14 != 5)
    {
      goto LABEL_6;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_13;
  }

  v7->_clientID = 0;
LABEL_6:
  objc_opt_class();
  OUTLINED_FUNCTION_9();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_19;
  }

  if (!v7->_configuration)
  {
    objc_opt_class();
    OUTLINED_FUNCTION_9();
    CUXPCDecodeNSArrayOfClass();
    if (!v7->_configuration && !v7->_configurations)
    {
      goto LABEL_19;
    }
  }

  if (CUXPCDecodeUInt64RangedEx() == 6)
  {
    v7->_flags = 0;
  }

  v15 = v7;
LABEL_13:

  return v15;
}

- (void)_reportASKEvent:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 device];
  if (v5)
  {
    v6 = [(DADiscoveryConfiguration *)self->_configuration bundleID];
    bundleID = v6;
    if (!v6)
    {
      bundleID = self->_bundleID;
    }

    v8 = bundleID;

    v9 = [gDADaemonServer getDevicesWithFlags:8 appID:v8];
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v42 = v9;
      LogPrintF();
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      v44 = v8;
      v45 = v4;
      obj = v10;
      v43 = self;
LABEL_10:
      v10 = 0;
      while (1)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * v10);
        v4 = [v14 bluetoothIdentifier];
        v15 = [v5 bluetoothIdentifier];
        v16 = [v4 isEqual:v15];

        if (v16)
        {
          OUTLINED_FUNCTION_5();
          v8 = v44;
          if (v35 ^ v36 | v34)
          {
            if (v33 != -1)
            {
              goto LABEL_36;
            }

            v12 = v10;
            if (_LogCategory_Initialize())
            {
              goto LABEL_36;
            }
          }

          goto LABEL_41;
        }

        v4 = [v14 SSID];
        v17 = [v5 SSID];
        v18 = [v4 isEqual:v17];

        if (v18)
        {
          OUTLINED_FUNCTION_5();
          v8 = v44;
          if (v35 ^ v36 | v34)
          {
            if (v37 != -1)
            {
              goto LABEL_36;
            }

            v12 = v10;
            if (_LogCategory_Initialize())
            {
              goto LABEL_36;
            }
          }

          goto LABEL_41;
        }

        v19 = [v14 wifiAwareDevicePairingID];
        if (v19)
        {
          v4 = v19;
          v20 = [v14 discoveryConfiguration];
          v21 = [v20 wifiAwareServiceName];
          v22 = [v5 discoveryConfiguration];
          v23 = [v22 wifiAwareServiceName];
          v24 = [v21 isEqual:v23];

          if (v24)
          {
            break;
          }
        }

        v10 = v10 + 1;
        if (v12 == v10)
        {
          v10 = obj;
          v12 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
          v8 = v44;
          v4 = v45;
          self = v43;
          if (v12)
          {
            goto LABEL_10;
          }

          goto LABEL_19;
        }
      }

      OUTLINED_FUNCTION_5();
      v8 = v44;
      if (v35 ^ v36 | v34)
      {
        if (v38 != -1 || (v12 = v10, _LogCategory_Initialize()))
        {
LABEL_36:
          LogPrintF();
          v12 = v10;
        }
      }
    }

    else
    {
LABEL_19:

      v12 = [v5 identifier];
      if (v12)
      {
        [v5 setFlags:8];
        v25 = [v5 discoveryConfiguration];

        if (!v25)
        {
          v26 = objc_alloc_init(DADiscoveryConfiguration);
          [(DADiscoveryConfiguration *)v26 setBundleID:v8];
          [v5 identifier];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4() setAssociationIdentifier:?];

          [v5 name];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4() setDisplayName:?];

          -[DADiscoveryConfiguration setAllowsBluetoothPairing:](v26, "setAllowsBluetoothPairing:", [v5 allowPairing]);
          [v5 bluetoothIdentifier];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4() setBluetoothIdentifier:?];

          v27 = [v5 discoveryConfiguration];
          v28 = [v27 flags];
          [(DADiscoveryConfiguration *)v26 setFlags:[(DADiscoveryConfiguration *)v26 flags]| v28];

          v29 = [v5 discoveryConfiguration];
          [v29 wifiAwareServiceName];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_3() setWifiAwareServiceName:?];

          v30 = [v5 discoveryConfiguration];
          -[DADiscoveryConfiguration setWifiAwareServiceType:](v26, "setWifiAwareServiceType:", [v30 wifiAwareServiceType]);

          v31 = [v5 discoveryConfiguration];
          [v31 wifiAwareModelNameMatch];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_3() setWifiAwareModelNameMatch:?];

          v32 = [v5 discoveryConfiguration];
          [v32 wifiAwareVendorNameMatch];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_3() setWifiAwareVendorNameMatch:?];

          [v5 setDiscoveryConfiguration:v26];
        }

        [v5 setDiscoveredInExtension:{1, v42}];
        if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v39 = _Block_copy(self->_eventHandler);
        v40 = v39;
        if (v39)
        {
          (*(v39 + 2))(v39, v4);
        }
      }
    }

LABEL_41:
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = DAErrorF(350000, "init failed", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

void __36__DADiscovery_invalidateWithReason___block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  DADeviceStateToString(*(a1 + 56));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF();
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = DADeviceStateToString(*(a1 + 48));
  v2 = CUPrintNSError();
  LogPrintF();
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = OUTLINED_FUNCTION_8();
  v11 = DAErrorF(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  (*(v1 + 16))(v1, v11);
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF();
}

- (void)xpcReceivedMessage:.cold.1()
{
  CUPrintXPC();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF();
}

- (void)xpcReceivedMessage:.cold.2()
{
  v1 = CUPrintNSError();
  v0 = CUPrintXPC();
  LogPrintF();
}

- (void)_xpcReceivedDAEvent:.cold.1()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_xpcReceivedDAEvent:.cold.3()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_xpcReceivedDAEvent:(int)a1 .cold.4(int a1)
{
  if (a1 <= 90 && (a1 != -1 || _LogCategory_Initialize()))
  {
    v1 = CUPrintNSError();
    LogPrintF();
  }
}

- (void)_xpcReceivedDeviceEvent:.cold.1()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

uint64_t __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) count];
  return LogPrintF();
}

- (void)_startExtensions:(void *)a1 bundleID:entitlement:completion:.cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  LogPrintF();
}

- (void)_updateNEPolicy:(uint64_t *)a1 remove:.cold.11(uint64_t *a1)
{
  v1 = *a1;
  v2 = CUPrintNSObjectOneLine();
  LogPrintF();
}

- (void)_updateNEPolicy:remove:.cold.12()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_updateNEPolicy:(uint64_t *)a1 remove:.cold.15(uint64_t *a1)
{
  v1 = *a1;
  v2 = CUPrintNSObjectOneLine();
  LogPrintF();
}

- (void)_updateNEPolicy:remove:.cold.16()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_updateNEPolicy:remove:.cold.17()
{
  if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
  }
}

@end