@interface HSCloudAvailabilityController
+ (id)sharedController;
- (BOOL)_hasCellularCapability;
- (BOOL)_hasWiFiCapability;
- (BOOL)_isAutoDownloadOnCellularAllowed;
- (BOOL)canShowCloudDownloadButtons;
- (BOOL)canShowCloudMusic;
- (BOOL)canShowCloudVideo;
- (BOOL)hasProperNetworkConditionsToPlayMedia;
- (BOOL)hasProperNetworkConditionsToShowCloudMedia;
- (BOOL)isCellularDataRestrictedForMusic;
- (BOOL)isCellularDataRestrictedForStoreApps;
- (BOOL)isCellularDataRestrictedForVideos;
- (BOOL)isNetworkReachable;
- (BOOL)shouldProhibitActionsForCurrentNetworkConditions;
- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions;
- (HSCloudAvailabilityController)init;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_onQueue_updateCanShowCloudDownloadButtonsWithNotification:(BOOL)a3;
- (void)_onQueue_updateCanShowCloudTracksWithNotification:(BOOL)a3;
- (void)_onQueue_updateIsCellularDataRestrictedForMusic;
- (void)_setNewIsNetworkReachable:(BOOL)a3 networkType:(int64_t)a4;
- (void)_wifiStateDidChangeNotification:(id)a3;
- (void)airplaneModeChanged;
- (void)beginObservingNetworkReachability;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)dealloc;
- (void)endObservingNetworkReachability;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)environmentMonitorDidChangeNetworkType:(id)a3;
@end

@implementation HSCloudAvailabilityController

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a5;
  telephonyClient = self->_telephonyClient;
  v18 = 0;
  v9 = a3;
  v10 = [(CoreTelephonyClient *)telephonyClient getCurrentDataSubscriptionContextSync:&v18];
  v11 = v18;
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.HomeSharing", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412802;
      v20 = v13;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_254418000, v12, OS_LOG_TYPE_DEFAULT, "<%@ %p> Error getting current data context. error=%{public}@", buf, 0x20u);
    }
  }

  v14 = [v10 uuid];
  v15 = [v9 uuid];

  v16 = [v14 isEqual:v15];
  if (v16)
  {
    v17 = [v7 state] == 2;
    if (self->_isCellularDataActive != v17)
    {
      self->_isCellularDataActive = v17;
      [(HSCloudAvailabilityController *)self _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
      [(HSCloudAvailabilityController *)self _onQueue_updateCanShowCloudTracksWithNotification:1];
    }
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkType___block_invoke;
  v7[3] = &unk_279779E90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __72__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkType];
  if (*(*(a1 + 40) + 40) != v2)
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    v4 = ICEnvironmentNetworkTypeIsCellular();
    *(*(a1 + 40) + 40) = v2;
    if (IsCellular != v4)
    {
      [*(a1 + 40) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
      [*(a1 + 40) _onQueue_updateCanShowCloudTracksWithNotification:0];
      v5 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkType___block_invoke_2;
      block[3] = &unk_27977A350;
      block[4] = *(a1 + 40);
      dispatch_async(v5, block);
    }
  }
}

void __72__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkType___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification" object:*(a1 + 32)];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke;
  v7[3] = &unk_279779E90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __80__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isRemoteServerLikelyReachable];
  v3 = *(a1 + 40);
  if (*(v3 + 26) != v2)
  {
    *(v3 + 26) = v2;
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke_2;
    block[3] = &unk_27977A350;
    block[4] = *(a1 + 40);
    dispatch_async(v4, block);
  }
}

void __80__HSCloudAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerNetworkReachabilityDidChangeNotification" object:*(a1 + 32)];
}

- (void)_onQueue_updateCanShowCloudTracksWithNotification:(BOOL)a3
{
  v3 = a3;
  if ([(HSCloudAvailabilityController *)self _hasWiFiCapability])
  {
    isWiFiEnabled = self->_isWiFiEnabled;
  }

  else
  {
    isWiFiEnabled = 0;
  }

  if ([(HSCloudAvailabilityController *)self _hasCellularCapability])
  {
    v6 = !self->_isAirplaneModeActive;
  }

  else
  {
    v6 = 0;
  }

  if (isWiFiEnabled || v6)
  {
    isShowingAllMusic = self->_isShowingAllMusic;
    isShowingAllVideo = self->_isShowingAllVideo;
  }

  else
  {
    isShowingAllMusic = 0;
    isShowingAllVideo = 0;
  }

  v9 = isShowingAllVideo;
  if (self->_canShowCloudMusic != isShowingAllMusic || self->_canShowCloudVideo != v9)
  {
    self->_canShowCloudMusic = isShowingAllMusic;
    self->_canShowCloudVideo = v9;
    if (v3)
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__HSCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke;
      block[3] = &unk_27977A350;
      block[4] = self;
      dispatch_async(v10, block);
    }
  }

  if (!isWiFiEnabled)
  {
    if (!v6)
    {
      isCellularDataActive = 0;
      goto LABEL_21;
    }

LABEL_19:
    isCellularDataActive = self->_isCellularDataActive;
    goto LABEL_21;
  }

  isCellularDataActive = self->_isWiFiAssociated;
  if (!isCellularDataActive && v6)
  {
    goto LABEL_19;
  }

LABEL_21:
  v12 = isCellularDataActive;
  if (self->_hasProperNetworkConditionsToShowCloudMedia != v12)
  {
    self->_hasProperNetworkConditionsToShowCloudMedia = v12;
    if (v3)
    {
      v13 = dispatch_get_global_queue(0, 0);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __83__HSCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke_2;
      v14[3] = &unk_27977A350;
      v14[4] = self;
      dispatch_async(v13, v14);
    }
  }
}

void __83__HSCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification" object:*(a1 + 32)];
}

void __83__HSCloudAvailabilityController__onQueue_updateCanShowCloudTracksWithNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification" object:*(a1 + 32)];
}

- (void)_onQueue_updateCanShowCloudDownloadButtonsWithNotification:(BOOL)a3
{
  v3 = a3;
  if ([(HSCloudAvailabilityController *)self _hasCellularCapability]&& !self->_isAirplaneModeActive && self->_isCellularDataActive)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(HSCloudAvailabilityController *)self _hasWiFiCapability]&& self->_isWiFiEnabled && self->_isWiFiAssociated;
  }

  v6 = v5;
  if (self->_canShowCloudDownloadButtons != v6)
  {
    self->_canShowCloudDownloadButtons = v6;
    if (v3)
    {

      [(HSCloudAvailabilityController *)self _onQueue_updateCanShowCloudTracksWithNotification:1];
    }
  }
}

- (void)_onQueue_updateIsCellularDataRestrictedForMusic
{
  theDict[1] = *MEMORY[0x277D85DE8];
  if (self->_ctServerConnection)
  {
    theDict[0] = 0;
    _CTServerConnectionCopyCellularUsagePolicy();
  }

  v3 = os_log_create("com.apple.amp.HomeSharing", "Availability");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isCellularDataRestrictedForMusic = self->_isCellularDataRestrictedForMusic;
    LODWORD(theDict[0]) = 67109120;
    HIDWORD(theDict[0]) = isCellularDataRestrictedForMusic;
    _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_DEFAULT, "Music restrict cellular data: %d", theDict, 8u);
  }
}

- (void)_setNewIsNetworkReachable:(BOOL)a3 networkType:(int64_t)a4
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HSCloudAvailabilityController__setNewIsNetworkReachable_networkType___block_invoke;
  block[3] = &unk_279779E68;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(accessQueue, block);
}

void __71__HSCloudAvailabilityController__setNewIsNetworkReachable_networkType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 26) != v3)
  {
    *(v2 + 26) = v3;
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HSCloudAvailabilityController__setNewIsNetworkReachable_networkType___block_invoke_2;
    block[3] = &unk_27977A350;
    block[4] = *(a1 + 32);
    dispatch_async(v4, block);

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  if (*(v2 + 40) != v5)
  {
    *(v2 + 40) = v5;
    [*(a1 + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    [*(a1 + 32) _onQueue_updateCanShowCloudTracksWithNotification:0];
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__HSCloudAvailabilityController__setNewIsNetworkReachable_networkType___block_invoke_3;
    v7[3] = &unk_27977A350;
    v7[4] = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void __71__HSCloudAvailabilityController__setNewIsNetworkReachable_networkType___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerNetworkReachabilityDidChangeNotification" object:*(a1 + 32)];
}

void __71__HSCloudAvailabilityController__setNewIsNetworkReachable_networkType___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HSCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)_hasWiFiCapability
{
  if (_hasWiFiCapability_wifiOnceToken != -1)
  {
    dispatch_once(&_hasWiFiCapability_wifiOnceToken, &__block_literal_global_45);
  }

  return _hasWiFiCapability_hasWiFiCapability;
}

void __51__HSCloudAvailabilityController__hasWiFiCapability__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
    _hasWiFiCapability_hasWiFiCapability = v3;

    CFRelease(v1);
  }

  else
  {
    _hasWiFiCapability_hasWiFiCapability = 0;
  }
}

- (BOOL)_hasCellularCapability
{
  if (_hasCellularCapability_cellularOnceToken != -1)
  {
    dispatch_once(&_hasCellularCapability_cellularOnceToken, &__block_literal_global_40);
  }

  return _hasCellularCapability_hasCellularCapability;
}

void __55__HSCloudAvailabilityController__hasCellularCapability__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
    _hasCellularCapability_hasCellularCapability = v3;

    CFRelease(v1);
  }

  else
  {
    _hasCellularCapability_hasCellularCapability = 0;
  }
}

- (BOOL)_isAutoDownloadOnCellularAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HSCloudAvailabilityController__isAutoDownloadOnCellularAllowed__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  isCellularDataRestrictedForMusic = self->_isCellularDataRestrictedForMusic;
  telephonyClient = self->_telephonyClient;
  v12 = 0;
  v6 = [(CoreTelephonyClient *)telephonyClient getInternetConnectionStateSync:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.HomeSharing", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_254418000, v8, OS_LOG_TYPE_ERROR, "HSCloudAvailabilityController _applicationWillEnterForeground [CoreTelephonyClient getInternetConnectionStateSync] encountered error=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    isCellularDataRestrictedForMusic = [v6 state] == 2;
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HSCloudAvailabilityController__applicationWillEnterForeground___block_invoke;
  block[3] = &unk_279779E18;
  block[4] = self;
  v11 = isCellularDataRestrictedForMusic;
  dispatch_async(accessQueue, block);
}

uint64_t __65__HSCloudAvailabilityController__applicationWillEnterForeground___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 19) != v2)
  {
    *(v1 + 19) = v2;
    return [*(result + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
  }

  return result;
}

- (void)_wifiStateDidChangeNotification:(id)a3
{
  v4 = +[HSWiFiManager sharedWiFiManager];
  v5 = [v4 isWiFiEnabled];

  v6 = +[HSWiFiManager sharedWiFiManager];
  v7 = [v6 isWiFiAssociated];

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HSCloudAvailabilityController__wifiStateDidChangeNotification___block_invoke;
  v9[3] = &unk_279779E40;
  v9[4] = self;
  v10 = v5;
  v11 = v7;
  dispatch_async(accessQueue, v9);
}

uint64_t __65__HSCloudAvailabilityController__wifiStateDidChangeNotification___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 40);
  if (*(v2 + 24) != v3 || *(v2 + 25) != *(result + 41))
  {
    *(v2 + 24) = v3;
    *(*(result + 32) + 25) = *(result + 41);
    [*(result + 32) _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
    v4 = *(v1 + 32);

    return [v4 _onQueue_updateCanShowCloudTracksWithNotification:1];
  }

  return result;
}

- (void)airplaneModeChanged
{
  v3 = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HSCloudAvailabilityController_airplaneModeChanged__block_invoke;
  v5[3] = &unk_279779E18;
  v5[4] = self;
  v6 = v3;
  dispatch_async(accessQueue, v5);
}

uint64_t __52__HSCloudAvailabilityController_airplaneModeChanged__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 17) != v2)
  {
    *(v1 + 17) = v2;
    return [*(result + 32) _onQueue_updateCanShowCloudTracksWithNotification:1];
  }

  return result;
}

- (void)endObservingNetworkReachability
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HSCloudAvailabilityController_endObservingNetworkReachability__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void *__64__HSCloudAvailabilityController_endObservingNetworkReachability__block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 56);
  if (v2)
  {
    *(v1 + 56) = v2 - 1;
    result = result[4];
    if (!result[7])
    {
      return [result _onQueue_endObservingReachabilityChanges];
    }
  }

  return result;
}

- (void)beginObservingNetworkReachability
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HSCloudAvailabilityController_beginObservingNetworkReachability__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void *__66__HSCloudAvailabilityController_beginObservingNetworkReachability__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 56);
  result = *(a1 + 32);
  if (result[7] == 1)
  {
    return [result _onQueue_beginObservingReachabilityChanges];
  }

  return result;
}

- (BOOL)isNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HSCloudAvailabilityController_isNetworkReachable__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldProhibitActionsForCurrentNetworkConditions
{
  if (self->_isNetworkReachable)
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (IsCellular)
    {

      LOBYTE(IsCellular) = [(HSCloudAvailabilityController *)self _isAutoDownloadOnCellularAllowed];
    }
  }

  else
  {
    LOBYTE(IsCellular) = 1;
  }

  return IsCellular;
}

- (BOOL)canShowCloudVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HSCloudAvailabilityController_canShowCloudVideo__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canShowCloudMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HSCloudAvailabilityController_canShowCloudMusic__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canShowCloudDownloadButtons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HSCloudAvailabilityController_canShowCloudDownloadButtons__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions
{
  if (self->_isNetworkReachable)
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (IsCellular)
    {

      LOBYTE(IsCellular) = [(HSCloudAvailabilityController *)self isCellularDataRestrictedForStoreApps];
    }
  }

  else
  {
    LOBYTE(IsCellular) = 1;
  }

  return IsCellular;
}

- (BOOL)isCellularDataRestrictedForStoreApps
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.HomeSharing", "Availability");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = 1;
    _os_log_impl(&dword_254418000, v2, OS_LOG_TYPE_DEFAULT, "StoreApps allow cellular data: %d", v4, 8u);
  }

  return 0;
}

- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions
{
  if (self->_isNetworkReachable)
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (IsCellular)
    {

      LOBYTE(IsCellular) = [(HSCloudAvailabilityController *)self isCellularDataRestrictedForVideos];
    }
  }

  else
  {
    LOBYTE(IsCellular) = 1;
  }

  return IsCellular;
}

- (BOOL)isCellularDataRestrictedForVideos
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [(HSCloudAvailabilityController *)self _isAutoDownloadOnCellularAllowed];
  v3 = os_log_create("com.apple.amp.HomeSharing", "Availability");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_DEFAULT, "Videos allow cellular data: %d", v5, 8u);
  }

  return !v2;
}

- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions
{
  if (self->_isNetworkReachable)
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (IsCellular)
    {

      LOBYTE(IsCellular) = [(HSCloudAvailabilityController *)self isCellularDataRestrictedForMusic];
    }
  }

  else
  {
    LOBYTE(IsCellular) = 1;
  }

  return IsCellular;
}

- (BOOL)isCellularDataRestrictedForMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HSCloudAvailabilityController_isCellularDataRestrictedForMusic__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasProperNetworkConditionsToShowCloudMedia
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__HSCloudAvailabilityController_hasProperNetworkConditionsToShowCloudMedia__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasProperNetworkConditionsToPlayMedia
{
  if (self->_isNetworkReachable)
  {
    return !ICEnvironmentNetworkTypeIsCellular() || self->_isAutoDownloadOnCellularAllowed;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  [(RadiosPreferences *)self->_radiosPreferences setDelegate:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];

  if (self->_preferencesChangedNotifyTokenIsValid)
  {
    notify_cancel(self->_preferencesChangedNotifyToken);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = +[HSWiFiManager sharedWiFiManager];
  [v4 removeObserver:self name:@"HSWiFiManagerWiFiDidChangeNotification" object:v5];

  if (self->_ctServerConnection)
  {
    _CTServerConnectionUnregisterForNotification();
    CFRelease(self->_ctServerConnection);
  }

  v6.receiver = self;
  v6.super_class = HSCloudAvailabilityController;
  [(HSCloudAvailabilityController *)&v6 dealloc];
}

- (HSCloudAvailabilityController)init
{
  v44 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HSCloudAvailabilityController;
  v2 = [(HSCloudAvailabilityController *)&v34 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.HomeSharing.HSCloudAvailabilityController.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v5;

    [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
    v2->_isAirplaneModeActive = [(RadiosPreferences *)v2->_radiosPreferences airplaneMode];
    v2->_isAutoDownloadOnCellularAllowed = [(HSCloudAvailabilityController *)v2 _uncachedIsAutoDownloadOnCellularAllowed];
    v2->_isShowingAllMusic = [(HSCloudAvailabilityController *)v2 _uncachedIsShowingAllMusic];
    v2->_isShowingAllVideo = [(HSCloudAvailabilityController *)v2 _uncachedIsShowingAllVideo];
    v7 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_accessQueue];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v7;

    v9 = v2->_telephonyClient;
    v33 = 0;
    v10 = [(CoreTelephonyClient *)v9 getInternetConnectionStateSync:&v33];
    v11 = v33;
    if (v11)
    {
      v12 = os_log_create("com.apple.amp.HomeSharing", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_254418000, v12, OS_LOG_TYPE_ERROR, "HSCloudAvailabilityController init [CoreTelephonyClient getInternetConnectionStateSync] encountered error=%{public}@", &buf, 0xCu);
      }

      v2->_isCellularDataActive = 0;
    }

    else
    {
      v2->_isCellularDataActive = [v10 state] == 2;
    }

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__1029;
    v42 = __Block_byref_object_dispose__1030;
    v13 = v2;
    v43 = v13;
    v14 = v2->_accessQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__HSCloudAvailabilityController_init__block_invoke;
    handler[3] = &unk_279779DC8;
    handler[4] = &buf;
    v13->_preferencesChangedNotifyTokenIsValid = notify_register_dispatch("com.apple.mobileipod-prefsChanged", &v13->_preferencesChangedNotifyToken, v14, handler) == 0;
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v13 selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __37__HSCloudAvailabilityController_init__block_invoke_2;
    v30 = &unk_279779DF0;
    p_buf = &buf;
    v13->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();
    v16 = _CTServerConnectionRegisterForNotification();
    if (v16)
    {
      v17 = os_log_create("com.apple.amp.HomeSharing", "Availability");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v35 = 67109376;
        v36 = v16;
        v37 = 1024;
        v38 = HIDWORD(v16);
        _os_log_impl(&dword_254418000, v17, OS_LOG_TYPE_ERROR, "Error (domain %d, code %d) registering for PerAppNetworkDataAccessPolicyChangedNotification", v35, 0xEu);
      }
    }

    v18 = +[HSWiFiManager sharedWiFiManager];
    v13->_isWiFiEnabled = [v18 isWiFiEnabled];

    v19 = +[HSWiFiManager sharedWiFiManager];
    v13->_isWiFiAssociated = [v19 isWiFiAssociated];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = +[HSWiFiManager sharedWiFiManager];
    [v20 addObserver:v13 selector:sel__wifiStateDidChangeNotification_ name:@"HSWiFiManagerWiFiDidChangeNotification" object:v21];

    v22 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v22 registerObserver:v13];
    v13->_isNetworkReachable = [v22 isRemoteServerLikelyReachable];
    v13->_networkType = [v22 networkType];
    v13->_networkReachabilityObservationCount = 0;
    [(HSCloudAvailabilityController *)v13 _onQueue_updateCanShowCloudDownloadButtonsWithNotification:0];
    [(HSCloudAvailabilityController *)v13 _onQueue_updateCanShowCloudTracksWithNotification:0];
    v13->_isCellularDataRestrictedForMusic = 1;
    v23 = v2->_accessQueue;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __37__HSCloudAvailabilityController_init__block_invoke_36;
    v25[3] = &unk_27977A350;
    v26 = v13;
    dispatch_async(v23, v25);

    _Block_object_dispose(&buf, 8);
  }

  return v2;
}

uint64_t __37__HSCloudAvailabilityController_init__block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v5 = v1;
    CFPreferencesAppSynchronize(@"com.apple.mobileipod");
    v2 = [v5 _uncachedIsShowingAllMusic];
    v3 = [v5 _uncachedIsShowingAllVideo];
    if (v5[21] != v2 || v5[22] != v3)
    {
      v5[21] = v2;
      v5[22] = v3;
      [v5 _onQueue_updateCanShowCloudDownloadButtonsWithNotification:1];
      [v5 _onQueue_updateCanShowCloudTracksWithNotification:1];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __37__HSCloudAvailabilityController_init__block_invoke_2(uint64_t a1, const __CFString *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (CFStringCompare(a2, *MEMORY[0x277CC3B50], 0) == kCFCompareEqualTo)
  {
    [v3 _onQueue_updateIsCellularDataRestrictedForMusic];
  }
}

+ (id)sharedController
{
  if (sharedController___once != -1)
  {
    dispatch_once(&sharedController___once, &__block_literal_global_1039);
  }

  v3 = sharedController___sharedController;

  return v3;
}

uint64_t __49__HSCloudAvailabilityController_sharedController__block_invoke()
{
  sharedController___sharedController = objc_alloc_init(HSCloudAvailabilityController);

  return MEMORY[0x2821F96F8]();
}

@end