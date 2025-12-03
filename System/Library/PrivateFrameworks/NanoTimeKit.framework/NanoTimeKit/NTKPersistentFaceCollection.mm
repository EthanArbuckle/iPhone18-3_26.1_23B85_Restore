@interface NTKPersistentFaceCollection
- (BOOL)_lock_markLoaded;
- (BOOL)hasLoaded;
- (id)_initWithCollectionIdentifier:(id)identifier deviceUUID:(id)d;
- (void)_didAddFace:(id)face withUUID:(id)d atIndex:(unint64_t)index;
- (void)_didMoveFace:(id)face withUUID:(id)d toIndex:(unint64_t)index;
- (void)_didRemoveFace:(id)face withUUID:(id)d;
- (void)_didSelectFaceUUID:(id)d suppressingCallback:(BOOL)callback;
- (void)_fromDaemon_addFace:(id)face forUUID:(id)d;
- (void)_fromDaemon_computeSelectedUUIDFromReferenceAndNotifySelected;
- (void)_fromDaemon_removeFaceForUUID:(id)d;
- (void)_fromDaemon_updateFaceForUUID:(id)d withConfiguration:(id)configuration;
- (void)_fromDaemon_updateFaceForUUID:(id)d withResourceDirectory:(id)directory;
- (void)_handleFlushCompleteForIdentifier:(id)identifier;
- (void)_markLoaded;
- (void)_notifyLoaded;
- (void)_notifyReset;
- (void)_performOrEnqueueUpdateOfType:(int64_t)type forFaceUUID:(id)d block:(id)block;
- (void)_performSuppressingFaceObserverCallbacks:(id)callbacks;
- (void)_pruneEnqueuedUpdatesMadeObsoleteByNewUpdate:(id)update;
- (void)_register;
- (void)_registerIfNeeded;
- (void)_sendToDaemonAddedFace:(id)face forUUID:(id)d;
- (void)_sendToDaemonFlushWithIdentifier:(id)identifier;
- (void)_sendToDaemonOrderedUUIDs;
- (void)_sendToDaemonRemovedFaceForUUID:(id)d;
- (void)_sendToDaemonReset;
- (void)_sendToDaemonSelectedUUIDSuppressingCallback:(BOOL)callback;
- (void)_sendToDaemonUpdatedConfigurationForFace:(id)face withUUID:(id)d;
- (void)_sendToDaemonUpdatedResourceDirectoryForFace:(id)face withUUID:(id)d;
- (void)_sendToDaemonUpgradeForFace:(id)face withUUID:(id)d;
- (void)addFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqId:(id)id;
- (void)dealloc;
- (void)faceConfigurationDidChange:(id)change;
- (void)faceResourceDirectoryDidChange:(id)change;
- (void)faceUpgradeOccurred:(id)occurred;
- (void)flushCompleteForIdentifier:(id)identifier;
- (void)loadFullCollectionWithOrderedUUIDs:(id)ds selectedUUID:(id)d facesDescriptorsByUUID:(id)iD seqId:(id)id completion:(id)completion;
- (void)removeFaceForUUID:(id)d seqId:(id)id completion:(id)completion;
- (void)resetClientCollectionWithCompletion:(id)completion;
- (void)resumeUpdatesFromDaemon;
- (void)suspendUpdatesFromDaemon;
- (void)updateFaceForUUID:(id)d withConfigurationJSONRepresentation:(id)representation seqId:(id)id;
- (void)updateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id completion:(id)completion;
- (void)updateOrderedFaceUUIDs:(id)ds seqId:(id)id;
- (void)updateSelectedFaceUUID:(id)d seqId:(id)id;
- (void)upgradeFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqID:(id)iD;
@end

@implementation NTKPersistentFaceCollection

- (id)_initWithCollectionIdentifier:(id)identifier deviceUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = NTKPersistentFaceCollection;
  v8 = [(NTKFaceCollection *)&v27 initWithCollectionIdentifier:identifierCopy deviceUUID:dCopy];
  v9 = v8;
  if (v8)
  {
    collectionIdentifier = [(NTKFaceCollection *)v8 collectionIdentifier];
    v9->_isLibraryCollection = [collectionIdentifier isEqualToString:@"LibraryFaces"];

    v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nanotimekit.collectionserver" options:4096];
    connection = v9->_connection;
    v9->_connection = v11;

    v13 = v9->_connection;
    v14 = NTKCollectionServerInterface();
    [(NSXPCConnection *)v13 setRemoteObjectInterface:v14];

    v15 = v9->_connection;
    v16 = NTKCollectionClientInterface();
    [(NSXPCConnection *)v15 setExportedInterface:v16];

    v17 = [[_NTKCollectionClientProxy alloc] initWithWeakProxy:v9];
    [(NSXPCConnection *)v9->_connection setExportedObject:v17];
    if (_initWithCollectionIdentifier_deviceUUID__onceToken != -1)
    {
      [NTKPersistentFaceCollection _initWithCollectionIdentifier:deviceUUID:];
    }

    [(NSXPCConnection *)v9->_connection _setQueue:_initWithCollectionIdentifier_deviceUUID__xpcQueue];
    objc_initWeak(&location, v9);
    v18 = v9->_connection;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke_2;
    v24 = &unk_27877DC58;
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)v18 setInterruptionHandler:&v21];
    [(NSXPCConnection *)v9->_connection setInvalidationHandler:&__block_literal_global_84, v21, v22, v23, v24];
    [(NSXPCConnection *)v9->_connection resume];
    [(NTKPersistentFaceCollection *)v9 _register];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _handleDaemonDidLaunchNotification, @"com.apple.nanotimekit.daemondidlaunch", 0, 0);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("PFC-Shared-XPC", v2);
  v1 = _initWithCollectionIdentifier_deviceUUID__xpcQueue;
  _initWithCollectionIdentifier_deviceUUID__xpcQueue = v0;
}

void __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke_3;
  block[3] = &unk_27877DC58;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke_4()
{
  v0 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __72__NTKPersistentFaceCollection__initWithCollectionIdentifier_deviceUUID___block_invoke_4_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanotimekit.daemondidlaunch", 0);
  v4.receiver = self;
  v4.super_class = NTKPersistentFaceCollection;
  [(NTKPersistentFaceCollection *)&v4 dealloc];
}

- (void)_markLoaded
{
  os_unfair_lock_lock(&self->_loadedLock);
  _lock_markLoaded = [(NTKPersistentFaceCollection *)self _lock_markLoaded];
  os_unfair_lock_unlock(&self->_loadedLock);
  if (_lock_markLoaded)
  {

    [(NTKPersistentFaceCollection *)self _notifyLoaded];
  }
}

- (BOOL)_lock_markLoaded
{
  os_unfair_lock_assert_owner(&self->_loadedLock);
  lock_hasLoaded = self->_lock_hasLoaded;
  if (!lock_hasLoaded)
  {
    self->_lock_hasLoaded = 1;
  }

  return !lock_hasLoaded;
}

- (BOOL)hasLoaded
{
  os_unfair_lock_lock(&self->_loadedLock);
  _lock_hasLoaded = [(NTKPersistentFaceCollection *)self _lock_hasLoaded];
  os_unfair_lock_unlock(&self->_loadedLock);
  return _lock_hasLoaded;
}

- (void)_didAddFace:(id)face withUUID:(id)d atIndex:(unint64_t)index
{
  faceCopy = face;
  dCopy = d;
  if (self->_isLibraryCollection)
  {
    [faceCopy setIsLibraryFace:1];
    [faceCopy didMoveToLibrary];
  }

  referenceOrderedUUIDs = self->_referenceOrderedUUIDs;
  self->_referenceOrderedUUIDs = 0;

  v10 = [(NTKFaceCollection *)self numberOfFaces]- 1;
  orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
  v12 = [orderedUUIDs objectAtIndex:index];
  [(NTKPersistentFaceCollection *)self _sendToDaemonAddedFace:faceCopy forUUID:v12];

  if (v10 != index)
  {
    [(NTKPersistentFaceCollection *)self _sendToDaemonOrderedUUIDs];
  }
}

- (void)_didMoveFace:(id)face withUUID:(id)d toIndex:(unint64_t)index
{
  referenceOrderedUUIDs = self->_referenceOrderedUUIDs;
  self->_referenceOrderedUUIDs = 0;

  [(NTKPersistentFaceCollection *)self _sendToDaemonOrderedUUIDs];
}

- (void)_didSelectFaceUUID:(id)d suppressingCallback:(BOOL)callback
{
  callbackCopy = callback;
  referenceSelectedUUID = self->_referenceSelectedUUID;
  self->_referenceSelectedUUID = 0;

  selectedUUID = [(NTKFaceCollection *)self selectedUUID];

  if (selectedUUID)
  {

    [(NTKPersistentFaceCollection *)self _sendToDaemonSelectedUUIDSuppressingCallback:callbackCopy];
  }
}

- (void)_didRemoveFace:(id)face withUUID:(id)d
{
  faceCopy = face;
  [(NTKPersistentFaceCollection *)self _sendToDaemonRemovedFaceForUUID:d];
  if (self->_isLibraryCollection)
  {
    [faceCopy setIsLibraryFace:0];
  }
}

- (void)suspendUpdatesFromDaemon
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(NTKFaceCollection *)self logIdentifier];
    v10 = 138412290;
    v11 = logIdentifier;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ suspend updates from daemon", &v10, 0xCu);
  }

  if (!self->_updatesFromDaemonEnqueuedWhileSuspended)
  {
    array = [MEMORY[0x277CBEB18] array];
    updatesFromDaemonEnqueuedWhileSuspended = self->_updatesFromDaemonEnqueuedWhileSuspended;
    self->_updatesFromDaemonEnqueuedWhileSuspended = array;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  updateSuspensionIdentifier = self->_updateSuspensionIdentifier;
  self->_updateSuspensionIdentifier = uUIDString;

  self->_updatesFromDaemonSuspended = 1;
}

- (void)resumeUpdatesFromDaemon
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(NTKFaceCollection *)self logIdentifier];
    v5 = 138412290;
    v6 = logIdentifier;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ resume updates from daemon", &v5, 0xCu);
  }

  if (self->_updatesFromDaemonSuspended)
  {
    [(NTKPersistentFaceCollection *)self _sendToDaemonFlushWithIdentifier:self->_updateSuspensionIdentifier];
  }
}

- (void)_handleFlushCompleteForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_updateSuspensionIdentifier isEqualToString:identifier])
  {
    v4 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(NTKFaceCollection *)self logIdentifier];
      *buf = 138412290;
      v19 = logIdentifier;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%@ playing back updates enqueued while suspended", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_updatesFromDaemonEnqueuedWhileSuspended;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          block = [*(*(&v13 + 1) + 8 * v10) block];
          block[2]();

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_updatesFromDaemonEnqueuedWhileSuspended removeAllObjects];
    updateSuspensionIdentifier = self->_updateSuspensionIdentifier;
    self->_updateSuspensionIdentifier = 0;

    self->_updatesFromDaemonSuspended = 0;
  }
}

- (void)faceConfigurationDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (!self->_suppressingFaceObserverCallbacks)
  {
    v5 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(NTKFaceCollection *)self logIdentifier];
      v9 = 138412546;
      v10 = logIdentifier;
      v11 = 2112;
      v12 = changeCopy;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ face config did change (face = %@)", &v9, 0x16u);
    }

    uUIDsByFace = [(NTKFaceCollection *)self UUIDsByFace];
    v8 = [uUIDsByFace objectForKey:changeCopy];

    if (v8)
    {
      [(NTKPersistentFaceCollection *)self _sendToDaemonUpdatedConfigurationForFace:changeCopy withUUID:v8];
    }
  }
}

- (void)faceResourceDirectoryDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (!self->_suppressingFaceObserverCallbacks)
  {
    v5 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(NTKFaceCollection *)self logIdentifier];
      v9 = 138412546;
      v10 = logIdentifier;
      v11 = 2112;
      v12 = changeCopy;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ face directory did change (face = %@)", &v9, 0x16u);
    }

    uUIDsByFace = [(NTKFaceCollection *)self UUIDsByFace];
    v8 = [uUIDsByFace objectForKey:changeCopy];

    if (v8)
    {
      [(NTKPersistentFaceCollection *)self _sendToDaemonUpdatedResourceDirectoryForFace:changeCopy withUUID:v8];
    }
  }
}

- (void)faceUpgradeOccurred:(id)occurred
{
  v13 = *MEMORY[0x277D85DE8];
  occurredCopy = occurred;
  if (!self->_suppressingFaceObserverCallbacks)
  {
    v5 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(NTKFaceCollection *)self logIdentifier];
      v9 = 138412546;
      v10 = logIdentifier;
      v11 = 2112;
      v12 = occurredCopy;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ face upgrade in progress (face = %@)", &v9, 0x16u);
    }

    uUIDsByFace = [(NTKFaceCollection *)self UUIDsByFace];
    v8 = [uUIDsByFace objectForKey:occurredCopy];

    if (v8)
    {
      [(NTKPersistentFaceCollection *)self _sendToDaemonUpgradeForFace:occurredCopy withUUID:v8];
    }
  }
}

- (void)_notifyLoaded
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(NTKFaceCollection *)self observers];
  v4 = [observers copy];

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
          [v9 faceCollectionDidLoad:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_notifyReset
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(NTKFaceCollection *)self observers];
  v4 = [observers copy];

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
          [v9 faceCollectionDidReset:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_sendToDaemonOrderedUUIDs
{
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
  [_serverProxy setOrderedFaceUUIDs:orderedUUIDs];
}

- (void)_sendToDaemonSelectedUUIDSuppressingCallback:(BOOL)callback
{
  callbackCopy = callback;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  selectedUUID = [(NTKFaceCollection *)self selectedUUID];
  [_serverProxy setSelectedFaceUUID:selectedUUID suppressingCallback:callbackCopy];
}

- (void)_sendToDaemonUpdatedConfigurationForFace:(id)face withUUID:(id)d
{
  dCopy = d;
  faceCopy = face;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  configurationJSONRepresentation = [faceCopy configurationJSONRepresentation];

  [_serverProxy updateFaceForUUID:dCopy withConfigurationJSONRepresentation:configurationJSONRepresentation];
}

- (void)_sendToDaemonUpdatedResourceDirectoryForFace:(id)face withUUID:(id)d
{
  dCopy = d;
  faceCopy = face;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  resourceDirectory = [faceCopy resourceDirectory];

  [_serverProxy updateFaceForUUID:dCopy withResourceDirectory:resourceDirectory];
}

- (void)_sendToDaemonUpgradeForFace:(id)face withUUID:(id)d
{
  dCopy = d;
  faceCopy = face;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  instanceDescriptor = [faceCopy instanceDescriptor];

  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  [_serverProxy upgradeFaceInstanceDescriptor:instanceDescriptor forUUID:dCopy];
}

- (void)_sendToDaemonAddedFace:(id)face forUUID:(id)d
{
  dCopy = d;
  faceCopy = face;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  instanceDescriptor = [faceCopy instanceDescriptor];

  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  [_serverProxy addFaceInstanceDescriptor:instanceDescriptor forUUID:dCopy];
}

- (void)_sendToDaemonRemovedFaceForUUID:(id)d
{
  dCopy = d;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  [_serverProxy removeFaceForUUID:dCopy];
}

- (void)_sendToDaemonReset
{
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  [_serverProxy resetCollection];
}

- (void)_sendToDaemonFlushWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NTKPersistentFaceCollection *)self _registerIfNeeded];
  _serverProxy = [(NTKPersistentFaceCollection *)self _serverProxy];
  [_serverProxy flushUpdatesWithIdentifier:identifierCopy];
}

- (void)loadFullCollectionWithOrderedUUIDs:(id)ds selectedUUID:(id)d facesDescriptorsByUUID:(id)iD seqId:(id)id completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  idCopy = id;
  completionCopy = completion;
  selfCopy = self;
  _queue = [(NSXPCConnection *)self->_connection _queue];
  dispatch_assert_queue_V2(_queue);

  v13 = objc_opt_class();
  NTKValidateArray(dsCopy, v13);
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  NTKValidateDictionary(iDCopy, v14, v15);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v16 = iDCopy;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v17)
  {
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        v21 = [v16 objectForKey:v20];
        v22 = [NTKFace faceWithInstanceDescriptor:v21];
        if (v22)
        {
          [dictionary setObject:v22 forKey:v20];
        }

        else
        {
          v23 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v21 debugDescription];
            uUIDString = [v20 UUIDString];
            *buf = 138412546;
            v47 = v24;
            v48 = 2112;
            v49 = uUIDString;
            _os_log_error_impl(&dword_22D9C5000, v23, OS_LOG_TYPE_ERROR, "Got a nil NTKFace when initalizing from descriptor %@, uuid %@", buf, 0x16u);
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v17);
  }

  v26 = [dictionary copy];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke;
  v35[3] = &unk_278780FD0;
  v35[4] = selfCopy;
  v36 = idCopy;
  v37 = v16;
  v38 = dsCopy;
  v39 = v26;
  v40 = dCopy;
  v41 = completionCopy;
  v27 = v26;
  [(NTKPersistentFaceCollection *)selfCopy _performOrEnqueueUpdateOfType:0 forFaceUUID:0 block:v35];
}

void __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logIdentifier];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v74 = v3;
    v75 = 2112;
    v76 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon load full collection (seqId=%@)", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  v5 = [*(a1 + 32) facesByUUID];
  v6 = [v5 allKeys];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 48) allKeys];
  [v7 removeObjectsInArray:v9];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v65;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) _fromDaemon_removeFaceForUUID:*(*(&v64 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v12);
  }

  v48 = v10;

  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 56));
  [*(a1 + 32) _updateOrderedUUIDsFromReference:*(a1 + 56) andNotifyReordered:1];
  v15 = [*(a1 + 48) allKeys];
  v16 = [v15 mutableCopy];

  v17 = *(a1 + 32);
  if (!v8 && (v17[144] & 1) != 0)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke_96;
    v62[3] = &unk_278780FA8;
    v63 = *(a1 + 56);
    [v16 sortUsingComparator:v62];

    v17 = *(a1 + 32);
  }

  v18 = [v17 facesByUUID];
  v19 = [v18 allKeys];
  [v16 removeObjectsInArray:v19];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v58 objects:v71 count:16];
  v49 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = *v59;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v59 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v58 + 1) + 8 * j);
        v26 = [*(a1 + 64) objectForKey:v25];
        if (v26)
        {
          [*(a1 + 32) _fromDaemon_addFace:v26 forUUID:v25];
        }

        else
        {
          v27 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke_cold_1(buf, v25, &v74, v27);
          }

          v20 = v49;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v22);
  }

  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 72));
  [*(a1 + 32) _fromDaemon_computeSelectedUUIDFromReferenceAndNotifySelected];
  v28 = [*(a1 + 32) selectedFace];

  if (!v28)
  {
    v29 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 72);
      *v69 = 138412290;
      v70 = v30;
      _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_DEFAULT, "Failed to select the specified selectedUUID (%@) when loading, falling back", v69, 0xCu);
    }

    v31 = *(a1 + 32);
    v32 = [v31 orderedUUIDs];
    v33 = [v32 firstObject];
    [v31 _selectFaceUUID:v33 notify:0];
  }

  v34 = [*(a1 + 48) allKeys];
  v35 = [v34 mutableCopy];

  [v35 removeObjectsInArray:v20];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v35;
  v36 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v55;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v54 + 1) + 8 * k);
        v41 = objc_autoreleasePoolPush();
        v42 = [*(a1 + 32) facesByUUID];
        v43 = [v42 objectForKey:v40];

        v44 = [*(a1 + 64) objectForKey:v40];
        v45 = *(a1 + 32);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke_99;
        v51[3] = &unk_27877E438;
        v52 = v43;
        v53 = v44;
        v46 = v44;
        v47 = v43;
        [v45 _performSuppressingFaceObserverCallbacks:v51];

        objc_autoreleasePoolPop(v41);
      }

      v37 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v37);
  }

  [*(a1 + 32) _markLoaded];
  (*(*(a1 + 80) + 16))();
}

uint64_t __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke_96(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

void __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke_99(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) configuration];
  [v2 applyConfiguration:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) resourceDirectory];
  [v4 setResourceDirectoryByTransferringOwnership:v5];
}

- (void)resetClientCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__NTKPersistentFaceCollection_resetClientCollectionWithCompletion___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:0 forFaceUUID:0 block:v6];
}

uint64_t __67__NTKPersistentFaceCollection_resetClientCollectionWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyReset];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)updateSelectedFaceUUID:(id)d seqId:(id)id
{
  dCopy = d;
  idCopy = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__NTKPersistentFaceCollection_updateSelectedFaceUUID_seqId___block_invoke;
  v10[3] = &unk_27877E238;
  v10[4] = self;
  v11 = dCopy;
  v12 = idCopy;
  v8 = idCopy;
  v9 = dCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:5 forFaceUUID:0 block:v10];
}

uint64_t __60__NTKPersistentFaceCollection_updateSelectedFaceUUID_seqId___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] logIdentifier];
    v4 = a1[5];
    v5 = a1[6];
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon update selected uuid to %@ (seqId=%@)", &v7, 0x20u);
  }

  objc_storeStrong(a1[4] + 12, a1[6]);
  objc_storeStrong(a1[4] + 14, a1[5]);
  return [a1[4] _fromDaemon_computeSelectedUUIDFromReferenceAndNotifySelected];
}

- (void)updateOrderedFaceUUIDs:(id)ds seqId:(id)id
{
  dsCopy = ds;
  idCopy = id;
  v8 = objc_opt_class();
  NTKValidateArray(dsCopy, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__NTKPersistentFaceCollection_updateOrderedFaceUUIDs_seqId___block_invoke;
  v11[3] = &unk_27877E238;
  v11[4] = self;
  v12 = dsCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = dsCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:6 forFaceUUID:0 block:v11];
}

uint64_t __60__NTKPersistentFaceCollection_updateOrderedFaceUUIDs_seqId___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] logIdentifier];
    v4 = a1[5];
    v5 = a1[6];
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon update ordered uuids to %@ (seqId=%@)", &v7, 0x20u);
  }

  objc_storeStrong(a1[4] + 12, a1[6]);
  objc_storeStrong(a1[4] + 13, a1[5]);
  return [a1[4] _updateOrderedUUIDsFromReference:a1[5] andNotifyReordered:1];
}

- (void)updateFaceForUUID:(id)d withConfigurationJSONRepresentation:(id)representation seqId:(id)id
{
  dCopy = d;
  representationCopy = representation;
  idCopy = id;
  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"UUID"}];
    if (representationCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"Configuration"}];
    goto LABEL_3;
  }

  if (!representationCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__NTKPersistentFaceCollection_updateFaceForUUID_withConfigurationJSONRepresentation_seqId___block_invoke;
  v14[3] = &unk_278780FF8;
  v14[4] = self;
  v15 = dCopy;
  v16 = representationCopy;
  v17 = idCopy;
  v11 = idCopy;
  v12 = representationCopy;
  v13 = dCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:2 forFaceUUID:v13 block:v14];
}

void __91__NTKPersistentFaceCollection_updateFaceForUUID_withConfigurationJSONRepresentation_seqId___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) facesByUUID];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = [NTKFaceConfiguration alloc];
  v5 = *(a1 + 48);
  v6 = [v3 device];
  v7 = [(NTKFaceConfiguration *)v4 initWithJSONDictionary:v5 editModeMapping:v3 forDevice:v6];

  v8 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) logIdentifier];
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "%@ from daemon update face for uuid %@ with config %@ (seqId=%@)", &v12, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 56));
  [*(a1 + 32) _fromDaemon_updateFaceForUUID:*(a1 + 40) withConfiguration:v7];
}

- (void)updateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id completion:(id)completion
{
  dCopy = d;
  directoryCopy = directory;
  idCopy = id;
  completionCopy = completion;
  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"UUID"}];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__NTKPersistentFaceCollection_updateFaceForUUID_withResourceDirectory_seqId_completion___block_invoke;
  v18[3] = &unk_278781020;
  v18[4] = self;
  v19 = dCopy;
  v20 = directoryCopy;
  v21 = idCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = idCopy;
  v16 = directoryCopy;
  v17 = dCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:3 forFaceUUID:v17 block:v18];
}

uint64_t __88__NTKPersistentFaceCollection_updateFaceForUUID_withResourceDirectory_seqId_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logIdentifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon update face for uuid %@ with resource directory %@ (seqId=%@)", &v8, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 56));
  [*(a1 + 32) _fromDaemon_updateFaceForUUID:*(a1 + 40) withResourceDirectory:*(a1 + 48)];
  return (*(*(a1 + 64) + 16))();
}

- (void)upgradeFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqID:(id)iD
{
  descriptorCopy = descriptor;
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"UUID"}];
    if (descriptorCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"FaceInstanceDescriptor"}];
    goto LABEL_3;
  }

  if (!descriptorCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__NTKPersistentFaceCollection_upgradeFaceInstanceDescriptor_forUUID_seqID___block_invoke;
  v14[3] = &unk_278780FF8;
  v14[4] = self;
  v15 = descriptorCopy;
  v16 = iDCopy;
  v17 = dCopy;
  v11 = dCopy;
  v12 = iDCopy;
  v13 = descriptorCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:7 forFaceUUID:v11 block:v14];
}

void __75__NTKPersistentFaceCollection_upgradeFaceInstanceDescriptor_forUUID_seqID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logIdentifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon upgrade face %@ (seqId=%@)", &v8, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 48));
  v6 = objc_autoreleasePoolPush();
  v7 = [NTKFace faceWithInstanceDescriptor:*(a1 + 40)];
  [*(a1 + 32) _fromDaemon_upgradeFace:v7 forUUID:*(a1 + 56)];

  objc_autoreleasePoolPop(v6);
}

- (void)addFaceInstanceDescriptor:(id)descriptor forUUID:(id)d seqId:(id)id
{
  descriptorCopy = descriptor;
  dCopy = d;
  idCopy = id;
  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"UUID"}];
    if (descriptorCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"FaceInstanceDescriptor"}];
    goto LABEL_3;
  }

  if (!descriptorCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__NTKPersistentFaceCollection_addFaceInstanceDescriptor_forUUID_seqId___block_invoke;
  v14[3] = &unk_278780FF8;
  v14[4] = self;
  v15 = descriptorCopy;
  v16 = dCopy;
  v17 = idCopy;
  v11 = idCopy;
  v12 = dCopy;
  v13 = descriptorCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:1 forFaceUUID:v12 block:v14];
}

void __71__NTKPersistentFaceCollection_addFaceInstanceDescriptor_forUUID_seqId___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logIdentifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v17 = 138413058;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon add face %@ for uuid %@ (seqId=%@)", &v17, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 56));
  v7 = objc_autoreleasePoolPush();
  v8 = [NTKFace faceWithInstanceDescriptor:*(a1 + 40)];
  v9 = [*(a1 + 32) facesByUUID];
  v10 = [v9 objectForKey:*(a1 + 48)];

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  if (v10)
  {
    v13 = [v8 resourceDirectory];
    [v11 _fromDaemon_updateFaceForUUID:v12 withResourceDirectory:v13];

    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = [v8 configuration];
    [v14 _fromDaemon_updateFaceForUUID:v15 withConfiguration:v16];
  }

  else
  {
    [*(a1 + 32) _fromDaemon_addFace:v8 forUUID:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)removeFaceForUUID:(id)d seqId:(id)id completion:(id)completion
{
  dCopy = d;
  idCopy = id;
  completionCopy = completion;
  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ must be non-nil", @"UUID"}];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__NTKPersistentFaceCollection_removeFaceForUUID_seqId_completion___block_invoke;
  v14[3] = &unk_2787808C8;
  v14[4] = self;
  v15 = dCopy;
  v16 = idCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = idCopy;
  v13 = dCopy;
  [(NTKPersistentFaceCollection *)self _performOrEnqueueUpdateOfType:4 forFaceUUID:v13 block:v14];
}

uint64_t __66__NTKPersistentFaceCollection_removeFaceForUUID_seqId_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logIdentifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "%@ from daemon remove face for uuid %@ (seqId=%@)", &v7, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 48));
  [*(a1 + 32) _fromDaemon_removeFaceForUUID:*(a1 + 40)];
  return (*(*(a1 + 56) + 16))();
}

- (void)flushCompleteForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NTKPersistentFaceCollection_flushCompleteForIdentifier___block_invoke;
  v6[3] = &unk_27877E438;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_fromDaemon_addFace:(id)face forUUID:(id)d
{
  dCopy = d;
  faceCopy = face;
  resourceDirectory = [faceCopy resourceDirectory];
  [faceCopy setResourceDirectoryByTransferringOwnership:resourceDirectory];

  orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
  -[NTKFaceCollection _addFace:forUUID:atIndex:](self, "_addFace:forUUID:atIndex:", faceCopy, dCopy, [orderedUUIDs count]);

  referenceOrderedUUIDs = self->_referenceOrderedUUIDs;
  if (referenceOrderedUUIDs)
  {
    [(NTKFaceCollection *)self _updateOrderedUUIDsFromReference:referenceOrderedUUIDs andNotifyReordered:0];
  }

  [(NTKPersistentFaceCollection *)self _fromDaemon_computeSelectedUUIDFromReferenceAndNotifySelected];
}

- (void)_fromDaemon_removeFaceForUUID:(id)d
{
  dCopy = d;
  facesByUUID = [(NTKFaceCollection *)self facesByUUID];
  v5 = [facesByUUID objectForKey:dCopy];

  if (v5)
  {
    [(NTKFaceCollection *)self _removeFaceForUUID:dCopy];
  }
}

- (void)_fromDaemon_updateFaceForUUID:(id)d withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dCopy = d;
  facesByUUID = [(NTKFaceCollection *)self facesByUUID];
  v9 = [facesByUUID objectForKey:dCopy];

  if (v9)
  {
    configuration = [v9 configuration];
    v11 = [configuration isEqual:configurationCopy];

    if ((v11 & 1) == 0)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __79__NTKPersistentFaceCollection__fromDaemon_updateFaceForUUID_withConfiguration___block_invoke;
      v12[3] = &unk_27877E438;
      v13 = v9;
      v14 = configurationCopy;
      [(NTKPersistentFaceCollection *)self _performSuppressingFaceObserverCallbacks:v12];
    }
  }
}

- (void)_fromDaemon_updateFaceForUUID:(id)d withResourceDirectory:(id)directory
{
  directoryCopy = directory;
  dCopy = d;
  facesByUUID = [(NTKFaceCollection *)self facesByUUID];
  v9 = [facesByUUID objectForKey:dCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__NTKPersistentFaceCollection__fromDaemon_updateFaceForUUID_withResourceDirectory___block_invoke;
  v12[3] = &unk_27877E438;
  v13 = v9;
  v14 = directoryCopy;
  v10 = directoryCopy;
  v11 = v9;
  [(NTKPersistentFaceCollection *)self _performSuppressingFaceObserverCallbacks:v12];
}

- (void)_fromDaemon_computeSelectedUUIDFromReferenceAndNotifySelected
{
  if (self->_referenceSelectedUUID)
  {
    facesByUUID = [(NTKFaceCollection *)self facesByUUID];
    v7 = [facesByUUID objectForKey:self->_referenceSelectedUUID];

    if (v7)
    {
      referenceSelectedUUID = self->_referenceSelectedUUID;
      selectedUUID = [(NTKFaceCollection *)self selectedUUID];
      LODWORD(referenceSelectedUUID) = NTKEqualObjects(referenceSelectedUUID, selectedUUID);

      [(NTKFaceCollection *)self _selectFaceUUID:self->_referenceSelectedUUID notify:referenceSelectedUUID ^ 1];
      v6 = self->_referenceSelectedUUID;
      self->_referenceSelectedUUID = 0;
    }
  }
}

- (void)_register
{
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  collectionIdentifier = [(NTKFaceCollection *)self collectionIdentifier];
  deviceUUID = [(NTKFaceCollection *)self deviceUUID];
  [remoteObjectProxy registerForCollectionIdentifier:collectionIdentifier deviceUUID:deviceUUID withSeqId:self->_seqId];

  self->_registrationNeeded = 0;
}

- (void)_registerIfNeeded
{
  if (self->_registrationNeeded)
  {
    [(NTKPersistentFaceCollection *)self _register];
  }
}

- (void)_performOrEnqueueUpdateOfType:(int64_t)type forFaceUUID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__NTKPersistentFaceCollection__performOrEnqueueUpdateOfType_forFaceUUID_block___block_invoke;
  v12[3] = &unk_27877FF10;
  v12[4] = self;
  v13 = dCopy;
  v14 = blockCopy;
  typeCopy = type;
  v10 = blockCopy;
  v11 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __79__NTKPersistentFaceCollection__performOrEnqueueUpdateOfType_forFaceUUID_block___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 121) == 1)
  {
    v3 = [NTKFaceCollectionUpdate updateWithType:*(a1 + 56) uuid:*(a1 + 40) block:*(a1 + 48)];
    [*(a1 + 32) _pruneEnqueuedUpdatesMadeObsoleteByNewUpdate:v3];
    [*(*(a1 + 32) + 128) addObject:v3];
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (void)_pruneEnqueuedUpdatesMadeObsoleteByNewUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__NTKPersistentFaceCollection__pruneEnqueuedUpdatesMadeObsoleteByNewUpdate___block_invoke;
  aBlock[3] = &unk_278781048;
  v5 = updateCopy;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSMutableArray *)self->_updatesFromDaemonEnqueuedWhileSuspended copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (v6[2](v6, v12))
        {
          [(NSMutableArray *)self->_updatesFromDaemonEnqueuedWhileSuspended removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }
}

uint64_t __76__NTKPersistentFaceCollection__pruneEnqueuedUpdatesMadeObsoleteByNewUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [*(a1 + 32) type];
  v6 = [v3 uuid];

  v7 = [*(a1 + 32) uuid];
  v8 = NTKEqualObjects(v6, v7);

  v9 = [*(a1 + 32) type];
  result = 1;
  if (v9 <= 7)
  {
    if (((1 << v9) & 0x8C) != 0)
    {
      return (v4 == v5) & v8;
    }

    else
    {
      v11 = 1 << v9;
      v12 = ((1 << v9) & 0x60) == 0 || v4 == v5;
      if ((v11 & 0x12) != 0)
      {
        return v8;
      }

      else
      {
        return v12;
      }
    }
  }

  return result;
}

- (void)_performSuppressingFaceObserverCallbacks:(id)callbacks
{
  self->_suppressingFaceObserverCallbacks = 1;
  (*(callbacks + 2))(callbacks, a2);
  self->_suppressingFaceObserverCallbacks = 0;
}

void __119__NTKPersistentFaceCollection_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 UUIDString];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22D9C5000, a4, OS_LOG_TYPE_ERROR, "Got a nil NTKFace for uuid %@", a1, 0xCu);
}

@end