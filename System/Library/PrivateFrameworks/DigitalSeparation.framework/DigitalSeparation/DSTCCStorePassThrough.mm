@interface DSTCCStorePassThrough
+ (void)initialize;
- (BOOL)isServiceGranted:(id)granted forApp:(id)app;
- (id)appsWithLocationService;
- (id)deleteApp:(id)app forTest:(BOOL)test;
- (id)pathRuleForBundleID:(id)d create:(BOOL)create;
- (id)resetTCCCategory:(id)category forApp:(id)app;
- (id)resetTCCPermission:(id)permission forApp:(id)app;
- (unint64_t)locationAuthorizationForApp:(id)app;
- (void)allAppsWithLocalNetworkAccess:(id)access queue:(id)queue handler:(id)handler;
- (void)appsWithPermissionGrantedForService:(id)service queue:(id)queue completionHandler:(id)handler;
- (void)healthAuthorizationForApp:(id)app andAuthorizationStore:(id)store withCompletionHandler:(id)handler;
- (void)loadConfigurations:(id)configurations handler:(id)handler;
- (void)resetLocalNetworkPermissionForApp:(id)app queue:(id)queue handler:(id)handler;
- (void)resetLocationPermissionForApp:(id)app;
- (void)saveConfiguration:(id)configuration handler:(id)handler;
@end

@implementation DSTCCStorePassThrough

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLog_9 = os_log_create("com.apple.DigitalSeparation", "DSTCCStore");

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)isServiceGranted:(id)granted forApp:(id)app
{
  v31 = *MEMORY[0x277D85DE8];
  grantedCopy = granted;
  appCopy = app;
  if (([grantedCopy isEqualToString:@"DSHealth"] & 1) != 0 || objc_msgSend(grantedCopy, "isEqualToString:", @"DSLocalNetwork"))
  {
    v8 = DSLog_9;
    if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_FAULT))
    {
      [DSTCCStorePassThrough isServiceGranted:v8 forApp:?];
    }

    v9 = 0;
  }

  else
  {
    if (([grantedCopy isEqualToString:@"DSLocationAlways"] & 1) != 0 || objc_msgSend(grantedCopy, "isEqualToString:", @"DSLocationWhenInUse"))
    {
      appsWithLocationService = [(DSTCCStorePassThrough *)self appsWithLocationService];
      v11 = [appsWithLocationService objectForKey:appCopy];

      if (v11)
      {
        v9 = [(DSTCCStorePassThrough *)self locationAuthorizationForApp:v11]!= 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v12 = TCCAccessCopyInformationForBundleId();
      v13 = grantedCopy;
      if ([v13 isEqualToString:@"DSContacts"])
      {
        v14 = *MEMORY[0x277D6C100];

        v13 = v14;
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v12;
      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            v20 = [v19 valueForKey:@"kTCCInfoGranted"];
            bOOLValue = [v20 BOOLValue];

            v22 = [v19 objectForKeyedSubscript:@"kTCCInfoService"];
            LODWORD(v20) = [v22 isEqualToString:v13];

            if (v20 && (bOOLValue & 1) != 0)
            {
              v9 = 1;
              goto LABEL_24;
            }
          }

          v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v9 = 0;
LABEL_24:
      v11 = obj;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)appsWithPermissionGrantedForService:(id)service queue:(id)queue completionHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v8 = tcc_server_create();
  v9 = tcc_service_singleton_for_CF_name();
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = serviceCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = serviceCopy;
  v12 = v13;
  tcc_server_message_get_authorization_records_by_service();
}

void __85__DSTCCStorePassThrough_appsWithPermissionGrantedForService_queue_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      v9 = (authorization_right & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      [*(a1 + 32) addObject:v8];
    }
  }

  else
  {
    v10 = DSLog_9;
    if (a3)
    {
      if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_ERROR))
      {
        __85__DSTCCStorePassThrough_appsWithPermissionGrantedForService_queue_completionHandler___block_invoke_cold_1(a1, a3, v10);
      }

      v11 = *(a1 + 48);
      v12 = [MEMORY[0x277CBEA60] arrayWithObject:a3];
      v13 = [DSError errorWithCode:3 appName:0 serviceName:@"DSHealth" underlyingErrors:v12];
      (*(v11 + 16))(v11, 0, v13);
    }

    else
    {
      if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_248C40000, v10, OS_LOG_TYPE_INFO, "Finished getting authorization for service: %@", &v17, 0xCu);
      }

      v15 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)appsWithLocationService
{
  v2 = CLCopyAppsUsingLocation();

  return v2;
}

- (unint64_t)locationAuthorizationForApp:(id)app
{
  v3 = [MEMORY[0x277CBFC10] entityAuthorizationForLocationDictionary:app];
  if (v3 == 4)
  {
    return 2;
  }

  else
  {
    return v3 == 2;
  }
}

- (void)healthAuthorizationForApp:(id)app andAuthorizationStore:(id)store withCompletionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __95__DSTCCStorePassThrough_healthAuthorizationForApp_andAuthorizationStore_withCompletionHandler___block_invoke;
  v16 = &unk_278F730C8;
  v17 = appCopy;
  v18 = handlerCopy;
  v9 = handlerCopy;
  v10 = appCopy;
  storeCopy = store;
  v12 = MEMORY[0x24C1E7EB0](&v13);
  [storeCopy fetchAuthorizationRecordsForBundleIdentifier:v10 completion:{v12, v13, v14, v15, v16}];
}

void __95__DSTCCStorePassThrough_healthAuthorizationForApp_andAuthorizationStore_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v9 = [DSError errorWithCode:3 appName:v7 serviceName:@"DSHealth" underlyingErrors:v8];
  }

  else
  {
    v9 = 0;
  }

  if ([v5 count])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__DSTCCStorePassThrough_healthAuthorizationForApp_andAuthorizationStore_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_278F730A0;
    v11[4] = &v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    v10 = *(v13 + 24);
    (*(*(a1 + 40) + 16))();
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __95__DSTCCStorePassThrough_healthAuthorizationForApp_andAuthorizationStore_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 status];
  if ((result - 101) <= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)loadConfigurations:(id)configurations handler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CD92B8];
  configurationsCopy = configurations;
  sharedManagerForAllUsers = [v7 sharedManagerForAllUsers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__DSTCCStorePassThrough_loadConfigurations_handler___block_invoke;
  v11[3] = &unk_278F730F0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [sharedManagerForAllUsers loadConfigurationsWithCompletionQueue:configurationsCopy handler:v11];
}

void __52__DSTCCStorePassThrough_loadConfigurations_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(DSLog_9, OS_LOG_TYPE_ERROR))
  {
    __52__DSTCCStorePassThrough_loadConfigurations_handler___block_invoke_cold_1();
  }

  v7 = [MEMORY[0x277CD92B8] networkPrivacyConfigurationName];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 name];
        if ([v14 isEqualToString:v7])
        {
          v15 = [v13 pathController];

          if (v15)
          {
            [*(a1 + 32) setPathControllerConfiguration:v13];
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x277D85DE8];
}

- (id)pathRuleForBundleID:(id)d create:(BOOL)create
{
  createCopy = create;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathControllerConfiguration = [(DSTCCStorePassThrough *)self pathControllerConfiguration];
  pathController = [pathControllerConfiguration pathController];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  pathRules = [pathController pathRules];
  v10 = [pathRules countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(pathRules);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        matchSigningIdentifier = [v14 matchSigningIdentifier];
        v16 = [matchSigningIdentifier isEqualToString:dCopy];

        if (v16)
        {
          v17 = v14;
          goto LABEL_13;
        }
      }

      v11 = [pathRules countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (createCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277CD92D0]) initWithSigningIdentifier:dCopy];
    pathRules2 = [pathController pathRules];

    if (pathRules2)
    {
      pathRules = [pathController pathRules];
      v19 = [pathRules arrayByAddingObject:v17];
      [pathController setPathRules:v19];
    }

    else
    {
      v26 = v17;
      pathRules = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [pathController setPathRules:pathRules];
    }

LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)allAppsWithLocalNetworkAccess:(id)access queue:(id)queue handler:(id)handler
{
  accessCopy = access;
  handlerCopy = handler;
  v10 = MEMORY[0x277CBEB58];
  queueCopy = queue;
  v12 = objc_alloc_init(v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__DSTCCStorePassThrough_allAppsWithLocalNetworkAccess_queue_handler___block_invoke;
  v16[3] = &unk_278F73118;
  v17 = accessCopy;
  selfCopy = self;
  v19 = v12;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = v12;
  v15 = accessCopy;
  [(DSTCCStorePassThrough *)self loadConfigurations:queueCopy handler:v16];
}

void __69__DSTCCStorePassThrough_allAppsWithLocalNetworkAccess_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_ERROR))
    {
      __69__DSTCCStorePassThrough_allAppsWithLocalNetworkAccess_queue_handler___block_invoke_cold_1();
    }

    v4 = [DSError errorWithCode:3];
  }

  else
  {
    v4 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [*(a1 + 40) pathRuleForBundleID:v10 create:{0, v14}];
        if ([v11 multicastPreferenceSet] && (objc_msgSend(v11, "denyMulticast") & 1) == 0)
        {
          [*(a1 + 48) addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (id)deleteApp:(id)app forTest:(BOOL)test
{
  testCopy = test;
  appCopy = app;
  v6 = objc_alloc_init(MEMORY[0x277D1C1D0]);
  [v6 setRequestUserConfirmation:!testCopy];
  [v6 setWaitForDeletion:1];
  v7 = MEMORY[0x277D1C148];
  v8 = [objc_alloc(MEMORY[0x277D1C160]) initWithBundleIdentifier:appCopy];
  v12 = 0;
  [v7 uninstallAppWithIdentity:v8 options:v6 disposition:0 error:&v12];
  v9 = v12;

  if (v9)
  {
    if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_ERROR))
    {
      [DSTCCStorePassThrough deleteApp:forTest:];
    }

    v10 = v9;
  }

  return v9;
}

- (id)resetTCCCategory:(id)category forApp:(id)app
{
  v23 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  appCopy = app;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = categoryCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (!TCCAccessResetForBundleId())
        {
          v15 = [DSError errorWithCode:4 appName:appCopy serviceName:v14 underlyingErrors:v12, v18];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)resetTCCPermission:(id)permission forApp:(id)app
{
  permissionCopy = permission;
  appCopy = app;
  if ([permissionCopy isEqualToString:@"DSContacts"])
  {
    v8 = +[DSUtilities contactsServices];
    v9 = [(DSTCCStorePassThrough *)self resetTCCCategory:v8 forApp:appCopy];
LABEL_3:

    goto LABEL_7;
  }

  if ([DSApp skipTCCCheck:permissionCopy])
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!TCCAccessResetForBundleId())
    {
      v8 = [DSError errorWithCode:4 appName:appCopy serviceName:permissionCopy underlyingErrors:MEMORY[0x277CBEBF8]];
      [v9 addObject:v8];
      goto LABEL_3;
    }
  }

LABEL_7:

  return v9;
}

- (void)resetLocationPermissionForApp:(id)app
{
  appCopy = app;
  appsWithLocationService = [(DSTCCStorePassThrough *)self appsWithLocationService];
  v5 = [appsWithLocationService objectForKey:appCopy];

  if (v5)
  {
    [MEMORY[0x277CBFC10] setEntityAuthorization:0 forLocationDictionary:v5];
  }
}

- (void)saveConfiguration:(id)configuration handler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  pathControllerConfiguration = [(DSTCCStorePassThrough *)self pathControllerConfiguration];
  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__DSTCCStorePassThrough_saveConfiguration_handler___block_invoke;
  v12[3] = &unk_278F73140;
  v13 = pathControllerConfiguration;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = pathControllerConfiguration;
  [mEMORY[0x277CD92B8] saveConfiguration:v11 withCompletionQueue:configurationCopy handler:v12];
}

void __51__DSTCCStorePassThrough_saveConfiguration_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"NEConfigurationErrorDomain"])
    {
      v6 = [v3 code];

      if (v6 != 9)
      {
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, 0}];
        v8 = [DSError errorWithCode:4 appName:0 serviceName:@"DSLocalNetwork" underlyingErrors:v7];
        [v4 addObject:v8];

        if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_ERROR))
        {
          __51__DSTCCStorePassThrough_saveConfiguration_handler___block_invoke_cold_1(v3, a1);
        }
      }
    }

    else
    {
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetLocalNetworkPermissionForApp:(id)app queue:(id)queue handler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__DSTCCStorePassThrough_resetLocalNetworkPermissionForApp_queue_handler___block_invoke;
  v12[3] = &unk_278F73168;
  v12[4] = self;
  v13 = appCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = appCopy;
  [(DSTCCStorePassThrough *)self loadConfigurations:queue handler:v12];
}

void __73__DSTCCStorePassThrough_resetLocalNetworkPermissionForApp_queue_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pathRuleForBundleID:*(a1 + 40) create:1];
  if ([v2 multicastPreferenceSet])
  {
    [v2 setDenyMulticast:1];
    [v2 setMulticastPreferenceSet:0];
  }

  (*(*(a1 + 48) + 16))();
}

void __85__DSTCCStorePassThrough_appsWithPermissionGrantedForService_queue_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 40);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_2(&dword_248C40000, a2, a3, "Error when requesting TCC for service: %@ error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __52__DSTCCStorePassThrough_loadConfigurations_handler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248C40000, v0, OS_LOG_TYPE_ERROR, "Failed to load NE configuration with error %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __69__DSTCCStorePassThrough_allAppsWithLocalNetworkAccess_queue_handler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248C40000, v0, OS_LOG_TYPE_ERROR, "Fetching apps with local network access failed with error %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)deleteApp:forTest:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(&dword_248C40000, v0, v1, "Error deleting app %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __51__DSTCCStorePassThrough_saveConfiguration_handler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(&dword_248C40000, v3, v4, "NE configuration save error %@ for %@");
  v5 = *MEMORY[0x277D85DE8];
}

@end