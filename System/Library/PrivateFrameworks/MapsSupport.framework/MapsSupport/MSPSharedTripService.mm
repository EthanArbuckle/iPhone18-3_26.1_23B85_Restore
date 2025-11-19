@interface MSPSharedTripService
+ (BOOL)_supportsPassingClosureReasons;
+ (id)sharedInstance;
- (BOOL)_isMapsInstalled;
- (BOOL)_serviceCanAttemptConnection:(id *)a3;
- (BOOL)_supportsArchivingSharingState;
- (BOOL)_supportsMonitoringBlockList;
- (BOOL)canAddReceivers;
- (BOOL)entitledToReceiveTrips;
- (BOOL)entitledToShareTrip;
- (BOOL)isSharingWithContact:(id)a3;
- (MSPSharedTripService)init;
- (MSPSharedTripSharingIdentity)sharingIdentity;
- (NSArray)receivedTrips;
- (NSArray)receivers;
- (id)_addSubscriptionTokenForTripID:(id)a3;
- (id)_insertOrUpdateTrip:(id)a3;
- (id)_receivers;
- (id)_remoteObjectProxy;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (id)_serviceNameForContact:(id)a3;
- (id)_subscriptionTokensForTripID:(id)a3 createIfNeeded:(BOOL)a4;
- (id)archivedSharingState;
- (id)contactsFromArchivedTripSharingState:(id)a3;
- (id)serviceNameForContact:(id)a3;
- (unint64_t)_capabilityTypeForContact:(id)a3 serviceName:(id *)a4 isActiveReceiver:(BOOL *)a5;
- (unint64_t)capabilityTypeForContact:(id)a3 serviceName:(id *)a4 isActiveReceiver:(BOOL *)a5;
- (void)_addTestTripsTo:(id)a3;
- (void)_checkBlockList;
- (void)_checkEnabledState;
- (void)_checkin;
- (void)_checkinWithCompletion:(id)a3;
- (void)_clearBlockedTripIdentifiers;
- (void)_fetchActiveHandlesWithCompletion:(id)a3;
- (void)_fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)a3;
- (void)_fetchSharedTripsWithCompletion:(id)a3;
- (void)_fetchSharingIdentityWithCompletion:(id)a3;
- (void)_handleCheckinWithSharingIdentity:(id)a3 activeRecipients:(id)a4 serviceNamesByHandle:(id)a5 receivedTrips:(id)a6 permissions:(unint64_t)a7;
- (void)_networkReachabilityChanged:(id)a3;
- (void)_openConnectionIfNeeded;
- (void)_performBlockAfterInitialConnection:(id)a3;
- (void)_performBlockAfterInitialSync:(id)a3;
- (void)_performBlockWhenCheckinCompleted:(id)a3;
- (void)_purgeExpiredBlockedTripIdentifiers;
- (void)_purgeToken:(id)a3 forTripID:(id)a4;
- (void)_reportUserConfirmationOfSharingIdentity:(id)a3 completion:(id)a4;
- (void)_resetCheckinIdentityAndPermissions;
- (void)_scheduleCoalescedBlockListCheckIfNeeded;
- (void)_startMonitoringSystemBlockListIfNeeded;
- (void)_startSharingTripWithContacts:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 completion:(id)a6;
- (void)_startSharingTripWithMessagesGroup:(id)a3 completion:(id)a4;
- (void)_startSharingWithContact:(id)a3 completion:(id)a4;
- (void)_stopAllSharingWithReason:(unint64_t)a3 completion:(id)a4;
- (void)_stopMonitoringSystemBlockList;
- (void)_stopSharingTripWithContacts:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)_stopSharingTripWithMessagesGroup:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)_stopSharingTripWithReason:(unint64_t)a3 completion:(id)a4;
- (void)_stopSharingWithContact:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)_subscribeToSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4;
- (void)_subscriptionTokenDidInvalidate:(id)a3 forTripID:(id)a4;
- (void)_systemBlockListDidUpdate;
- (void)_validateCurrentConfigurationWithCompletion:(id)a3;
- (void)addReceivingObserver:(id)a3;
- (void)addSendingObserver:(id)a3;
- (void)blockSharedTrip:(id)a3;
- (void)blockSharedTripWithIdentifier:(id)a3;
- (void)checkin;
- (void)checkinWithCompletion:(id)a3;
- (void)clearBlockedTripIdentifiers;
- (void)dealloc;
- (void)destinationDidUpdateForSharedTrip:(id)a3;
- (void)destinationReachedDidUpdateForSharedTrip:(id)a3;
- (void)etaDidUpdateForSharedTrip:(id)a3;
- (void)fetchActiveHandlesWithCompletion:(id)a3;
- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)a3;
- (void)fetchSharedTripsWithCompletion:(id)a3;
- (void)fetchSharingIdentityWithCompletion:(id)a3;
- (void)performBlockAfterInitialConnection:(id)a3;
- (void)performBlockAfterInitialSync:(id)a3;
- (void)purgeExpiredBlockedTripIdentifiers;
- (void)purgeToken:(id)a3 forTripID:(id)a4;
- (void)removeReceivingObserver:(id)a3;
- (void)removeSendingObserver:(id)a3;
- (void)reportUserConfirmationOfSharingIdentity:(id)a3 completion:(id)a4;
- (void)routeDidUpdateForSharedTrip:(id)a3;
- (void)sharedTripContactController:(id)a3 didUpdateActiveContactsValues:(id)a4;
- (void)sharedTripDidBecomeAvailable:(id)a3;
- (void)sharedTripDidBecomeUnavailable:(id)a3;
- (void)sharedTripDidClose:(id)a3;
- (void)sharedTripDidStartSharingWithIdentifier:(id)a3;
- (void)sharedTripDidUpdateRecipients:(id)a3 withServices:(id)a4;
- (void)sharedTripInvalidatedWithError:(id)a3;
- (void)sharingIdentityDidChange:(id)a3;
- (void)startSharingTripWithContacts:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 completion:(id)a6;
- (void)startSharingTripWithMessagesGroup:(id)a3 completion:(id)a4;
- (void)startSharingWithContact:(id)a3 completion:(id)a4;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopAllSharingWithReason:(unint64_t)a3 completion:(id)a4;
- (void)stopSharingTripWithContacts:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)stopSharingTripWithMessagesGroup:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)stopSharingTripWithReason:(unint64_t)a3 completion:(id)a4;
- (void)stopSharingWithContact:(id)a3 completion:(id)a4;
- (void)stopSharingWithContact:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation MSPSharedTripService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MSPSharedTripService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __38__MSPSharedTripService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v1;

  v3 = MSPSharedTripServerStartDarwinNotification;
  v4 = MEMORY[0x277D85CD0];

  return notify_register_dispatch(v3, &sharedInstance_daemonHandle, v4, &__block_literal_global_21);
}

- (MSPSharedTripService)init
{
  v29.receiver = self;
  v29.super_class = MSPSharedTripService;
  v2 = [(MSPSharedTripService *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v2->_sharingIdentityLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.Maps.SharedTrip.Service.Isolation", v4);
    isolationQueue = v3->_isolationQueue;
    v3->_isolationQueue = v5;

    v7 = objc_alloc(MEMORY[0x277D0EC08]);
    v8 = MEMORY[0x277D85CD0];
    v9 = [v7 initWithProtocol:&unk_28697CA90 queue:MEMORY[0x277D85CD0]];
    receivingObservers = v3->_receivingObservers;
    v3->_receivingObservers = v9;

    v11 = [objc_alloc(MEMORY[0x277D0EC08]) initWithProtocol:&unk_28697CAF0 queue:v8];
    sendingObservers = v3->_sendingObservers;
    v3->_sendingObservers = v11;

    v13 = [[MSPSharedTripContactController alloc] initWithSharedTripServer:v3];
    sharingContactController = v3->_sharingContactController;
    v3->_sharingContactController = v13;

    [(MSPSharedTripContactController *)v3->_sharingContactController setDelegate:v3];
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    subscriptionTokensByTripID = v3->_subscriptionTokensByTripID;
    v3->_subscriptionTokensByTripID = v15;

    objc_initWeak(&location, v3);
    v17 = v3->_isolationQueue;
    v26[1] = MEMORY[0x277D85DD0];
    v26[2] = 3221225472;
    v26[3] = __28__MSPSharedTripService_init__block_invoke;
    v26[4] = &unk_279867EE0;
    objc_copyWeak(&v27, &location);
    v18 = _GEOConfigAddBlockListenerForKey();
    userDisabledDefaultListener = v3->_userDisabledDefaultListener;
    v3->_userDisabledDefaultListener = v18;

    v20 = v3->_isolationQueue;
    objc_copyWeak(v26, &location);
    v21 = _GEOConfigAddBlockListenerForKey();
    serverDisabledDefaultListener = v3->_serverDisabledDefaultListener;
    v3->_serverDisabledDefaultListener = v21;

    v23 = [MEMORY[0x277D0EC00] sharedNetworkObserver];
    v3->_networkReachable = [v23 isNetworkReachable];

    v24 = [MEMORY[0x277D0EC00] sharedNetworkObserver];
    [v24 addNetworkReachableObserver:v3 selector:sel__networkReachabilityChanged_];

    [(MSPSharedTripService *)v3 checkin];
    objc_destroyWeak(v26);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)checkin
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__MSPSharedTripService_checkin__block_invoke;
  v4[3] = &unk_279866390;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (NSArray)receivedTrips
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__MSPSharedTripService_receivedTrips__block_invoke;
  v6[3] = &unk_279867838;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__MSPSharedTripService_checkin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkin];
}

- (void)_checkin
{
  if (self->_checkinDispatchGroup)
  {
    v2 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      v3 = "[Service] Will not checkin, still waiting for previous checkin to complete";
LABEL_12:
      _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEBUG, v3, buf, 2u);
    }
  }

  else
  {
    v5 = MSPSharedTripEnabled();
    v2 = MSPGetSharedTripLog();
    v6 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEBUG, "[Service] Preparing checkin dispatch group", buf, 2u);
      }

      v2 = dispatch_group_create();
      checkinDispatchGroup = self->_checkinDispatchGroup;
      self->_checkinDispatchGroup = v2;

      dispatch_group_enter(v2);
      v8 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "[Service] Entering checkin dispatch group", buf, 2u);
      }

      objc_initWeak(buf, self);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__MSPSharedTripService__checkin__block_invoke;
      v9[3] = &unk_279868938;
      objc_copyWeak(&v10, buf);
      [(MSPSharedTripService *)self _checkinWithCompletion:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else if (v6)
    {
      LOWORD(buf[0]) = 0;
      v3 = "[Service] Will not checkin, feature is not enabled";
      goto LABEL_12;
    }
  }
}

- (id)_remoteObjectProxy
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(MSPSharedTripService *)self _openConnectionIfNeeded];
  connection = self->_connection;

  return [(NSXPCConnection *)connection remoteObjectProxy];
}

- (void)_openConnectionIfNeeded
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (!self->_connection)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] Will open connection to daemon", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.Maps.xpc.SharedTrip" options:0];
    connection = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286963800];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_fetchSharedTripsWithCompletion_ argumentIndex:0 ofReply:1];

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v6 setClasses:v12 forSelector:sel_checkinWithCompletion_ argumentIndex:3 ofReply:1];

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286972300];
    [(NSXPCConnection *)self->_connection setExportedInterface:v13];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(NSXPCConnection *)self->_connection _setQueue:self->_isolationQueue];
    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_connection);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__MSPSharedTripService__openConnectionIfNeeded__block_invoke;
    v20[3] = &unk_279865EA8;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v20];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__MSPSharedTripService__openConnectionIfNeeded__block_invoke_191;
    v17[3] = &unk_279865EA8;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v17];
    v14 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_connection;
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Service] Checking in on connection: %@", buf, 0xCu);
    }

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __37__MSPSharedTripService_receivedTrips__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __32__MSPSharedTripService__checkin__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCheckinWithSharingIdentity:v11 activeRecipients:v12 serviceNamesByHandle:v13 receivedTrips:v14 permissions:a6];
    v17 = *(v16 + 15);
    v18 = MSPGetSharedTripLog();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "[Service] Leaving checkin dispatch group", buf, 2u);
      }

      dispatch_group_leave(*(v16 + 15));
      v19 = *(v16 + 15);
      *(v16 + 15) = 0;
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_ERROR, "[Service] Checkin dispatch group missing when checkin completed", v21, 2u);
    }

    [*(v16 + 6) sharedTripServiceDidUpdateReceivingAvailability:v16];
    [*(v16 + 7) sharedTripServiceDidUpdateSendingAvailability:v16];
  }

  else
  {
    v20 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_DEBUG, "[Service] Leaving checking dispatch group, self deallocated", v23, 2u);
    }
  }
}

- (NSArray)receivers
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MSPSharedTripService_receivers__block_invoke;
  block[3] = &unk_279867928;
  block[4] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(isolationQueue, block);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __33__MSPSharedTripService_receivers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _receivers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_receivers
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(MSPSharedTripContactController *)self->_sharingContactController activeContactsValues];
  v4 = [v3 array];

  return v4;
}

- (BOOL)canAddReceivers
{
  if (self->_networkReachable)
  {
    return MSPSharedTripSharingAvailable();
  }

  else
  {
    return 0;
  }
}

- (MSPSharedTripSharingIdentity)sharingIdentity
{
  os_unfair_lock_lock(&self->_sharingIdentityLock);
  v3 = self->_sharingIdentity;
  os_unfair_lock_unlock(&self->_sharingIdentityLock);

  return v3;
}

- (BOOL)entitledToShareTrip
{
  os_unfair_lock_lock(&self->_sharingIdentityLock);
  permissions = self->_permissions;
  os_unfair_lock_unlock(&self->_sharingIdentityLock);
  return permissions & 1;
}

- (BOOL)entitledToReceiveTrips
{
  os_unfair_lock_lock(&self->_sharingIdentityLock);
  v3 = (self->_permissions >> 1) & 1;
  os_unfair_lock_unlock(&self->_sharingIdentityLock);
  return v3;
}

void __28__MSPSharedTripService_init__block_invoke(uint64_t a1)
{
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEFAULT, "[Service] Notified Share ETA user enabled did change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkEnabledState];
}

void __28__MSPSharedTripService_init__block_invoke_68(uint64_t a1)
{
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEFAULT, "[Service] Notified Share ETA server enabled did change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkEnabledState];
}

- (void)dealloc
{
  [(MSPSharedTripService *)self _stopMonitoringSystemBlockList];
  v3 = [MEMORY[0x277D0EC00] sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  userDisabledDefaultListener = self->_userDisabledDefaultListener;
  GEOConfigRemoveBlockListener();
  serverDisabledDefaultListener = self->_serverDisabledDefaultListener;
  GEOConfigRemoveBlockListener();
  v6 = self->_userDisabledDefaultListener;
  self->_userDisabledDefaultListener = 0;

  v7 = self->_serverDisabledDefaultListener;
  self->_serverDisabledDefaultListener = 0;

  checkinDispatchGroup = self->_checkinDispatchGroup;
  if (checkinDispatchGroup)
  {
    self->_checkinDispatchGroup = 0;
    v9 = checkinDispatchGroup;

    dispatch_group_leave(v9);
  }

  v10.receiver = self;
  v10.super_class = MSPSharedTripService;
  [(MSPSharedTripService *)&v10 dealloc];
}

- (void)_handleCheckinWithSharingIdentity:(id)a3 activeRecipients:(id)a4 serviceNamesByHandle:(id)a5 receivedTrips:(id)a6 permissions:(unint64_t)a7
{
  v19 = a3;
  v13 = a6;
  isolationQueue = self->_isolationQueue;
  v15 = a5;
  v16 = a4;
  dispatch_assert_queue_V2(isolationQueue);
  self->_connectionError = 0;
  self->_connectionRetryCounter = 0;
  os_unfair_lock_lock(&self->_sharingIdentityLock);
  objc_storeStrong(&self->_sharingIdentity, a3);
  self->_permissions = a7;
  os_unfair_lock_unlock(&self->_sharingIdentityLock);
  [(MSPSharedTripContactController *)self->_sharingContactController updateActiveSharingHandles:v16 serviceNames:v15];

  if (v13)
  {
    v17 = [v13 mutableCopy];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  receivedTrips = self->_receivedTrips;
  self->_receivedTrips = v17;

  [(MSPSharedTripService *)self _addTestTripsTo:self->_receivedTrips];
}

- (void)_resetCheckinIdentityAndPermissions
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Service] Resetting checkin identity and permissions", v5, 2u);
  }

  os_unfair_lock_lock(&self->_sharingIdentityLock);
  sharingIdentity = self->_sharingIdentity;
  self->_sharingIdentity = 0;

  self->_permissions = 0;
  os_unfair_lock_unlock(&self->_sharingIdentityLock);
}

- (void)_performBlockWhenCheckinCompleted:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_checkinDispatchGroup)
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] Registering to be notified when checkin is completed", v6, 2u);
    }

    dispatch_group_notify(self->_checkinDispatchGroup, self->_isolationQueue, v4);
  }
}

- (void)_checkEnabledState
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = MSPSharedTripEnabled();
  connection = self->_connection;
  if (v3)
  {
    if (!connection)
    {
      v5 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[Service] Feature is enabled, will attempt checkin", &v9, 2u);
      }

      [(MSPSharedTripService *)self _checkin];
    }
  }

  else if (connection)
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_connection;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] Feature is disabled, invalidating current connection: %@", &v9, 0xCu);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performBlockAfterInitialConnection:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSPSharedTripService_performBlockAfterInitialConnection___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__MSPSharedTripService_performBlockAfterInitialConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockAfterInitialConnection:*(a1 + 32)];
}

- (void)_performBlockAfterInitialConnection:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__MSPSharedTripService__performBlockAfterInitialConnection___block_invoke;
  v11[3] = &unk_279868010;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = MEMORY[0x259C7AD60](v11);
  checkinDispatchGroup = self->_checkinDispatchGroup;
  v8 = MSPGetSharedTripLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (checkinDispatchGroup)
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "[Service] Will fire external post-checkin block when checkin is completed", v10, 2u);
    }

    dispatch_group_notify(self->_checkinDispatchGroup, self->_isolationQueue, v6);
  }

  else
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "[Service] Will fire external post-checkin block, checkin is not in progress", v10, 2u);
    }

    v6[2](v6);
  }
}

void __60__MSPSharedTripService__performBlockAfterInitialConnection___block_invoke(uint64_t a1)
{
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEBUG, "[Service] Firing external post-checkin block", buf, 2u);
  }

  v3 = *(a1 + 32);
  v10 = 0;
  [v3 _serviceCanAttemptConnection:&v10];
  v4 = v10;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MSPSharedTripService__performBlockAfterInitialConnection___block_invoke_76;
  v7[3] = &unk_279868988;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v7[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)performBlockAfterInitialSync:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MSPSharedTripService_performBlockAfterInitialSync___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__MSPSharedTripService_performBlockAfterInitialSync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockAfterInitialSync:*(a1 + 32)];
}

- (void)_performBlockAfterInitialSync:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (_performBlockAfterInitialSync__onceToken != -1)
  {
    [MSPSharedTripService _performBlockAfterInitialSync:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__MSPSharedTripService__performBlockAfterInitialSync___block_invoke_79;
  v6[3] = &unk_2798689B0;
  v7 = v4;
  v5 = v4;
  [(MSPSharedTripService *)self _performBlockAfterInitialConnection:v6];
}

void __54__MSPSharedTripService__performBlockAfterInitialSync___block_invoke()
{
  v0 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_25813A000, v0, OS_LOG_TYPE_INFO, "[Service] Call to deprecated performAfterInitialSync:, please use performBlockAfterInitialConnection: instead", v1, 2u);
  }
}

- (void)_networkReachabilityChanged:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D0E7E8]];
  v6 = [v5 BOOLValue];

  if (self->_networkReachable != v6)
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_networkReachable)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[Service] Network reachability changed: %{public}@ -> %{public}@, notifying sending observers", &v13, 0x16u);
    }

    self->_networkReachable = v6;
    [(GEOObserverHashTable *)self->_sendingObservers sharedTripServiceDidUpdateSendingAvailability:self];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)capabilityTypeForContact:(id)a3 serviceName:(id *)a4 isActiveReceiver:(BOOL *)a5
{
  v8 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__MSPSharedTripService_capabilityTypeForContact_serviceName_isActiveReceiver___block_invoke;
  v13[3] = &unk_2798689D8;
  v15 = &v18;
  objc_copyWeak(v16, &location);
  v14 = v8;
  v16[1] = a4;
  v16[2] = a5;
  v10 = v8;
  dispatch_sync(isolationQueue, v13);
  v11 = v19[3];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __78__MSPSharedTripService_capabilityTypeForContact_serviceName_isActiveReceiver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _capabilityTypeForContact:*(a1 + 32) serviceName:*(a1 + 56) isActiveReceiver:*(a1 + 64)];
}

- (unint64_t)_capabilityTypeForContact:(id)a3 serviceName:(id *)a4 isActiveReceiver:(BOOL *)a5
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = [(MSPSharedTripContactController *)self->_sharingContactController activeCapabilityTypeForContact:v8 serviceName:a4];
  if (v9)
  {
    v10 = v9;
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v11 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v10 = [v11 capabilityLevelForContact:v8];

    v12 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v13 = [v12 serviceNameForContact:v8];

    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = 0;
    }
  }

  return v10;
}

- (id)serviceNameForContact:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__MSPSharedTripService_serviceNameForContact___block_invoke;
  v9[3] = &unk_279867860;
  v11 = &v14;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __46__MSPSharedTripService_serviceNameForContact___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _serviceNameForContact:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_serviceNameForContact:(id)a3
{
  v3 = a3;
  v4 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  v5 = [v4 serviceNameForContact:v3];

  return v5;
}

- (BOOL)isSharingWithContact:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSPSharedTripService_isSharingWithContact___block_invoke;
  block[3] = &unk_279866180;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(isolationQueue, block);
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __45__MSPSharedTripService_isSharingWithContact___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) contactIsActive:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)startSharingWithContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__MSPSharedTripService_startSharingWithContact_completion___block_invoke;
  v11[3] = &unk_279868A00;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(isolationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __59__MSPSharedTripService_startSharingWithContact_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _startSharingWithContact:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_startSharingWithContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_networkReachable)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_82;
    v8[3] = &unk_279868AA0;
    v9 = v6;
    v10 = v7;
    objc_copyWeak(&v11, &location);
    [(MSPSharedTripService *)self _validateCurrentConfigurationWithCompletion:v8];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke;
    block[3] = &unk_279868010;
    v14 = v6;
    v15 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CCA068];
  *v7 = @"No network connection";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v10 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:20 userInfo:v2];

  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *v7 = 138478083;
    *&v7[4] = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_ERROR, "[Service] Error starting to share with contact %{private}@: %{public}@", v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_82(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_2;
    block[3] = &unk_279868A28;
    v22 = a1[4];
    v23 = v3;
    v24 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v4 = v22;
  }

  else if ([MEMORY[0x277CBDAB8] _maps_isAuthorized])
  {
    if ([a1[4] isHandleBlocked])
    {
      v5 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Service] Will not start sharing, contact is in system block list", buf, 2u);
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_85;
      v14[3] = &unk_279868010;
      v15 = a1[4];
      v16 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], v14);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained[9];
      v8 = a1[4];
      v9 = WeakRetained[3];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_86;
      v11[3] = &unk_279868A78;
      v12 = v8;
      v13 = a1[5];
      [v7 shareWithContactValue:v12 queue:v9 completion:v11];
    }
  }

  else
  {
    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "[Service] Will not start sharing, Maps is not authorised for Contacts", buf, 2u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_84;
    v17[3] = &unk_279868010;
    v18 = a1[4];
    v19 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], v17);

    v4 = v18;
  }
}

uint64_t __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 138478083;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Error starting to share with contact %{private}@: %{public}@", &v8, 0x16u);
  }

  v5 = a1[5];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_84(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CCA068];
  *v7 = @"Maps does not have authorisation for Contacts";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v10 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:19 userInfo:v2];

  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *v7 = 138478083;
    *&v7[4] = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_ERROR, "[Service] Error starting to share with contact %{private}@: %{public}@", v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_85(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CCA068];
  *v7 = @"Contact is in system block list";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v10 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:21 userInfo:v2];

  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *v7 = 138478083;
    *&v7[4] = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_ERROR, "[Service] Error starting to share with contact %{private}@: %{public}@", v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_86(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_2_87;
  v8[3] = &unk_279868A50;
  v9 = v6;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __60__MSPSharedTripService__startSharingWithContact_completion___block_invoke_2_87(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[4];
      v3 = a1[5];
      v9 = 138478083;
      v10 = v3;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Error starting to share with contact %{private}@: %{public}@", &v9, 0x16u);
    }

    v5 = a1[4];
  }

  v6 = a1[7];
  result = (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)_supportsPassingClosureReasons
{
  if (_supportsPassingClosureReasons_onceToken != -1)
  {
    +[MSPSharedTripService _supportsPassingClosureReasons];
  }

  return _supportsPassingClosureReasons_supported;
}

void __54__MSPSharedTripService__supportsPassingClosureReasons__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([v1 isEqual:*MEMORY[0x277D0EA88]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.Preferences"];
  }

  _supportsPassingClosureReasons_supported = v2;
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (_supportsPassingClosureReasons_supported)
    {
      v4 = "YES";
    }

    v6 = 138543618;
    v7 = v1;
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] %{public}@ supports passing sharing closure reasons: %s", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingWithContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__MSPSharedTripService_stopSharingWithContact_completion___block_invoke;
  v11[3] = &unk_279868A00;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(isolationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __58__MSPSharedTripService_stopSharingWithContact_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stopSharingWithContact:*(a1 + 32) reason:0 completion:*(a1 + 40)];
}

- (void)stopSharingWithContact:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if ([objc_opt_class() _supportsPassingClosureReasons])
  {
    objc_initWeak(&location, self);
    isolationQueue = self->_isolationQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__MSPSharedTripService_stopSharingWithContact_reason_completion___block_invoke_2;
    v14[3] = &unk_279867810;
    objc_copyWeak(v17, &location);
    v11 = v8;
    v17[1] = a4;
    v15 = v11;
    v16 = v9;
    v12 = v9;
    dispatch_async(isolationQueue, v14);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__MSPSharedTripService_stopSharingWithContact_reason_completion___block_invoke;
    block[3] = &unk_2798676D0;
    v20 = v9;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__MSPSharedTripService_stopSharingWithContact_reason_completion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CCA068];
  v6[0] = @"Operation not permitted";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:22 userInfo:v2];

  (*(v1 + 16))(v1, v3);
  v4 = *MEMORY[0x277D85DE8];
}

void __65__MSPSharedTripService_stopSharingWithContact_reason_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stopSharingWithContact:*(a1 + 32) reason:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)_stopSharingWithContact:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke;
  v12[3] = &unk_279868AC8;
  v10 = v8;
  v13 = v10;
  v11 = v9;
  v14 = v11;
  objc_copyWeak(v15, &location);
  v15[1] = a4;
  [(MSPSharedTripService *)self _validateCurrentConfigurationWithCompletion:v12];
  objc_destroyWeak(v15);

  objc_destroyWeak(&location);
}

void __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 20)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke_2;
    block[3] = &unk_279868A28;
    v15 = *(a1 + 32);
    v16 = v4;
    v17 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v6 = v15;
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = WeakRetained[9];
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = WeakRetained[3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke_96;
    v11[3] = &unk_279868388;
    v12 = v8;
    v13 = *(a1 + 40);
    [v7 stopSharingWithContactValue:v12 reason:v9 queue:v10 completion:v11];

LABEL_6:
  }
}

uint64_t __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 138478083;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Error stopping sharing with contact %{private}@: %{public}@", &v8, 0x16u);
  }

  v5 = a1[5];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke_2_97;
  block[3] = &unk_279868A28;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__MSPSharedTripService__stopSharingWithContact_reason_completion___block_invoke_2_97(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[4];
      v3 = a1[5];
      v8 = 138478083;
      v9 = v3;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Error stopping sharing with contact %{private}@: %{public}@", &v8, 0x16u);
    }

    v5 = a1[4];
  }

  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MSPSharedTripService_stopAllSharingWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__MSPSharedTripService_stopAllSharingWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopAllSharingWithReason:0 completion:*(a1 + 32)];
}

- (void)stopAllSharingWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if ([objc_opt_class() _supportsPassingClosureReasons])
  {
    objc_initWeak(&location, self);
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__MSPSharedTripService_stopAllSharingWithReason_completion___block_invoke_98;
    block[3] = &unk_279865E60;
    objc_copyWeak(v12, &location);
    v12[1] = a3;
    v11 = v6;
    v8 = v6;
    dispatch_async(isolationQueue, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__MSPSharedTripService_stopAllSharingWithReason_completion___block_invoke;
    v14[3] = &unk_2798676D0;
    v15 = v6;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __60__MSPSharedTripService_stopAllSharingWithReason_completion___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CCA068];
  *v6 = @"Operation not permitted";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v7 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:22 userInfo:v2];

  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 138543362;
    *&v6[4] = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_ERROR, "[Service] Error stopping all sharing: %{public}@", v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __60__MSPSharedTripService_stopAllSharingWithReason_completion___block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopAllSharingWithReason:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)_stopAllSharingWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke;
  v8[3] = &unk_279868AF0;
  v7 = v6;
  v9 = v7;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  [(MSPSharedTripService *)self _validateCurrentConfigurationWithCompletion:v8];
  objc_destroyWeak(v10);

  objc_destroyWeak(&location);
}

void __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 code] == 20)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained[9];
      v8 = *(a1 + 48);
      v9 = WeakRetained[3];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke_99;
      v10[3] = &unk_279867770;
      v11 = *(a1 + 32);
      [v7 stopAllSharingWithReason:v8 queue:v9 completion:v10];
    }

    goto LABEL_7;
  }

  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke_2;
    block[3] = &unk_279868010;
    v13 = v4;
    v14 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v6 = v13;
LABEL_7:
  }
}

uint64_t __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Error stopping all sharing: %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke_2_100;
    v5[3] = &unk_279868010;
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

uint64_t __61__MSPSharedTripService__stopAllSharingWithReason_completion___block_invoke_2_100(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Error stopping all sharing: %{public}@", &v7, 0xCu);
    }

    v4 = *(a1 + 32);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sharedTripContactController:(id)a3 didUpdateActiveContactsValues:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315395;
    v11 = "[MSPSharedTripService sharedTripContactController:didUpdateActiveContactsValues:]";
    v12 = 2113;
    v13 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[Service] %s %{private}@", &v10, 0x16u);
  }

  sendingObservers = self->_sendingObservers;
  v8 = [v5 array];
  [(GEOObserverHashTable *)sendingObservers sharedTripService:self didUpdateReceivers:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_supportsMonitoringBlockList
{
  if (_supportsMonitoringBlockList_onceToken != -1)
  {
    [MSPSharedTripService _supportsMonitoringBlockList];
  }

  return _supportsMonitoringBlockList_supported;
}

void __52__MSPSharedTripService__supportsMonitoringBlockList__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  _supportsMonitoringBlockList_supported = [v1 isEqual:*MEMORY[0x277D0EA88]];

  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (_supportsMonitoringBlockList_supported)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEFAULT, "[Service] Supports monitoring system block list: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringSystemBlockListIfNeeded
{
  if ([(MSPSharedTripService *)self _supportsMonitoringBlockList]&& !self->_blockListMonitoringObserver)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] Will start monitoring system block list updates", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = *MEMORY[0x277CFB9B8];
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__MSPSharedTripService__startMonitoringSystemBlockListIfNeeded__block_invoke;
    v9[3] = &unk_279867B08;
    objc_copyWeak(&v10, buf);
    v7 = [v4 addObserverForName:v5 object:0 queue:v6 usingBlock:v9];
    blockListMonitoringObserver = self->_blockListMonitoringObserver;
    self->_blockListMonitoringObserver = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __63__MSPSharedTripService__startMonitoringSystemBlockListIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _systemBlockListDidUpdate];
}

- (void)_stopMonitoringSystemBlockList
{
  if (self->_blockListMonitoringObserver)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] Will stop monitoring system block list updates", v7, 2u);
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self->_blockListMonitoringObserver];

    blockListMonitoringObserver = self->_blockListMonitoringObserver;
    self->_blockListMonitoringObserver = 0;

    [(GCDTimer *)self->_blockListCoalescingTimer invalidate];
    blockListCoalescingTimer = self->_blockListCoalescingTimer;
    self->_blockListCoalescingTimer = 0;
  }
}

- (void)_systemBlockListDidUpdate
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSPSharedTripService__systemBlockListDidUpdate__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

- (void)_scheduleCoalescedBlockListCheckIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_blockListCoalescingTimer)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = 0x3FF0000000000000;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] System block list did update, scheduling coalescing check in %#.1lfs", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    isolationQueue = self->_isolationQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__MSPSharedTripService__scheduleCoalescedBlockListCheckIfNeeded__block_invoke;
    v8[3] = &unk_2798679B0;
    objc_copyWeak(&v9, buf);
    v5 = [GCDTimer scheduledTimerWithTimeInterval:isolationQueue queue:v8 block:1.0];
    blockListCoalescingTimer = self->_blockListCoalescingTimer;
    self->_blockListCoalescingTimer = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __64__MSPSharedTripService__scheduleCoalescedBlockListCheckIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkBlockList];
}

- (void)_checkBlockList
{
  v30 = *MEMORY[0x277D85DE8];
  blockListCoalescingTimer = self->_blockListCoalescingTimer;
  self->_blockListCoalescingTimer = 0;

  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[Service] Instructing capability fetcher to check existing blocked statuses", buf, 2u);
  }

  v5 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  [v5 verifyBlockedStatuses];

  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] Checking blocklist to see if we need to stop any sharing...", buf, 2u);
  }

  v22 = self;
  v7 = [(MSPSharedTripService *)self _receivers];
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 isHandleBlocked])
        {
          v15 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v14 handleForIDS];
            *buf = 138477827;
            v28 = v16;
            _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_DEFAULT, "[Service] Found %{private}@ is now blocked", buf, 0xCu);
          }

          v17 = [v14 handleForIDS];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  if (v8)
  {
    v18 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 count];
      *buf = 134217984;
      v28 = v19;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEFAULT, "[Service] Found %lu handles are now blocked, will stop sharing", buf, 0xCu);
    }

    v20 = [v8 allObjects];
    [(MSPSharedTripService *)v22 _stopSharingTripWithContacts:v20 reason:0 completion:&__block_literal_global_110];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)blockSharedTripWithIdentifier:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D0ED30] _msp_blockTestTripWithIdentifier:v4])
  {
    isolationQueue = self->_isolationQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__MSPSharedTripService_blockSharedTripWithIdentifier___block_invoke;
    v6[3] = &unk_279865EF8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(isolationQueue, v6);
  }

  else
  {
    [(MSPSharedTripService *)self blockSharedTrip:v4];
  }
}

void __54__MSPSharedTripService_blockSharedTripWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D0ED30] _msp_testTripForIdentifier:*(a1 + 40)];
  [v1 sharedTripDidBecomeUnavailable:v2];
}

- (id)_subscriptionTokensForTripID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_subscriptionTokensByTripID objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !v4;
    }

    if (!v8)
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "[Service] Initialising subscription tokens for trip %@", &v12, 0xCu);
      }

      v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [(NSMutableDictionary *)self->_subscriptionTokensByTripID setObject:v7 forKeyedSubscript:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_addSubscriptionTokenForTripID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [MSPSharedTripSubscriptionToken alloc];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__MSPSharedTripService__addSubscriptionTokenForTripID___block_invoke;
    v15 = &unk_279868B18;
    objc_copyWeak(&v16, &location);
    v6 = [(MSPSharedTripSubscriptionToken *)v5 initWithSharedTripIdentifier:v4 invalidationHandler:&v12];
    v7 = [(MSPSharedTripService *)self _subscriptionTokensForTripID:v4 createIfNeeded:1, v12, v13, v14, v15];
    [v7 addObject:v6];
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      *buf = 138412546;
      v19 = v4;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[Service] Add subscription token for trip %@ (%lu subscriptions)", buf, 0x16u);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

void __55__MSPSharedTripService__addSubscriptionTokenForTripID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[Service] Token invalidated, will purge", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _subscriptionTokenDidInvalidate:v6 forTripID:v5];
}

- (void)purgeToken:(id)a3 forTripID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSPSharedTripService_purgeToken_forTripID___block_invoke;
  block[3] = &unk_279866300;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(isolationQueue, block);
}

- (void)_subscriptionTokenDidInvalidate:(id)a3 forTripID:(id)a4
{
  v6 = a3;
  v7 = a4;
  isolationQueue = self->_isolationQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __66__MSPSharedTripService__subscriptionTokenDidInvalidate_forTripID___block_invoke;
  v18 = &unk_279866300;
  v19 = self;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v11 = isolationQueue;
  v12 = v16;
  label = dispatch_queue_get_label(v11);
  v14 = dispatch_queue_get_label(0);
  if (label == v14 || label && v14 && !strcmp(label, v14))
  {
    v15 = objc_autoreleasePoolPush();
    v17(v12);
    objc_autoreleasePoolPop(v15);
  }

  else
  {
    dispatch_sync(v11, v12);
  }
}

- (void)_purgeToken:(id)a3 forTripID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = [(MSPSharedTripService *)self _subscriptionTokensForTripID:v7 createIfNeeded:0];
  if (v8)
  {
    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[Service] Purging %@ for trip %@", buf, 0x16u);
    }

    [v8 removeObject:v6];
    if (![v8 count])
    {
      v10 = [(MSPSharedTripService *)self _remoteObjectProxy];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __46__MSPSharedTripService__purgeToken_forTripID___block_invoke;
      v12[3] = &unk_2798683D8;
      v13 = v7;
      [v10 unsubscribeFromSharedTripUpdatesWithIdentifier:v13 completion:v12];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__MSPSharedTripService__purgeToken_forTripID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MSPGetSharedTripLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "[Service] Failed to unsubscribe from trip %@: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_25813A000, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v13 = 138412290;
    v14 = v11;
    v7 = "[Service] Unsubscribed from trip %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addReceivingObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136380931;
    v8 = "[MSPSharedTripService addReceivingObserver:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s (%@)", &v7, 0x16u);
  }

  [(GEOObserverHashTable *)self->_receivingObservers registerObserver:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeReceivingObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136380931;
    v8 = "[MSPSharedTripService removeReceivingObserver:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s (%@)", &v7, 0x16u);
  }

  [(GEOObserverHashTable *)self->_receivingObservers unregisterObserver:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addSendingObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136380931;
    v8 = "[MSPSharedTripService addSendingObserver:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s (%@)", &v7, 0x16u);
  }

  [(GEOObserverHashTable *)self->_sendingObservers registerObserver:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeSendingObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136380931;
    v8 = "[MSPSharedTripService removeSendingObserver:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s (%@)", &v7, 0x16u);
  }

  [(GEOObserverHashTable *)self->_sendingObservers unregisterObserver:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateCurrentConfigurationWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v19 = 0;
  v5 = [(MSPSharedTripService *)self _serviceCanAttemptConnection:&v19];
  v6 = v19;
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (!v8)
  {
    if (v6)
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v7 code];
        *location = 134218242;
        *&location[4] = v10;
        v21 = 2112;
        v22 = v7;
        v11 = "[Service] Validated configuration with error code: %ld, %@";
        v12 = v9;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 22;
LABEL_12:
        _os_log_impl(&dword_25813A000, v12, v13, v11, location, v14);
      }

LABEL_13:

      v4[2](v4, v7);
      goto LABEL_14;
    }

LABEL_10:
    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
      v11 = "[Service] Validated configuration with no error";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 2;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (self->_sharingIdentity)
  {
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__MSPSharedTripService__validateCurrentConfigurationWithCompletion___block_invoke;
  v16[3] = &unk_279868960;
  objc_copyWeak(&v18, location);
  v17 = v4;
  [(MSPSharedTripService *)self _performBlockWhenCheckinCompleted:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

void __68__MSPSharedTripService__validateCurrentConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEBUG, "[Service] Notified identity should have synced, retrying validation", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _validateCurrentConfigurationWithCompletion:*(a1 + 32)];
}

- (BOOL)_serviceCanAttemptConnection:(id *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_isolationQueue);
  if ([(MSPSharedTripService *)self _isMapsInstalled])
  {
    if (MSPSharedTripUserEnabled())
    {
      if (MSPSharedTripNetworkEnabled())
      {
        sharingIdentity = self->_sharingIdentity;
        if (sharingIdentity && ![(MSPSharedTripSharingIdentity *)sharingIdentity hasValidAccount])
        {
          v13 = *MEMORY[0x277CCA068];
          v14[0] = @"Invalid account for sharing";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
          v7 = MEMORY[0x277CCA9B8];
          v8 = 5;
        }

        else
        {
          if (!self->_connectionError)
          {
            v9 = 0;
            goto LABEL_14;
          }

          v13 = *MEMORY[0x277CCA068];
          v14[0] = @"Failed to connect to trip sharing process";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
          v7 = MEMORY[0x277CCA9B8];
          v8 = 1;
        }
      }

      else
      {
        v13 = *MEMORY[0x277CCA068];
        v14[0] = @"Feature disabled remotely";
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        v7 = MEMORY[0x277CCA9B8];
        v8 = 3;
      }
    }

    else
    {
      v13 = *MEMORY[0x277CCA068];
      v14[0] = @"Feature disabled by user";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v7 = MEMORY[0x277CCA9B8];
      v8 = 4;
    }
  }

  else
  {
    v13 = *MEMORY[0x277CCA068];
    v14[0] = @"Maps is not installed";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = MEMORY[0x277CCA9B8];
    v8 = 2;
  }

  v9 = [v7 errorWithDomain:@"com.apple.Maps.SharedTrip" code:v8 userInfo:v6];

LABEL_14:
  if (a3)
  {
    v10 = v9;
    *a3 = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

- (BOOL)_isMapsInstalled
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (!self->_confirmedMapsIsInstalled)
  {
    v4 = [MEMORY[0x277CF0CD0] processHandle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:*MEMORY[0x277D0EA88]];

    if (!v6)
    {
      if ([v4 hasEntitlement:@"com.apple.private.coreservices.canmaplsdatabase"])
      {
        objc_initWeak(location, self);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __40__MSPSharedTripService__isMapsInstalled__block_invoke;
        v14[3] = &unk_279866390;
        objc_copyWeak(&v15, location);
        v7 = [MSPMapsPaths mapsApplicationContainerPathsWithInvalidationHandler:v14];
        mapsPaths = self->_mapsPaths;
        self->_mapsPaths = v7;

        v9 = self->_mapsPaths;
        v3 = v9 != 0;
        if (v9)
        {
          self->_confirmedMapsIsInstalled = 1;
        }

        else
        {
          v11 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v13 = 0;
            _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Service] Maps app is not available", v13, 2u);
          }
        }

        objc_destroyWeak(&v15);
        objc_destroyWeak(location);
        goto LABEL_15;
      }

      v10 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "[Service] Assuming Maps is installed, not entitled to check", location, 2u);
      }
    }

    v3 = 1;
    self->_confirmedMapsIsInstalled = 1;
LABEL_15:

    return v3;
  }

  return 1;
}

void __40__MSPSharedTripService__isMapsInstalled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__MSPSharedTripService__isMapsInstalled__block_invoke_2;
    block[3] = &unk_279866158;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __40__MSPSharedTripService__isMapsInstalled__block_invoke_2(uint64_t a1)
{
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_ERROR, "[Service] Maps paths invalidated, clearing cached installation state", v5, 2u);
  }

  *(*(a1 + 32) + 152) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = 0;
}

- (id)archivedSharingState
{
  if ([(MSPSharedTripService *)self _supportsArchivingSharingState])
  {
    v3 = MSPGetSharedTripLog();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_archivedSharingState", &unk_2581CCE6D, buf, 2u);
    }

    dispatch_assert_queue_not_V2(self->_isolationQueue);
    *buf = 0;
    v9 = buf;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__9;
    v12 = __Block_byref_object_dispose__9;
    v13 = 0;
    isolationQueue = self->_isolationQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__MSPSharedTripService_archivedSharingState__block_invoke;
    v7[3] = &unk_279868B40;
    v7[4] = self;
    v7[5] = buf;
    dispatch_sync(isolationQueue, v7);
    v5 = *(v9 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __44__MSPSharedTripService_archivedSharingState__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 88))
  {
    v3 = [*(v1 + 72) archivedSharingStorage];
    [v3 setGroupIdentifier:*(*(a1 + 32) + 88)];
    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[Service] Fetching archived sharing state: %@", &v9, 0xCu);
    }

    v5 = [v3 data];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[Service] No shared trip group identifier, will not create archived sharing state", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)contactsFromArchivedTripSharingState:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[MSPSharingRestorationStorage alloc] initWithData:v3];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v6 = [(MSPSharingRestorationStorage *)v4 mapsIdentifiers];
      [v5 addObjectsFromArray:v6];

      v7 = [(MSPSharingRestorationStorage *)v4 messagesIdentifiers];
      [v5 addObjectsFromArray:v7];

      v8 = [v5 array];
      v9 = [MSPSharedTripContact contactsFromIDSHandles:v8];
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (BOOL)_supportsArchivingSharingState
{
  if (_supportsArchivingSharingState_onceToken != -1)
  {
    [MSPSharedTripService _supportsArchivingSharingState];
  }

  return _supportsArchivingSharingState_supported;
}

void __54__MSPSharedTripService__supportsArchivingSharingState__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  _supportsArchivingSharingState_supported = [v1 isEqual:*MEMORY[0x277D0EA88]];
  v2 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "NO";
    if (_supportsArchivingSharingState_supported)
    {
      v3 = "YES";
    }

    v5 = 138543618;
    v6 = v1;
    v7 = 2080;
    v8 = v3;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEFAULT, "[Service] %{public}@ supports archiving sharing state: %s", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_addTestTripsTo:(id)a3
{
  v18 = a3;
  if (GEOConfigGetBOOL())
  {
    v3 = [MEMORY[0x277D0ED30] _msp_testTrip];
    v4 = MEMORY[0x277D0ED30];
    v5 = [v3 groupIdentifier];
    LOBYTE(v4) = [v4 _msp_isTestTripBlockedWithIdentifier:v5];

    if ((v4 & 1) == 0)
    {
      [v18 addObject:v3];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v6 = [MEMORY[0x277D0ED30] _msp_testTripWithMultipleStops];
    v7 = MEMORY[0x277D0ED30];
    v8 = [v6 groupIdentifier];
    LOBYTE(v7) = [v7 _msp_isTestTripBlockedWithIdentifier:v8];

    if ((v7 & 1) == 0)
    {
      [v18 addObject:v6];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v9 = [MEMORY[0x277D0ED30] _msp_testTripWithMultipleStopsMiddleOfTrip];
    v10 = MEMORY[0x277D0ED30];
    v11 = [v9 groupIdentifier];
    LOBYTE(v10) = [v10 _msp_isTestTripBlockedWithIdentifier:v11];

    if ((v10 & 1) == 0)
    {
      [v18 addObject:v9];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v12 = [MEMORY[0x277D0ED30] _msp_testTripSky];
    v13 = MEMORY[0x277D0ED30];
    v14 = [v12 groupIdentifier];
    LOBYTE(v13) = [v13 _msp_isTestTripBlockedWithIdentifier:v14];

    if ((v13 & 1) == 0)
    {
      [v18 addObject:v12];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v15 = [MEMORY[0x277D0ED30] _msp_testTripClosedTripInPast];
    v16 = MEMORY[0x277D0ED30];
    v17 = [v15 groupIdentifier];
    LOBYTE(v16) = [v16 _msp_isTestTripBlockedWithIdentifier:v17];

    if ((v16 & 1) == 0)
    {
      [v18 addObject:v15];
    }
  }
}

- (void)checkinWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSPSharedTripService_checkinWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__MSPSharedTripService_checkinWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _checkinWithCompletion:*(a1 + 32)];
}

- (void)_checkinWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_checkinWithCompletion", &unk_2581CCE6D, v7, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v6 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v6 checkinWithCompletion:v4];
}

- (void)fetchSharingIdentityWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSPSharedTripService_fetchSharingIdentityWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__MSPSharedTripService_fetchSharingIdentityWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchSharingIdentityWithCompletion:*(a1 + 32)];
}

- (void)_fetchSharingIdentityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_fetchSharingIdentityWithCompletion", &unk_2581CCE6D, buf, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v6 = [(MSPSharedTripService *)self _remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__MSPSharedTripService__fetchSharingIdentityWithCompletion___block_invoke;
  v8[3] = &unk_279868B68;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fetchSharingIdentityWithCompletion:v8];
}

void __60__MSPSharedTripService__fetchSharingIdentityWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 112), a2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MSPSharedTripService__fetchSharingIdentityWithCompletion___block_invoke_2;
  v7[3] = &unk_2798674D8;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MSPSharedTripService_fetchRequiresUserConfirmationOfSharingIdentityWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __85__MSPSharedTripService_fetchRequiresUserConfirmationOfSharingIdentityWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:*(a1 + 32)];
}

- (void)_fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_fetchRequiresUserConfirmationOfSharingIdentityWithCompletion", &unk_2581CCE6D, buf, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v6 = [(MSPSharedTripService *)self _remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__MSPSharedTripService__fetchRequiresUserConfirmationOfSharingIdentityWithCompletion___block_invoke;
  v8[3] = &unk_279868BB8;
  v9 = v4;
  v7 = v4;
  [v6 fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:v8];
}

void __86__MSPSharedTripService__fetchRequiresUserConfirmationOfSharingIdentityWithCompletion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__MSPSharedTripService__fetchRequiresUserConfirmationOfSharingIdentityWithCompletion___block_invoke_2;
  v12[3] = &unk_279868B90;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = a2;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (void)reportUserConfirmationOfSharingIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__MSPSharedTripService_reportUserConfirmationOfSharingIdentity_completion___block_invoke;
  v11[3] = &unk_279868A00;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(isolationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__MSPSharedTripService_reportUserConfirmationOfSharingIdentity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _reportUserConfirmationOfSharingIdentity:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_reportUserConfirmationOfSharingIdentity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_reportUserConfirmationOfSharingIdentity", &unk_2581CCE6D, buf, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = [(MSPSharedTripService *)self _remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__MSPSharedTripService__reportUserConfirmationOfSharingIdentity_completion___block_invoke;
  v11[3] = &unk_279867770;
  v12 = v6;
  v10 = v6;
  [v9 reportUserConfirmationOfSharingIdentity:v7 completion:v11];
}

void __76__MSPSharedTripService__reportUserConfirmationOfSharingIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__MSPSharedTripService__reportUserConfirmationOfSharingIdentity_completion___block_invoke_2;
  v6[3] = &unk_2798674D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)startSharingTripWithContacts:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__MSPSharedTripService_startSharingTripWithContacts_capabilityType_serviceName_completion___block_invoke;
  v17[3] = &unk_2798677E8;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a4;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(isolationQueue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __91__MSPSharedTripService_startSharingTripWithContacts_capabilityType_serviceName_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _startSharingTripWithContacts:*(a1 + 32) capabilityType:*(a1 + 64) serviceName:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_startSharingTripWithContacts:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v13))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_startSharingTripWithContacts:capabilityType:", &unk_2581CCE6D, &v18, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v14 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 4)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_279868CA0[a4];
    }

    v18 = 138412546;
    v19 = v10;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Service] Start sharing trip with contacts: %@ via %{public}@", &v18, 0x16u);
  }

  v16 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v16 startSharingTripWithContacts:v10 capabilityType:a4 serviceName:v12 completion:v11];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)startSharingTripWithMessagesGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__MSPSharedTripService_startSharingTripWithMessagesGroup_completion___block_invoke;
  v11[3] = &unk_279868A00;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(isolationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __69__MSPSharedTripService_startSharingTripWithMessagesGroup_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _startSharingTripWithMessagesGroup:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_startSharingTripWithMessagesGroup:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_startSharingTripWithMessagesGroup", &unk_2581CCE6D, &v12, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[Service] Start sharing trip with group: %@", &v12, 0xCu);
  }

  v10 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v10 startSharingTripWithMessagesGroup:v6 completion:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithContacts:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSPSharedTripService_stopSharingTripWithContacts_reason_completion___block_invoke;
  block[3] = &unk_279867810;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __70__MSPSharedTripService_stopSharingTripWithContacts_reason_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stopSharingTripWithContacts:*(a1 + 32) reason:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)_stopSharingTripWithContacts:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_stopSharingTripWithContacts", &unk_2581CCE6D, &v14, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v11 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] Stop sharing trip with Maps/Messages contacts: %@", &v14, 0xCu);
  }

  v12 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v12 stopSharingTripWithContacts:v8 reason:a4 completion:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithMessagesGroup:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__MSPSharedTripService_stopSharingTripWithMessagesGroup_reason_completion___block_invoke;
  block[3] = &unk_279867810;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __75__MSPSharedTripService_stopSharingTripWithMessagesGroup_reason_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stopSharingTripWithMessagesGroup:*(a1 + 32) reason:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)_stopSharingTripWithMessagesGroup:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_stopSharingTripWithMessagesGroup", &unk_2581CCE6D, &v14, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v11 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] Stop sharing trip with group: %@", &v14, 0xCu);
  }

  v12 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v12 stopSharingTripWithMessagesGroup:v8 reason:a4 completion:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__MSPSharedTripService_stopSharingTripWithReason_completion___block_invoke;
  v9[3] = &unk_279865E60;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(isolationQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __61__MSPSharedTripService_stopSharingTripWithReason_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopSharingTripWithReason:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)_stopSharingTripWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_stopSharingTrip", &unk_2581CCE6D, buf, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[Service] Stop sharing trip", v10, 2u);
  }

  v9 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v9 stopSharingTripWithReason:a3 completion:v6];
}

- (void)fetchActiveHandlesWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSPSharedTripService_fetchActiveHandlesWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__MSPSharedTripService_fetchActiveHandlesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchActiveHandlesWithCompletion:*(a1 + 32)];
}

- (void)_fetchActiveHandlesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_fetchActiveHandlesWithCompletion:", &unk_2581CCE6D, buf, 2u);
  }

  dispatch_assert_queue_V2(self->_isolationQueue);
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] Fetch active handles", buf, 2u);
  }

  v7 = [(MSPSharedTripService *)self _remoteObjectProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__MSPSharedTripService__fetchActiveHandlesWithCompletion___block_invoke;
  v9[3] = &unk_279868BE0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 fetchActiveHandlesWithCompletion:v9];
}

void __58__MSPSharedTripService__fetchActiveHandlesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = v5;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[Service] Fetched active handles: %{private}@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 72) updateActiveSharingHandles:v5 serviceNames:v6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSPSharedTripService__fetchActiveHandlesWithCompletion___block_invoke_128;
  block[3] = &unk_279868988;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharedTripsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__MSPSharedTripService_fetchSharedTripsWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__MSPSharedTripService_fetchSharedTripsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchSharedTripsWithCompletion:*(a1 + 32)];
}

- (void)_fetchSharedTripsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[Service] Fetch shared trips", buf, 2u);
  }

  v6 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_fetchSharedTripsOnQueue", &unk_2581CCE6D, buf, 2u);
  }

  v7 = [(MSPSharedTripService *)self _remoteObjectProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MSPSharedTripService__fetchSharedTripsWithCompletion___block_invoke;
  v9[3] = &unk_279868C08;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 fetchSharedTripsWithCompletion:v9];
}

void __56__MSPSharedTripService__fetchSharedTripsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mutableCopy];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v4 = v3;
  [*(a1 + 32) _addTestTripsTo:v3];
  objc_storeStrong((*(a1 + 32) + 64), v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MSPSharedTripService__fetchSharedTripsWithCompletion___block_invoke_2;
  v7[3] = &unk_2798674D8;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__MSPSharedTripService_subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke;
  v11[3] = &unk_279868A00;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(isolationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __78__MSPSharedTripService_subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _subscribeToSharedTripUpdatesWithIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_subscribeToSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[Service] Request to subscribe to trip: %@", &buf, 0xCu);
  }

  v9 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v9))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_subscribeToSharedTripUpdatesWithIdentifier", &unk_2581CCE6D, &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke;
  v19[3] = &unk_279868C30;
  v10 = v7;
  v20 = v10;
  p_buf = &buf;
  v11 = MEMORY[0x259C7AD60](v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke_3;
  v15[3] = &unk_279868C80;
  v12 = v11;
  v17 = v12;
  v15[4] = self;
  v13 = v6;
  v16 = v13;
  v18 = &buf;
  [(MSPSharedTripService *)self _validateCurrentConfigurationWithCompletion:v15];

  _Block_object_dispose(&buf, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke_2;
  block[3] = &unk_279867748;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v8 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    v6 = [*(a1 + 32) _subscriptionTokensForTripID:*(a1 + 40) createIfNeeded:0];
    v7 = [v6 count];
    v8 = MSPGetSharedTripLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 count];
        v11 = *(a1 + 40);
        *buf = 134218242;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[Service] Skipping remote subscribe, already %lu subscription tokens for trip: %@", buf, 0x16u);
      }

      v12 = [*(a1 + 32) _addSubscriptionTokenForTripID:*(a1 + 40)];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[Service] Subscribe to trip: %@", buf, 0xCu);
      }

      v16 = [*(a1 + 32) _remoteObjectProxyWithErrorHandler:*(a1 + 48)];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke_131;
      v22[3] = &unk_279868C58;
      v17 = *(a1 + 56);
      v21 = *(a1 + 32);
      v18 = *(&v21 + 1);
      *&v19 = *(a1 + 48);
      *(&v19 + 1) = v17;
      v23 = v21;
      v24 = v19;
      [v16 subscribeToSharedTripUpdatesWithIdentifier:v18 completion:v22];
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

void __79__MSPSharedTripService__subscribeToSharedTripUpdatesWithIdentifier_completion___block_invoke_131(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_ERROR, "[Service] Failed to subscribe to trip %@: %@", &v10, 0x16u);
    }
  }

  else
  {
    v6 = [*(a1 + 32) _addSubscriptionTokenForTripID:*(a1 + 40)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)blockSharedTrip:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSPSharedTripService_blockSharedTrip___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__MSPSharedTripService_blockSharedTrip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _blockSharedTrip:*(a1 + 32)];
}

- (void)clearBlockedTripIdentifiers
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSPSharedTripService_clearBlockedTripIdentifiers__block_invoke;
  v4[3] = &unk_279866390;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__MSPSharedTripService_clearBlockedTripIdentifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearBlockedTripIdentifiers];
}

- (void)_clearBlockedTripIdentifiers
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] Clear blocked trip identifiers", buf, 2u);
  }

  v4 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_clearBlockedTripIdentifiers", &unk_2581CCE6D, v6, 2u);
  }

  v5 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v5 clearBlockedTripIdentifiers];
}

- (void)purgeExpiredBlockedTripIdentifiers
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__MSPSharedTripService_purgeExpiredBlockedTripIdentifiers__block_invoke;
  v4[3] = &unk_279866390;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __58__MSPSharedTripService_purgeExpiredBlockedTripIdentifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _purgeExpiredBlockedTripIdentifiers];
}

- (void)_purgeExpiredBlockedTripIdentifiers
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Service] Purge expired blocked trip identifiers", buf, 2u);
  }

  v4 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_purgeExpiredBlockedTripIdentifiers", &unk_2581CCE6D, v6, 2u);
  }

  v5 = [(MSPSharedTripService *)self _remoteObjectProxy];
  [v5 purgeExpiredBlockedTripIdentifiers];
}

- (void)sharedTripDidBecomeAvailable:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService sharedTripDidBecomeAvailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  v7 = [(MSPSharedTripService *)self _insertOrUpdateTrip:v5];

  [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didReceiveSharedTrip:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)destinationDidUpdateForSharedTrip:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService destinationDidUpdateForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  v7 = [(MSPSharedTripService *)self _insertOrUpdateTrip:v5];

  [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didUpdateDestinationForSharedTrip:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)destinationReachedDidUpdateForSharedTrip:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService destinationReachedDidUpdateForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  v7 = [(MSPSharedTripService *)self _insertOrUpdateTrip:v5];

  [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didUpdateReachedDestinationForSharedTrip:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)etaDidUpdateForSharedTrip:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService etaDidUpdateForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  v7 = [(MSPSharedTripService *)self _insertOrUpdateTrip:v5];

  [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didUpdateETAForSharedTrip:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)routeDidUpdateForSharedTrip:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService routeDidUpdateForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  v7 = [(MSPSharedTripService *)self _insertOrUpdateTrip:v5];

  [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didUpdateRouteForSharedTrip:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sharedTripDidBecomeUnavailable:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136380675;
    v12 = "[MSPSharedTripService sharedTripDidBecomeUnavailable:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v11, 0xCu);
  }

  if (!v4)
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Service] Notified trip became unavailable but passed nil", &v11, 2u);
    }
  }

  receivedTrips = self->_receivedTrips;
  v8 = [v4 equalityTest];
  v9 = [(NSMutableArray *)receivedTrips indexOfObjectPassingTest:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_receivedTrips removeObjectAtIndex:v9];
    [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didRemoveSharedTrip:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sharedTripDidClose:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService sharedTripDidClose:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  if (!v4)
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Service] Notified trip closed but passed nil", &v9, 2u);
    }
  }

  v7 = [(MSPSharedTripService *)self _insertOrUpdateTrip:v4];

  [(GEOObserverHashTable *)self->_receivingObservers sharedTripService:self didUpdateClosedTrip:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_insertOrUpdateTrip:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = MSPGetSharedTripLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_insertOrUpdateTrip", &unk_2581CCE6D, buf, 2u);
  }

  receivedTrips = self->_receivedTrips;
  v7 = [v4 equalityTest];
  v8 = [(NSMutableArray *)receivedTrips indexOfObjectPassingTest:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v4)
    {
      [(NSMutableArray *)self->_receivedTrips insertObject:v4 atIndex:0];
    }

    v9 = v4;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_receivedTrips objectAtIndex:v8];
    [v9 merge:v4];
    if ([v9 hasClosed] && (objc_msgSend(v9, "closed") & 1) != 0 || objc_msgSend(v9, "hasArrived") && objc_msgSend(v9, "arrived"))
    {
      if ([v9 hasEtaInfo])
      {
        v10 = [v9 finalETAInfo];
        v11 = [v10 hasEtaTimestamp];

        if (v11)
        {
          v12 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v14 = 0;
            _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "Re-stripping eta and route info from closed/arrived trip", v14, 2u);
          }

          [v9 stripArrivedOrClosedTrip];
        }
      }
    }
  }

  return v9;
}

- (void)sharedTripDidStartSharingWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService sharedTripDidStartSharingWithIdentifier:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  v6 = [v4 copy];
  sharingGroupIdentifier = self->_sharingGroupIdentifier;
  self->_sharingGroupIdentifier = v6;

  [(MSPSharedTripService *)self _startMonitoringSystemBlockListIfNeeded];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sharedTripDidUpdateRecipients:(id)a3 withServices:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315395;
    v11 = "[MSPSharedTripService sharedTripDidUpdateRecipients:withServices:]";
    v12 = 2113;
    v13 = v6;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[Service] %s: %{private}@", &v10, 0x16u);
  }

  [(MSPSharedTripContactController *)self->_sharingContactController updateActiveSharingHandles:v6 serviceNames:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sharedTripInvalidatedWithError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136380675;
    v9 = "[MSPSharedTripService sharedTripInvalidatedWithError:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v8, 0xCu);
  }

  [(MSPSharedTripService *)self _stopMonitoringSystemBlockList];
  sharingGroupIdentifier = self->_sharingGroupIdentifier;
  self->_sharingGroupIdentifier = 0;

  [(MSPSharedTripContactController *)self->_sharingContactController reset];
  [(GEOObserverHashTable *)self->_sendingObservers sharedTripService:self sharingDidInvalidateWithError:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sharingIdentityDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136380675;
    v10 = "[MSPSharedTripService sharingIdentityDidChange:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Service] %{private}s", &v9, 0xCu);
  }

  sharingIdentity = self->_sharingIdentity;
  self->_sharingIdentity = v4;
  v7 = v4;

  [(GEOObserverHashTable *)self->_sendingObservers sharedTripService:self didUpdateSharingIdentity:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  [(MSPSharedTripService *)self _openConnectionIfNeeded];
  v6 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];

  return v7;
}

void __47__MSPSharedTripService__openConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Service] Connection invalidated: %@", &v10, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 1;
    if (v4[15])
    {
      v6 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] Leaving checkin group, connection invalidated", &v10, 2u);
      }

      dispatch_group_leave(v5[15]);
      v7 = v5[15];
      v5[15] = 0;
    }

    v8 = v5[1];
    v5[1] = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __47__MSPSharedTripService__openConnectionIfNeeded__block_invoke_191(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Service] Connection interrupted: %@", &v22, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 1;
    if (v4[15])
    {
      v6 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Service] Leaving checkin group, connection interrupted", &v22, 2u);
      }

      dispatch_group_leave(v5[15]);
      v7 = v5[15];
      v5[15] = 0;
    }

    v8 = v5[5];
    v9 = &v5[4]->isa + 1;
    v5[4] = v9;
    v10 = v8;
    v11 = v10;
    if (v9 < 5)
    {
      if (v10)
      {
        [v10 timeIntervalSinceNow];
        if (v16 <= 0.0)
        {
          v17 = v5[5];
          v5[5] = 0;

          v5[4] = 0;
          v18 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEFAULT, "[Service] BackoffUntilDate has passed, resetting connection retries", &v22, 2u);
          }
        }
      }

      v19 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v5[4];
        v22 = 134218240;
        v23 = v20;
        v24 = 2048;
        v25 = 5;
        _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEFAULT, "[Service] Attempting to resume connection (%lu/%lu)", &v22, 0x16u);
      }

      [(dispatch_group_t *)v5 _checkin];
    }

    else
    {
      if (!v10)
      {
        v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
        v13 = v5[5];
        v5[5] = v12;
      }

      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v5[5];
        v22 = 138412290;
        v23 = v15;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Service] Will not attempt to resume connection, backing off until %@", &v22, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end