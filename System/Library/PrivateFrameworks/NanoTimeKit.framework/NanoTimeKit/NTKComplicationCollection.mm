@interface NTKComplicationCollection
+ (id)_bundleForWatchKitAppID:(id)d;
+ (id)lsSDKVersionForApplicationID:(id)d;
+ (id)newWidgetCollection;
+ (id)sharedBundleCollection;
+ (id)sharedRemoteCollection;
- (BOOL)hasSampleTemplateForClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
- (NTKComplicationCollection)initWithCollectionIdentifier:(id)identifier deviceUUID:(id)d;
- (id)_fetchOrCreateSampleDataForClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
- (id)_sampleDataForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (id)clients;
- (id)clientsSupportingFamily:(int64_t)family;
- (id)complicationDescriptorsForClientIdentifier:(id)identifier;
- (id)sampleTemplateForClientIdentifier:(id)identifier descriptor:(id)descriptor applicationID:(id)d family:(int64_t)family;
- (id)supportedTemplateFamiliesForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)_cleanupOrphanedSampleTemplatesForClientIdentifier:(id)identifier;
- (void)_notifyLoaded;
- (void)_notifyReloaded;
- (void)_notifyRemovedComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)_notifyUpdateComplicationDescriptorsForClientIdentifier:(id)identifier;
- (void)_notifyUpdateComplicationSampleTemplateForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)_performOrEnqueueUpdate:(id)update;
- (void)_register;
- (void)_registerIfNeeded;
- (void)_removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)_sendToDaemonRemoveComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)_sendToDaemonUpdatedComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier;
- (void)_sendToDaemonUpdatedSampleDataTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
- (void)_setComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier;
- (void)_setLocalizedSampleTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
- (void)_setLocalizedSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
- (void)_throwIfNotLoaded:(SEL)loaded;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id;
- (void)performAfterLoad:(id)load;
- (void)removeAllComplicationSampleTemplatesExceptThoseWithClientIdentifiers:(id)identifiers;
- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id;
- (void)removeObserver:(id)observer;
- (void)resumeUpdatesFromDaemon;
- (void)setComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier;
- (void)setLocalizableSampleTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
- (void)suspendUpdatesFromDaemon;
- (void)updateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id;
- (void)updateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id;
@end

@implementation NTKComplicationCollection

- (NTKComplicationCollection)initWithCollectionIdentifier:(id)identifier deviceUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v44.receiver = self;
  v44.super_class = NTKComplicationCollection;
  v9 = [(NTKComplicationCollection *)&v44 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collectionIdentifier, identifier);
    objc_storeStrong(&v10->_deviceUUID, d);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    array = [MEMORY[0x277CBEB18] array];
    loadCallbacks = v10->_loadCallbacks;
    v10->_loadCallbacks = array;

    v15 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    observersLock = v10->_observersLock;
    v10->_observersLock = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v10->_lock;
    v10->_lock = v17;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    localizeableSampleDataTemplates = v10->_localizeableSampleDataTemplates;
    v10->_localizeableSampleDataTemplates = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    complicationDescriptors = v10->_complicationDescriptors;
    v10->_complicationDescriptors = dictionary2;

    v23 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nanotimekit.complicationstoreserver" options:4096];
    connection = v10->_connection;
    v10->_connection = v23;

    v25 = v10->_connection;
    v26 = NTKComplicationStoreServerInterface();
    [(NSXPCConnection *)v25 setRemoteObjectInterface:v26];

    v27 = v10->_connection;
    v28 = NTKComplicationStoreClientInterface();
    [(NSXPCConnection *)v27 setExportedInterface:v28];

    v29 = [[_NTKComplicationStoreClientProxy alloc] initWithWeakProxy:v10];
    [(NSXPCConnection *)v10->_connection setExportedObject:v29];
    objc_initWeak(&location, v10);
    v30 = v10->_connection;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke;
    v40[3] = &unk_27877F610;
    objc_copyWeak(&v42, &location);
    v31 = identifierCopy;
    v41 = v31;
    [(NSXPCConnection *)v30 setInterruptionHandler:v40];
    v32 = v10->_connection;
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke_22;
    v38 = &unk_27877DB10;
    v39 = v31;
    [(NSXPCConnection *)v32 setInvalidationHandler:&v35];
    [(NSXPCConnection *)v10->_connection resume:v35];
    [(NTKComplicationCollection *)v10 _register];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, _handleDaemonDidLaunchNotification_0, @"com.apple.nanotimekit.daemondidlaunch", 0, 0);

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke_2;
  v2[3] = &unk_27877F610;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke_2_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
  }

  [WeakRetained _handleConnectionInterrupted];
}

void __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke_22(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __69__NTKComplicationCollection_initWithCollectionIdentifier_deviceUUID___block_invoke_22_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanotimekit.daemondidlaunch", 0);
  v4.receiver = self;
  v4.super_class = NTKComplicationCollection;
  [(NTKComplicationCollection *)&v4 dealloc];
}

+ (id)sharedRemoteCollection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKComplicationCollection_sharedRemoteCollection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRemoteCollection_onceToken != -1)
  {
    dispatch_once(&sharedRemoteCollection_onceToken, block);
  }

  v2 = sharedRemoteCollection___sharedRemoteCollection;

  return v2;
}

void __51__NTKComplicationCollection_sharedRemoteCollection__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithCollectionIdentifier:@"RemoteComplicationsV2" deviceUUID:0];
  v2 = sharedRemoteCollection___sharedRemoteCollection;
  sharedRemoteCollection___sharedRemoteCollection = v1;
}

+ (id)newWidgetCollection
{
  v2 = [self alloc];

  return [v2 initWithCollectionIdentifier:@"WidgetComplications" deviceUUID:0];
}

+ (id)sharedBundleCollection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKComplicationCollection_sharedBundleCollection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBundleCollection_onceToken != -1)
  {
    dispatch_once(&sharedBundleCollection_onceToken, block);
  }

  v2 = sharedBundleCollection___sharedBundleCollection;

  return v2;
}

void __51__NTKComplicationCollection_sharedBundleCollection__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithCollectionIdentifier:@"BundleComplications" deviceUUID:0];
  v2 = sharedBundleCollection___sharedBundleCollection;
  sharedBundleCollection___sharedBundleCollection = v1;
}

- (void)addObserver:(id)observer
{
  observersLock = self->_observersLock;
  observerCopy = observer;
  [(NSLock *)observersLock lock];
  [(NSHashTable *)self->_observers addObject:observerCopy];

  v6 = self->_observersLock;

  [(NSLock *)v6 unlock];
}

- (void)removeObserver:(id)observer
{
  observersLock = self->_observersLock;
  observerCopy = observer;
  [(NSLock *)observersLock lock];
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  v6 = self->_observersLock;

  [(NSLock *)v6 unlock];
}

- (void)performAfterLoad:(id)load
{
  loadCopy = load;
  v5 = loadCopy;
  if (loadCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__NTKComplicationCollection_performAfterLoad___block_invoke;
    v6[3] = &unk_27877FF60;
    v6[4] = self;
    v7 = loadCopy;
    [(NTKComplicationCollection *)self _performOrEnqueueUpdate:v6];
  }
}

void __46__NTKComplicationCollection_performAfterLoad___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = [*(a1 + 40) copy];
    [v4 addObject:v5];
  }
}

+ (id)lsSDKVersionForApplicationID:(id)d
{
  dCopy = d;
  v20 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v20];
  v5 = v20;
  if (v4)
  {
    sDKVersion = [v4 SDKVersion];
    v7 = 0;
    if (sDKVersion)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[NTKComplicationCollection lsSDKVersionForApplicationID:];
  }

  v19 = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:dCopy error:&v19];
  v7 = v19;
  if (v9)
  {
    sDKVersion = [v9 SDKVersion];
  }

  else
  {
    v10 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[NTKComplicationCollection lsSDKVersionForApplicationID:];
    }

    sDKVersion = 0;
  }

  if (!sDKVersion)
  {
LABEL_12:
    v11 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NTKComplicationCollection *)dCopy lsSDKVersionForApplicationID:v11, v12, v13, v14, v15, v16, v17];
    }
  }

LABEL_15:

  return sDKVersion;
}

- (id)clients
{
  v18 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  allKeys = [(NSMutableDictionary *)self->_localizeableSampleDataTemplates allKeys];
  [(NSRecursiveLock *)self->_lock unlock];
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 length])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

- (id)clientsSupportingFamily:(int64_t)family
{
  v5 = [MEMORY[0x277CBEB58] set];
  [(NSRecursiveLock *)self->_lock lock];
  localizeableSampleDataTemplates = self->_localizeableSampleDataTemplates;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __53__NTKComplicationCollection_clientsSupportingFamily___block_invoke;
  v13 = &unk_278784318;
  v14 = v5;
  familyCopy = family;
  v7 = v5;
  [(NSMutableDictionary *)localizeableSampleDataTemplates enumerateKeysAndObjectsUsingBlock:&v10];
  [(NSRecursiveLock *)self->_lock unlock:v10];
  allObjects = [v7 allObjects];

  return allObjects;
}

void __53__NTKComplicationCollection_clientsSupportingFamily___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__NTKComplicationCollection_clientsSupportingFamily___block_invoke_2;
  v9[3] = &unk_2787842F0;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v10 = v7;
  v11 = v5;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __53__NTKComplicationCollection_clientsSupportingFamily___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 supportedFamilies];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
    *a4 = 1;
  }
}

- (id)supportedTemplateFamiliesForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v4 = [(NTKComplicationCollection *)self _sampleDataForClientIdentifier:identifier descriptor:descriptor];
  supportedFamilies = [v4 supportedFamilies];

  return supportedFamilies;
}

- (BOOL)hasSampleTemplateForClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  v6 = [(NTKComplicationCollection *)self _sampleDataForClientIdentifier:identifier descriptor:descriptor];
  LOBYTE(family) = [v6 hasTemplateForFamily:family];

  return family;
}

- (id)sampleTemplateForClientIdentifier:(id)identifier descriptor:(id)descriptor applicationID:(id)d family:(int64_t)family
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  v30 = [(NTKComplicationCollection *)self _sampleDataForClientIdentifier:identifierCopy descriptor:descriptor];
  v29 = [v30 templateForFamily:family];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = +[NTKCompanionAppLibrary sharedAppLibrary];
  thirdPartyApps = [v11 thirdPartyApps];

  v13 = [thirdPartyApps countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v13)
  {
LABEL_14:

    v23 = v29;
    v22 = v30;
    goto LABEL_20;
  }

  v14 = v13;
  v15 = *v33;
LABEL_3:
  v16 = 0;
  while (1)
  {
    if (*v33 != v15)
    {
      objc_enumerationMutation(thirdPartyApps);
    }

    v17 = *(*(&v32 + 1) + 8 * v16);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v18 = v17;
    complicationClientIdentifier = [v18 complicationClientIdentifier];
    if (([complicationClientIdentifier isEqualToString:identifierCopy] & 1) == 0)
    {

      goto LABEL_11;
    }

    watchApplicationIdentifier = [v18 watchApplicationIdentifier];
    v21 = [watchApplicationIdentifier isEqualToString:dCopy];

    if (v21)
    {
      break;
    }

LABEL_11:

LABEL_12:
    if (v14 == ++v16)
    {
      v14 = [thirdPartyApps countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v14)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }
  }

  urlToWatchKitBundle = [v18 urlToWatchKitBundle];
  v25 = urlToWatchKitBundle;
  if (urlToWatchKitBundle)
  {
    v26 = [MEMORY[0x277CCA8D8] bundleWithURL:urlToWatchKitBundle];
  }

  else
  {
    v26 = 0;
  }

  v23 = v29;
  v22 = v30;

  if (v26)
  {
    v27 = [NTKComplicationBundleHelper localizedComplicationTemplateForTemplate:v29 bundle:v26 localization:0];

    goto LABEL_21;
  }

LABEL_20:
  v27 = v23;
LABEL_21:

  return v27;
}

- (id)complicationDescriptorsForClientIdentifier:(id)identifier
{
  lock = self->_lock;
  identifierCopy = identifier;
  [(NSRecursiveLock *)lock lock];
  v6 = [(NSMutableDictionary *)self->_complicationDescriptors objectForKey:identifierCopy];

  v7 = [v6 copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v7;
}

+ (id)_bundleForWatchKitAppID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v26 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v26];
  v5 = v26;
  if (!v4)
  {
    applicationExtensionRecords = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(applicationExtensionRecords, OS_LOG_TYPE_ERROR))
    {
      [(NTKComplicationCollection *)dCopy _bundleForWatchKitAppID:v5, applicationExtensionRecords];
    }

    goto LABEL_14;
  }

  applicationExtensionRecords = [v4 applicationExtensionRecords];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [applicationExtensionRecords countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v7)
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v19 = v5;
  v20 = v4;
  v21 = dCopy;
  v9 = 0;
  v10 = *v23;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(applicationExtensionRecords);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      extensionPointRecord = [v12 extensionPointRecord];
      name = [extensionPointRecord name];
      v15 = [name isEqualToString:@"com.apple.watchkit"];

      if (v15)
      {
        v16 = [v12 URL];
        v17 = [MEMORY[0x277CCA8D8] bundleWithURL:v16];

        v9 = v17;
      }
    }

    v8 = [applicationExtensionRecords countByEnumeratingWithState:&v22 objects:v27 count:16];
  }

  while (v8);
  v4 = v20;
  dCopy = v21;
  v5 = v19;
LABEL_15:

  return v9;
}

- (void)setLocalizableSampleTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  if (template)
  {
    descriptorCopy = descriptor;
    identifierCopy = identifier;
    templateCopy = template;
    [(NTKComplicationCollection *)self _setLocalizedSampleTemplate:templateCopy forClientIdentifier:identifierCopy descriptor:descriptorCopy family:family];
    [(NTKComplicationCollection *)self _sendToDaemonUpdatedSampleDataTemplate:templateCopy forClientIdentifier:identifierCopy descriptor:descriptorCopy family:family];

    [(NTKComplicationCollection *)self _notifyUpdateComplicationSampleTemplateForClientIdentifier:identifierCopy descriptor:descriptorCopy];
  }
}

- (void)setComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  identifierCopy = identifier;
  if (descriptorsCopy)
  {
    v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = descriptorsCopy;
      v11 = 2112;
      v12 = identifierCopy;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection, setting %@ descriptors for %@", &v9, 0x16u);
    }

    [(NTKComplicationCollection *)self _setComplicationDescriptors:descriptorsCopy forClientIdentifier:identifierCopy];
    [(NTKComplicationCollection *)self _sendToDaemonUpdatedComplicationDescriptors:descriptorsCopy forClientIdentifier:identifierCopy];
    [(NTKComplicationCollection *)self _notifyUpdateComplicationDescriptorsForClientIdentifier:identifierCopy];
    [(NTKComplicationCollection *)self _cleanupOrphanedSampleTemplatesForClientIdentifier:identifierCopy];
  }
}

- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  [(NTKComplicationCollection *)self _throwIfNotLoaded:a2];
  v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [descriptorCopy identifier];
    v11 = 138412546;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection, removing complication sample templates for %@, %@", &v11, 0x16u);
  }

  [(NTKComplicationCollection *)self _removeComplicationSampleTemplatesForClientIdentifier:identifierCopy descriptor:descriptorCopy];
  [(NTKComplicationCollection *)self _sendToDaemonRemoveComplicationSampleTemplatesForClientIdentifier:identifierCopy descriptor:descriptorCopy];
  [(NTKComplicationCollection *)self _notifyRemovedComplicationSampleTemplatesForClientIdentifier:identifierCopy descriptor:descriptorCopy];
}

- (void)removeAllComplicationSampleTemplatesExceptThoseWithClientIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  [(NSRecursiveLock *)self->_lock lock];
  allKeys = [(NSMutableDictionary *)self->_localizeableSampleDataTemplates allKeys];
  [(NSRecursiveLock *)self->_lock unlock];
  v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = identifiersCopy;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection, removing all complication sample templates except those with client identifiers %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = allKeys;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([identifiersCopy containsObject:v12] & 1) == 0)
        {
          v13 = [(NTKComplicationCollection *)self complicationDescriptorsForClientIdentifier:v12];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __98__NTKComplicationCollection_removeAllComplicationSampleTemplatesExceptThoseWithClientIdentifiers___block_invoke;
          v14[3] = &unk_278784340;
          v14[4] = self;
          v14[5] = v12;
          [v13 enumerateObjectsUsingBlock:v14];

          [(NTKComplicationCollection *)self _cleanupOrphanedSampleTemplatesForClientIdentifier:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (id)_fetchOrCreateSampleDataForClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  [(NSRecursiveLock *)self->_lock lock];
  v10 = [(NTKComplicationCollection *)self _sampleDataForClientIdentifier:identifierCopy descriptor:descriptorCopy];
  if (!v10)
  {
    v11 = [NTKComplicationSampleData alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:family];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v10 = [(NTKComplicationSampleData *)v11 initWithSupportedFamilies:v13];

    dictionary = [(NSMutableDictionary *)self->_localizeableSampleDataTemplates objectForKeyedSubscript:identifierCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_localizeableSampleDataTemplates setObject:dictionary forKeyedSubscript:identifierCopy];
    }

    [dictionary setObject:v10 forKeyedSubscript:descriptorCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v10;
}

- (void)_setLocalizedSampleTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  templateCopy = template;
  v11 = [(NTKComplicationCollection *)self _fetchOrCreateSampleDataForClientIdentifier:identifier descriptor:descriptor family:family];
  [v11 setTemplate:templateCopy forFamily:family];
}

- (void)_setLocalizedSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  referenceCopy = reference;
  v12 = [(NTKComplicationCollection *)self _fetchOrCreateSampleDataForClientIdentifier:identifier descriptor:descriptor family:family];
  path = [referenceCopy path];

  [v12 setTemplatePath:path forFamily:family];
}

- (void)_setComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier
{
  descriptorsCopy = descriptors;
  lock = self->_lock;
  identifierCopy = identifier;
  [(NSRecursiveLock *)lock lock];
  complicationDescriptors = self->_complicationDescriptors;
  if (descriptorsCopy)
  {
    [(NSMutableDictionary *)complicationDescriptors setObject:descriptorsCopy forKey:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)complicationDescriptors removeObjectForKey:identifierCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_cleanupOrphanedSampleTemplatesForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSRecursiveLock *)self->_lock lock];
  clients = [(NTKComplicationCollection *)self clients];
  v6 = [clients containsObject:identifierCopy];

  v7 = [(NSMutableDictionary *)self->_localizeableSampleDataTemplates objectForKey:identifierCopy];
  v8 = [(NSMutableDictionary *)self->_complicationDescriptors objectForKey:identifierCopy];
  v9 = MEMORY[0x277CBEB58];
  allKeys = [v7 allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = [MEMORY[0x277CBEB98] setWithArray:v8];
  [v11 minusSet:v12];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__NTKComplicationCollection__cleanupOrphanedSampleTemplatesForClientIdentifier___block_invoke;
  v14[3] = &unk_278784368;
  v17 = v6;
  v15 = identifierCopy;
  selfCopy = self;
  v13 = identifierCopy;
  [v11 enumerateObjectsUsingBlock:v14];
  [(NSRecursiveLock *)self->_lock unlock];
}

void __80__NTKComplicationCollection__cleanupOrphanedSampleTemplatesForClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) != 1 || ([v3 identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CBB688]), v5, (v6 & 1) == 0))
  {
    v7 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v4 identifier];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection, removing orphaned sample data for %@, %@", &v10, 0x16u);
    }

    [*(a1 + 40) removeComplicationSampleTemplatesForClientIdentifier:*(a1 + 32) descriptor:v4];
  }
}

- (void)_removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [descriptorCopy identifier];
    v11 = 138412546;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection, removing complication sample data for %@, %@", &v11, 0x16u);
  }

  [(NSRecursiveLock *)self->_lock lock];
  v10 = [(NSMutableDictionary *)self->_localizeableSampleDataTemplates objectForKey:identifierCopy];
  [v10 removeObjectForKey:descriptorCopy];
  if (![v10 count])
  {
    [(NSMutableDictionary *)self->_localizeableSampleDataTemplates removeObjectForKey:identifierCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)suspendUpdatesFromDaemon
{
  if (!self->_updatesEnqueuedWhileSuspended)
  {
    array = [MEMORY[0x277CBEB18] array];
    updatesEnqueuedWhileSuspended = self->_updatesEnqueuedWhileSuspended;
    self->_updatesEnqueuedWhileSuspended = array;
  }

  self->_updatesSuspended = 1;
}

- (void)resumeUpdatesFromDaemon
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_updatesEnqueuedWhileSuspended;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_updatesEnqueuedWhileSuspended removeAllObjects];
  self->_updatesSuspended = 0;
}

- (void)_sendToDaemonUpdatedSampleDataTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  templateCopy = template;
  [(NTKComplicationCollection *)self _registerIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy updateLocalizableSampleDataTemplate:templateCopy forClientIdentifier:identifierCopy descriptor:descriptorCopy family:family];
}

- (void)_sendToDaemonUpdatedComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  descriptorsCopy = descriptors;
  [(NTKComplicationCollection *)self _registerIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy updateComplicationDescriptors:descriptorsCopy forClientIdentifier:identifierCopy];
}

- (void)_sendToDaemonRemoveComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  [(NTKComplicationCollection *)self _registerIfNeeded];
  v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [descriptorCopy identifier];
    v11 = 138412546;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection, telling daemon to remove complication sample templates for %@, %@", &v11, 0x16u);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy removeComplicationSampleTemplatesForClientIdentifier:identifierCopy descriptor:descriptorCopy];
}

- (void)loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  templatesCopy = templates;
  descriptorsCopy = descriptors;
  idCopy = id;
  v11 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = self->_collectionIdentifier;
    *buf = 138412290;
    v23 = collectionIdentifier;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKComplicationCollection %@ load full data", buf, 0xCu);
  }

  v13 = objc_opt_class();
  v14 = objc_opt_class();
  NTKValidateDictionary(templatesCopy, v13, v14);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__NTKComplicationCollection_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId___block_invoke;
  v18[3] = &unk_278780FF8;
  v18[4] = self;
  v19 = idCopy;
  v20 = descriptorsCopy;
  v21 = templatesCopy;
  v15 = templatesCopy;
  v16 = descriptorsCopy;
  v17 = idCopy;
  [(NTKComplicationCollection *)self _performOrEnqueueUpdate:v18];
}

void __108__NTKComplicationCollection_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(*(a1 + 32) + 32) lock];
  v2 = [*(a1 + 48) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  [*(*(a1 + 32) + 32) unlock];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = *(a1 + 56);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __108__NTKComplicationCollection_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId___block_invoke_2;
  v15 = &unk_2787843B8;
  v7 = v5;
  v16 = v7;
  v17 = *(a1 + 48);
  [v6 enumerateKeysAndObjectsUsingBlock:&v12];
  [*(*(a1 + 32) + 32) lock];
  v8 = [v7 mutableCopy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(*(a1 + 32) + 32) unlock];
  v11 = *(a1 + 32);
  if (v11[96])
  {
    [v11 _notifyReloaded];
  }

  else
  {
    v11[96] = 1;
    [*(a1 + 32) _notifyLoaded];
  }
}

void __108__NTKComplicationCollection_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 clientIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = *(a1 + 32);
    v11 = [v5 clientIdentifier];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v12 = *(a1 + 40);
  v13 = [v5 clientIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __108__NTKComplicationCollection_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId___block_invoke_3;
  v26 = &unk_278784390;
  v15 = v5;
  v27 = v15;
  v16 = v9;
  v28 = v16;
  v17 = v6;
  v29 = v17;
  v30 = &v31;
  [v14 enumerateObjectsUsingBlock:&v23];

  if ((v32[3] & 1) == 0)
  {
    v18 = [v15 complicationIdentifier];
    v19 = [v18 isEqualToString:*MEMORY[0x277CBB688]];

    if (v19)
    {
      v20 = MEMORY[0x277CBB718];
      v21 = [v17 supportedFamilies];
      v22 = [v20 legacyComplicationDescriptorWithSupportedFamilies:v21];

      [v16 setObject:v17 forKeyedSubscript:v22];
    }
  }

  _Block_object_dispose(&v31, 8);
}

void __108__NTKComplicationCollection_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 identifier];
  v7 = [*(a1 + 32) complicationIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v9];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)updateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id
{
  referenceCopy = reference;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  idCopy = id;
  if (referenceCopy)
  {
    if (identifierCopy)
    {
      if (descriptorCopy)
      {
LABEL_4:
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __103__NTKComplicationCollection_updateSampleTemplateReference_forClientIdentifier_descriptor_family_seqId___block_invoke;
        v16[3] = &unk_2787843E0;
        v16[4] = self;
        v17 = idCopy;
        v18 = referenceCopy;
        v19 = identifierCopy;
        v20 = descriptorCopy;
        familyCopy = family;
        [(NTKComplicationCollection *)self _performOrEnqueueUpdate:v16];

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"ClientIdentifier"}];
      if (descriptorCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"ComplicationDescriptor"}];
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t __103__NTKComplicationCollection_updateSampleTemplateReference_forClientIdentifier_descriptor_family_seqId___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(a1 + 32) _setLocalizedSampleTemplateReference:*(a1 + 48) forClientIdentifier:*(a1 + 56) descriptor:*(a1 + 64) family:*(a1 + 72)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);

  return [v2 _notifyUpdateComplicationSampleTemplateForClientIdentifier:v3 descriptor:v4];
}

- (void)updateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id
{
  descriptorsCopy = descriptors;
  identifierCopy = identifier;
  idCopy = id;
  if (!descriptorsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"CLKComplicationDescriptor"}];
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"ClientIdentifier"}];
    goto LABEL_3;
  }

  if (!identifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = objc_opt_class();
  NTKValidateArray(descriptorsCopy, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__NTKComplicationCollection_updateComplicationDescriptors_forClientIdentifier_seqId___block_invoke;
  v15[3] = &unk_278780FF8;
  v15[4] = self;
  v16 = idCopy;
  v17 = descriptorsCopy;
  v18 = identifierCopy;
  v12 = identifierCopy;
  v13 = descriptorsCopy;
  v14 = idCopy;
  [(NTKComplicationCollection *)self _performOrEnqueueUpdate:v15];
}

uint64_t __85__NTKComplicationCollection_updateComplicationDescriptors_forClientIdentifier_seqId___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(a1 + 32) _setComplicationDescriptors:*(a1 + 48) forClientIdentifier:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 _notifyUpdateComplicationDescriptorsForClientIdentifier:v3];
}

- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  idCopy = id;
  if (!identifierCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"ClientIdentifier"}];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__NTKComplicationCollection_removeComplicationSampleTemplatesForClientIdentifier_descriptor_seqId___block_invoke;
  v14[3] = &unk_278780FF8;
  v14[4] = self;
  v15 = idCopy;
  v16 = identifierCopy;
  v17 = descriptorCopy;
  v11 = descriptorCopy;
  v12 = identifierCopy;
  v13 = idCopy;
  [(NTKComplicationCollection *)self _performOrEnqueueUpdate:v14];
}

uint64_t __99__NTKComplicationCollection_removeComplicationSampleTemplatesForClientIdentifier_descriptor_seqId___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(a1 + 32) _removeComplicationSampleTemplatesForClientIdentifier:*(a1 + 48) descriptor:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 _notifyRemovedComplicationSampleTemplatesForClientIdentifier:v3 descriptor:v4];
}

- (void)_notifyUpdateComplicationSampleTemplateForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  if (self->_hasLoaded)
  {
    [(NSLock *)self->_observersLock lock];
    v8 = [(NSHashTable *)self->_observers copy];
    [(NSLock *)self->_observersLock unlock];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 complicationCollection:self didUpdateSampleTemplateForClient:identifierCopy descriptor:{descriptorCopy, v15}];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)_notifyUpdateComplicationDescriptorsForClientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_hasLoaded)
  {
    [(NSLock *)self->_observersLock lock];
    v5 = [(NSHashTable *)self->_observers copy];
    [(NSLock *)self->_observersLock unlock];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 complicationCollection:self didUpdateComplicationDescriptorsForClient:{identifierCopy, v12}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifyRemovedComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  if (self->_hasLoaded)
  {
    [(NSLock *)self->_observersLock lock];
    v8 = [(NSHashTable *)self->_observers copy];
    [(NSLock *)self->_observersLock unlock];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 complicationCollection:self didRemoveSampleTemplatesForClient:identifierCopy descriptor:{descriptorCopy, v15}];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)_notifyLoaded
{
  v26 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_observersLock lock];
  v3 = [(NSHashTable *)self->_observers copy];
  [(NSLock *)self->_observersLock unlock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 complicationCollectionDidLoad:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMutableArray *)self->_loadCallbacks copy];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v16 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_loadCallbacks removeAllObjects];
  loadCallbacks = self->_loadCallbacks;
  self->_loadCallbacks = 0;
}

- (void)_notifyReloaded
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_observersLock lock];
  v3 = [(NSHashTable *)self->_observers copy];
  [(NSLock *)self->_observersLock unlock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 complicationCollectionDidReload:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_sampleDataForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  [(NSRecursiveLock *)self->_lock lock];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__38;
  v22 = __Block_byref_object_dispose__38;
  v23 = 0;
  v8 = [(NSMutableDictionary *)self->_localizeableSampleDataTemplates objectForKeyedSubscript:identifierCopy];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__NTKComplicationCollection__sampleDataForClientIdentifier_descriptor___block_invoke;
  v15 = &unk_278784408;
  v9 = descriptorCopy;
  v16 = v9;
  v17 = &v18;
  [v8 enumerateKeysAndObjectsUsingBlock:&v12];

  [(NSRecursiveLock *)self->_lock unlock:v12];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __71__NTKComplicationCollection__sampleDataForClientIdentifier_descriptor___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)_register
{
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy registerForCollectionIdentifier:self->_collectionIdentifier deviceUUID:self->_deviceUUID withSeqId:self->_seqId];

  self->_registrationNeeded = 0;
}

- (void)_registerIfNeeded
{
  if (self->_registrationNeeded)
  {
    [(NTKComplicationCollection *)self _register];
  }
}

- (void)_throwIfNotLoaded:(SEL)loaded
{
  if (!self->_hasLoaded)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    collectionIdentifier = [(NTKComplicationCollection *)self collectionIdentifier];
    v7 = NSStringFromSelector(loaded);
    [v5 raise:v6 format:{@"Attempt to modify complication collection (%@) before it has loaded (sel = %@)", collectionIdentifier, v7}];
  }
}

- (void)_performOrEnqueueUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__NTKComplicationCollection__performOrEnqueueUpdate___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__NTKComplicationCollection__performOrEnqueueUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 88);
    v6 = [*(a1 + 40) copy];
    v4 = _Block_copy(v6);
    [v3 addObject:v4];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

+ (void)_bundleForWatchKitAppID:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Couldn't fetch record for bundle %@ - %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end