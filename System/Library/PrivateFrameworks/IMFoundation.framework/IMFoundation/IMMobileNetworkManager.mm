@interface IMMobileNetworkManager
+ (id)sharedInstance;
- (BOOL)_isDataConnectionAvailable;
- (BOOL)_legacy_inValidSIMState;
- (BOOL)autoAssociateCellular;
- (BOOL)autoAssociateWiFi;
- (BOOL)disableFastDormancy;
- (BOOL)inValidSIMState;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isDataConnectionActive;
- (BOOL)isDataSwitchEnabled;
- (BOOL)isHostingWiFiHotSpot;
- (BOOL)isSIMLocked;
- (BOOL)isSIMRemoved;
- (BOOL)isWiFiAssociated;
- (BOOL)isWiFiCaptive;
- (BOOL)isWiFiEnabled;
- (BOOL)isWiFiUsable;
- (BOOL)requiresSIMInserted;
- (BOOL)willTryToAutoAssociateWiFiNetwork;
- (BOOL)willTryToSearchForWiFiNetwork;
- (CTXPCServiceSubscriptionContext)currentDataSubscriptionContextSync;
- (IMMobileNetworkManager)init;
- (NSNumber)wiFiScaledRSSI;
- (NSNumber)wiFiScaledRate;
- (NSNumber)wiFiSignalStrength;
- (id)_dataCTXPCServiceSubscriptionContext;
- (id)_telephonyDataSIMStatus;
- (int)_getCurrentCTDataStatus;
- (void)_adjustCellularAutoAssociation;
- (void)_createCTServerConnection;
- (void)_initializeDataState;
- (void)_lockedAdjustCellularAutoAssociation;
- (void)_locked_recalculateDataContextUsableAndPostNotificationIfNeeded:(BOOL)a3;
- (void)_locked_updateDataConnectionStateWithContext:(id)a3;
- (void)_locked_updateDataStateBasedOnDataStatus:(id)a3;
- (void)_locked_updateDataStateWithContext:(id)a3;
- (void)_releaseCTServerConnection;
- (void)addCellularAutoAssociationClientToken:(id)a3;
- (void)addFastDormancyDisableToken:(id)a3;
- (void)addWiFiAutoAssociationClientToken:(id)a3;
- (void)airplaneModeChanged;
- (void)currentDataSimChanged:(id)a3;
- (void)dealloc;
- (void)internetConnectionActivationError:(int)a3;
- (void)internetConnectionStateChanged:(id)a3;
- (void)internetDataStatusBasic:(id)a3;
- (void)removeCellularAutoAssociationClientToken:(id)a3;
- (void)removeFastDormancyDisableToken:(id)a3;
- (void)removeWiFiAutoAssociationClientToken:(id)a3;
- (void)showNetworkOptions;
- (void)showSIMUnlock;
@end

@implementation IMMobileNetworkManager

+ (id)sharedInstance
{
  if (qword_1ED517630 != -1)
  {
    sub_19598C084();
  }

  v3 = qword_1ED5175E8;

  return v3;
}

- (IMMobileNetworkManager)init
{
  v18.receiver = self;
  v18.super_class = IMMobileNetworkManager;
  v2 = [(IMMobileNetworkManager *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = dispatch_queue_create("com.apple.IMMobileNetworkManagerQueue", 0);
    objc_msgSend_set_radiosPrefsQueue_(v2, v6, v5);

    v7 = objc_alloc(IMWeakLinkClass());
    v10 = objc_msgSend__radiosPrefsQueue(v2, v8, v9);
    v12 = objc_msgSend_initWithQueue_(v7, v11, v10);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v12;

    objc_msgSend_setDelegate_(v2->_radiosPreferences, v14, v2);
    objc_msgSend__createCTServerConnection(v2, v15, v16);
  }

  return v2;
}

- (void)_createCTServerConnection
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_coreTelephonyClient)
  {
    v3 = objc_alloc(MEMORY[0x1E69650A0]);
    v5 = objc_msgSend_initWithQueue_(v3, v4, MEMORY[0x1E69E96A0]);
    coreTelephonyClient = self->_coreTelephonyClient;
    self->_coreTelephonyClient = v5;

    objc_msgSend_setDelegate_(self->_coreTelephonyClient, v7, self);
    *&self->_registered = 257;
    objc_msgSend__initializeDataState(self, v8, v9);
  }

  if (!self->_ctServerConnection)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v10 = *MEMORY[0x1E695E480];
    self->_ctServerConnection = _CTServerConnectionCreateWithIdentifier();
    _CTServerConnectionSetTargetQueue();
  }

  if (!self->_coreTelephonyClient || !self->_ctServerConnection)
  {
    v11 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_coreTelephonyClient;
      ctServerConnection = self->_ctServerConnection;
      LODWORD(v15[0]) = 138412546;
      *(v15 + 4) = v12;
      WORD6(v15[0]) = 2112;
      *(v15 + 14) = ctServerConnection;
      _os_log_impl(&dword_195988000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create connection(s) to CoreTelephony! { _coreTelephonyClient: %@, _ctServerConnection: %@ }", v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_initializeDataState
{
  v6 = objc_msgSend__dataCTXPCServiceSubscriptionContext(self, a2, v2);
  if (v6)
  {
    objc_msgSend_lock(self->_lock, v4, v5);
    objc_msgSend__locked_updateDataStateWithContext_(self, v7, v6);
    objc_msgSend__locked_updateDataConnectionStateWithContext_(self, v8, v6);
    objc_msgSend__locked_recalculateDataContextUsableAndPostNotificationIfNeeded_(self, v9, 0);
    objc_msgSend_unlock(self->_lock, v10, v11);
  }

  else
  {
    v12 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_DEFAULT, "Failed to initialize data state due to nil subscription context", v13, 2u);
    }
  }
}

- (id)_dataCTXPCServiceSubscriptionContext
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_currentDataSubscriptionContextSync)
  {
    v3 = 0;
  }

  else
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v12 = 0;
    v5 = objc_msgSend_getCurrentDataSubscriptionContextSync_(coreTelephonyClient, a2, &v12);
    v3 = v12;
    currentDataSubscriptionContextSync = self->_currentDataSubscriptionContextSync;
    self->_currentDataSubscriptionContextSync = v5;

    if (!self->_currentDataSubscriptionContextSync)
    {
      v7 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "Unable to find relevant telephony subscription context { contextError: %@ }", buf, 0xCu);
      }
    }
  }

  v8 = self->_currentDataSubscriptionContextSync;
  v9 = v8;

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isWiFiUsable
{
  isWiFiEnabled = objc_msgSend_isWiFiEnabled(self, a2, v2);
  isWiFiAssociated = objc_msgSend_isWiFiAssociated(self, v5, v6);
  v10 = isWiFiAssociated & (objc_msgSend_isWiFiCaptive(self, v8, v9) ^ 1);
  if (isWiFiEnabled)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isWiFiEnabled
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  isWiFiEnabled = objc_msgSend_isWiFiEnabled(v3, v4, v5);

  return isWiFiEnabled;
}

- (BOOL)isWiFiAssociated
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  isWiFiAssociated = objc_msgSend_isWiFiAssociated(v3, v4, v5);

  return isWiFiAssociated;
}

- (BOOL)isWiFiCaptive
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  isWiFiCaptive = objc_msgSend_isWiFiCaptive(v3, v4, v5);

  return isWiFiCaptive;
}

- (BOOL)isHostingWiFiHotSpot
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  isHostingWiFiHotSpot = objc_msgSend_isHostingWiFiHotSpot(v3, v4, v5);

  return isHostingWiFiHotSpot;
}

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->_radiosPreferences, a2, 0);
  cellAssertion = self->_cellAssertion;
  if (cellAssertion)
  {
    CFRelease(cellAssertion);
    self->_cellAssertion = 0;
  }

  objc_msgSend__releaseCTServerConnection(self, v3, v4);
  objc_msgSend_lock(self->_lock, v6, v7);
  objc_msgSend_removeAllObjects(self->_cellAutoAssociationTokens, v8, v9);
  objc_msgSend__adjustCellularAutoAssociation(self, v10, v11);
  objc_msgSend_unlock(self->_lock, v12, v13);
  v14.receiver = self;
  v14.super_class = IMMobileNetworkManager;
  [(IMMobileNetworkManager *)&v14 dealloc];
}

- (void)airplaneModeChanged
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend___mainThreadPostNotificationName_object_(v4, v3, @"__kIMMobileNetworkManagerAirplaneModeChangedNotification", 0);
}

- (BOOL)isAirplaneModeEnabled
{
  v3 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -86;
  v4 = objc_msgSend__radiosPrefsQueue(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1959BC21C;
  v6[3] = &unk_1E7439688;
  v6[4] = v3;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)_adjustCellularAutoAssociation
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_autoAssociateCellular(self, a2, v2))
  {
    objc_msgSend_setDataConnectionActive_(self, v4, 1);
    if (!self->_cellAssertion)
    {
      v5 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        cellAutoAssociationTokens = self->_cellAutoAssociationTokens;
        v12 = 138412290;
        v13 = cellAutoAssociationTokens;
        _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Interface manager: enabling cell assertion (client tokens: %@)", &v12, 0xCu);
      }

      ctServerConnection = self->_ctServerConnection;
      _CTServerConnectionPacketContextAssertionCreate();
    }
  }

  else if (self->_cellAssertion)
  {
    v8 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_cellAutoAssociationTokens;
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: disabling cell assertion (client tokens: %@)", &v12, 0xCu);
    }

    cellAssertion = self->_cellAssertion;
    if (cellAssertion)
    {
      CFRelease(cellAssertion);
      self->_cellAssertion = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_lockedAdjustCellularAutoAssociation
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__adjustCellularAutoAssociation(self, v4, v5);
  lock = self->_lock;

  objc_msgSend_unlock(lock, v6, v7);
}

- (BOOL)disableFastDormancy
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69956F0], a2, v2);
  v6 = objc_msgSend_disableFastDormancy(v3, v4, v5);

  return v6;
}

- (void)addFastDormancyDisableToken:(id)a3
{
  v3 = MEMORY[0x1E69956F0];
  v4 = a3;
  v8 = objc_msgSend_sharedInstance(v3, v5, v6);
  objc_msgSend_addFastDormancyDisableToken_(v8, v7, v4);
}

- (void)removeFastDormancyDisableToken:(id)a3
{
  v3 = MEMORY[0x1E69956F0];
  v4 = a3;
  v8 = objc_msgSend_sharedInstance(v3, v5, v6);
  objc_msgSend_removeFastDormancyDisableToken_(v8, v7, v4);
}

- (BOOL)willTryToAutoAssociateWiFiNetwork
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  v6 = objc_msgSend_willTryToAutoAssociateWiFiNetwork(v3, v4, v5);

  return v6;
}

- (BOOL)willTryToSearchForWiFiNetwork
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  v6 = objc_msgSend_willTryToSearchForWiFiNetwork(v3, v4, v5);

  return v6;
}

- (NSNumber)wiFiSignalStrength
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  v6 = objc_msgSend_wiFiSignalStrength(v3, v4, v5);

  return v6;
}

- (NSNumber)wiFiScaledRSSI
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  v6 = objc_msgSend_wiFiScaledRSSI(v3, v4, v5);

  return v6;
}

- (NSNumber)wiFiScaledRate
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  v6 = objc_msgSend_wiFiScaledRate(v3, v4, v5);

  return v6;
}

- (BOOL)autoAssociateWiFi
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  v6 = objc_msgSend_autoAssociateWiFi(v3, v4, v5);

  return v6;
}

- (void)addWiFiAutoAssociationClientToken:(id)a3
{
  v3 = MEMORY[0x1E6995708];
  v4 = a3;
  v8 = objc_msgSend_sharedInstance(v3, v5, v6);
  objc_msgSend_addWiFiAutoAssociationClientToken_(v8, v7, v4);
}

- (void)removeWiFiAutoAssociationClientToken:(id)a3
{
  v3 = MEMORY[0x1E6995708];
  v4 = a3;
  v8 = objc_msgSend_sharedInstance(v3, v5, v6);
  objc_msgSend_removeWiFiAutoAssociationClientToken_(v8, v7, v4);
}

- (void)showNetworkOptions
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E6995708], a2, v2);
  objc_msgSend_showNetworkOptions(v5, v3, v4);
}

- (BOOL)autoAssociateCellular
{
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_count(self->_cellAutoAssociationTokens, v4, v5) != 0;
  objc_msgSend_unlock(self->_lock, v7, v8);
  return v6;
}

- (void)addCellularAutoAssociationClientToken:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    objc_msgSend_lock(self->_lock, v4, v5);
    cellAutoAssociationTokens = self->_cellAutoAssociationTokens;
    if (!cellAutoAssociationTokens)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v10 = self->_cellAutoAssociationTokens;
      self->_cellAutoAssociationTokens = v9;

      cellAutoAssociationTokens = self->_cellAutoAssociationTokens;
    }

    objc_msgSend_addObject_(cellAutoAssociationTokens, v7, v6);
    objc_msgSend_unlock(self->_lock, v11, v12);
    v13 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_cellAutoAssociationTokens;
      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_DEFAULT, "Client token: %@ being added to Cellular association clients (%@)", &v18, 0x16u);
    }

    objc_msgSend__lockedAdjustCellularAutoAssociation(self, v15, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeCellularAutoAssociationClientToken:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cellAutoAssociationTokens = self->_cellAutoAssociationTokens;
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = cellAutoAssociationTokens;
      _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Client token: %@ being removed to cellular association clients (%@)", &v15, 0x16u);
    }

    objc_msgSend_lock(self->_lock, v7, v8);
    objc_msgSend_removeObject_(self->_cellAutoAssociationTokens, v9, v4);
    objc_msgSend_unlock(self->_lock, v10, v11);
    objc_msgSend__lockedAdjustCellularAutoAssociation(self, v12, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)internetConnectionActivationError:(int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = a3;
    _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Received core telephony connection activation error callback { error: %d }", v12, 8u);
  }

  v6 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "Failed to bring up data context", v12, 2u);
  }

  objc_msgSend_lock(self->_lock, v7, v8);
  self->_shouldBringUpDataContext = 0;
  objc_msgSend_unlock(self->_lock, v9, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)internetConnectionStateChanged:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Received core telephony connection state changed callback { dataConnectionStatusInfo: %@ }", &v13, 0xCu);
  }

  objc_msgSend_lock(self->_lock, v6, v7);
  self->_shouldBringUpDataContext = 1;
  objc_msgSend__locked_updateDataStateBasedOnDataConnectionStatus_(self, v8, v4);
  objc_msgSend__locked_recalculateDataContextUsableAndPostNotificationIfNeeded_(self, v9, 1);
  objc_msgSend_unlock(self->_lock, v10, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)internetDataStatusBasic:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Received core telephony internetDataStatus callback { dataStatus: %@ }", &v13, 0xCu);
  }

  objc_msgSend_lock(self->_lock, v6, v7);
  self->_shouldBringUpDataContext = 1;
  objc_msgSend__locked_updateDataStateBasedOnDataStatus_(self, v8, v4);
  objc_msgSend__locked_recalculateDataContextUsableAndPostNotificationIfNeeded_(self, v9, 1);
  objc_msgSend_unlock(self->_lock, v10, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)currentDataSimChanged:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_lock(self->_lock, v5, v6);
  v7 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentDataSubscriptionContextSync = self->_currentDataSubscriptionContextSync;
    v16 = 138412546;
    v17 = currentDataSubscriptionContextSync;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "Interface manager: updating currentDataSimContext. {old: %@; new: %@}", &v16, 0x16u);
  }

  v11 = objc_msgSend_copy(v4, v9, v10);
  v12 = self->_currentDataSubscriptionContextSync;
  self->_currentDataSubscriptionContextSync = v11;

  objc_msgSend_unlock(self->_lock, v13, v14);
  v15 = *MEMORY[0x1E69E9840];
}

- (CTXPCServiceSubscriptionContext)currentDataSubscriptionContextSync
{
  v22 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, v2);
  currentDataSubscriptionContextSync = self->_currentDataSubscriptionContextSync;
  if (!currentDataSubscriptionContextSync)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v19 = 0;
    v7 = objc_msgSend_getCurrentDataSubscriptionContextSync_(coreTelephonyClient, v4, &v19);
    v8 = v19;
    v11 = objc_msgSend_copy(v7, v9, v10);
    v12 = self->_currentDataSubscriptionContextSync;
    self->_currentDataSubscriptionContextSync = v11;

    if (!self->_currentDataSubscriptionContextSync)
    {
      v13 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_DEFAULT, "Couldn't get the current context: %@", buf, 0xCu);
      }
    }

    currentDataSubscriptionContextSync = self->_currentDataSubscriptionContextSync;
  }

  v14 = currentDataSubscriptionContextSync;
  objc_msgSend_unlock(self->_lock, v15, v16);
  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_locked_updateDataStateWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  coreTelephonyClient = self->_coreTelephonyClient;
  v15 = 0;
  v7 = objc_msgSend_getDataStatus_error_(coreTelephonyClient, v6, v4, &v15);
  v10 = v15;
  if (v7)
  {
    v11 = objc_msgSend_copyBasic(v7, v8, v9);
    objc_msgSend__locked_updateDataStateBasedOnDataStatus_(self, v12, v11);
  }

  else
  {
    v13 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_DEFAULT, "Failed to query initial data status from telephony { dataError: %@, context: %@ }", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_locked_updateDataConnectionStateWithContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v7 = objc_msgSend_getConnectionState_connectionType_error_(coreTelephonyClient, v6, v4, 0, &v12);
  v9 = v12;
  if (v7)
  {
    objc_msgSend__locked_updateDataStateBasedOnDataConnectionStatus_(self, v8, v7);
  }

  else
  {
    v10 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "Failed to query initial data connection status from telephony { connectionError: %@, context: %@ }", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_locked_updateDataStateBasedOnDataStatus:(id)a3
{
  v4 = a3;
  self->_isDataPossible = objc_msgSend_cellularDataPossible(v4, v5, v6);
  hasIndicator = objc_msgSend_hasIndicator(v4, v7, v8);

  self->_isDataIndicatorNone = hasIndicator ^ 1;
}

- (void)_locked_recalculateDataContextUsableAndPostNotificationIfNeeded:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = !self->_isDataIndicatorNone && self->_isDataContextActive && self->_isDataPossible;
  v6 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isDataPossible)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v24 = 138412290;
    v25 = v7;
    _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "   Data context is attached: %@", &v24, 0xCu);
  }

  v8 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isDataContextActive)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v24 = 138412290;
    v25 = v9;
    _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "   Data context is active: %@", &v24, 0xCu);
  }

  v10 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isDataIndicatorNone)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v24 = 138412290;
    v25 = v11;
    _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "   Data indicator is none: %@", &v24, 0xCu);
  }

  v12 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isDataContextUsable)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v24 = 138412290;
    v25 = v13;
    _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_DEFAULT, "   Data context is usable (previous): %@", &v24, 0xCu);
  }

  v14 = v5;
  v15 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v14)
    {
      v16 = @"YES";
    }

    v24 = 138412290;
    v25 = v16;
    _os_log_impl(&dword_195988000, v15, OS_LOG_TYPE_DEFAULT, "   Data context is usable (new): %@", &v24, 0xCu);
  }

  if (self->_isDataContextUsable != v14)
  {
    self->_isDataContextUsable = v14;
    if (v3)
    {
      v17 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        if (v14)
        {
          v18 = @"YES";
        }

        v24 = 138412546;
        v25 = @"__kIMMobileNetworkManagerDataStatusChangedNotification";
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_195988000, v17, OS_LOG_TYPE_DEFAULT, "    => Posting data status changed notification { notification: %@, dataContextUsable: %@ }", &v24, 0x16u);
      }

      v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
      objc_msgSend___mainThreadPostNotificationName_object_(v21, v22, @"__kIMMobileNetworkManagerDataStatusChangedNotification", 0);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_releaseCTServerConnection
{
  coreTelephonyClient = self->_coreTelephonyClient;
  self->_coreTelephonyClient = 0;

  if (self->_registered)
  {
    *&self->_registered = 0;
  }

  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    self->_ctServerConnection = 0;

    CFRelease(ctServerConnection);
  }
}

- (BOOL)_isDataConnectionAvailable
{
  v33 = *MEMORY[0x1E69E9840];
  if (IMPCDoesInterfaceExist())
  {
    if (!self->_registered)
    {
      goto LABEL_21;
    }

    v6 = objc_msgSend_currentDataSubscriptionContextSync(self, v3, v4);
    if (!v6)
    {
      goto LABEL_21;
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v30 = 0;
    v8 = objc_msgSend_getConnectionState_connectionType_error_(coreTelephonyClient, v5, v6, 0, &v30);
    v11 = v30;
    if (v8)
    {
      v12 = objc_msgSend_state(v8, v9, v10);
      v13 = v12 == 2;
      v14 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v12 == 2)
        {
          v15 = @"YES";
        }

        *buf = 138412290;
        v32 = v15;
        _os_log_impl(&dword_195988000, v14, OS_LOG_TYPE_DEFAULT, "Data context active: %@", buf, 0xCu);
      }

      v16 = self->_coreTelephonyClient;
      v29 = 0;
      v18 = objc_msgSend_getDataStatus_error_(v16, v17, v6, &v29);
      v19 = v29;
      v22 = objc_msgSend_indicator(v18, v20, v21);

      if (v22)
      {
        v23 = OSLogHandleForIDSCategory("Network");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = @"NO";
          if (v12 == 2)
          {
            v24 = @"YES";
          }

          *buf = 138412290;
          v32 = v24;
          _os_log_impl(&dword_195988000, v23, OS_LOG_TYPE_DEFAULT, "Connection available: %@", buf, 0xCu);
        }

        v25 = 1;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v26 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v11;
        _os_log_impl(&dword_195988000, v26, OS_LOG_TYPE_DEFAULT, "Couldn't get the connection state: %@", buf, 0xCu);
      }

      v25 = 0;
      v19 = 0;
      v13 = 0;
    }

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int)_getCurrentCTDataStatus
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_currentDataSubscriptionContextSync(self, a2, v2);
  if (v5)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v15 = 0;
    v7 = objc_msgSend_getDataStatus_error_(coreTelephonyClient, v4, v5, &v15);
    v8 = v15;
    v11 = objc_msgSend_indicator(v7, v9, v10);

    if (v8)
    {
      v12 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't get the data status: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)requiresSIMInserted
{
  *&v9[5] = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    IsUserIdentityModuleRequired = _CTServerConnectionIsUserIdentityModuleRequired();
    v3 = IsUserIdentityModuleRequired;
    v4 = HIDWORD(IsUserIdentityModuleRequired);
    if (HIDWORD(IsUserIdentityModuleRequired))
    {
      v5 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v9[0] = v3;
        LOWORD(v9[1]) = 1024;
        *(&v9[1] + 2) = v4;
        _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsUserIdentityModuleRequired failed with error: (%i, %i).", buf, 0xEu);
      }
    }

    else
    {
      v5 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v9 = @"NO";
        _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsUserIdentityModuleRequired returned: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsUserIdentityModuleRequired failed, missing _ctServerConnection", buf, 2u);
    }
  }

  result = 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSIMRemoved
{
  v3 = objc_msgSend__telephonyDataSIMStatus(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v4, *MEMORY[0x1E6965438]);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)isSIMLocked
{
  v3 = objc_msgSend__telephonyDataSIMStatus(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v4, *MEMORY[0x1E6965458]);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)_telephonyDataSIMStatus
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend__dataCTXPCServiceSubscriptionContext(self, a2, v2);
  if (v5)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v13 = 0;
    v7 = objc_msgSend_getSIMStatus_error_(coreTelephonyClient, v4, v5, &v13);
    v8 = v13;
    if (!v7)
    {
      v9 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_195988000, v9, OS_LOG_TYPE_DEFAULT, "Failed to read SIM status { error: %@, context: %@ }", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "Failed to read SIM status due to nil subscription context", buf, 2u);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)showSIMUnlock
{
  if (objc_msgSend_isSIMLocked(self, a2, v2))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PhoneSettingsPromptForSIMUnlockNotification", 0, 0, 1u);
  }
}

- (BOOL)inValidSIMState
{
  v25 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isSIMRemoved(self, a2, v2))
  {
    v9 = objc_msgSend__dataCTXPCServiceSubscriptionContext(self, v4, v5);
    if (v9)
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v20 = 0;
      isPhoneNumberCredentialValid_outError = objc_msgSend_isPhoneNumberCredentialValid_outError_(coreTelephonyClient, v8, v9, &v20);
      v11 = v20;
      if (!v11)
      {
        if ((isPhoneNumberCredentialValid_outError & 1) == 0)
        {
          v19 = OSLogHandleForIDSCategory("Network");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195988000, v19, OS_LOG_TYPE_DEFAULT, "   => CT reports phone credentials are not valid for data subscription context", buf, 2u);
          }
        }

        goto LABEL_14;
      }

      v12 = v11;
      v13 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_DEFAULT, "Failed to query phone number credential validity for data subscription context { error: %@, context: %@ }", buf, 0x16u);
      }
    }

    else
    {
      v16 = OSLogHandleForIDSCategory("Network");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_DEFAULT, "Failed to read SIM status due to nil subscription context", buf, 2u);
      }
    }

    isPhoneNumberCredentialValid_outError = objc_msgSend__legacy_inValidSIMState(self, v14, v15);
LABEL_14:

    goto LABEL_15;
  }

  v6 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "   => CT reports SIM is removed -- assuming credential is valid", buf, 2u);
  }

  isPhoneNumberCredentialValid_outError = 1;
LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return isPhoneNumberCredentialValid_outError;
}

- (BOOL)_legacy_inValidSIMState
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self->_ctServerConnection)
  {
    v3 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Failed to query whether phone number credential is valid due to missing CT server connection", buf, 2u);
    }

    goto LABEL_5;
  }

  IsPhoneNumberCredentialValid = _CTServerConnectionIsPhoneNumberCredentialValid();
  if (IsPhoneNumberCredentialValid)
  {
    v3 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v8 = IsPhoneNumberCredentialValid;
      v9 = 1024;
      v10 = HIDWORD(IsPhoneNumberCredentialValid);
      _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Error querying device user identity module { error: (%d:%d) }", buf, 0xEu);
    }

LABEL_5:

    result = 1;
    goto LABEL_10;
  }

  v6 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "   => CT reports phone credentials are not valid", buf, 2u);
  }

  result = 0;
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isDataSwitchEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_ctServerConnection)
  {
    v6 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionGetCellularDataIsEnabled failed, missing _ctServerConnection", buf, 2u);
    }

    goto LABEL_9;
  }

  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  v3 = IsEnabled;
  v4 = HIDWORD(IsEnabled);
  if (HIDWORD(IsEnabled))
  {
    v6 = OSLogHandleForIDSCategory("Network");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v9 = v3;
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionGetCellularDataIsEnabled failed with error: (%i, %i).", buf, 0xEu);
    }

LABEL_9:

    result = 0;
    goto LABEL_10;
  }

  result = 0;
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isDataConnectionActive
{
  if (!IMPCDoesInterfaceExist())
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](self, sel__isDataConnectionAvailable, v3);
}

@end