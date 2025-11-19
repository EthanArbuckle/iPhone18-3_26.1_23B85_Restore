@interface CKDPCSNotifier
+ (id)sharedNotifier;
- (BOOL)checkAndClearTestOverrides:(id)a3;
- (BOOL)hasOutstandingServicesNeedingDBRReauthentication;
- (BOOL)serviceNeedsDBRReauthentication:(id)a3;
- (CKDPCSNotifier)init;
- (NSSet)servicesNeedingDBRReauthentication;
- (void)addContext:(id)a3 forManagerUUID:(id)a4;
- (void)addMissingIdentityPublicKeys:(id)a3 forManagerUUID:(id)a4 withAccount:(id)a5;
- (void)addServicesNeedingDBRReauthentication:(id)a3;
- (void)addServicesWithMissingIdentities:(id)a3 forManagerUUID:(id)a4 withAccount:(id)a5;
- (void)addTestOverrides:(id)a3;
- (void)clearContextIfUnnecessaryForManagerUUID:(id)a3;
- (void)clearServicesAndPublicKeysForManagerUUID:(id)a3;
- (void)clearServicesNeedingDBRReauthentication;
- (void)dealloc;
- (void)noteUserKeySyncWithCompletionHandler:(id)a3;
- (void)registerIdentityChangeWatcher:(id)a3 service:(id)a4 account:(id)a5;
- (void)registerUnscopedIdentityChangeWatcher:(id)a3;
- (void)securityViewBecameReady:(id)a3;
- (void)setupGuitarfishRepairNotificationHandling;
- (void)setupIdentityUpdateNotificationHandling;
- (void)unregisterIdentityChangeWatcher:(id)a3;
- (void)unregisterUnscopedIdentityChangeWatcher:(id)a3;
@end

@implementation CKDPCSNotifier

+ (id)sharedNotifier
{
  if (qword_280D583F8 != -1)
  {
    dispatch_once(&qword_280D583F8, &unk_28385DBE0);
  }

  v3 = qword_280D58400;

  return v3;
}

- (CKDPCSNotifier)init
{
  v30.receiver = self;
  v30.super_class = CKDPCSNotifier;
  v4 = [(CKDPCSNotifier *)&v30 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
    v6 = *(v4 + 3);
    *(v4 + 3) = v5;

    v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
    v10 = *(v4 + 4);
    *(v4 + 4) = v9;

    v11 = objc_opt_new();
    v12 = *(v4 + 5);
    *(v4 + 5) = v11;

    v15 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v13, v14);
    v16 = *(v4 + 7);
    *(v4 + 7) = v15;

    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s", "com.apple.cloudkit.pcsnotifier.queue");
    v21 = objc_msgSend_UTF8String(v18, v19, v20);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    v24 = *(v4 + 2);
    *(v4 + 2) = v23;

    dispatch_queue_set_specific(*(v4 + 2), "com.apple.cloudkit.pcsnotifier.queue", 1, 0);
    objc_msgSend_setupIdentityUpdateNotificationHandling(v4, v25, v26);
    objc_msgSend_setupGuitarfishRepairNotificationHandling(v4, v27, v28);
  }

  return v4;
}

- (void)addTestOverrides:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_testOverrides(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_opt_new();
    objc_msgSend_setTestOverrides_(v4, v11, v10);
  }

  v12 = objc_msgSend_testOverrides(v4, v8, v9);
  objc_msgSend_addEntriesFromDictionary_(v12, v13, v14);

  objc_sync_exit(v4);
}

- (BOOL)checkAndClearTestOverrides:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, v6, @"CKDPCSNotifier.m", 106, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSNotifier.m", 106);
  }

  v9 = objc_msgSend_testOverrides(v6, v7, v8);

  if (!v9)
  {
    v12 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11);
    objc_msgSend_setTestOverrides_(v6, v13, v12);
  }

  v14 = objc_msgSend_testOverrides(v6, v10, v11);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v5);

  v19 = objc_msgSend_testOverrides(v6, v17, v18);
  objc_msgSend_removeObjectForKey_(v19, v20, v5);

  objc_sync_exit(v6);
  return v16 != 0;
}

- (void)registerUnscopedIdentityChangeWatcher:(id)a3
{
  v11 = a3;
  v6 = objc_msgSend_weakUnscopedIdentityChangeWatchers(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_weakUnscopedIdentityChangeWatchers(self, v7, v8);
  objc_msgSend_addObject_(v9, v10, v11);

  objc_sync_exit(v6);
}

- (void)unregisterUnscopedIdentityChangeWatcher:(id)a3
{
  v11 = a3;
  v6 = objc_msgSend_weakUnscopedIdentityChangeWatchers(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_weakUnscopedIdentityChangeWatchers(self, v7, v8);
  objc_msgSend_removeObject_(v9, v10, v11);

  objc_sync_exit(v6);
}

- (void)registerIdentityChangeWatcher:(id)a3 service:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_token(v8, v11, v12);

  if (v13)
  {
    v14 = [CKDCloudCoreIdentityContext alloc];
    v16 = objc_msgSend_initWithWatcher_service_account_(v14, v15, v8, v9, v10);
    v19 = objc_msgSend_cloudCoreIdentityContextsMap(self, v17, v18);
    objc_sync_enter(v19);
    v22 = objc_msgSend_cloudCoreIdentityContextsMap(self, v20, v21);
    v25 = objc_msgSend_token(v8, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v26, v16, v25);

    objc_sync_exit(v19);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Identity change watcher cannot have nil registration token, skipping the registration", v28, 2u);
    }
  }
}

- (void)unregisterIdentityChangeWatcher:(id)a3
{
  v14 = a3;
  v6 = objc_msgSend_cloudCoreIdentityContextsMap(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_cloudCoreIdentityContextsMap(self, v7, v8);
  v12 = objc_msgSend_token(v14, v10, v11);
  objc_msgSend_removeObjectForKey_(v9, v13, v12);

  objc_sync_exit(v6);
}

- (void)noteUserKeySyncWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7 = objc_msgSend_synchronizeQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B709C;
  block[3] = &unk_278547220;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setupIdentityUpdateNotificationHandling
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], a2, v2);
  objc_msgSend_addObserver_selector_name_object_(v4, v5, self, sel_securityViewBecameReady_, @"com.apple.security.view-become-ready", 0);

  v6 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v7 = CKNotificationKey();
    v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], v8, v9);
    objc_msgSend_addObserver_selector_name_object_(v10, v11, self, sel_securityViewBecameReady_, v7, 0);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_2252B7484, @"com.apple.security.view-change.PCS", 0, 1025);
  if (*v6 == 1)
  {
    v13 = CKNotificationKey();
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v14, self, sub_2252B7484, v13, 0, 1025);
  }

  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v15, self, sub_2252B7484, @"com.apple.ProtectedCloudStorage.HaveCredentials", 0, 1025);
  v18 = objc_msgSend_synchronizeQueue(self, v16, v17);
  v19 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v18);
  pcsUpdateSource = self->_pcsUpdateSource;
  self->_pcsUpdateSource = v19;

  objc_initWeak(&location, self);
  v21 = self->_pcsUpdateSource;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2252B75C4;
  v23[3] = &unk_278547098;
  objc_copyWeak(&v24, &location);
  v22 = v23;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_22508792C;
  handler[3] = &unk_2785456A0;
  v27 = v22;
  dispatch_source_set_event_handler(v21, handler);

  dispatch_resume(self->_pcsUpdateSource);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)securityViewBecameReady:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _os_activity_create(&dword_22506F000, "CKDPCSNotifier/SecurityViewBecameReady", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(v4, &v23);
  v5 = *MEMORY[0x277CBC908];
  v6 = CKNotificationKey();
  v9 = objc_msgSend_userInfo(v3, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, @"view");

  if (v11)
  {
    if (objc_msgSend_isEqualToString_(v11, v12, @"unknown"))
    {
      v13 = v11;
      v11 = 0;
    }

    else
    {
      v14 = CKNotificationKey();
      v13 = v6;
      v6 = v14;
    }
  }

  else
  {
    v13 = 0;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = @" named ";
    v21 = &stru_28385ED00;
    if (v11)
    {
      v21 = v11;
    }

    else
    {
      v20 = &stru_28385ED00;
    }

    *buf = 138543874;
    v25 = v20;
    v22 = @"Posting a notification to all clients.";
    if (v11)
    {
      v22 = @"Posting a scoped notification.";
    }

    v26 = 2114;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Security view%{public}@%{public}@ became ready. %@", buf, 0x20u);
  }

  v18 = objc_msgSend_UTF8String(v6, v16, v17);
  notify_post(v18);

  os_activity_scope_leave(&v23);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, @"com.apple.security.view-become-ready", 0);

  v6 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v7 = CKNotificationKey();
    v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], v8, v9);
    objc_msgSend_removeObserver_name_object_(v10, v11, self, v7, 0);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.security.view-change.PCS", 0);
  if (*v6 == 1)
  {
    v13 = CKNotificationKey();
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v14, self, v13, 0);
  }

  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v15, self, @"com.apple.ProtectedCloudStorage.HaveCredentials", 0);
  dispatch_source_cancel(self->_pcsUpdateSource);
  while (1)
  {
    v18 = objc_msgSend_pcsUpdateSource(self, v16, v17);
    v19 = dispatch_source_testcancel(v18);

    if (v19)
    {
      break;
    }

    usleep(0xAu);
  }

  v20.receiver = self;
  v20.super_class = CKDPCSNotifier;
  [(CKDPCSNotifier *)&v20 dealloc];
}

- (void)addContext:(id)a3 forManagerUUID:(id)a4
{
  v14 = a3;
  v6 = a4;
  v9 = objc_msgSend_missingIdentitiesContextMap(self, v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_missingIdentitiesContextMap(self, v10, v11);
  objc_msgSend_setObject_forKey_(v12, v13, v14, v6);

  objc_sync_exit(v9);
}

- (void)addServicesWithMissingIdentities:(id)a3 forManagerUUID:(id)a4 withAccount:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v33 = a5;
  v12 = objc_msgSend_missingIdentitiesContextMap(self, v10, v11);
  objc_sync_enter(v12);
  v15 = objc_msgSend_missingIdentitiesContextMap(self, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, v9);

  if (v17)
  {
    if (objc_msgSend_count(v8, v18, v19))
    {
      objc_msgSend_setAccount_(v17, v20, v33);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v8;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v34, v40, 16);
      if (v25)
      {
        v26 = *v35;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v21);
            }

            v28 = *(*(&v34 + 1) + 8 * i);
            v29 = objc_msgSend_servicesWithMissingIdentities(v17, v23, v24);
            objc_msgSend_addObject_(v29, v30, v28);
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v34, v40, 16);
        }

        while (v25);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v9;
      _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "No manager context found for manager UUID: %@", buf, 0xCu);
    }
  }

  objc_sync_exit(v12);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)addMissingIdentityPublicKeys:(id)a3 forManagerUUID:(id)a4 withAccount:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v33 = a5;
  v12 = objc_msgSend_missingIdentitiesContextMap(self, v10, v11);
  objc_sync_enter(v12);
  v15 = objc_msgSend_missingIdentitiesContextMap(self, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, v9);

  if (v17)
  {
    if (objc_msgSend_count(v8, v18, v19))
    {
      objc_msgSend_setAccount_(v17, v20, v33);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v8;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v34, v40, 16);
      if (v25)
      {
        v26 = *v35;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v21);
            }

            v28 = *(*(&v34 + 1) + 8 * i);
            v29 = objc_msgSend_missingIdentityPublicKeys(v17, v23, v24);
            objc_msgSend_addObject_(v29, v30, v28);
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v34, v40, 16);
        }

        while (v25);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v9;
      _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "No manager context found for manager UUID: %@", buf, 0xCu);
    }
  }

  objc_sync_exit(v12);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)clearContextIfUnnecessaryForManagerUUID:(id)a3
{
  v26 = a3;
  v6 = objc_msgSend_missingIdentitiesContextMap(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_missingIdentitiesContextMap(self, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v26);

  v14 = objc_msgSend_copyOfServicesWithMissingIdentities(v11, v12, v13);
  if (objc_msgSend_count(v14, v15, v16))
  {
    goto LABEL_2;
  }

  v19 = objc_msgSend_copyOfMissingIdentityPublicKeys(v11, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (!v22)
  {
    v14 = objc_msgSend_missingIdentitiesContextMap(self, v23, v24);
    objc_msgSend_removeObjectForKey_(v14, v25, v26);
LABEL_2:
  }

  objc_sync_exit(v6);
}

- (void)clearServicesAndPublicKeysForManagerUUID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_missingIdentitiesContextMap(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_missingIdentitiesContextMap(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v4);

  if (v12)
  {
    v15 = objc_msgSend_servicesWithMissingIdentities(v12, v13, v14);
    objc_msgSend_removeAllObjects(v15, v16, v17);

    v20 = objc_msgSend_missingIdentityPublicKeys(v12, v18, v19);
    objc_msgSend_removeAllObjects(v20, v21, v22);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v25 = 138412290;
      v26 = v4;
      _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "No manager context found for manager UUID: %@", &v25, 0xCu);
    }
  }

  objc_sync_exit(v7);
  v24 = *MEMORY[0x277D85DE8];
}

- (NSSet)servicesNeedingDBRReauthentication
{
  v4 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, a2, v2);
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);

  objc_sync_exit(v4);

  return v10;
}

- (BOOL)serviceNeedsDBRReauthentication:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v8, v9);
  LOBYTE(self) = objc_msgSend_containsObject_(v10, v11, v4);

  objc_sync_exit(v7);
  return self;
}

- (BOOL)hasOutstandingServicesNeedingDBRReauthentication
{
  v4 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, a2, v2);
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9) != 0;

  objc_sync_exit(v4);
  return v10;
}

- (void)addServicesNeedingDBRReauthentication:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v5, v6);
  objc_sync_enter(v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Adding services: %@ to services needing DBR re-authentication set.", &v16, 0xCu);
  }

  v11 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v9, v10);
  objc_msgSend_addObjectsFromArray_(v11, v12, v4);

  objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], v13, v14);
  objc_sync_exit(v7);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearServicesNeedingDBRReauthentication
{
  obj = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, a2, v2);
  objc_sync_enter(obj);
  v6 = objc_msgSend_mutableServicesNeedingDBRReauthentication(self, v4, v5);
  objc_msgSend_removeAllObjects(v6, v7, v8);

  objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], v9, v10);
  objc_sync_exit(obj);
}

- (void)setupGuitarfishRepairNotificationHandling
{
  if (*MEMORY[0x277CBC810] == 1)
  {
    v3 = CKNotificationKey();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_2252B9648, v3, 0, 1025);
  }

  v5 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v5, self, sub_2252B9648, @"com.apple.ProtectedCloudStorage.GuitarfishRepairCompleted", 0, 1025);
}

@end