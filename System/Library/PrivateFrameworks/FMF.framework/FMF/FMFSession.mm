@interface FMFSession
+ (BOOL)FMFAllowed;
+ (BOOL)FMFRestricted;
+ (BOOL)isAnyAccountManaged;
+ (BOOL)isProvisionedForLocationSharing;
+ (FMFSession)sharedInstance;
- (BOOL)canGetLocationForHandle:(id)handle groupId:(id)id callerId:(id)callerId;
- (BOOL)canShareLocationWithHandle:(id)handle groupId:(id)id callerId:(id)callerId;
- (BOOL)is5XXError:(id)error;
- (BOOL)isMyLocationEnabled;
- (BOOL)shouldHandleErrorInFWK:(id)k;
- (FMFSession)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (FMFSessionDelegate)delegate;
- (NSSet)handles;
- (NSXPCConnection)connection;
- (double)maxLocatingInterval;
- (id)__connection;
- (id)cachedLocationForHandle:(id)handle;
- (id)getActiveLocationSharingDevice;
- (id)getAllDevices;
- (id)getFavoritesSharingLocationWithMe;
- (id)getHandlesFollowingMyLocation;
- (id)getHandlesSharingLocationsWithMe;
- (id)getHandlesWithPendingOffers;
- (id)getOfferExpirationForHandle:(id)handle groupId:(id)id callerId:(id)callerId;
- (id)serverProxy;
- (id)verifyRestrictionsAndShowDialogIfRequired;
- (void)_checkAndDisplayMeDeviceSwitchAlert;
- (void)_daemonDidLaunch;
- (void)_registerForApplicationLifecycleEvents;
- (void)_registerForFMFDLaunchedNotification;
- (void)_sendFriendshipOfferToHandles:(id)handles groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion;
- (void)abDidChange;
- (void)abPreferencesDidChange;
- (void)addFavorite:(id)favorite completion:(id)completion;
- (void)addFence:(id)fence completion:(id)completion;
- (void)addHandles:(id)handles;
- (void)addInterruptionHander:(id)hander;
- (void)addInvalidationHander:(id)hander;
- (void)approveFriendshipRequest:(id)request completion:(id)completion;
- (void)canGetLocationForHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion;
- (void)canOfferToHandles:(id)handles completion:(id)completion;
- (void)canShareLocationWithHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion;
- (void)contactForPayload:(id)payload completion:(id)completion;
- (void)crashDaemon;
- (void)dataForPayload:(id)payload completion:(id)completion;
- (void)dealloc;
- (void)declineFriendshipRequest:(id)request completion:(id)completion;
- (void)decryptPayload:(id)payload withToken:(id)token completion:(id)completion;
- (void)deleteFence:(id)fence completion:(id)completion;
- (void)didAddFollowerHandle:(id)handle;
- (void)didChangeActiveLocationSharingDevice:(id)device;
- (void)didReceiveFriendshipRequest:(id)request;
- (void)didReceiveServerError:(id)error;
- (void)didRemoveFollowerHandle:(id)handle;
- (void)didStartFollowingHandle:(id)handle;
- (void)didStopFollowingHandle:(id)handle;
- (void)didUpdateActiveDeviceList:(id)list;
- (void)didUpdateFavorites:(id)favorites;
- (void)didUpdateFences:(id)fences;
- (void)didUpdateFollowers:(id)followers;
- (void)didUpdateFollowing:(id)following;
- (void)didUpdateHideFromFollowersStatus:(BOOL)status;
- (void)didUpdateLocations:(id)locations;
- (void)didUpdatePendingOffersForHandles:(id)handles;
- (void)didUpdatePreferences:(id)preferences;
- (void)dispatchOnDelegateQueue:(id)queue;
- (void)dumpStateWithCompletion:(id)completion;
- (void)encryptPayload:(id)payload completion:(id)completion;
- (void)exit5XXGracePeriod;
- (void)extendFriendshipOfferToHandle:(id)handle groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion;
- (void)failedToGetLocationForHandle:(id)handle error:(id)error;
- (void)favoritesForMaxCount:(id)count completion:(id)completion;
- (void)fencesForHandles:(id)handles completion:(id)completion;
- (void)forceRefresh;
- (void)forceRefreshWithCompletion:(id)completion;
- (void)getAccountEmailAddress:(id)address;
- (void)getActiveLocationSharingDevice:(id)device;
- (void)getAllDevices:(id)devices;
- (void)getAllLocations:(id)locations;
- (void)getDataForPerformanceRequest:(id)request;
- (void)getFavoritesWithCompletion:(id)completion;
- (void)getFences:(id)fences;
- (void)getHandlesFollowingMyLocation:(id)location;
- (void)getHandlesFollowingMyLocationWithGroupId:(id)id completion:(id)completion;
- (void)getHandlesSharingLocationsWithMe:(id)me;
- (void)getHandlesSharingLocationsWithMeWithGroupId:(id)id completion:(id)completion;
- (void)getHandlesWithPendingOffers:(id)offers;
- (void)getOfferExpirationForHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion;
- (void)getPendingFriendshipRequestsWithCompletion:(id)completion;
- (void)getPendingMappingPacketsForHandle:(id)handle groupId:(id)id completion:(id)completion;
- (void)getPrettyNameForHandle:(id)handle completion:(id)completion;
- (void)getRecordIdForHandle:(id)handle completion:(id)completion;
- (void)getThisDeviceAndCompanion:(id)companion;
- (void)handleAndLocationForPayload:(id)payload completion:(id)completion;
- (void)handleIncomingAirDropURL:(id)l completion:(id)completion;
- (void)iCloudAccountNameWithCompletion:(id)completion;
- (void)includeDeviceInAutomations:(id)automations;
- (void)invalidate;
- (void)isAllowFriendRequestsEnabled:(id)enabled;
- (void)isIn5XXGracePeriodWithCompletion:(id)completion;
- (void)isMyLocationEnabled:(id)enabled;
- (void)locatingInProgressChanged:(id)changed;
- (void)locationForHandle:(id)handle completion:(id)completion;
- (void)mappingPacketSendFailed:(id)failed toHandle:(id)handle withError:(id)error;
- (void)muteFencesForHandle:(id)handle untilDate:(id)date completion:(id)completion;
- (void)nearbyLocationsWithCompletion:(id)completion;
- (void)networkReachabilityUpdated:(BOOL)updated;
- (void)receivedMappingPacket:(id)packet completion:(id)completion;
- (void)refreshLocationForHandle:(id)handle callerId:(id)id priority:(int64_t)priority completion:(id)completion;
- (void)refreshLocationForHandles:(id)handles callerId:(id)id priority:(int64_t)priority completion:(id)completion;
- (void)reloadDataIfNotLoaded;
- (void)removeDevice:(id)device completion:(id)completion;
- (void)removeFavorite:(id)favorite completion:(id)completion;
- (void)removeHandles:(id)handles;
- (void)restoreClientConnection;
- (void)sendFriendshipInviteToHandle:(id)handle groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion;
- (void)sendFriendshipOfferToHandle:(id)handle groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion;
- (void)sendFriendshipOfferToHandles:(id)handles groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion;
- (void)sendIDSMessage:(id)message toIdentifier:(id)identifier completion:(id)completion;
- (void)sendIDSPacket:(id)packet toHandle:(id)handle;
- (void)sendMappingPacket:(id)packet toHandle:(id)handle;
- (void)sendNotNowToHandle:(id)handle callerId:(id)id completion:(id)completion;
- (void)sessionHandleReport:(id)report;
- (void)setActiveDevice:(id)device completion:(id)completion;
- (void)setAllowFriendRequestsEnabled:(BOOL)enabled completion:(id)completion;
- (void)setDebugContext:(id)context;
- (void)setExpiredInitTimestamp;
- (void)setHandles:(id)handles;
- (void)setLocations:(id)locations;
- (void)showMeDeviceAlert;
- (void)showShareMyLocationRestrictedAlert;
- (void)showShareMyLocationiCloudSettingsOffAlert;
- (void)stopSharingMyLocationWithHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion;
- (void)stopSharingMyLocationWithHandles:(id)handles groupId:(id)id callerId:(id)callerId completion:(id)completion;
- (void)triggerWithUUID:(id)d forFenceWithID:(id)iD withStatus:(id)status forDate:(id)date completion:(id)completion;
- (void)triggerWithUUID:(id)d forFenceWithID:(id)iD withStatus:(id)status forDate:(id)date triggerLocation:(id)location completion:(id)completion;
@end

@implementation FMFSession

- (void)includeDeviceInAutomations:(id)automations
{
  automationsCopy = automations;
  objc_initWeak(&location, self);
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__FMFSession_HomeKit__includeDeviceInAutomations___block_invoke;
  v7[3] = &unk_278FDDD00;
  objc_copyWeak(&v9, &location);
  v6 = automationsCopy;
  v8 = v6;
  [serverProxy includeDeviceInAutomations:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__FMFSession_HomeKit__includeDeviceInAutomations___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_24A33F000, v6, OS_LOG_TYPE_DEFAULT, "includeDeviceInAutomations: %i %@", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v9 = LogCategory_Daemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A33F000, v9, OS_LOG_TYPE_DEFAULT, "includeDeviceInAutomations: Could not dispatch to delegate queue. FMFSession was dereferenced.", buf, 2u);
    }

    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__FMFSession_HomeKit__includeDeviceInAutomations___block_invoke_1;
    v11[3] = &unk_278FDDCD8;
    v13 = v8;
    v14 = a2;
    v12 = v5;
    [WeakRetained dispatchOnDelegateQueue:v11];

    v9 = v13;
LABEL_8:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)iCloudAccountNameWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__FMFSession_Internal__iCloudAccountNameWithCompletion___block_invoke;
  v7[3] = &unk_278FDDD60;
  v8 = completionCopy;
  v6 = completionCopy;
  [serverProxy iCloudAccountNameWithCompletion:v7];
}

- (id)getActiveLocationSharingDevice
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[FMFSession(Internal) getActiveLocationSharingDevice]"];
  v4 = [[FMFSynchronizer alloc] initWithDescription:v3 andTimeout:1.0];
  serverProxy = [(FMFSession *)self serverProxy];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__FMFSession_Internal__getActiveLocationSharingDevice__block_invoke;
  v12 = &unk_278FDDD88;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [serverProxy deviceSharingLocation:&v9];

  [(FMFSynchronizer *)v6 wait:v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __54__FMFSession_Internal__getActiveLocationSharingDevice__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

- (id)getAllDevices
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[FMFSession(Internal) getAllDevices]"];
  v4 = [[FMFSynchronizer alloc] initWithDescription:v3 andTimeout:1.0];
  serverProxy = [(FMFSession *)self serverProxy];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __37__FMFSession_Internal__getAllDevices__block_invoke;
  v12 = &unk_278FDDDB0;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [serverProxy allDevices:&v9];

  [(FMFSynchronizer *)v6 wait:v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __37__FMFSession_Internal__getAllDevices__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

- (double)maxLocatingInterval
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[FMFSession(Internal) maxLocatingInterval]"];
  v4 = [[FMFSynchronizer alloc] initWithDescription:v3 andTimeout:1.0];
  serverProxy = [(FMFSession *)self serverProxy];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__FMFSession_Internal__maxLocatingInterval__block_invoke;
  v12 = &unk_278FDDDD8;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [serverProxy getMaxLocatingInterval:&v9];

  [(FMFSynchronizer *)v6 wait:v9];
  v7 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (void)getAllDevices:(id)devices
{
  devicesCopy = devices;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__FMFSession_Internal__getAllDevices___block_invoke;
  v7[3] = &unk_278FDDE00;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [serverProxy allDevices:v7];
}

- (void)removeDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy removeDevice:deviceCopy completion:completionCopy];
}

- (void)getPrettyNameForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  handleCopy = handle;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy getPrettyNameForHandle:handleCopy completion:completionCopy];
}

- (void)getRecordIdForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  handleCopy = handle;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy getRecordIdForHandle:handleCopy completion:completionCopy];
}

- (id)verifyRestrictionsAndShowDialogIfRequired
{
  if (+[FMFSession FMFRestricted])
  {
    serverProxy = [(FMFSession *)self serverProxy];
    [serverProxy showRestrictedAlert];

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:105 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setExpiredInitTimestamp
{
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy setExpiredInitTimestamp];
}

- (BOOL)is5XXError:(id)error
{
  errorCopy = error;
  v4 = [errorCopy code] == 1006 || objc_msgSend(errorCopy, "code") == 1007;

  return v4;
}

- (BOOL)shouldHandleErrorInFWK:(id)k
{
  v14 = *MEMORY[0x277D85DE8];
  kCopy = k;
  v4 = kCopy;
  if (kCopy)
  {
    code = [kCopy code];
    v7 = ((code - 1000) > 5 || ((1 << (code + 24)) & 0x2B) == 0) && code != 104;
  }

  else
  {
    v7 = 0;
  }

  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = v7;
    v12 = 2048;
    code2 = [v4 code];
    _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "shouldHandleErrorInFWK:%d, error.code(%ld)", v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)crashDaemon
{
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy crashDaemon];
}

- (void)exit5XXGracePeriod
{
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy exit5XXGracePeriod];
}

- (void)isIn5XXGracePeriodWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__FMFSession_Internal__isIn5XXGracePeriodWithCompletion___block_invoke;
  v7[3] = &unk_278FDDE28;
  v8 = completionCopy;
  v6 = completionCopy;
  [serverProxy isIn5XXGracePeriodWithCompletion:v7];
}

- (void)sendIDSPacket:(id)packet toHandle:(id)handle
{
  handleCopy = handle;
  packetCopy = packet;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy sendIDSPacket:packetCopy toHandle:handleCopy];
}

- (void)sendIDSMessage:(id)message toIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageCopy = message;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy sendIDSMessage:messageCopy toIdentifier:identifierCopy completion:completionCopy];
}

- (void)dumpStateWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__FMFSession_Internal__dumpStateWithCompletion___block_invoke;
  v7[3] = &unk_278FDDE50;
  v8 = completionCopy;
  v6 = completionCopy;
  [serverProxy dumpStateWithCompletion:v7];
}

- (void)sessionHandleReport:(id)report
{
  reportCopy = report;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__FMFSession_Internal__sessionHandleReport___block_invoke;
  v7[3] = &unk_278FDDE50;
  v8 = reportCopy;
  v6 = reportCopy;
  [serverProxy sessionHandleReport:v7];
}

- (void)getDataForPerformanceRequest:(id)request
{
  requestCopy = request;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy getDataForPerformanceRequest:requestCopy];
}

- (void)showShareMyLocationiCloudSettingsOffAlert
{
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy showShareMyLocationiCloudSettingsOffAlert];
}

- (void)showShareMyLocationRestrictedAlert
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "FMFSession: showShareMyLocationRestrictedAlert", v5, 2u);
  }

  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy showRestrictedAlert];
}

- (void)showMeDeviceAlert
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "FMFSession: showMeDeviceAlert", v5, 2u);
  }

  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy showMeDeviceAlert];
}

- (void)refreshLocationForHandle:(id)handle callerId:(id)id priority:(int64_t)priority completion:(id)completion
{
  v7 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v9 = [v7 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (void)refreshLocationForHandles:(id)handles callerId:(id)id priority:(int64_t)priority completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  handlesCopy = handles;
  serverProxy = [(FMFSession *)self serverProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__FMFSession_Locate__refreshLocationForHandles_callerId_priority_completion___block_invoke;
  v15[3] = &unk_278FDDEA0;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [serverProxy fetchLocationForHandles:handlesCopy callerId:idCopy priority:priority completion:v15];
}

void __77__FMFSession_Locate__refreshLocationForHandles_callerId_priority_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__FMFSession_Locate__refreshLocationForHandles_callerId_priority_completion___block_invoke_2;
  v11[3] = &unk_278FDDE78;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  [v7 dispatchOnDelegateQueue:v11];
}

uint64_t __77__FMFSession_Locate__refreshLocationForHandles_callerId_priority_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)locationForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  handleCopy = handle;
  serverProxy = [(FMFSession *)self serverProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__FMFSession_Locate__locationForHandle_completion___block_invoke;
  v10[3] = &unk_278FDDEF0;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [serverProxy locationForHandle:handleCopy completion:v10];
}

void __51__FMFSession_Locate__locationForHandle_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__FMFSession_Locate__locationForHandle_completion___block_invoke_2;
  v15[3] = &unk_278FDDEC8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  [v10 dispatchOnDelegateQueue:v15];
}

uint64_t __51__FMFSession_Locate__locationForHandle_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)getActiveLocationSharingDevice:(id)device
{
  deviceCopy = device;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "getActiveLocationSharingDevice:", buf, 2u);
  }

  serverProxy = [(FMFSession *)self serverProxy];
  v7 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke;
  v19[3] = &unk_278FDDFD8;
  v20 = deviceCopy;
  v8 = deviceCopy;
  v9 = [v7 addCompletionBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_1;
  v17[3] = &unk_278FDE000;
  v10 = v7;
  v18 = v10;
  [(FMFSession *)self addInvalidationHander:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_4;
  v15[3] = &unk_278FDE000;
  v11 = v10;
  v16 = v11;
  [(FMFSession *)self addInterruptionHander:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_5;
  v13[3] = &unk_278FDE050;
  v13[4] = self;
  v14 = v11;
  v12 = v11;
  [serverProxy deviceSharingLocation:v13];
}

void __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_DEFAULT, "getActiveLocationSharingDevice completed.", &v11, 2u);
  }

  if (*(a1 + 32))
  {
    v8 = LogCategory_Daemon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "getActiveLocationSharingDevice calling completion with result: %@, error: %@", &v11, 0x16u);
    }

    v9 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  (*(v9 + 16))(v9, v5, v6);

  v10 = *MEMORY[0x277D85DE8];
}

void __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_1(uint64_t a1)
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "getActiveLocationSharingDevice invalidated. Finishing with error.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:1020 userInfo:0];
  [v3 finishWithError:v4];
}

void __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_4(uint64_t a1)
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "getActiveLocationSharingDevice interrupted. Finishing with error.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:1019 userInfo:0];
  [v3 finishWithError:v4];
}

void __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_2;
  v10[3] = &unk_278FDE028;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  [v7 dispatchOnDelegateQueue:v10];
}

uint64_t __52__FMFSession_Admin__getActiveLocationSharingDevice___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 finishWithError:?];
  }

  else
  {
    return [v2 finishWithResult:a1[6]];
  }
}

- (void)getThisDeviceAndCompanion:(id)companion
{
  companionCopy = companion;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "getThisDeviceAndCompanion:", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__FMFSession_Admin__getThisDeviceAndCompanion___block_invoke;
  v7[3] = &unk_278FDDE00;
  v8 = companionCopy;
  v6 = companionCopy;
  [(FMFSession *)self getAllDevices:v7];
}

void __47__FMFSession_Admin__getThisDeviceAndCompanion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogCategory_Daemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__FMFSession_Admin__getThisDeviceAndCompanion___block_invoke_cold_1(v6, v7);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 isThisDevice])
          {
            v15 = v14;

            v10 = v15;
          }

          if ([v14 isCompanionDevice])
          {
            v16 = v14;

            v11 = v16;
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setActiveDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = +[FMFSession FMFRestricted];
  serverProxy = [(FMFSession *)self serverProxy];
  v10 = serverProxy;
  if (v8)
  {
    [serverProxy showRestrictedAlert];

    v11 = LogCategory_Daemon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(FMFSession(Admin) *)v11 setActiveDevice:v12 completion:v13, v14, v15, v16, v17, v18];
    }

    if (completionCopy)
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:105 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__FMFSession_Admin__setActiveDevice_completion___block_invoke;
    v20[3] = &unk_278FDE0E8;
    v20[4] = self;
    v22 = completionCopy;
    v21 = deviceCopy;
    [v10 isNetworkReachable:v20];
  }
}

void __48__FMFSession_Admin__setActiveDevice_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v7 = [*(a1 + 32) serverProxy];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_5;
      v20[3] = &unk_278FDE098;
      v8 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      v21 = *(a1 + 48);
      [v7 setActiveDevice:v8 completion:v20];

      v9 = v21;
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_8;
      v22[3] = &unk_278FDE0C0;
      v22[4] = v6;
      v23 = *(a1 + 48);
      [v6 getAllDevices:v22];
      v9 = v23;
    }
  }

  else
  {
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = [*(a1 + 32) serverProxy];
    [v18 showNetworkOfflineDuringOfferAlert];

    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, v5);
    }
  }
}

void __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fm_firstObjectPassingTest:&__block_literal_global_0];
  if (v4 || ([v3 fm_firstObjectPassingTest:&__block_literal_global_11], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    if ([v4 isActiveDevice])
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:108 userInfo:0];
        (*(v6 + 16))(v6, v7);
      }
    }

    else
    {
      v8 = [*(a1 + 32) serverProxy];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_4;
      v11[3] = &unk_278FDE098;
      v9 = *(a1 + 40);
      v11[4] = *(a1 + 32);
      v12 = v9;
      [v8 setActiveDevice:v5 completion:v11];
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
      (v5)[2](v5, v10);

      v5 = 0;
    }
  }
}

uint64_t __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) shouldHandleErrorInFWK:?])
  {
    v3 = [*(a1 + 32) serverProxy];
    [v3 showGenericErrorAlert];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __48__FMFSession_Admin__setActiveDevice_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    if (![v4 shouldHandleErrorInFWK:?])
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) serverProxy];
    [v5 showGenericErrorAlert];
  }

  else
  {
    v5 = [v4 serverProxy];
    [v5 showActiveDeviceChangedAlert];
  }

LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)getHandlesSharingLocationsWithMe:(id)me
{
  meCopy = me;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__FMFSession_Admin__getHandlesSharingLocationsWithMe___block_invoke;
  v7[3] = &unk_278FDE0C0;
  v7[4] = self;
  v8 = meCopy;
  v6 = meCopy;
  [serverProxy getHandlesSharingLocationsWithMe:v7];
}

void __54__FMFSession_Admin__getHandlesSharingLocationsWithMe___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_DEFAULT, "Handles sharing location with me %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__FMFSession_Admin__getHandlesSharingLocationsWithMe___block_invoke_14;
  v13[3] = &unk_278FDDE78;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  [v8 dispatchOnDelegateQueue:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __54__FMFSession_Admin__getHandlesSharingLocationsWithMe___block_invoke_14(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)getHandlesSharingLocationsWithMeWithGroupId:(id)id completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)getHandlesFollowingMyLocation:(id)location
{
  locationCopy = location;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__FMFSession_Admin__getHandlesFollowingMyLocation___block_invoke;
  v7[3] = &unk_278FDE0C0;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  [serverProxy getHandlesSharingMyLocation:v7];
}

void __51__FMFSession_Admin__getHandlesFollowingMyLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_DEFAULT, "Handles following my location: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__FMFSession_Admin__getHandlesFollowingMyLocation___block_invoke_15;
  v13[3] = &unk_278FDDE78;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  [v8 dispatchOnDelegateQueue:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __51__FMFSession_Admin__getHandlesFollowingMyLocation___block_invoke_15(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)getHandlesFollowingMyLocationWithGroupId:(id)id completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

void __57__FMFSession_Admin__setHideMyLocationEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__FMFSession_Admin__setHideMyLocationEnabled_completion___block_invoke_2;
  v7[3] = &unk_278FDE110;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchOnDelegateQueue:v7];
}

uint64_t __57__FMFSession_Admin__setHideMyLocationEnabled_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)isMyLocationEnabled:(id)enabled
{
  enabledCopy = enabled;
  serverProxy = [(FMFSession *)self serverProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__FMFSession_Admin__isMyLocationEnabled___block_invoke;
  v7[3] = &unk_278FDE138;
  v7[4] = self;
  v8 = enabledCopy;
  v6 = enabledCopy;
  [serverProxy isMyLocationEnabled:v7];
}

void __41__FMFSession_Admin__isMyLocationEnabled___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__FMFSession_Admin__isMyLocationEnabled___block_invoke_2;
  v9[3] = &unk_278FDDCD8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 dispatchOnDelegateQueue:v9];
}

uint64_t __41__FMFSession_Admin__isMyLocationEnabled___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)setAllowFriendRequestsEnabled:(BOOL)enabled completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v7);
}

- (void)isAllowFriendRequestsEnabled:(id)enabled
{
  v4 = MEMORY[0x277CCA9B8];
  enabledCopy = enabled;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(enabled + 2))(enabledCopy, 0, v6);
}

- (void)getAccountEmailAddress:(id)address
{
  v4 = MEMORY[0x277CCA9B8];
  addressCopy = address;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(address + 2))(addressCopy, 0, v6);
}

- (void)canShareLocationWithHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion
{
  v7 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v9 = [v7 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, 0, v9);
}

- (void)canGetLocationForHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion
{
  v7 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v9 = [v7 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, 0, v9);
}

- (void)getPendingMappingPacketsForHandle:(id)handle groupId:(id)id completion:(id)completion
{
  v6 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v8 = [v6 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, 0, v8);
}

- (void)getOfferExpirationForHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion
{
  v7 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v9 = [v7 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (void)getHandlesWithPendingOffers:(id)offers
{
  v4 = MEMORY[0x277CCA9B8];
  offersCopy = offers;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(offers + 2))(offersCopy, 0, v6);
}

- (void)canOfferToHandles:(id)handles completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)contactForPayload:(id)payload completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)handleAndLocationForPayload:(id)payload completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, 0, v7);
}

- (void)dataForPayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  serverProxy = [(FMFSession *)self serverProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__FMFSession_Notifications__dataForPayload_completion___block_invoke;
  v10[3] = &unk_278FDE248;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [serverProxy dataForPayload:payloadCopy completion:v10];
}

void __55__FMFSession_Notifications__dataForPayload_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = LogCategory_Daemon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __55__FMFSession_Notifications__dataForPayload_completion___block_invoke_cold_1(v12, v13);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__FMFSession_Notifications__dataForPayload_completion___block_invoke_1;
  v20[3] = &unk_278FDE220;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v24 = v12;
  v25 = v15;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  [v14 dispatchOnDelegateQueue:v20];
}

uint64_t __55__FMFSession_Notifications__dataForPayload_completion___block_invoke_1(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6], a1[7]);
  }

  return result;
}

- (void)decryptPayload:(id)payload withToken:(id)token completion:(id)completion
{
  v6 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v8 = [v6 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v8);
}

- (void)encryptPayload:(id)payload completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)favoritesForMaxCount:(id)count completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)nearbyLocationsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)getAllLocations:(id)locations
{
  v4 = MEMORY[0x277CCA9B8];
  locationsCopy = locations;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(locations + 2))(locationsCopy, 0, v6);
}

- (void)getFavoritesWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)addFavorite:(id)favorite completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v7);
}

- (void)removeFavorite:(id)favorite completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v7);
}

- (void)_sendFriendshipOfferToHandles:(id)handles groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  idCopy = id;
  callerIdCopy = callerId;
  dateCopy = date;
  completionCopy = completion;
  v17 = LogCategory_Daemon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v24 = handlesCopy;
    v25 = 2112;
    v26 = dateCopy;
    v27 = 2112;
    v28 = idCopy;
    v29 = 2112;
    v30 = callerIdCopy;
    _os_log_impl(&dword_24A33F000, v17, OS_LOG_TYPE_INFO, "Sending friend offer for: %@ to date: %@ withGroupId: %@ fromCallerId: %@", buf, 0x2Au);
  }

  serverProxy = [(FMFSession *)self serverProxy];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__FMFSession_Establish___sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke;
  v21[3] = &unk_278FDE3B0;
  v21[4] = self;
  v22 = completionCopy;
  v19 = completionCopy;
  [serverProxy sendFriendshipOfferToHandles:handlesCopy groupId:idCopy callerId:callerIdCopy endDate:dateCopy completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __91__FMFSession_Establish___sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__FMFSession_Establish___sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke_2;
  v14[3] = &unk_278FDDE78;
  v7 = *(a1 + 32);
  v17 = *(a1 + 40);
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  [v7 dispatchOnDelegateQueue:v14];
  if ([*(a1 + 32) shouldHandleErrorInFWK:v9])
  {
    v10 = [*(a1 + 32) is5XXError:v9];
    v11 = *(a1 + 32);
    if (v10)
    {
      v12 = [v11 serverProxy];
      [v12 show5XXDuringStartOfferAlert];
LABEL_6:

      goto LABEL_7;
    }

    if (([v11 _isNoMappingPacketReturnedError:v9] & 1) == 0)
    {
      v12 = [*(a1 + 32) serverProxy];
      [v12 showGenericErrorAlert];
      goto LABEL_6;
    }
  }

LABEL_7:
  v13 = [*(a1 + 32) _isNoMappingPacketReturnedError:v9];
  if (!v9 || v13)
  {
    [*(a1 + 32) _checkAndDisplayMeDeviceSwitchAlert];
  }
}

uint64_t __91__FMFSession_Establish___sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __48__FMFSession_Establish___sendAutoSwitchMeDevice__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 code];
    v5 = LogCategory_Daemon();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4 == 108)
    {
      if (v6)
      {
        LOWORD(v10) = 0;
        v7 = "Offer: This device is already set as Me device";
LABEL_7:
        _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_INFO, v7, &v10, 2u);
      }
    }

    else if (v6)
    {
      v8 = [v3 description];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_INFO, "Offer: Error while trying to set this device as Me device, error: %@", &v10, 0xCu);
    }
  }

  else
  {
    v5 = LogCategory_Daemon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v7 = "Offer: Successfully set this devie as Me device.";
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndDisplayMeDeviceSwitchAlert
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__FMFSession_Establish___checkAndDisplayMeDeviceSwitchAlert__block_invoke;
  v2[3] = &unk_278FDE420;
  v2[4] = self;
  [(FMFSession *)self getActiveLocationSharingDevice:v2];
}

void __60__FMFSession_Establish___checkAndDisplayMeDeviceSwitchAlert__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogCategory_Daemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__FMFSession_Establish___checkAndDisplayMeDeviceSwitchAlert__block_invoke_cold_1(v6, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  if ([v5 isThisDevice] & 1) != 0 || (objc_msgSend(v5, "isCompanionDevice"))
  {
    v7 = LogCategory_Daemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_INFO, "This device is already MeDevice", buf, 2u);
    }

    goto LABEL_4;
  }

  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_INFO, "This device is not MeDevice", buf, 2u);
  }

  v9 = LogCategory_Daemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v9, OS_LOG_TYPE_INFO, "Showing MeDevice switch alert", buf, 2u);
  }

  v10 = [*(a1 + 32) serverProxy];
  v11 = [v5 deviceName];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__FMFSession_Establish___checkAndDisplayMeDeviceSwitchAlert__block_invoke_3;
  v12[3] = &unk_278FDE3F8;
  v12[4] = *(a1 + 32);
  [v10 showSwitchMeDeviceAlertUsingCurrentMeDeviceName:v11 completion:v12];

LABEL_5:
}

void __60__FMFSession_Establish___checkAndDisplayMeDeviceSwitchAlert__block_invoke_3(uint64_t a1, int a2)
{
  v4 = LogCategory_Daemon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_INFO, "User selected to switch this device as MeDevice", buf, 2u);
    }

    [*(a1 + 32) _sendAutoSwitchMeDevice];
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_INFO, "User selected NOT to switch this device as MeDevice", v6, 2u);
    }
  }
}

- (void)sendFriendshipOfferToHandles:(id)handles groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion
{
  handlesCopy = handles;
  idCopy = id;
  callerIdCopy = callerId;
  dateCopy = date;
  completionCopy = completion;
  verifyRestrictionsAndShowDialogIfRequired = [(FMFSession *)self verifyRestrictionsAndShowDialogIfRequired];
  if (verifyRestrictionsAndShowDialogIfRequired)
  {
    v18 = LogCategory_Daemon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FMFSession(Establish) sendFriendshipOfferToHandles:groupId:callerId:endDate:completion:];
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __90__FMFSession_Establish__sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke;
    v29[3] = &unk_278FDE110;
    v31 = completionCopy;
    v30 = verifyRestrictionsAndShowDialogIfRequired;
    v19 = completionCopy;
    [(FMFSession *)self dispatchOnDelegateQueue:v29];

    v20 = v31;
  }

  else
  {
    serverProxy = [(FMFSession *)self serverProxy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __90__FMFSession_Establish__sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke_2;
    v23[3] = &unk_278FDE448;
    v23[4] = self;
    v28 = completionCopy;
    v24 = handlesCopy;
    v25 = idCopy;
    v26 = callerIdCopy;
    v27 = dateCopy;
    v22 = completionCopy;
    [serverProxy isNetworkReachable:v23];

    v20 = v28;
  }
}

uint64_t __90__FMFSession_Establish__sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __90__FMFSession_Establish__sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _sendFriendshipOfferToHandles:*(a1 + 40) groupId:*(a1 + 48) callerId:*(a1 + 56) endDate:*(a1 + 64) completion:*(a1 + 72)];
  }

  else
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __90__FMFSession_Establish__sendFriendshipOfferToHandles_groupId_callerId_endDate_completion___block_invoke_2_cold_1();
    }

    v7 = [*(a1 + 32) serverProxy];
    [v7 showNetworkOfflineDuringOfferAlert];

    v8 = *(a1 + 72);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v5);
    }
  }
}

- (void)sendFriendshipOfferToHandle:(id)handle groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion
{
  v12 = MEMORY[0x277CBEB98];
  completionCopy = completion;
  dateCopy = date;
  callerIdCopy = callerId;
  idCopy = id;
  v17 = [v12 setWithObject:handle];
  [(FMFSession *)self sendFriendshipOfferToHandles:v17 groupId:idCopy callerId:callerIdCopy endDate:dateCopy completion:completionCopy];
}

- (void)extendFriendshipOfferToHandle:(id)handle groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion
{
  v8 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v10 = [v8 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v10);
}

- (void)sendFriendshipInviteToHandle:(id)handle groupId:(id)id callerId:(id)callerId endDate:(id)date completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  idCopy = id;
  callerIdCopy = callerId;
  dateCopy = date;
  completionCopy = completion;
  v17 = LogCategory_Daemon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = handleCopy;
    _os_log_impl(&dword_24A33F000, v17, OS_LOG_TYPE_INFO, "Sending friend invite for: %@", buf, 0xCu);
  }

  verifyRestrictionsAndShowDialogIfRequired = [(FMFSession *)self verifyRestrictionsAndShowDialogIfRequired];
  if (verifyRestrictionsAndShowDialogIfRequired)
  {
    v19 = LogCategory_Daemon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FMFSession(Establish) sendFriendshipInviteToHandle:groupId:callerId:endDate:completion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, verifyRestrictionsAndShowDialogIfRequired);
    }
  }

  else
  {
    serverProxy = [(FMFSession *)self serverProxy];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__FMFSession_Establish__sendFriendshipInviteToHandle_groupId_callerId_endDate_completion___block_invoke;
    v22[3] = &unk_278FDE2C0;
    v22[4] = self;
    v23 = completionCopy;
    [serverProxy sendFriendshipInviteToHandle:handleCopy groupId:idCopy callerId:callerIdCopy endDate:dateCopy completion:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __90__FMFSession_Establish__sendFriendshipInviteToHandle_groupId_callerId_endDate_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__FMFSession_Establish__sendFriendshipInviteToHandle_groupId_callerId_endDate_completion___block_invoke_2;
  v8[3] = &unk_278FDE110;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 dispatchOnDelegateQueue:v8];
}

uint64_t __90__FMFSession_Establish__sendFriendshipInviteToHandle_groupId_callerId_endDate_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (void)sendNotNowToHandle:(id)handle callerId:(id)id completion:(id)completion
{
  v6 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v8 = [v6 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v8);
}

- (void)approveFriendshipRequest:(id)request completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v7);
}

- (void)declineFriendshipRequest:(id)request completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v7);
}

- (void)stopSharingMyLocationWithHandle:(id)handle groupId:(id)id callerId:(id)callerId completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  idCopy = id;
  callerIdCopy = callerId;
  completionCopy = completion;
  v14 = LogCategory_Daemon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = handleCopy;
    _os_log_impl(&dword_24A33F000, v14, OS_LOG_TYPE_INFO, "Stop sharing location with handle: %@", buf, 0xCu);
  }

  verifyRestrictionsAndShowDialogIfRequired = [(FMFSession *)self verifyRestrictionsAndShowDialogIfRequired];
  if (verifyRestrictionsAndShowDialogIfRequired)
  {
    v16 = LogCategory_Daemon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FMFSession(Establish) stopSharingMyLocationWithHandle:groupId:callerId:completion:];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__FMFSession_Establish__stopSharingMyLocationWithHandle_groupId_callerId_completion___block_invoke;
    v24[3] = &unk_278FDE110;
    v26 = completionCopy;
    v25 = verifyRestrictionsAndShowDialogIfRequired;
    v17 = completionCopy;
    [(FMFSession *)self dispatchOnDelegateQueue:v24];

    v18 = v26;
  }

  else
  {
    serverProxy = [(FMFSession *)self serverProxy];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__FMFSession_Establish__stopSharingMyLocationWithHandle_groupId_callerId_completion___block_invoke_2;
    v22[3] = &unk_278FDE2C0;
    v22[4] = self;
    v23 = completionCopy;
    v20 = completionCopy;
    [serverProxy stopSharingMyLocationWithHandle:handleCopy groupId:idCopy callerId:callerIdCopy completion:v22];

    v18 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __85__FMFSession_Establish__stopSharingMyLocationWithHandle_groupId_callerId_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __85__FMFSession_Establish__stopSharingMyLocationWithHandle_groupId_callerId_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__FMFSession_Establish__stopSharingMyLocationWithHandle_groupId_callerId_completion___block_invoke_3;
  v8[3] = &unk_278FDE110;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 dispatchOnDelegateQueue:v8];
}

uint64_t __85__FMFSession_Establish__stopSharingMyLocationWithHandle_groupId_callerId_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (void)stopSharingMyLocationWithHandles:(id)handles groupId:(id)id callerId:(id)callerId completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  idCopy = id;
  callerIdCopy = callerId;
  completionCopy = completion;
  v14 = LogCategory_Daemon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = handlesCopy;
    _os_log_impl(&dword_24A33F000, v14, OS_LOG_TYPE_INFO, "Stop sharing location with handles: [%@]", buf, 0xCu);
  }

  verifyRestrictionsAndShowDialogIfRequired = [(FMFSession *)self verifyRestrictionsAndShowDialogIfRequired];
  if (verifyRestrictionsAndShowDialogIfRequired)
  {
    v16 = LogCategory_Daemon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FMFSession(Establish) stopSharingMyLocationWithHandle:groupId:callerId:completion:];
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke;
    v27[3] = &unk_278FDE110;
    v29 = completionCopy;
    v28 = verifyRestrictionsAndShowDialogIfRequired;
    v17 = completionCopy;
    [(FMFSession *)self dispatchOnDelegateQueue:v27];

    v18 = v29;
  }

  else
  {
    serverProxy = [(FMFSession *)self serverProxy];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_2;
    v22[3] = &unk_278FDE470;
    v22[4] = self;
    v26 = completionCopy;
    v23 = handlesCopy;
    v24 = idCopy;
    v25 = callerIdCopy;
    v20 = completionCopy;
    [serverProxy isNetworkReachable:v22];

    v18 = v26;
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) serverProxy];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_9;
    v13[3] = &unk_278FDE2C0;
    v13[4] = *(a1 + 32);
    v9 = *(a1 + 56);
    v14 = *(a1 + 64);
    [v6 stopSharingMyLocationWithHandles:v7 groupId:v8 callerId:v9 completion:v13];
  }

  else
  {
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_2_cold_1();
    }

    v11 = [*(a1 + 32) serverProxy];
    [v11 showNetworkOfflineDuringStopOfferAlert];

    v12 = *(a1 + 64);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v5);
    }
  }
}

void __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) shouldHandleErrorInFWK:v4])
  {
    v5 = [*(a1 + 32) is5XXError:v4];
    v6 = [*(a1 + 32) serverProxy];
    v7 = v6;
    if (v5)
    {
      [v6 show5XXDuringStopOfferAlert];
    }

    else
    {
      [v6 showGenericErrorAlert];
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_2_10;
  v11[3] = &unk_278FDE110;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v4;
  v13 = v9;
  v10 = v4;
  [v8 dispatchOnDelegateQueue:v11];
}

uint64_t __86__FMFSession_Establish__stopSharingMyLocationWithHandles_groupId_callerId_completion___block_invoke_2_10(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (void)getPendingFriendshipRequestsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, 0, v6);
}

- (void)addFence:(id)fence completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)deleteFence:(id)fence completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v7);
}

- (void)getFences:(id)fences
{
  v4 = MEMORY[0x277CCA9B8];
  fencesCopy = fences;
  v6 = [v4 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(fences + 2))(fencesCopy, 0, v6);
}

- (void)fencesForHandles:(id)handles completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)triggerWithUUID:(id)d forFenceWithID:(id)iD withStatus:(id)status forDate:(id)date completion:(id)completion
{
  v8 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v10 = [v8 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v10);
}

- (void)triggerWithUUID:(id)d forFenceWithID:(id)iD withStatus:(id)status forDate:(id)date triggerLocation:(id)location completion:(id)completion
{
  v9 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v11 = [v9 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v11);
}

- (void)muteFencesForHandle:(id)handle untilDate:(id)date completion:(id)completion
{
  v6 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v8 = [v6 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, v8);
}

- (void)_daemonDidLaunch
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = bundleIdentifier;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "Received _daemonDidLaunch notification, attempting to restore connection if needed (session: %@ - client bundle id(%@))", &v7, 0x16u);
  }

  [(FMFSession *)self restoreClientConnection];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)restoreClientConnection
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "FMFSession will restore connection if needed.", buf, 2u);
  }

  objc_initWeak(buf, self);
  connectionQueue = [(FMFSession *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__FMFSession_restoreClientConnection__block_invoke;
  block[3] = &unk_278FDE498;
  objc_copyWeak(&v6, buf);
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __37__FMFSession_restoreClientConnection__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LogCategory_Daemon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = [v3 bundleIdentifier];
      v9 = 138412546;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "FMFSession restoring connection (session: %@ - client bundle id(%@))", &v9, 0x16u);
    }

    v5 = [WeakRetained delegate];

    if (v5)
    {
      v6 = [WeakRetained __connection];
      v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_6];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __37__FMFSession_restoreClientConnection__block_invoke_107(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __37__FMFSession_restoreClientConnection__block_invoke_107_cold_1();
  }
}

- (void)_registerForApplicationLifecycleEvents
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground name:@"UIApplicationDidEnterBackgroundNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationWillEnterForeground name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)_registerForFMFDLaunchedNotification
{
  v13 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _FMFDDaemonDidLaunch, @"com.apple.icloud.fmfd.launched", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = bundleIdentifier;
    _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_DEFAULT, "Registered for _FMFDDaemonDidLaunch notification for session: (%@ - client bundle id(%@)", &v9, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__daemonDidLaunch name:@"FMFSessionDaemonDidLaunchNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

+ (FMFSession)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__FMFSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_dispatch_predicate_2 != -1)
  {
    dispatch_once(&sharedInstance_dispatch_predicate_2, block);
  }

  v2 = sharedInstance__instance_1;

  return v2;
}

void __28__FMFSession_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedInstance__instance_1;
  sharedInstance__instance_1 = v2;

  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_INFO, "Creating shared instance of FMFSession", v5, 2u);
  }
}

- (FMFSession)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = FMFSession;
  v8 = [(FMFSession *)&v16 init];
  if (v8)
  {
    v9 = dispatch_queue_create("FMFSessionConnectionQueue", 0);
    [(FMFSession *)v8 setConnectionQueue:v9];

    if (initWithDelegate_delegateQueue__onceToken != -1)
    {
      [FMFSession initWithDelegate:delegateQueue:];
    }

    dispatch_sync(sessionCountQueue, &__block_literal_global_133);
    v10 = dispatch_queue_create("FMFSession-HandlesQueue", 0);
    [(FMFSession *)v8 setHandlesQueue:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    internalHandles = v8->_internalHandles;
    v8->_internalHandles = v11;

    [(FMFSession *)v8 setDelegate:delegateCopy];
    [(FMFSession *)v8 setDelegateQueue:queueCopy];
    serverProxy = [(FMFSession *)v8 serverProxy];
    [(FMFSession *)v8 _registerForFMFDLaunchedNotification];
    [(FMFSession *)v8 _registerForApplicationLifecycleEvents];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_locatingInProgressChanged_ name:@"locatingInProgressChanged" object:0];
  }

  return v8;
}

void __45__FMFSession_initWithDelegate_delegateQueue___block_invoke()
{
  v0 = dispatch_queue_create("FMFSession.count", 0);
  v1 = sessionCountQueue;
  sessionCountQueue = v0;

  sessionCount = 0;
}

void __45__FMFSession_initWithDelegate_delegateQueue___block_invoke_2()
{
  v0 = sessionCount++;
  if (v0 >= 9)
  {
    v1 = LogCategory_Daemon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      __45__FMFSession_initWithDelegate_delegateQueue___block_invoke_2_cold_1(v1);
    }
  }
}

- (void)locatingInProgressChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  object = [changed object];
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    handle = [object handle];
    *buf = 138412802;
    v11 = handle;
    v12 = 2112;
    v13 = object;
    v14 = 1024;
    isLocatingInProgress = [object isLocatingInProgress];
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "locatingInProgressChanged: %@, %@, %d", buf, 0x1Cu);
  }

  if (object)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__FMFSession_locatingInProgressChanged___block_invoke;
    v8[3] = &unk_278FDE548;
    v8[4] = self;
    v9 = object;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__FMFSession_locatingInProgressChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  [v1 setLocations:v2];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_sync(sessionCountQueue, &__block_literal_global_143);
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering for _FMFDDaemonDidLaunch notification", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.icloud.fmfd.launched", 0);
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating connection due to session dealloc", buf, 2u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24A33F000, v6, OS_LOG_TYPE_DEFAULT, "Deallocating session %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = FMFSession;
  [(FMFSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

void __21__FMFSession_dealloc__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  --sessionCount;
  v0 = LogCategory_Daemon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 134217984;
    v3 = sessionCount;
    _os_log_impl(&dword_24A33F000, v0, OS_LOG_TYPE_DEFAULT, "FMFSession current session count (%ld)", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)addInterruptionHander:(id)hander
{
  handerCopy = hander;
  serverProxy = [(FMFSession *)self serverProxy];
  objc_initWeak(&location, self);
  connectionQueue = [(FMFSession *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FMFSession_addInterruptionHander___block_invoke;
  block[3] = &unk_278FDE618;
  objc_copyWeak(&v10, &location);
  v9 = handerCopy;
  v7 = handerCopy;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __36__FMFSession_addInterruptionHander___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained sessionInterruptionFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__FMFSession_addInterruptionHander___block_invoke_2;
  v5[3] = &unk_278FDE5F0;
  v6 = *(a1 + 32);
  v4 = [v3 addSuccessBlock:v5];
}

- (void)addInvalidationHander:(id)hander
{
  handerCopy = hander;
  serverProxy = [(FMFSession *)self serverProxy];
  objc_initWeak(&location, self);
  connectionQueue = [(FMFSession *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FMFSession_addInvalidationHander___block_invoke;
  block[3] = &unk_278FDE618;
  objc_copyWeak(&v10, &location);
  v9 = handerCopy;
  v7 = handerCopy;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __36__FMFSession_addInvalidationHander___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained sessionInvalidationFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__FMFSession_addInvalidationHander___block_invoke_2;
  v5[3] = &unk_278FDE5F0;
  v6 = *(a1 + 32);
  v4 = [v3 addSuccessBlock:v5];
}

- (NSXPCConnection)connection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  connectionQueue = [(FMFSession *)self connectionQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__FMFSession_connection__block_invoke;
  v6[3] = &unk_278FDE640;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(connectionQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __24__FMFSession_connection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __connection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)__connection
{
  v80 = *MEMORY[0x277D85DE8];
  connectionQueue = [(FMFSession *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  connection = self->_connection;
  if (!connection)
  {
    objc_initWeak(&location, self);
    v64 = &unk_285D89688;
    v62 = &unk_285D853B8;
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v69 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v63 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v61 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v68 = [v17 setWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v67 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v66 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v65 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v28 setWithObjects:{v29, v30, v31, v32, v33, v34, v35, v36, v37, objc_opt_class(), 0}];
    v39 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.icloud.fmfd" options:4096];
    v40 = self->_connection;
    self->_connection = v39;

    v41 = LogCategory_Daemon();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = self->_connection;
      *buf = 138412290;
      v79 = v42;
      _os_log_impl(&dword_24A33F000, v41, OS_LOG_TYPE_DEFAULT, "Created connection: %@", buf, 0xCu);
    }

    v43 = objc_opt_new();
    objc_storeStrong(&self->_sessionInterruptionFuture, v43);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __26__FMFSession___connection__block_invoke;
    v74[3] = &unk_278FDE668;
    objc_copyWeak(&v76, &location);
    v44 = v43;
    v75 = v44;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v74];
    v45 = objc_opt_new();
    objc_storeStrong(&self->_sessionInvalidationFuture, v45);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __26__FMFSession___connection__block_invoke_2;
    v71[3] = &unk_278FDE668;
    objc_copyWeak(&v73, &location);
    v46 = v45;
    v72 = v46;
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v71];
    v47 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v64];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v47];
    [v47 setClasses:v69 forSelector:sel_getHandlesSharingLocationsWithMe_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v69 forSelector:sel_getHandlesSharingLocationsWithMeWithGroupId_completion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v69 forSelector:sel_getHandlesSharingMyLocation_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v69 forSelector:sel_getHandlesSharingMyLocationWithGroupId_completion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v67 forSelector:sel_getPendingFriendshipRequestsWithCompletion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v67 forSelector:sel_getPendingFriendshipRequestsWithCompletion_ argumentIndex:1 ofReply:1];
    [v47 setClasses:v69 forSelector:sel_getHandlesWithPendingOffers_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v68 forSelector:sel_getAllLocations_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v66 forSelector:sel_allDevices_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v65 forSelector:sel_favoritesForMaxCount_completion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v68 forSelector:sel_nearbyLocationsWithCompletion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v69 forSelector:sel_getHandlesWithPendingOffers_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v69 forSelector:sel_canOfferToHandles_completion_ argumentIndex:0 ofReply:1];
    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    [v47 setClasses:v50 forSelector:sel_sendFriendshipOfferToHandles_groupId_callerId_endDate_completion_ argumentIndex:1 ofReply:1];

    [v47 setClasses:v61 forSelector:sel_dumpStateWithCompletion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v38 forSelector:sel_addFence_completion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v38 forSelector:sel_deleteFence_completion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v38 forSelector:sel_getFences_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v38 forSelector:sel_fencesForHandles_completion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v63 forSelector:sel_getFavoritesWithCompletion_ argumentIndex:0 ofReply:1];
    [v47 setClasses:v38 forSelector:sel_triggerWithUUID_forFenceWithID_withStatus_forDate_completion_ argumentIndex:0 ofReply:1];
    v51 = [[FMFSessionProxy alloc] initWithFMFSession:self];
    v52 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v62];
    [(NSXPCConnection *)self->_connection setExportedInterface:v52];
    [(NSXPCConnection *)self->_connection setExportedObject:v51];
    [v52 setClasses:v68 forSelector:sel_setLocations_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v69 forSelector:sel_didUpdatePendingOffersForHandles_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v66 forSelector:sel_didUpdateActiveDeviceList_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v69 forSelector:sel_didUpdateFollowers_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v69 forSelector:sel_didUpdateFollowing_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v68 forSelector:sel_didUpdateLocations_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v65 forSelector:sel_didUpdateFavorites_ argumentIndex:0 ofReply:0];
    [v52 setClasses:v38 forSelector:sel_didUpdateFences_ argumentIndex:0 ofReply:0];
    [(NSXPCConnection *)self->_connection resume];
    v53 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_350];
    v54 = MEMORY[0x277CCABB0];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v56 = [v54 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
    [v53 setSessionClientPid:v56];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v53 setSessionClientBundleId:bundleIdentifier];

    [v53 sessionWasCreatedRefresh];
    objc_destroyWeak(&v73);

    objc_destroyWeak(&v76);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  v59 = *MEMORY[0x277D85DE8];

  return connection;
}

void __26__FMFSession___connection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "Connection to server interrupted! Session: %@", buf, 0xCu);
  }

  [WeakRetained invalidate];
  v4 = *(a1 + 32);
  v5 = FMEmptyResult();
  [v4 finishWithResult:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__FMFSession___connection__block_invoke_315;
  v7[3] = &unk_278FDE000;
  v7[4] = WeakRetained;
  [WeakRetained dispatchOnDelegateQueue:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __26__FMFSession___connection__block_invoke_315(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:1019 userInfo:0];
    [v2 connectionError:v1];
  }
}

void __26__FMFSession___connection__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "Connection to server invalidated! Session: %@", buf, 0xCu);
  }

  [WeakRetained invalidate];
  v4 = *(a1 + 32);
  v5 = FMEmptyResult();
  [v4 finishWithResult:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__FMFSession___connection__block_invoke_318;
  v7[3] = &unk_278FDE000;
  v7[4] = WeakRetained;
  [WeakRetained dispatchOnDelegateQueue:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __26__FMFSession___connection__block_invoke_318(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmf.error" code:1020 userInfo:0];
    [v2 connectionError:v1];
  }
}

void __26__FMFSession___connection__block_invoke_2_348(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __26__FMFSession___connection__block_invoke_2_348_cold_1();
  }
}

- (id)serverProxy
{
  connection = [(FMFSession *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_353];

  return v3;
}

void __25__FMFSession_serverProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __25__FMFSession_serverProxy__block_invoke_cold_1();
  }
}

- (void)dispatchOnDelegateQueue:(id)queue
{
  queueCopy = queue;
  delegateQueue = [(FMFSession *)self delegateQueue];

  if (delegateQueue)
  {
    delegateQueue2 = [(FMFSession *)self delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__FMFSession_dispatchOnDelegateQueue___block_invoke;
    v7[3] = &unk_278FDE690;
    v8 = queueCopy;
    [delegateQueue2 addOperationWithBlock:v7];
  }

  else if (queueCopy)
  {
    queueCopy[2](queueCopy);
  }
}

uint64_t __38__FMFSession_dispatchOnDelegateQueue___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "FMFSession will invalidate connection if needed.", buf, 2u);
  }

  objc_initWeak(buf, self);
  connectionQueue = [(FMFSession *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__FMFSession_invalidate__block_invoke;
  block[3] = &unk_278FDE498;
  objc_copyWeak(&v6, buf);
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __24__FMFSession_invalidate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
    v4 = v3;
    if (v3)
    {
      [v3 invalidate];
      v5 = v2[5];
      v2[5] = 0;

      v6 = LogCategory_Daemon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_24A33F000, v6, OS_LOG_TYPE_DEFAULT, "FMFSession did invalidate connection %@.", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceRefresh
{
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy forceRefresh];
}

- (void)forceRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy forceRefreshWithCompletion:completionCopy];
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  delegate = [(FMFSession *)self delegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__FMFSession_setLocations___block_invoke;
  v8[3] = &unk_278FDE548;
  v9 = locationsCopy;
  v10 = delegate;
  v6 = delegate;
  v7 = locationsCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v8];
}

void __27__FMFSession_setLocations___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 40) didReceiveLocation:{v7, v10}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)failedToGetLocationForHandle:(id)handle error:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__FMFSession_failedToGetLocationForHandle_error___block_invoke;
  v10[3] = &unk_278FDE028;
  v10[4] = self;
  v11 = handleCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = handleCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v10];
}

void __49__FMFSession_failedToGetLocationForHandle_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 didFailToFetchLocationForHandle:*(a1 + 40) withError:*(a1 + 48)];
  }
}

- (void)didAddFollowerHandle:(id)handle
{
  handleCopy = handle;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__FMFSession_didAddFollowerHandle___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = handleCopy;
  v5 = handleCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __35__FMFSession_didAddFollowerHandle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didAddFollowerHandle: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didStartSharingMyLocationWithHandle:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveFollowerHandle:(id)handle
{
  handleCopy = handle;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__FMFSession_didRemoveFollowerHandle___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = handleCopy;
  v5 = handleCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __38__FMFSession_didRemoveFollowerHandle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didRemoveFollowerHandle: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didStopSharingMyLocationWithHandle:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didStartFollowingHandle:(id)handle
{
  handleCopy = handle;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__FMFSession_didStartFollowingHandle___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = handleCopy;
  v5 = handleCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __38__FMFSession_didStartFollowingHandle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didStartFollowingHandle: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didStartAbilityToGetLocationForHandle:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didStopFollowingHandle:(id)handle
{
  handleCopy = handle;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__FMFSession_didStopFollowingHandle___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = handleCopy;
  v5 = handleCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __37__FMFSession_didStopFollowingHandle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didStopFollowingHandle: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didStopAbilityToGetLocationForHandle:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateFavorites:(id)favorites
{
  favoritesCopy = favorites;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__FMFSession_didUpdateFavorites___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = favoritesCopy;
  v5 = favoritesCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __33__FMFSession_didUpdateFavorites___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didUpdateFavorites: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdateFavoriteHandles:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateHideFromFollowersStatus:(BOOL)status
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__FMFSession_didUpdateHideFromFollowersStatus___block_invoke;
  v3[3] = &unk_278FDE6B8;
  v3[4] = self;
  statusCopy = status;
  [(FMFSession *)self dispatchOnDelegateQueue:v3];
}

void __47__FMFSession_didUpdateHideFromFollowersStatus___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didUpdateHideFromFollowersStatus: %d", v6, 8u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdateHidingStatus:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didChangeActiveLocationSharingDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__FMFSession_didChangeActiveLocationSharingDevice___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __51__FMFSession_didChangeActiveLocationSharingDevice___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) deviceName];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didChangeLocationSharingDevice: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeActiveLocationSharingDevice:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateActiveDeviceList:(id)list
{
  listCopy = list;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__FMFSession_didUpdateActiveDeviceList___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = listCopy;
  v5 = listCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __40__FMFSession_didUpdateActiveDeviceList___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didUpdateActiveDeviceList: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdateActiveDeviceList:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveFriendshipRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__FMFSession_didReceiveFriendshipRequest___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __42__FMFSession_didReceiveFriendshipRequest___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didReceiveFriendshipRequest: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didReceiveFriendshipRequest:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdatePendingOffersForHandles:(id)handles
{
  handlesCopy = handles;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__FMFSession_didUpdatePendingOffersForHandles___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = handlesCopy;
  v5 = handlesCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __47__FMFSession_didUpdatePendingOffersForHandles___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didUpdatePendingOffersForHandles: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdatePendingOffersForHandles:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendMappingPacket:(id)packet toHandle:(id)handle
{
  packetCopy = packet;
  handleCopy = handle;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__FMFSession_sendMappingPacket_toHandle___block_invoke;
  v10[3] = &unk_278FDE028;
  v10[4] = self;
  v11 = handleCopy;
  v12 = packetCopy;
  v8 = packetCopy;
  v9 = handleCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v10];
}

void __41__FMFSession_sendMappingPacket_toHandle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "sendMappingPacket:toHandle: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 sendMappingPacket:*(a1 + 48) toHandle:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveServerError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__FMFSession_didReceiveServerError___block_invoke;
  v6[3] = &unk_278FDE548;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v6];
}

void __36__FMFSession_didReceiveServerError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "didReceiveServerError: %@", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 didReceiveServerError:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)abDidChange
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "abDidChange", v4, 2u);
  }

  v3 = +[FMFSessionDataManager sharedInstance];
  [v3 abDidChange];
}

- (void)abPreferencesDidChange
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "abPreferencesDidChange", v4, 2u);
  }

  v3 = +[FMFSessionDataManager sharedInstance];
  [v3 abPreferencesDidChange];
}

- (void)didUpdateFollowers:(id)followers
{
  v9 = *MEMORY[0x277D85DE8];
  followersCopy = followers;
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = followersCopy;
    _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_DEFAULT, "didUpdateFollowers: %@", &v7, 0xCu);
  }

  v5 = +[FMFSessionDataManager sharedInstance];
  [v5 setFollowers:followersCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateFollowing:(id)following
{
  v9 = *MEMORY[0x277D85DE8];
  followingCopy = following;
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = followingCopy;
    _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_DEFAULT, "didUpdateFollowing: %@", &v7, 0xCu);
  }

  v5 = +[FMFSessionDataManager sharedInstance];
  [v5 setFollowing:followingCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateLocations:(id)locations
{
  v13 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = locationsCopy;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "didUpdateLocations: %@", buf, 0xCu);
  }

  v6 = +[FMFSessionDataManager sharedInstance];
  [v6 setLocations:locationsCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__FMFSession_didUpdateLocations___block_invoke;
  v9[3] = &unk_278FDE548;
  v9[4] = self;
  v10 = locationsCopy;
  v7 = locationsCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __33__FMFSession_didUpdateLocations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (![*(a1 + 40) count] && objc_msgSend(v2, "conformsToProtocol:", &unk_285D896E8))
  {
    v3 = LogCategory_Daemon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "removing all location annotations from map", v4, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v2 removeAllFriendLocationsFromMap];
    }
  }
}

- (void)didUpdateFences:(id)fences
{
  v12 = *MEMORY[0x277D85DE8];
  fencesCopy = fences;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = LogCategory_Daemon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = fencesCopy;
      _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "FMFSession didUpdateFences: %@", buf, 0xCu);
    }

    v6 = +[FMFSessionDataManager sharedInstance];
    [v6 setFences:fencesCopy];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__FMFSession_didUpdateFences___block_invoke;
    v8[3] = &unk_278FDE548;
    v8[4] = self;
    v9 = fencesCopy;
    [(FMFSession *)self dispatchOnDelegateQueue:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __30__FMFSession_didUpdateFences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdateFences:*(a1 + 40)];
  }
}

- (void)didUpdatePreferences:(id)preferences
{
  v12 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = preferencesCopy;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "FMFSession didUpdatePreferences: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__FMFSession_didUpdatePreferences___block_invoke;
  v8[3] = &unk_278FDE548;
  v8[4] = self;
  v9 = preferencesCopy;
  v6 = preferencesCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __35__FMFSession_didUpdatePreferences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 didUpdatePreferences:*(a1 + 40)];
  }
}

- (void)networkReachabilityUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v11 = *MEMORY[0x277D85DE8];
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = updatedCopy;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "networkReachabilityUpdated, Is reachable %d", buf, 8u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__FMFSession_networkReachabilityUpdated___block_invoke;
  v7[3] = &unk_278FDE6B8;
  v7[4] = self;
  v8 = updatedCopy;
  [(FMFSession *)self dispatchOnDelegateQueue:v7];
  v6 = *MEMORY[0x277D85DE8];
}

void __41__FMFSession_networkReachabilityUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 networkReachabilityUpdated:*(a1 + 40)];
  }
}

- (NSSet)handles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  handlesQueue = [(FMFSession *)self handlesQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__FMFSession_handles__block_invoke;
  v6[3] = &unk_278FDE640;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(handlesQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __21__FMFSession_handles__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalHandles];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setHandles:(id)handles
{
  handlesCopy = handles;
  handles = [(FMFSession *)self handles];
  v6 = [handles mutableCopy];

  [v6 minusSet:handlesCopy];
  [(FMFSession *)self removeHandles:v6];
  [(FMFSession *)self addHandles:handlesCopy];
}

- (void)addHandles:(id)handles
{
  handlesCopy = handles;
  handlesQueue = [(FMFSession *)self handlesQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __25__FMFSession_addHandles___block_invoke;
  v11 = &unk_278FDE548;
  v6 = handlesCopy;
  v12 = v6;
  selfCopy = self;
  dispatch_sync(handlesQueue, &v8);

  if ([v6 count])
  {
    serverProxy = [(FMFSession *)self serverProxy];
    [serverProxy addFriendHandles:v6];
  }
}

void __25__FMFSession_addHandles___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "Adding handles: %@ to session: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) internalHandles];
  [v5 unionSet:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeHandles:(id)handles
{
  handlesCopy = handles;
  handlesQueue = [(FMFSession *)self handlesQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __28__FMFSession_removeHandles___block_invoke;
  v11 = &unk_278FDE548;
  v12 = handlesCopy;
  selfCopy = self;
  v6 = handlesCopy;
  dispatch_sync(handlesQueue, &v8);

  v7 = [(FMFSession *)self serverProxy:v8];
  [v7 removeFriendHandles:v6];
}

void __28__FMFSession_removeHandles___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "Removing handles: %@ from session: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) internalHandles];
  [v5 minusSet:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDebugContext:(id)context
{
  contextCopy = context;
  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy setDebugContext:contextCopy];
}

- (void)receivedMappingPacket:(id)packet completion:(id)completion
{
  completionCopy = completion;
  packetCopy = packet;
  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "receivedMappingPacket:", v10, 2u);
  }

  serverProxy = [(FMFSession *)self serverProxy];
  [serverProxy importMappingPacket:packetCopy completion:completionCopy];
}

- (void)mappingPacketSendFailed:(id)failed toHandle:(id)handle withError:(id)error
{
  errorCopy = error;
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FMFSession mappingPacketSendFailed:errorCopy toHandle:v6 withError:?];
  }
}

- (void)handleIncomingAirDropURL:(id)l completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"com.apple.icloud.fmf.error" code:100 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

+ (BOOL)FMFAllowed
{
  if (!FMFAllowed_fmfAllowedNumber)
  {
    v2 = MGCopyAnswer();
    v3 = FMFAllowed_fmfAllowedNumber;
    FMFAllowed_fmfAllowedNumber = v2;

    if (v2)
    {
      CFRelease(v2);
    }
  }

  v4 = FMFAllowed_fmfAllowedNumber;

  return [v4 BOOLValue];
}

+ (BOOL)FMFRestricted
{
  v2 = *MEMORY[0x277D25EA8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  LOBYTE(v2) = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:v2] == 2;

  return v2;
}

+ (BOOL)isProvisionedForLocationSharing
{
  v2 = objc_alloc_init(getACAccountStoreClass());
  aa_primaryAppleAccountWithPreloadedDataclasses = [v2 aa_primaryAppleAccountWithPreloadedDataclasses];
  v4 = aa_primaryAppleAccountWithPreloadedDataclasses;
  if (aa_primaryAppleAccountWithPreloadedDataclasses)
  {
    v5 = [aa_primaryAppleAccountWithPreloadedDataclasses isProvisionedForDataclass:*MEMORY[0x277CB91A0]];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)isAnyAccountManaged
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(getACAccountStoreClass());
  [v2 aa_appleAccounts];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) aa_isManagedAppleID])
        {
          LODWORD(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v4;
    _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_DEFAULT, "FMFSession: isAnyAccountManaged %d", buf, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (FMFSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)getHandlesSharingLocationsWithMe
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = +[FMFSessionDataManager sharedInstance];
  following = [v3 following];

  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = following;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "getHandlesSharingLocationsWithMe: %@", &v8, 0xCu);
  }

  [(FMFSession *)self reloadDataIfNotLoaded];
  v6 = *MEMORY[0x277D85DE8];

  return following;
}

- (id)getHandlesFollowingMyLocation
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = +[FMFSessionDataManager sharedInstance];
  followers = [v3 followers];

  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = followers;
    _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "getHandlesFollowingMyLocation: %@", &v8, 0xCu);
  }

  [(FMFSession *)self reloadDataIfNotLoaded];
  v6 = *MEMORY[0x277D85DE8];

  return followers;
}

- (id)getFavoritesSharingLocationWithMe
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[FMFSession(Data) getFavoritesSharingLocationWithMe]"];
  v4 = [[FMFSynchronizer alloc] initWithDescription:v3 andTimeout:1.0];
  serverProxy = [(FMFSession *)self serverProxy];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __53__FMFSession_Data__getFavoritesSharingLocationWithMe__block_invoke;
  v15 = &unk_278FDE7E0;
  v17 = &v18;
  v6 = v4;
  v16 = v6;
  [serverProxy favoritesForMaxCount:0 completion:&v12];

  [(FMFSynchronizer *)v6 wait:v12];
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v19[5];
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_24A33F000, v7, OS_LOG_TYPE_DEFAULT, "getFavoritesSharingLocationWithMe: %@", buf, 0xCu);
  }

  v9 = v19[5];
  _Block_object_dispose(&v18, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __53__FMFSession_Data__getFavoritesSharingLocationWithMe__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

- (BOOL)canShareLocationWithHandle:(id)handle groupId:(id)id callerId:(id)callerId
{
  v21 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  idCopy = id;
  v9 = +[FMFSessionDataManager sharedInstance];
  v10 = [v9 followerForHandle:handleCopy];

  if (v10)
  {
    if (idCopy)
    {
      v11 = [v10 isSharingThroughGroupId:idCopy];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = LogCategory_Daemon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = handleCopy;
    v17 = 1024;
    v18 = v11;
    v19 = 2112;
    v20 = idCopy;
    _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "canShareLocationWithHandle: %@: %d groupId: %@", &v15, 0x1Cu);
  }

  [(FMFSession *)self reloadDataIfNotLoaded];
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)canGetLocationForHandle:(id)handle groupId:(id)id callerId:(id)callerId
{
  v21 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  idCopy = id;
  v9 = +[FMFSessionDataManager sharedInstance];
  v10 = [v9 followingForHandle:handleCopy];

  if (v10)
  {
    if (idCopy)
    {
      v11 = [v10 isSharingThroughGroupId:idCopy];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = LogCategory_Daemon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = handleCopy;
    v17 = 1024;
    v18 = v11;
    v19 = 2112;
    v20 = idCopy;
    _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "canGetLocationForHandle: %@: %d groupId: %@", &v15, 0x1Cu);
  }

  [(FMFSession *)self reloadDataIfNotLoaded];
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getHandlesWithPendingOffers
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[FMFSession(Data) getHandlesWithPendingOffers]"];
  v4 = [[FMFSynchronizer alloc] initWithDescription:v3 andTimeout:1.0];
  serverProxy = [(FMFSession *)self serverProxy];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __47__FMFSession_Data__getHandlesWithPendingOffers__block_invoke;
  v12 = &unk_278FDDDB0;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [serverProxy getHandlesWithPendingOffers:&v9];

  [(FMFSynchronizer *)v6 wait:v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __47__FMFSession_Data__getHandlesWithPendingOffers__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

- (BOOL)isMyLocationEnabled
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[FMFSession(Data) isMyLocationEnabled]"];
  v4 = [[FMFSynchronizer alloc] initWithDescription:v3 andTimeout:1.0];
  serverProxy = [(FMFSession *)self serverProxy];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__FMFSession_Data__isMyLocationEnabled__block_invoke;
  v11 = &unk_278FDE808;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  [serverProxy isMyLocationEnabled:&v8];

  [(FMFSynchronizer *)v6 wait:v8];
  LOBYTE(serverProxy) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return serverProxy;
}

- (id)cachedLocationForHandle:(id)handle
{
  v13 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v4 = +[FMFSessionDataManager sharedInstance];
  v5 = [v4 locationForHandle:handleCopy];

  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = handleCopy;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_24A33F000, v6, OS_LOG_TYPE_DEFAULT, "cachedLocationForHandle: %@: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getOfferExpirationForHandle:(id)handle groupId:(id)id callerId:(id)callerId
{
  v20 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  idCopy = id;
  v9 = +[FMFSessionDataManager sharedInstance];
  v10 = [v9 offerExpirationForHandle:handleCopy groupId:idCopy];

  v11 = LogCategory_Daemon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = handleCopy;
    v16 = 2112;
    v17 = idCopy;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_24A33F000, v11, OS_LOG_TYPE_DEFAULT, "getOfferExpirationForHandle: %@ groupId: %@ result:%@", &v14, 0x20u);
  }

  [(FMFSession *)self reloadDataIfNotLoaded];
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)reloadDataIfNotLoaded
{
  if (![(FMFSession *)self hasModelInitialized])
  {
    v3 = LogCategory_Daemon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "Reloading Data - Not Loaded", v4, 2u);
    }

    [(FMFSession *)self forceRefresh];
  }
}

void __47__FMFSession_Admin__getThisDeviceAndCompanion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[FMFSession(Admin) getThisDeviceAndCompanion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "%s: getAllDevices failed, error = %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__FMFSession_Notifications__dataForPayload_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "Error occured when getting dataForPayload for payload %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __60__FMFSession_Establish___checkAndDisplayMeDeviceSwitchAlert__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "Error while trying to get active Share My Location device: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __37__FMFSession_restoreClientConnection__block_invoke_107_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_24A33F000, v0, v1, "Failed to restore connection. %s: error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__FMFSession_initWithDelegate_delegateQueue___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = sessionCount;
  _os_log_fault_impl(&dword_24A33F000, log, OS_LOG_TYPE_FAULT, "Too many FMFSession instances (%ld)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __26__FMFSession___connection__block_invoke_2_348_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_24A33F000, v0, v1, "%s: error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __25__FMFSession_serverProxy__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_24A33F000, v0, v1, "%s: error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)mappingPacketSendFailed:(uint64_t)a1 toHandle:(NSObject *)a2 withError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "mappingPacketSendFailed: Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end