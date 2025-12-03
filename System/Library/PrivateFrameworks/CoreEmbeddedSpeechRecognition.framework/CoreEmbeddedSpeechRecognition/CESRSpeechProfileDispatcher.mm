@interface CESRSpeechProfileDispatcher
+ (id)_supportedDarwinNotifications;
+ (id)sharedDispatcher;
+ (unint64_t)_maintenanceReasonForDarwinNotificationEventWithName:(id)name;
- (BOOL)_adminServiceShouldAcceptNewConnection:(id)connection;
- (BOOL)handleDarwinNotificationEventWithName:(id)name;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CESRSpeechProfileDispatcher)init;
- (id)_adminServiceProvider;
- (id)_defaultTaskCoalescerWithQueue:(id)queue;
- (id)_initWithQueue:(id)queue adminServiceProvider:(id)provider speechProfileSiteManager:(id)manager;
- (id)_listenerWithMachServiceName:(id)name delegate:(id)delegate;
- (id)_speechProfileSiteManager;
- (void)_notifyChangeToSets:(id)sets;
- (void)newPersonas:(id)personas;
- (void)removedPersonas:(id)personas;
- (void)resourceAvailableForPersona:(id)persona;
- (void)resourceUnavailableForPersona:(id)persona;
- (void)resourceUnavailableSoonForPersona:(id)persona;
- (void)runMaintenanceWithShouldDefer:(id)defer completion:(id)completion;
- (void)runMigration:(id)migration;
- (void)setupXPCListeners;
- (void)snapshotBookmarksForLocale:(id)locale toPath:(id)path;
@end

@implementation CESRSpeechProfileDispatcher

- (void)removedPersonas:(id)personas
{
  personasCopy = personas;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CESRSpeechProfileDispatcher_removedPersonas___block_invoke;
  v7[3] = &unk_278580398;
  v7[4] = self;
  v8 = personasCopy;
  v6 = personasCopy;
  dispatch_async(queue, v7);
}

void __47__CESRSpeechProfileDispatcher_removedPersonas___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechProfileSiteManager];
  [v2 handleRemovedPersonas:*(a1 + 40)];
}

- (void)newPersonas:(id)personas
{
  personasCopy = personas;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CESRSpeechProfileDispatcher_newPersonas___block_invoke;
  v7[3] = &unk_278580398;
  v7[4] = self;
  v8 = personasCopy;
  v6 = personasCopy;
  dispatch_async(queue, v7);
}

void __43__CESRSpeechProfileDispatcher_newPersonas___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechProfileSiteManager];
  [v2 handleNewPersonas:*(a1 + 40)];
}

- (void)resourceUnavailableForPersona:(id)persona
{
  personaCopy = persona;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CESRSpeechProfileDispatcher_resourceUnavailableForPersona___block_invoke;
  v7[3] = &unk_278580398;
  v7[4] = self;
  v8 = personaCopy;
  v6 = personaCopy;
  dispatch_async(queue, v7);
}

void __61__CESRSpeechProfileDispatcher_resourceUnavailableForPersona___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 _speechProfileSiteManager];
    [v3 handleSiteUnavailableForPersona:*(a1 + 40)];
  }
}

- (void)resourceUnavailableSoonForPersona:(id)persona
{
  personaCopy = persona;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CESRSpeechProfileDispatcher_resourceUnavailableSoonForPersona___block_invoke;
  v7[3] = &unk_278580398;
  v7[4] = self;
  v8 = personaCopy;
  v6 = personaCopy;
  dispatch_async(queue, v7);
}

void __65__CESRSpeechProfileDispatcher_resourceUnavailableSoonForPersona___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 _speechProfileSiteManager];
    [v3 handleSiteUnavailableSoonForPersona:*(a1 + 40)];
  }
}

- (void)resourceAvailableForPersona:(id)persona
{
  personaCopy = persona;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CESRSpeechProfileDispatcher_resourceAvailableForPersona___block_invoke;
  v7[3] = &unk_278580398;
  v7[4] = self;
  v8 = personaCopy;
  v6 = personaCopy;
  dispatch_async(queue, v7);
}

void __59__CESRSpeechProfileDispatcher_resourceAvailableForPersona___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechProfileSiteManager];
  [v2 handleSiteAvailableForPersona:*(a1 + 40)];
}

- (void)snapshotBookmarksForLocale:(id)locale toPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  pathCopy = path;
  if ([MEMORY[0x277CEF2A8] isASRSpeechProfileSamplingEnabled])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CESRSpeechProfileDispatcher_snapshotBookmarksForLocale_toPath___block_invoke;
    block[3] = &unk_27857FED0;
    block[4] = self;
    v12 = localeCopy;
    v13 = pathCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[CESRSpeechProfileDispatcher snapshotBookmarksForLocale:toPath:]";
      _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Ignoring request to snapshot bookmarks because sampling is disabled.", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __65__CESRSpeechProfileDispatcher_snapshotBookmarksForLocale_toPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechProfileSiteManager];
  [v2 snapshotBookmarksForLocale:*(a1 + 40) toPath:*(a1 + 48)];
}

- (void)runMigration:(id)migration
{
  migrationCopy = migration;
  v5 = os_transaction_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CESRSpeechProfileDispatcher_runMigration___block_invoke;
  aBlock[3] = &unk_2785800F8;
  v10 = v5;
  v11 = migrationCopy;
  aBlock[4] = self;
  v6 = v5;
  v7 = migrationCopy;
  v8 = _Block_copy(aBlock);
  dispatch_async(self->_queue, v8);
}

uint64_t __44__CESRSpeechProfileDispatcher_runMigration___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CESRSpeechProfileDispatcher runMigration:]_block_invoke";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_DEFAULT, "%s Performing post-install speech profile migration.", &v6, 0xCu);
  }

  +[CESRSpeechProfileBuilder deleteLegacyProfiles];
  v3 = [*(a1 + 32) _speechProfileSiteManager];
  [v3 performMaintenance:0 shouldDefer:0];

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)runMaintenanceWithShouldDefer:(id)defer completion:(id)completion
{
  deferCopy = defer;
  completionCopy = completion;
  v8 = os_transaction_create();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__CESRSpeechProfileDispatcher_runMaintenanceWithShouldDefer_completion___block_invoke;
  v13[3] = &unk_27857FB98;
  v15 = deferCopy;
  v16 = completionCopy;
  v13[4] = self;
  v14 = v8;
  v9 = v8;
  v10 = completionCopy;
  v11 = deferCopy;
  v12 = _Block_copy(v13);
  dispatch_async(self->_queue, v12);
}

uint64_t __72__CESRSpeechProfileDispatcher_runMaintenanceWithShouldDefer_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CESRSpeechProfileDispatcher runMaintenanceWithShouldDefer:completion:]_block_invoke";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_DEFAULT, "%s Performing daily speech profile maintenance.", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) _speechProfileSiteManager];
  [v3 deleteInactiveSites];

  v4 = [*(a1 + 32) _speechProfileSiteManager];
  [v4 performMaintenance:0 shouldDefer:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)handleDarwinNotificationEventWithName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([(NSSet *)self->_supportedNotifications containsObject:nameCopy])
  {
    v5 = +[CESRSpeechProfileEvaluationStatus sharedStatus];
    if ([v5 isEvaluationEnabled])
    {
      v6 = [nameCopy isEqualToString:@"com.apple.sysdiagnose.sysdiagnoseStarted"];

      if ((v6 & 1) == 0)
      {
        v7 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v32 = "[CESRSpeechProfileDispatcher handleDarwinNotificationEventWithName:]";
          v33 = 2112;
          v34 = nameCopy;
          _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Evaluation is enabled, ignoring notification: %@", buf, 0x16u);
        }

        goto LABEL_6;
      }
    }

    else
    {
    }

    v9 = MEMORY[0x277CEF0E8];
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[CESRSpeechProfileDispatcher handleDarwinNotificationEventWithName:]";
      v33 = 2112;
      v34 = nameCopy;
      _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEFAULT, "%s Handling notification: %@", buf, 0x16u);
    }

    v11 = os_transaction_create();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke;
    aBlock[3] = &unk_27857FB70;
    aBlock[4] = self;
    v12 = nameCopy;
    v30 = v12;
    v13 = _Block_copy(aBlock);
    if (([v12 isEqualToString:@"com.apple.mobile.keybagd.first_unlock"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.siri.uaf.com.apple.siri.understanding"))
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_356;
      block[3] = &unk_2785800F8;
      block[4] = self;
      v28 = v13;
      v27 = v11;
      dispatch_async(queue, block);

      v15 = v28;
    }

    else if (([v12 isEqualToString:*MEMORY[0x277CEF5B0]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CEF008]) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.MobileAsset.AutoAssetNotification^com.apple.MobileAsset.MAAutoAsset^STARTUP_ACTIVATED"))
    {
      v16 = self->_queue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_3;
      v23[3] = &unk_2785800F8;
      v23[4] = self;
      v25 = v13;
      v24 = v11;
      dispatch_async(v16, v23);

      v15 = v25;
    }

    else
    {
      if (![v12 isEqualToString:@"com.apple.sysdiagnose.sysdiagnoseStarted"])
      {
        v20 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v32 = "[CESRSpeechProfileDispatcher handleDarwinNotificationEventWithName:]";
          v33 = 2112;
          v34 = v12;
          _os_log_fault_impl(&dword_225EEB000, v20, OS_LOG_TYPE_FAULT, "%s A supported notification was not handled: %@", buf, 0x16u);
        }

        v8 = 0;
        goto LABEL_18;
      }

      v19 = self->_queue;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_5;
      v21[3] = &unk_278580398;
      v21[4] = self;
      v22 = v11;
      dispatch_async(v19, v21);
      v15 = v22;
    }

    v8 = 1;
LABEL_18:

    goto LABEL_19;
  }

LABEL_6:
  v8 = 0;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

void __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _maintenanceReasonForDarwinNotificationEventWithName:*(a1 + 40)];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    *&v10[4] = "[CESRSpeechProfileDispatcher handleDarwinNotificationEventWithName:]_block_invoke";
    *v10 = 136315650;
    if (a2)
    {
      v7 = @"YES";
    }

    *&v10[12] = 2048;
    *&v10[14] = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEFAULT, "%s Performing maintenance for reason: %lu, rebuildOnly: %@", v10, 0x20u);
  }

  v8 = [*(a1 + 32) _speechProfileSiteManager];
  [v8 performMaintenance:a2 shouldDefer:0];

  v9 = *MEMORY[0x277D85DE8];
}

void __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_356(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechProfileSiteManager];
  [v2 updateRequiredLocales];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_2;
  aBlock[3] = &unk_2785802D0;
  v5 = *(a1 + 48);
  v3 = _Block_copy(aBlock);
  [*(*(a1 + 32) + 16) submitTaskWithId:0 taskBlock:v3 completion:0];
}

void __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechProfileSiteManager];
  [v2 updateRequiredLocales];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_4;
  aBlock[3] = &unk_2785802D0;
  v5 = *(a1 + 48);
  v3 = _Block_copy(aBlock);
  [*(*(a1 + 32) + 16) submitTaskWithId:1 taskBlock:v3 completion:0];
}

void __69__CESRSpeechProfileDispatcher_handleDarwinNotificationEventWithName___block_invoke_5(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CESRSpeechProfileDispatcher handleDarwinNotificationEventWithName:]_block_invoke_5";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_DEFAULT, "%s Handling sysdiagnose started.", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _speechProfileSiteManager];
  [v3 handleSysdiagnoseStarted];

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_adminServiceShouldAcceptNewConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.corespeech.corespeechd.speechprofileadmin"];

  if (v5)
  {
    *v20 = 0;
    *&v20[8] = v20;
    *&v20[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__3369;
    v22 = __Block_byref_object_dispose__3370;
    v23 = 0;
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__CESRSpeechProfileDispatcher__adminServiceShouldAcceptNewConnection___block_invoke;
    v15[3] = &unk_27857FB48;
    v15[4] = self;
    v15[5] = v20;
    dispatch_sync(queue, v15);
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28395A128];
    [connectionCopy setExportedInterface:v7];

    adminService = [*(*&v20[8] + 40) adminService];
    [connectionCopy setExportedObject:adminService];

    [connectionCopy resume];
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 136315394;
      v17 = "[CESRSpeechProfileDispatcher _adminServiceShouldAcceptNewConnection:]";
      v18 = 1024;
      v19 = processIdentifier;
      _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s New connection established to process with pid=(%d)", buf, 0x12u);
    }

    _Block_object_dispose(v20, 8);
  }

  else
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      *v20 = 136315394;
      *&v20[4] = "[CESRSpeechProfileDispatcher _adminServiceShouldAcceptNewConnection:]";
      *&v20[12] = 1024;
      *&v20[14] = [connectionCopy processIdentifier];
      _os_log_impl(&dword_225EEB000, v12, OS_LOG_TYPE_INFO, "%s Connecting process with pid=(%d) is not entitled for the speech profile admin service - rejecting connection.", v20, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

uint64_t __70__CESRSpeechProfileDispatcher__adminServiceShouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _adminServiceProvider];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_adminServiceListener == listenerCopy)
  {
    v9 = [(CESRSpeechProfileDispatcher *)self _adminServiceShouldAcceptNewConnection:connectionCopy];
  }

  else
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CESRSpeechProfileDispatcher listener:shouldAcceptNewConnection:]";
      v14 = 2112;
      v15 = listenerCopy;
      _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Unrecognized listener passed to delegate: %@", &v12, 0x16u);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_listenerWithMachServiceName:(id)name delegate:(id)delegate
{
  v5 = MEMORY[0x277CCAE98];
  delegateCopy = delegate;
  nameCopy = name;
  v8 = [[v5 alloc] initWithMachServiceName:nameCopy];

  [v8 setDelegate:delegateCopy];
  [v8 resume];

  return v8;
}

- (void)_notifyChangeToSets:(id)sets
{
  v18 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v5 = +[CESRSpeechProfileEvaluationStatus sharedStatus];
  isEvaluationEnabled = [v5 isEvaluationEnabled];

  if (isEvaluationEnabled)
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CESRSpeechProfileDispatcher _notifyChangeToSets:]";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_DEFAULT, "%s Ignoring Cascade change notification because evaluation is enabled.", buf, 0xCu);
    }
  }

  else
  {
    v8 = os_transaction_create();
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CESRSpeechProfileDispatcher__notifyChangeToSets___block_invoke;
    block[3] = &unk_27857FED0;
    v13 = setsCopy;
    selfCopy = self;
    v15 = v8;
    v10 = v8;
    dispatch_async(queue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__CESRSpeechProfileDispatcher__notifyChangeToSets___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CESRSpeechProfileDispatcher _notifyChangeToSets:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_DEFAULT, "%s Handling updated sets: %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) _speechProfileSiteManager];
  [v4 handleUpdatedSets:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setupXPCListeners
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("CESRSpeechProfileDispatcher Set Change Queue", v3);

  v5 = objc_alloc(MEMORY[0x277CF94F8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CESRSpeechProfileDispatcher_setupXPCListeners__block_invoke;
  v10[3] = &unk_27857FB18;
  v10[4] = self;
  v6 = [v5 initWithIdentifier:@"com.apple.corespeechd" batchHandlerBlock:v10 queue:v4 useCase:@"SpeechProfile"];
  setChangeListener = self->_setChangeListener;
  self->_setChangeListener = v6;

  if (AFIsInternalInstall())
  {
    v8 = [(CESRSpeechProfileDispatcher *)self _listenerWithMachServiceName:@"com.apple.corespeech.corespeechd.speechprofileadmin.service" delegate:self];
    adminServiceListener = self->_adminServiceListener;
    self->_adminServiceListener = v8;
  }
}

void __48__CESRSpeechProfileDispatcher_setupXPCListeners__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CESRSpeechProfileDispatcher setupXPCListeners]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEFAULT, "%s Received Cascade change notification for sets: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v3 allObjects];
  [v5 _notifyChangeToSets:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_adminServiceProvider
{
  dispatch_assert_queue_V2(self->_queue);
  adminServiceProvider = self->_adminServiceProvider;
  if (!adminServiceProvider)
  {
    v4 = [CESRSpeechProfileAdminServiceFactory alloc];
    queue = self->_queue;
    _speechProfileSiteManager = [(CESRSpeechProfileDispatcher *)self _speechProfileSiteManager];
    v7 = [(CESRSpeechProfileAdminServiceFactory *)v4 initWithQueue:queue speechProfileSiteManager:_speechProfileSiteManager];
    v8 = self->_adminServiceProvider;
    self->_adminServiceProvider = v7;

    adminServiceProvider = self->_adminServiceProvider;
  }

  return adminServiceProvider;
}

- (id)_speechProfileSiteManager
{
  dispatch_assert_queue_V2(self->_queue);
  speechProfileSiteManager = self->_speechProfileSiteManager;
  if (!speechProfileSiteManager)
  {
    v4 = +[CESRSpeechProfileSiteManager defaultManager];
    v5 = self->_speechProfileSiteManager;
    self->_speechProfileSiteManager = v4;

    speechProfileSiteManager = self->_speechProfileSiteManager;
  }

  return speechProfileSiteManager;
}

- (id)_defaultTaskCoalescerWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [CESRTaskCoalescer alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(CESRTaskCoalescer *)v4 initWithManagerName:v6 coalescenceInterval:queueCopy coalescenceDelay:10.0 executionQueue:2.0];

  return v7;
}

- (id)_initWithQueue:(id)queue adminServiceProvider:(id)provider speechProfileSiteManager:(id)manager
{
  queueCopy = queue;
  providerCopy = provider;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = CESRSpeechProfileDispatcher;
  v12 = [(CESRSpeechProfileDispatcher *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = [(CESRSpeechProfileDispatcher *)v13 _defaultTaskCoalescerWithQueue:queueCopy];
    taskCoalescer = v13->_taskCoalescer;
    v13->_taskCoalescer = v14;

    objc_storeStrong(&v13->_adminServiceProvider, provider);
    objc_storeStrong(&v13->_speechProfileSiteManager, manager);
    _supportedDarwinNotifications = [objc_opt_class() _supportedDarwinNotifications];
    supportedNotifications = v13->_supportedNotifications;
    v13->_supportedNotifications = _supportedDarwinNotifications;

    mEMORY[0x277CDCEE8] = [MEMORY[0x277CDCEE8] sharedMonitor];
    [mEMORY[0x277CDCEE8] addObserver:v13];

    mEMORY[0x277CDCEE8]2 = [MEMORY[0x277CDCEE8] sharedMonitor];
    [mEMORY[0x277CDCEE8]2 registerLaunchOnDemand];

    mEMORY[0x277CDCEB0] = [MEMORY[0x277CDCEB0] sharedInstance];
    [mEMORY[0x277CDCEB0] addObserver:v13];
  }

  return v13;
}

- (CESRSpeechProfileDispatcher)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (unint64_t)_maintenanceReasonForDarwinNotificationEventWithName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if (_maintenanceReasonForDarwinNotificationEventWithName__onceToken == -1)
  {
    if (nameCopy)
    {
LABEL_3:
      v5 = [_maintenanceReasonForDarwinNotificationEventWithName__maintenanceReasonForEventName objectForKey:v4];
      v6 = v5;
      if (v5)
      {
        unsignedIntegerValue = [v5 unsignedIntegerValue];
      }

      else
      {
        v8 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "+[CESRSpeechProfileDispatcher _maintenanceReasonForDarwinNotificationEventWithName:]";
          v14 = 2112;
          v15 = v4;
          _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s No known maintenance reason for notification: %@", &v12, 0x16u);
        }

        unsignedIntegerValue = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&_maintenanceReasonForDarwinNotificationEventWithName__onceToken, &__block_literal_global_305);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "+[CESRSpeechProfileDispatcher _maintenanceReasonForDarwinNotificationEventWithName:]";
    _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s eventName cannot be nil.", &v12, 0xCu);
  }

  unsignedIntegerValue = 0;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

void __84__CESRSpeechProfileDispatcher__maintenanceReasonForDarwinNotificationEventWithName___block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF5B0];
  v4[0] = @"com.apple.mobile.keybagd.first_unlock";
  v4[1] = v0;
  v5[0] = &unk_283952CD8;
  v5[1] = &unk_283952CF0;
  v4[2] = *MEMORY[0x277CEF008];
  v4[3] = @"com.apple.MobileAsset.AutoAssetNotification^com.apple.MobileAsset.MAAutoAsset^STARTUP_ACTIVATED";
  v5[2] = &unk_283952D08;
  v5[3] = &unk_283952D20;
  v4[4] = @"com.apple.siri.uaf.com.apple.siri.understanding";
  v5[4] = &unk_283952D38;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v2 = _maintenanceReasonForDarwinNotificationEventWithName__maintenanceReasonForEventName;
  _maintenanceReasonForDarwinNotificationEventWithName__maintenanceReasonForEventName = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)_supportedDarwinNotifications
{
  if (_supportedDarwinNotifications_onceToken != -1)
  {
    dispatch_once(&_supportedDarwinNotifications_onceToken, &__block_literal_global_3406);
  }

  v3 = _supportedDarwinNotifications_supportedNotifications;

  return v3;
}

void __60__CESRSpeechProfileDispatcher__supportedDarwinNotifications__block_invoke()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CEF5B0];
  v6[0] = @"com.apple.mobile.keybagd.first_unlock";
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CEF008];
  v6[3] = @"com.apple.MobileAsset.AutoAssetNotification^com.apple.MobileAsset.MAAutoAsset^STARTUP_ACTIVATED";
  v6[4] = @"com.apple.siri.uaf.com.apple.siri.understanding";
  v6[5] = @"com.apple.sysdiagnose.sysdiagnoseStarted";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v3 = [v0 setWithArray:v2];
  v4 = _supportedDarwinNotifications_supportedNotifications;
  _supportedDarwinNotifications_supportedNotifications = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)sharedDispatcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CESRSpeechProfileDispatcher_sharedDispatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDispatcher_onceToken != -1)
  {
    dispatch_once(&sharedDispatcher_onceToken, block);
  }

  v2 = sharedDispatcher_sharedDispatcher;

  return v2;
}

void __47__CESRSpeechProfileDispatcher_sharedDispatcher__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "+[CESRSpeechProfileDispatcher sharedDispatcher]_block_invoke";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, "%s Starting up...", &v13, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 cStringUsingEncoding:4];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
  v9 = dispatch_queue_create(v6, v8);

  v10 = [[CESRSpeechProfileDispatcher alloc] _initWithQueue:v9];
  v11 = sharedDispatcher_sharedDispatcher;
  sharedDispatcher_sharedDispatcher = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end