@interface PDRRegistry
+ (id)sharedInstance;
- (BOOL)isPaired;
- (BOOL)removeDelegate:(id)a3;
- (PDRRegistry)init;
- (id)deviceForBluetoothID:(id)a3;
- (id)deviceForPairingID:(id)a3;
- (id)deviceFromNRDevice:(id)a3;
- (id)getActiveDevice;
- (id)getActivePairedDeviceExcludingAltAccount;
- (id)getActivePairedDeviceIncludingAltAccount;
- (id)getAllDevicesWithArchivedAltAccountDevicesMatching:(id)a3;
- (id)getAllDevicesWithArchivedDevicesMatching:(id)a3;
- (id)getDevices;
- (id)getDevicesExcluding:(unint64_t)a3;
- (id)getDevicesMatching:(id)a3;
- (id)getPairedDevices;
- (id)getSetupCompletedDevices;
- (id)pairingID;
- (id)pairingStorePath;
- (int64_t)compatibilityState;
- (unint64_t)switchIndex;
- (void)addDelegate:(id)a3;
- (void)getDevicesWithBlock:(id)a3;
- (void)getSwitchEventsAfterIndex:(unsigned int)a3 process:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation PDRRegistry

+ (id)sharedInstance
{
  v2 = implementationClass();

  return [v2 sharedInstance];
}

- (PDRRegistry)init
{
  implementationClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanoregistry.paireddeviceregistry", v3);
    [(PDRRegistry *)self setCallbackQueue:v4];

    v7.receiver = self;
    v7.super_class = PDRRegistry;
    return [(PDRRegistry *)&v7 init];
  }

  else
  {
    v6 = objc_alloc_init(implementationClass());

    return v6;
  }
}

- (void)getDevicesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(PDRRegistry *)self getDevicesExcluding:0];
  v4[2](v4, v5);
}

- (id)getDevices
{
  v3 = [objc_opt_class() activePairedDeviceSelectorBlock];
  v4 = [(PDRRegistry *)self getDevicesMatching:v3];

  return v4;
}

- (id)getPairedDevices
{
  v3 = [objc_opt_class() pairedDevicesSelectorBlock];
  v4 = [(PDRRegistry *)self getDevicesMatching:v3];

  return v4;
}

- (id)getSetupCompletedDevices
{
  v3 = [objc_opt_class() setupCompletedDevicesSelectorBlock];
  v4 = [(PDRRegistry *)self getDevicesMatching:v3];

  return v4;
}

uint64_t __65__PDRRegistry_NanoRegistryStyle__activePairedDeviceSelectorBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPaired])
  {
    v3 = [v2 isActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __68__PDRRegistry_NanoRegistryStyle__setupCompletedDevicesSelectorBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPaired])
  {
    v3 = [v2 isSetup];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getDevicesMatching:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PDRRegistry_NanoRegistryStyle__getDevicesMatching___block_invoke;
  v8[3] = &unk_2787A7A78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PDRRegistry *)self getDevicesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __53__PDRRegistry_NanoRegistryStyle__getDevicesMatching___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isArchived] & 1) == 0 && (objc_msgSend(v8, "isAltAccount") & 1) == 0 && (*(*(a1 + 32) + 16))())
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getAllDevicesWithArchivedDevicesMatching:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__PDRRegistry_NanoRegistryStyle__getAllDevicesWithArchivedDevicesMatching___block_invoke;
  v8[3] = &unk_2787A7A78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PDRRegistry *)self getDevicesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __75__PDRRegistry_NanoRegistryStyle__getAllDevicesWithArchivedDevicesMatching___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ((*(*(a1 + 32) + 16))() && ([v8 isAltAccount] & 1) == 0)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getAllDevicesWithArchivedAltAccountDevicesMatching:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__PDRRegistry_NanoRegistryStyle__getAllDevicesWithArchivedAltAccountDevicesMatching___block_invoke;
  v8[3] = &unk_2787A7A78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PDRRegistry *)self getDevicesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __85__PDRRegistry_NanoRegistryStyle__getAllDevicesWithArchivedAltAccountDevicesMatching___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ((*(*(a1 + 32) + 16))())
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)deviceFromNRDevice:(id)a3
{
  v4 = [a3 pairingID];
  v5 = [(PDRRegistry *)self deviceForPairingID:v4];

  return v5;
}

- (int64_t)compatibilityState
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)start
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (void)stop
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (BOOL)isPaired
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)pairingStorePath
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)pairingID
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)switchIndex
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return -1;
}

- (id)getDevicesExcluding:(unint64_t)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)getActivePairedDeviceIncludingAltAccount
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)getActivePairedDeviceExcludingAltAccount
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)getActiveDevice
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)getSwitchEventsAfterIndex:(unsigned int)a3 process:(id)a4
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (id)deviceForBluetoothID:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)deviceForPairingID:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)addDelegate:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();

  NSRequestConcreteImplementation();
}

- (BOOL)removeDelegate:(id)a3
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  NSRequestConcreteImplementation();
  return 0;
}

@end