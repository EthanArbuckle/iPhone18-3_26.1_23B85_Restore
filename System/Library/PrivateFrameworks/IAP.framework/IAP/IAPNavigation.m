@interface IAPNavigation
- (IAPNavigation)init;
- (IAPNavigation)initWithDelegate:(id)a3;
- (IAPNavigationDelegate)delegate;
- (id)_convert_xpc_array_to_NSArray:(id)a3;
- (void)_getConnectedAccessories;
- (void)_iap2d_server_did_die;
- (void)_iap2d_server_did_launch;
- (void)_updateInternalStateWithArrayOfAccessories:(id)a3;
- (void)dealloc;
- (void)updateNavigationGuidanceInfo:(id)a3 forAccessory:(id)a4 withComponent:(id)a5;
- (void)updateNavigationManeuverInfo:(id)a3 forAccessory:(id)a4 withComponent:(id)a5;
@end

@implementation IAPNavigation

- (IAPNavigation)init
{
  [MEMORY[0x277CBEAD8] raise:@"Invalid Invocation: IAPNavigation: init" format:@"-initWithDelegate: must be called instead"];

  return 0;
}

- (IAPNavigation)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = IAPNavigation;
  v5 = [(IAPNavigation *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    availableAccessories = v5->_availableAccessories;
    v5->_availableAccessories = v6;

    objc_storeWeak(&v5->_delegate, v4);
    v5->_connected = 0;
    v8 = dispatch_queue_create("com.apple.iap.navigation.processingQ", 0);
    processingQ = v5->_processingQ;
    v5->_processingQ = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    localNotificationCenter = v5->_localNotificationCenter;
    v5->_localNotificationCenter = v10;

    [(NSNotificationCenter *)v5->_localNotificationCenter addObserver:v5 selector:sel__iap2d_server_did_launch name:@"iAP2ServerLaunch" object:0];
    [(NSNotificationCenter *)v5->_localNotificationCenter addObserver:v5 selector:sel__iap2d_server_did_die name:@"iAP2ServerDie" object:0];
    v12 = [MEMORY[0x277CCA9A0] defaultCenter];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nav_frameworkShouldPollNotification"];
    [v12 addObserver:v5 selector:sel__getConnectedAccessories name:v13 object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5->_darwinNotificationCenter = DarwinNotifyCenter;
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __iap2dServerLaunched, @"kIAP2ServerLaunchedNotification", 0, 0);
    CFNotificationCenterAddObserver(v5->_darwinNotificationCenter, 0, __iap2dServerDied, @"kIAP2ServerDiedNotification", 0, 0);
    v15 = RetainConnectionToIAP2Daemon();
    iap2d_connection = v5->_iap2d_connection;
    v5->_iap2d_connection = v15;

    if (v5->_iap2d_connection)
    {
      v5->_connected = 1;
      [(IAPNavigation *)v5 _getConnectedAccessories];
    }
  }

  return v5;
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->_localNotificationCenter removeObserver:self];
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  CFNotificationCenterRemoveObserver(self->_darwinNotificationCenter, 0, @"kIAP2ServerLaunchedNotification", 0);
  CFNotificationCenterRemoveObserver(self->_darwinNotificationCenter, 0, @"kIAP2ServerDiedNotification", 0);
  v4.receiver = self;
  v4.super_class = IAPNavigation;
  [(IAPNavigation *)&v4 dealloc];
}

- (void)updateNavigationGuidanceInfo:(id)a3 forAccessory:(id)a4 withComponent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationVoid.isa, v8, v9, v10);
  }

  processingQ = self->_processingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__IAPNavigation_updateNavigationGuidanceInfo_forAccessory_withComponent___block_invoke;
  block[3] = &unk_279780ED8;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_async(processingQ, block);
}

void __73__IAPNavigation_updateNavigationGuidanceInfo_forAccessory_withComponent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 1 || !*(v2 + 48))
  {
    return;
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "requestType", "nav_sendGuidanceUpdate");
  xpc_dictionary_set_uint64(xdict, "nav_accessoryIdentifier", [*(a1 + 40) identifier]);
  v4 = *(a1 + 48);
  if (v4)
  {
    xpc_dictionary_set_uint64(xdict, "nav_componentIdentifier", [v4 identifier]);
  }

  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 56)];
  xpc_dictionary_set_data(xdict, "nav_payload", [v5 bytes], objc_msgSend(v5, "length"));
  v6 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 48), xdict);
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x259C17370](v6);
    if (v7 == MEMORY[0x277D863F8] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_NavigationErro.isa);
    }

    else
    {
      if (v7 != MEMORY[0x277D863F0] || v8 != MEMORY[0x277D86480])
      {
        if (v8 == MEMORY[0x277D86468])
        {
          if (xpc_dictionary_get_uint64(v7, "result"))
          {
            NSLog(&cfstr_NavigationErro_1.isa);
          }
        }

        else if (v8 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_NavigationSDUn.isa, "[IAPNavigation updateNavigationGuidanceInfo:forAccessory:withComponent:]_block_invoke", 561);
        }

        else
        {
          NSLog(&cfstr_NavigationSDUn_0.isa, "[IAPNavigation updateNavigationGuidanceInfo:forAccessory:withComponent:]_block_invoke", 565, v8);
        }

        goto LABEL_16;
      }

      NSLog(&cfstr_NavigationErro_0.isa);
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"iAP2ServerDie" object:0];
  }

  else
  {
    NSLog(&cfstr_NavigationSDNo.isa, "[IAPNavigation updateNavigationGuidanceInfo:forAccessory:withComponent:]_block_invoke", 570);
  }

LABEL_16:
}

- (void)updateNavigationManeuverInfo:(id)a3 forAccessory:(id)a4 withComponent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationVoid_0.isa, v8, v9, v10);
  }

  processingQ = self->_processingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__IAPNavigation_updateNavigationManeuverInfo_forAccessory_withComponent___block_invoke;
  block[3] = &unk_279780ED8;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_async(processingQ, block);
}

void __73__IAPNavigation_updateNavigationManeuverInfo_forAccessory_withComponent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 1 || !*(v2 + 48))
  {
    return;
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "requestType", "nav_sendManeuverUpdate");
  xpc_dictionary_set_uint64(xdict, "nav_accessoryIdentifier", [*(a1 + 40) identifier]);
  v4 = *(a1 + 48);
  if (v4)
  {
    xpc_dictionary_set_uint64(xdict, "nav_componentIdentifier", [v4 identifier]);
  }

  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 56)];
  xpc_dictionary_set_data(xdict, "nav_payload", [v5 bytes], objc_msgSend(v5, "length"));
  v6 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 48), xdict);
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x259C17370](v6);
    if (v7 == MEMORY[0x277D863F8] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_NavigationErro.isa);
    }

    else
    {
      if (v7 != MEMORY[0x277D863F0] || v8 != MEMORY[0x277D86480])
      {
        if (v8 == MEMORY[0x277D86468])
        {
          if (xpc_dictionary_get_uint64(v7, "result"))
          {
            NSLog(&cfstr_NavigationErro_1.isa);
          }
        }

        else if (v8 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_NavigationSDUn.isa, "[IAPNavigation updateNavigationManeuverInfo:forAccessory:withComponent:]_block_invoke", 628);
        }

        else
        {
          NSLog(&cfstr_NavigationSDUn_0.isa, "[IAPNavigation updateNavigationManeuverInfo:forAccessory:withComponent:]_block_invoke", 632, v8);
        }

        goto LABEL_16;
      }

      NSLog(&cfstr_NavigationErro_0.isa);
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"iAP2ServerDie" object:0];
  }

  else
  {
    NSLog(&cfstr_NavigationSDNo.isa, "[IAPNavigation updateNavigationManeuverInfo:forAccessory:withComponent:]_block_invoke", 637);
  }

LABEL_16:
}

- (void)_iap2d_server_did_launch
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationVoid_1.isa);
  }

  processingQ = self->_processingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IAPNavigation__iap2d_server_did_launch__block_invoke;
  block[3] = &unk_279780F00;
  block[4] = self;
  dispatch_async(processingQ, block);
}

void __41__IAPNavigation__iap2d_server_did_launch__block_invoke(uint64_t a1)
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationRunn.isa, *(*(a1 + 32) + 24));
  }

  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    v3 = RetainConnectionToIAP2Daemon();
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v6 = *(a1 + 32);
    if (*(v6 + 48))
    {
      *(v6 + 24) = 1;
      v7 = *(a1 + 32);

      [v7 _getConnectedAccessories];
    }
  }
}

- (void)_iap2d_server_did_die
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationVoid_2.isa);
  }

  processingQ = self->_processingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__IAPNavigation__iap2d_server_did_die__block_invoke;
  block[3] = &unk_279780F00;
  block[4] = self;
  dispatch_async(processingQ, block);
}

void __38__IAPNavigation__iap2d_server_did_die__block_invoke(uint64_t a1)
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationRunn.isa, *(*(a1 + 32) + 24));
  }

  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;

    *(*(a1 + 32) + 24) = 0;
    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [*(a1 + 32) _updateInternalStateWithArrayOfAccessories:v5];
  }
}

- (void)_getConnectedAccessories
{
  processingQ = self->_processingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IAPNavigation__getConnectedAccessories__block_invoke;
  block[3] = &unk_279780F00;
  block[4] = self;
  dispatch_async(processingQ, block);
}

void __41__IAPNavigation__getConnectedAccessories__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 1 || !*(v2 + 48))
  {
    return;
  }

  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, "requestType", "nav_requestConnectedAccessories");
  v4 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 48), message);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x259C17370](v4);
    if (v5 == MEMORY[0x277D863F8] && v6 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_NavigationIapn.isa);
    }

    else
    {
      if (v5 != MEMORY[0x277D863F0] || v6 != MEMORY[0x277D86480])
      {
        if (v6 == MEMORY[0x277D86468])
        {
          if (xpc_dictionary_get_BOOL(v5, "result"))
          {
            v10 = xpc_dictionary_get_value(v5, "nav_accessoriesConnected");
            if (__debugLogEnabled())
            {
              NSLog(&cfstr_NavigationConn.isa, v10);
            }

            v11 = [*(a1 + 32) _convert_xpc_array_to_NSArray:v10];
            [*(a1 + 32) _updateInternalStateWithArrayOfAccessories:v11];
          }
        }

        else if (v6 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_NavigationSDUn.isa, "[IAPNavigation _getConnectedAccessories]_block_invoke", 728);
        }

        else
        {
          NSLog(&cfstr_NavigationSDUn_0.isa, "[IAPNavigation _getConnectedAccessories]_block_invoke", 732, v6);
        }

        goto LABEL_21;
      }

      NSLog(&cfstr_NavigationIapn_0.isa);
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"iAP2ServerDie" object:0];
  }

  else
  {
    NSLog(&cfstr_NavigationSDNo.isa, "[IAPNavigation _getConnectedAccessories]_block_invoke", 737);
  }

LABEL_21:
}

- (void)_updateInternalStateWithArrayOfAccessories:(id)a3
{
  v161 = *MEMORY[0x277D85DE8];
  v4 = a3;
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationBegi.isa);
    v6 = __debugLogEnabled___bNavigationDebug;
    if (__debugLogEnabled___bNavigationDebug == -1)
    {
      v6 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
      __debugLogEnabled___bNavigationDebug = v6;
    }

    if (v6)
    {
      NSLog(&cfstr_NavigationInpu.isa, v4);
    }
  }

  v7 = [MEMORY[0x277CBEB58] set];
  v94 = [MEMORY[0x277CBEB58] set];
  v95 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB58] set];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v148 objects:v160 count:16];
  v93 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = 0x279780000uLL;
    v12 = *v149;
    v92 = v7;
    v96 = self;
    v97 = *v149;
    do
    {
      v13 = 0;
      v99 = v10;
      do
      {
        if (*v149 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [objc_alloc(*(v11 + 2184)) initWithDict:*(*(&v148 + 1) + 8 * v13)];
        v108 = v14;
        if (__debugLogEnabled___bNavigationDebug != -1)
        {
          if (!__debugLogEnabled___bNavigationDebug)
          {
            goto LABEL_16;
          }

LABEL_15:
          NSLog(&cfstr_NavigationIapn_1.isa, v14);
          v14 = v108;
          goto LABEL_16;
        }

        v30 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
        v14 = v108;
        __debugLogEnabled___bNavigationDebug = v30;
        if (v30)
        {
          goto LABEL_15;
        }

LABEL_16:
        v15 = [(NSSet *)self->_availableAccessories containsObject:v14];
        v16 = __debugLogEnabled___bNavigationDebug;
        if (!v15)
        {
          if (__debugLogEnabled___bNavigationDebug == -1)
          {
            __debugLogEnabled___bNavigationDebug = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
            if (__debugLogEnabled___bNavigationDebug)
            {
LABEL_28:
              NSLog(&cfstr_NavigationAcce_2.isa);
            }
          }

          else if (__debugLogEnabled___bNavigationDebug)
          {
            goto LABEL_28;
          }

          v29 = v108;
          [(NSSet *)self->_availableAccessories addObject:v108];
          [v108 set_wasFoundInLastUpdate:1];
          [v7 addObject:v108];
          goto LABEL_46;
        }

        if (__debugLogEnabled___bNavigationDebug == -1)
        {
          v16 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
          __debugLogEnabled___bNavigationDebug = v16;
        }

        v104 = v13;
        if (v16)
        {
          NSLog(&cfstr_NavigationAcce.isa);
        }

        v17 = MEMORY[0x277CCAC30];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v108, "identifier")}];
        v19 = [v17 predicateWithFormat:@"identifier = %@", v18];

        v20 = [(NSSet *)self->_availableAccessories allObjects];
        v102 = v19;
        v21 = [v20 filteredArrayUsingPredicate:v19];
        v22 = [v21 firstObject];

        [v22 set_wasFoundInLastUpdate:1];
        v23 = v22;
        v24 = [v22 components];
        v25 = [v108 components];
        v26 = [v24 isEqualToSet:v25];

        v27 = __debugLogEnabled___bNavigationDebug;
        if (!v26)
        {
          if (__debugLogEnabled___bNavigationDebug == -1)
          {
            __debugLogEnabled___bNavigationDebug = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
            if (__debugLogEnabled___bNavigationDebug)
            {
LABEL_34:
              NSLog(&cfstr_NavigationAcce_1.isa);
            }
          }

          else if (__debugLogEnabled___bNavigationDebug)
          {
            goto LABEL_34;
          }

          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v112 = [v108 components];
          v31 = [v112 countByEnumeratingWithState:&v144 objects:v159 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v145;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v145 != v33)
                {
                  objc_enumerationMutation(v112);
                }

                v35 = *(*(&v144 + 1) + 8 * i);
                v36 = MEMORY[0x277CCAC30];
                v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v35, "identifier")}];
                v38 = [v36 predicateWithFormat:@"identifier = %@", v37];

                v39 = [v23 components];
                v40 = [v39 allObjects];
                v41 = [v40 filteredArrayUsingPredicate:v38];
                v42 = [v41 firstObject];

                LODWORD(v40) = [v35 isEnabled];
                if (v40 != [v42 isEnabled])
                {
                  [v42 setIsEnabled:{objc_msgSend(v35, "isEnabled")}];
                  [v42 set_enabledModified:1];
                }
              }

              v32 = [v112 countByEnumeratingWithState:&v144 objects:v159 count:16];
            }

            while (v32);
          }

          v8 = v93;
          v28 = v94;
          v7 = v92;
          v11 = 0x279780000;
          v12 = v97;
          v10 = v99;
          v13 = v104;
          goto LABEL_45;
        }

        v11 = 0x279780000;
        v10 = v99;
        v13 = v104;
        if (__debugLogEnabled___bNavigationDebug == -1)
        {
          v27 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
          __debugLogEnabled___bNavigationDebug = v27;
        }

        v28 = v95;
        v12 = v97;
        if (v27)
        {
          NSLog(&cfstr_NavigationAcce_0.isa, v95);
          v28 = v95;
        }

LABEL_45:
        [v28 addObject:v23];

        v29 = v108;
        self = v96;
LABEL_46:

        v13 = v13 + 1;
      }

      while (v13 != v10);
      v43 = [obj countByEnumeratingWithState:&v148 objects:v160 count:16];
      v10 = v43;
    }

    while (v43);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v44 = self->_availableAccessories;
  v45 = [(NSSet *)v44 countByEnumeratingWithState:&v140 objects:v158 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v141;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v141 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v140 + 1) + 8 * j);
        if ([v49 _wasFoundInLastUpdate])
        {
          [v49 set_wasFoundInLastUpdate:0];
        }

        else
        {
          [v8 addObject:v49];
        }
      }

      v46 = [(NSSet *)v44 countByEnumeratingWithState:&v140 objects:v158 count:16];
    }

    while (v46);
  }

  v50 = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    v50 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = v50;
  }

  if (v50)
  {
    NSLog(&cfstr_NavigationAddi.isa, v7);
  }

  availableAccessories = self->_availableAccessories;
  v52 = [v7 allObjects];
  [(NSSet *)availableAccessories addObjectsFromArray:v52];

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v103 = v7;
  v109 = [v103 countByEnumeratingWithState:&v136 objects:v157 count:16];
  if (v109)
  {
    v105 = *v137;
    do
    {
      v53 = 0;
      do
      {
        if (*v137 != v105)
        {
          objc_enumerationMutation(v103);
        }

        v54 = *(*(&v136 + 1) + 8 * v53);
        v55 = __debugLogEnabled___bNavigationDebug;
        if (__debugLogEnabled___bNavigationDebug == -1)
        {
          v55 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
          __debugLogEnabled___bNavigationDebug = v55;
        }

        v113 = v53;
        if (v55)
        {
          NSLog(&cfstr_NavigationCall.isa, v54);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained IAPNavigationAccessoryDidBecomeAvailable:v54];

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v57 = [v54 components];
        v58 = [v57 countByEnumeratingWithState:&v132 objects:v156 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v133;
          do
          {
            v61 = 0;
            do
            {
              if (*v133 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = *(*(&v132 + 1) + 8 * v61);
              if ([v62 isEnabled])
              {
                if (__debugLogEnabled___bNavigationDebug == -1)
                {
                  __debugLogEnabled___bNavigationDebug = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
                  if (__debugLogEnabled___bNavigationDebug)
                  {
LABEL_84:
                    NSLog(&cfstr_NavigationCall_0.isa, v54, v62);
                  }
                }

                else if (__debugLogEnabled___bNavigationDebug)
                {
                  goto LABEL_84;
                }

                v63 = objc_loadWeakRetained(&self->_delegate);
                [v63 IAPNavigationAccessory:v54 didEnableNavigationUpdatesForComponent:v62];
              }

              ++v61;
            }

            while (v59 != v61);
            v64 = [v57 countByEnumeratingWithState:&v132 objects:v156 count:16];
            v59 = v64;
          }

          while (v64);
        }

        v53 = v113 + 1;
      }

      while (v113 + 1 != v109);
      v109 = [v103 countByEnumeratingWithState:&v136 objects:v157 count:16];
    }

    while (v109);
  }

  v65 = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    v65 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = v65;
  }

  if (v65)
  {
    NSLog(&cfstr_NavigationAvai.isa, self->_availableAccessories);
    v66 = __debugLogEnabled___bNavigationDebug;
    if (__debugLogEnabled___bNavigationDebug == -1)
    {
      v66 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
      __debugLogEnabled___bNavigationDebug = v66;
    }

    if (v66)
    {
      NSLog(&cfstr_NavigationUpda.isa, v94);
    }
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v100 = v94;
  v110 = [v100 countByEnumeratingWithState:&v128 objects:v155 count:16];
  if (v110)
  {
    v106 = *v129;
    do
    {
      v67 = 0;
      do
      {
        if (*v129 != v106)
        {
          objc_enumerationMutation(v100);
        }

        v114 = v67;
        v68 = *(*(&v128 + 1) + 8 * v67);
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v69 = [v68 components];
        v70 = [v69 countByEnumeratingWithState:&v124 objects:v154 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v125;
          do
          {
            v73 = 0;
            do
            {
              if (*v125 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v74 = *(*(&v124 + 1) + 8 * v73);
              if ([v74 _enabledModified])
              {
                [v74 set_enabledModified:0];
                if ([v74 isEnabled])
                {
                  if (__debugLogEnabled___bNavigationDebug == -1)
                  {
                    __debugLogEnabled___bNavigationDebug = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
                    if (__debugLogEnabled___bNavigationDebug)
                    {
LABEL_114:
                      NSLog(&cfstr_NavigationCall_1.isa, v68, v74);
                    }
                  }

                  else if (__debugLogEnabled___bNavigationDebug)
                  {
                    goto LABEL_114;
                  }

                  v75 = objc_loadWeakRetained(&self->_delegate);
                  [v75 IAPNavigationAccessory:v68 didEnableNavigationUpdatesForComponent:v74];
LABEL_120:

                  goto LABEL_121;
                }

                if (__debugLogEnabled___bNavigationDebug == -1)
                {
                  __debugLogEnabled___bNavigationDebug = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
                  if (__debugLogEnabled___bNavigationDebug)
                  {
LABEL_118:
                    NSLog(&cfstr_NavigationCall_2.isa, v68, v74);
                  }
                }

                else if (__debugLogEnabled___bNavigationDebug)
                {
                  goto LABEL_118;
                }

                v75 = objc_loadWeakRetained(&self->_delegate);
                [v75 IAPNavigationAccessory:v68 didDisableNavigationUpdatesForComponent:v74];
                goto LABEL_120;
              }

LABEL_121:
              ++v73;
            }

            while (v71 != v73);
            v76 = [v69 countByEnumeratingWithState:&v124 objects:v154 count:16];
            v71 = v76;
          }

          while (v76);
        }

        v67 = v114 + 1;
      }

      while (v114 + 1 != v110);
      v110 = [v100 countByEnumeratingWithState:&v128 objects:v155 count:16];
    }

    while (v110);
  }

  v77 = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    v77 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = v77;
  }

  if (v77)
  {
    NSLog(&cfstr_NavigationRemo.isa, v93);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v98 = v93;
  v111 = [v98 countByEnumeratingWithState:&v120 objects:v153 count:16];
  if (v111)
  {
    v107 = *v121;
    do
    {
      v78 = 0;
      do
      {
        if (*v121 != v107)
        {
          objc_enumerationMutation(v98);
        }

        v115 = v78;
        v79 = *(*(&v120 + 1) + 8 * v78);
        [(NSSet *)self->_availableAccessories removeObject:v79];
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v80 = [v79 components];
        v81 = [v80 countByEnumeratingWithState:&v116 objects:v152 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v117;
          do
          {
            v84 = 0;
            do
            {
              if (*v117 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v116 + 1) + 8 * v84);
              if ([v85 isEnabled])
              {
                if (__debugLogEnabled___bNavigationDebug == -1)
                {
                  __debugLogEnabled___bNavigationDebug = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
                  if (__debugLogEnabled___bNavigationDebug)
                  {
LABEL_147:
                    NSLog(&cfstr_NavigationCall_3.isa, v79, v85);
                  }
                }

                else if (__debugLogEnabled___bNavigationDebug)
                {
                  goto LABEL_147;
                }

                v86 = objc_loadWeakRetained(&self->_delegate);
                [v86 IAPNavigationAccessory:v79 didDisableNavigationUpdatesForComponent:v85];
              }

              ++v84;
            }

            while (v82 != v84);
            v87 = [v80 countByEnumeratingWithState:&v116 objects:v152 count:16];
            v82 = v87;
          }

          while (v87);
        }

        v88 = __debugLogEnabled___bNavigationDebug;
        if (__debugLogEnabled___bNavigationDebug == -1)
        {
          v88 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
          __debugLogEnabled___bNavigationDebug = v88;
        }

        if (v88)
        {
          NSLog(&cfstr_NavigationCall_4.isa, v79);
        }

        v89 = objc_loadWeakRetained(&self->_delegate);
        [v89 IAPNavigationAccessoryDidBecomeUnavailable:v79];

        v78 = v115 + 1;
      }

      while (v115 + 1 != v111);
      v111 = [v98 countByEnumeratingWithState:&v120 objects:v153 count:16];
    }

    while (v111);
  }

  v90 = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    v90 = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = v90;
  }

  if (v90)
  {
    NSLog(&cfstr_NavigationAvai.isa, self->_availableAccessories);
  }

  v91 = *MEMORY[0x277D85DE8];
}

- (id)_convert_xpc_array_to_NSArray:(id)a3
{
  v3 = a3;
  if (MEMORY[0x259C17370]() != MEMORY[0x277D86440])
  {
    [IAPNavigation _convert_xpc_array_to_NSArray:];
  }

  v4 = [MEMORY[0x277CBEB18] array];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __47__IAPNavigation__convert_xpc_array_to_NSArray___block_invoke;
  applier[3] = &unk_279780F50;
  v5 = v4;
  v8 = v5;
  xpc_array_apply(v3, applier);

  return v5;
}

uint64_t __47__IAPNavigation__convert_xpc_array_to_NSArray___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x259C17370](v4);
  v7 = MEMORY[0x277D86468];
  if (v6 == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v4, "identifier");
    v9 = xpc_dictionary_get_array(v4, "components");
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    [v5 setObject:v10 forKey:@"identifier"];

    v11 = [MEMORY[0x277CBEB18] array];
    if (MEMORY[0x259C17370](v9) == MEMORY[0x277D86440])
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __47__IAPNavigation__convert_xpc_array_to_NSArray___block_invoke_2;
      v18 = &unk_279780F28;
      v19 = v11;
      v20 = v7;
      v14 = v11;
      xpc_array_apply(v9, &v15);
      [v5 setObject:v14 forKey:{@"components", v15, v16, v17, v18}];

      [*(a1 + 32) addObject:v5];
      v12 = 1;
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_5:

  return v12;
}

BOOL __47__IAPNavigation__convert_xpc_array_to_NSArray___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = *(a1 + 40);
  v7 = MEMORY[0x277D86468];
  if (v6 == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v4, "identifier");
    v9 = xpc_dictionary_get_BOOL(v4, "isEnabled");
    v10 = [MEMORY[0x277CCACA8] stringWithCString:xpc_dictionary_get_string(v4 encoding:{"name"), 4}];
    v11 = xpc_dictionary_get_uint64(v4, "maxLength_CurrentRoadName");
    v12 = xpc_dictionary_get_uint64(v4, "maxLength_DestinationRoadName");
    v22 = xpc_dictionary_get_uint64(v4, "maxLength_PostManeuverRoadName");
    v23 = xpc_dictionary_get_uint64(v4, "maxLength_ManeuverDescription");
    v24 = xpc_dictionary_get_uint64(v4, "maxCapacity_GuidanceManeuver");
    if (v9)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    [v5 setValue:v13 forKey:@"isEnabled"];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    [v5 setValue:v14 forKey:@"identifier"];

    [v5 setValue:v10 forKey:@"name"];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [v5 setValue:v15 forKey:@"maxLength_CurrentRoadName"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
    [v5 setValue:v16 forKey:@"maxLength_DestinationRoadName"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
    [v5 setValue:v17 forKey:@"maxLength_PostManeuverRoadName"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
    [v5 setValue:v18 forKey:@"maxLength_ManeuverDescription"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
    [v5 setValue:v19 forKey:@"maxCapacity_GuidanceManeuver"];

    [*(a1 + 32) addObject:v5];
    v7 = MEMORY[0x277D86468];
  }

  v20 = v6 == v7;

  return v20;
}

- (IAPNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end