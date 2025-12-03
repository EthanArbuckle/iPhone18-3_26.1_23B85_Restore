@interface NWStatsEntityMapperDynamicLaunchServices
- (NWStatsEntityMapperDynamicLaunchServices)init;
- (id)_attemptConvertingPluginNameToContainingAppName:(id)name;
- (id)_identifierForUUID:(id)d fromSet:(id)set;
- (id)extensionNameForUUID:(id)d;
- (id)handleNewUUID:(id)d;
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
- (id)stateDictionary;
- (void)dealloc;
@end

@implementation NWStatsEntityMapperDynamicLaunchServices

- (NWStatsEntityMapperDynamicLaunchServices)init
{
  v23 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = NWStatsEntityMapperDynamicLaunchServices;
  v2 = [(NWStatsEntityMapperDynamicLaunchServices *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NWStatsEntityMapCache);
    entityMap = v2->_entityMap;
    v2->_entityMap = v3;

    v5 = dlopen(gCoreServicesFrameworkPath, 4);
    v2->_coreServicesDylibHandle = v5;
    if (!v5 || (v2->_LSPlugInKitProxyClass = objc_getClass("LSPlugInKitProxy"), v2->_LSApplicationProxyClass = objc_getClass("LSApplicationProxy"), Class = objc_getClass("LSApplicationWorkspace"), v2->_LSApplicationWorkspaceClass = Class, !v2->_coreServicesDylibHandle) || !v2->_LSPlugInKitProxyClass || !v2->_LSApplicationProxyClass || !Class)
    {
      v7 = NStatGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        coreServicesDylibHandle = v2->_coreServicesDylibHandle;
        LSPlugInKitProxyClass = v2->_LSPlugInKitProxyClass;
        LSApplicationProxyClass = v2->_LSApplicationProxyClass;
        LSApplicationWorkspaceClass = v2->_LSApplicationWorkspaceClass;
        *buf = 134218752;
        v16 = coreServicesDylibHandle;
        v17 = 2048;
        v18 = LSPlugInKitProxyClass;
        v19 = 2048;
        v20 = LSApplicationProxyClass;
        v21 = 2048;
        v22 = LSApplicationWorkspaceClass;
        _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_FAULT, "LS Mapping dylib failure handle %p plugin proxy class %p app proxy class %p app workspace class %p", buf, 0x2Au);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  coreServicesDylibHandle = self->_coreServicesDylibHandle;
  if (coreServicesDylibHandle)
  {
    dlclose(coreServicesDylibHandle);
  }

  v4.receiver = self;
  v4.super_class = NWStatsEntityMapperDynamicLaunchServices;
  [(NWStatsEntityMapperDynamicLaunchServices *)&v4 dealloc];
}

- (id)_attemptConvertingPluginNameToContainingAppName:(id)name
{
  v4 = [(objc_class *)self->_LSPlugInKitProxyClass pluginKitProxyForIdentifier:name];
  v5 = v4;
  if (v4)
  {
    containingBundle = [v4 containingBundle];
    if (containingBundle && (LSApplicationProxyClass = self->_LSApplicationProxyClass, (objc_opt_isKindOfClass() & 1) != 0))
    {
      applicationIdentifier = [containingBundle applicationIdentifier];
    }

    else
    {
      applicationIdentifier = 0;
    }
  }

  else
  {
    applicationIdentifier = 0;
  }

  return applicationIdentifier;
}

- (id)_identifierForUUID:(id)d fromSet:(id)set
{
  v13[2] = *MEMORY[0x277D85DE8];
  allObjects = [set allObjects];
  v6 = [allObjects objectAtIndex:0];

  v7 = [(NWStatsEntityMapperDynamicLaunchServices *)self _attemptConvertingPluginNameToContainingAppName:v6];
  v8 = v7;
  if (v7)
  {
    v13[0] = v7;
    v13[1] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)handleNewUUID:(id)d
{
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  defaultWorkspace = [(objc_class *)self->_LSApplicationWorkspaceClass defaultWorkspace];
  v7 = [MEMORY[0x277CBEB98] setWithObject:dCopy];
  v15 = 0;
  v8 = [defaultWorkspace bundleIdentifiersForMachOUUIDs:v7 error:&v15];
  v9 = v15;

  if (v9 || ![v8 count])
  {
    goto LABEL_2;
  }

  v13 = [v8 objectForKeyedSubscript:dCopy];
  if (![v13 count])
  {

    goto LABEL_2;
  }

  v14 = [(NWStatsEntityMapperDynamicLaunchServices *)self _identifierForUUID:dCopy fromSet:v13];

  if (!v14)
  {
LABEL_2:
    null = [MEMORY[0x277CBEB68] null];
    v11 = 0;
    goto LABEL_3;
  }

  null = v14;
  v11 = null;
LABEL_3:
  [(NWStatsEntityMapCache *)self->_entityMap setEntry:null forUUID:dCopy];

  objc_autoreleasePoolPop(v5);

  return null;
}

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy || ([dCopy UUIDString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    v14 = 0;
    v13 = 0;
    if (!derivation)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self->_entityMap;
  objc_sync_enter(v11);
  v12 = [(NWStatsEntityMapCache *)self->_entityMap entryForUUID:v7];
  if (!v12)
  {
    v12 = [(NWStatsEntityMapperDynamicLaunchServices *)self handleNewUUID:v7];
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x277CCACA8] stringWithString:v12];
    v14 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v12;
    v16 = MEMORY[0x277CCACA8];
    v17 = [v12 objectAtIndexedSubscript:0];
    v13 = [v16 stringWithString:v17];

    v14 = 2;
  }

  else
  {
LABEL_14:
    v14 = 0;
    v13 = 0;
  }

LABEL_15:

  objc_sync_exit(v11);
  objc_autoreleasePoolPop(v10);
  if (derivation)
  {
LABEL_8:
    *derivation = v14;
  }

LABEL_9:

  return v13;
}

- (id)extensionNameForUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ([dCopy UUIDString], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self->_entityMap;
    objc_sync_enter(v9);
    v10 = [(NWStatsEntityMapCache *)self->_entityMap entryForUUID:v5];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
      v12 = MEMORY[0x277CCACA8];
      v13 = [v11 objectAtIndexedSubscript:1];
      v14 = [v12 stringWithString:v13];
    }

    else
    {
      v14 = 0;
    }

    objc_sync_exit(v9);
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)stateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = self->_entityMap;
  objc_sync_enter(v4);
  stateDictionary = [(NWStatsEntityMapCache *)self->_entityMap stateDictionary];
  [v3 setObject:stateDictionary forKeyedSubscript:@"EntityMapper"];

  objc_sync_exit(v4);

  return v3;
}

@end