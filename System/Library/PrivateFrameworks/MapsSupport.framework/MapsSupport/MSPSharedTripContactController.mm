@interface MSPSharedTripContactController
- (BOOL)_contactIsActive:(id)active;
- (BOOL)contactIsActive:(id)active;
- (MSPSharedTripContactController)initWithSharedTripServer:(id)server;
- (MSPSharedTripContactControllerDelegate)delegate;
- (MSPSharingRestorationStorage)archivedSharingStorage;
- (NSOrderedSet)activeContactsValues;
- (id)_archivedSharingStorage;
- (unint64_t)_activeCapabilityTypeForContact:(id)contact serviceName:(id *)name;
- (unint64_t)activeCapabilityTypeForContact:(id)contact serviceName:(id *)name;
- (void)_didStartSharingWithContact:(id)contact withCapabilityType:(unint64_t)type serviceName:(id)name error:(id)error queue:(id)queue completion:(id)completion;
- (void)_notifyDelegateContactsChanged;
- (void)_reset;
- (void)_shareWithContactValue:(id)value queue:(id)queue completion:(id)completion;
- (void)_stopAllSharingWithReason:(unint64_t)reason queue:(id)queue completion:(id)completion;
- (void)_stopSharingWithContactValue:(id)value reason:(unint64_t)reason queue:(id)queue completion:(id)completion;
- (void)_updateActiveSharingHandles:(id)handles serviceNames:(id)names;
- (void)reset;
- (void)shareWithContactValue:(id)value queue:(id)queue completion:(id)completion;
- (void)stopAllSharingWithReason:(unint64_t)reason queue:(id)queue completion:(id)completion;
- (void)stopSharingWithContactValue:(id)value reason:(unint64_t)reason queue:(id)queue completion:(id)completion;
- (void)updateActiveSharingHandles:(id)handles serviceNames:(id)names;
@end

@implementation MSPSharedTripContactController

- (NSOrderedSet)activeContactsValues
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__MSPSharedTripContactController_activeContactsValues__block_invoke;
  v6[3] = &unk_279867838;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (MSPSharedTripContactController)initWithSharedTripServer:(id)server
{
  serverCopy = server;
  v24.receiver = self;
  v24.super_class = MSPSharedTripContactController;
  v5 = [(MSPSharedTripContactController *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sharedTripServer, serverCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionIdentifier = v6->_sessionIdentifier;
    v6->_sessionIdentifier = uUID;

    v9 = objc_alloc_init(MEMORY[0x277CBEB70]);
    activeHandles = v6->_activeHandles;
    v6->_activeHandles = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB70]);
    activeContacts = v6->_activeContacts;
    v6->_activeContacts = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    serviceNamesByActiveHandle = v6->_serviceNamesByActiveHandle;
    v6->_serviceNamesByActiveHandle = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingContacts = v6->_pendingContacts;
    v6->_pendingContacts = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.Maps.SharedTrip.ContactController", v17);
    isolationQueue = v6->_isolationQueue;
    v6->_isolationQueue = v18;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v22 = [bundleIdentifier isEqualToString:*MEMORY[0x277D0EA88]];

    if ((v22 & 1) == 0)
    {
      [MEMORY[0x277D0EDB0] setInitialShareSessionWithMaps:1];
    }
  }

  return v6;
}

- (void)_notifyDelegateContactsChanged
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  delegate = [(MSPSharedTripContactController *)self delegate];
  if (delegate)
  {
    v4 = self->_activeContacts;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MSPSharedTripContactController__notifyDelegateContactsChanged__block_invoke;
    block[3] = &unk_279866300;
    v7 = delegate;
    selfCopy = self;
    v9 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)shareWithContactValue:(id)value queue:(id)queue completion:(id)completion
{
  valueCopy = value;
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSPSharedTripContactController_shareWithContactValue_queue_completion___block_invoke;
  block[3] = &unk_2798676A8;
  objc_copyWeak(&v19, &location);
  v16 = valueCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = valueCopy;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __73__MSPSharedTripContactController_shareWithContactValue_queue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _shareWithContactValue:*(a1 + 32) queue:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_shareWithContactValue:(id)value queue:(id)queue completion:(id)completion
{
  v85 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_isolationQueue);
  WeakRetained = objc_loadWeakRetained(&self->_sharedTripServer);
  if (!valueCopy)
  {
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke;
    v76[3] = &unk_2798676D0;
    v77 = completionCopy;
    dispatch_async(queueCopy, v76);
    v12 = v77;
    goto LABEL_25;
  }

  if ([(MSPSharedTripContactController *)self _contactIsActive:valueCopy])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_2;
    block[3] = &unk_2798676D0;
    v75 = completionCopy;
    dispatch_async(queueCopy, block);
    v12 = v75;
LABEL_25:

    goto LABEL_26;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v15 = [bundleIdentifier isEqualToString:*MEMORY[0x277D0EA88]];

  if ((v15 & 1) == 0)
  {
    [MEMORY[0x277D0E788] captureUserAction:9025 target:0 value:0];
  }

  handleForIDS = [valueCopy handleForIDS];

  if (handleForIDS)
  {
    v12 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = [v12 capabilityLevelForContact:valueCopy];
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__1;
    v68 = __Block_byref_object_dispose__1;
    v69 = [v12 serviceNameForContact:valueCopy];
    v41 = [(NSUUID *)self->_sessionIdentifier copy];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_25;
    v58[3] = &unk_279867720;
    v58[4] = self;
    v17 = valueCopy;
    v59 = v17;
    v62 = &v70;
    v63 = &v64;
    v18 = queueCopy;
    v60 = v18;
    v19 = completionCopy;
    v61 = v19;
    v42 = MEMORY[0x259C7AD60](v58);
    v20 = v71[3];
    if ((v20 - 2) >= 3)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v26 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            handleForIDS2 = [v17 handleForIDS];
            *buf = 138412290;
            v80 = handleForIDS2;
            _os_log_impl(&dword_25813A000, v26, OS_LOG_TYPE_ERROR, "[ContactController] shareWithContactValue called for handle %@ with MSPSharedTripCapabilityType_Invalid. Exiting Early.", buf, 0xCu);
          }

          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_28;
          v54[3] = &unk_279867748;
          v56 = v19;
          v57 = &v70;
          v55 = v17;
          dispatch_async(v18, v54);
        }
      }

      else if ([(NSMutableSet *)self->_pendingContacts containsObject:v17])
      {
        v28 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          handleForIDS3 = [v17 handleForIDS];
          *buf = 138412290;
          v80 = handleForIDS3;
          _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_INFO, "[ContactController] shareWithContactValue called for handle %@ with MSPSharedTripCapabilityType_Unknown. Already waiting for response.", buf, 0xCu);
        }
      }

      else
      {
        log = MSPGetSharedTripLog();
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          handleForIDS4 = [v17 handleForIDS];
          *buf = 138412290;
          v80 = handleForIDS4;
          v37 = handleForIDS4;
          _os_log_impl(&dword_25813A000, log, OS_LOG_TYPE_INFO, "[ContactController] shareWithContactValue called for handle %@ with MSPSharedTripCapabilityType_Unknown. Will wait for response.", buf, 0xCu);
        }

        [(NSMutableSet *)self->_pendingContacts addObject:v17];
        loga = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
        isolationQueue = self->_isolationQueue;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_30;
        v45[3] = &unk_279867798;
        v45[4] = self;
        v46 = v41;
        v47 = v17;
        v52 = &v70;
        v53 = &v64;
        v48 = WeakRetained;
        v50 = v42;
        v49 = v18;
        v51 = v19;
        [loga fetchCapabilityLevelForContact:v47 timeout:isolationQueue queue:v45 completion:0.0];
      }
    }

    else
    {
      v21 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        handleForIDS5 = [v17 handleForIDS];
        v23 = handleForIDS5;
        v24 = v71[3];
        if (v24 > 4)
        {
          v25 = @"Unknown";
        }

        else
        {
          v25 = off_279867980[v24];
        }

        v30 = v65[5];
        *buf = 138412802;
        v80 = handleForIDS5;
        v81 = 2114;
        v82 = v25;
        v83 = 2114;
        v84 = v30;
        _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "[ContactController] shareWithContactValue called for handle %@ with %{public}@/%{public}@. Will pass to trip service.", buf, 0x20u);
      }

      handleForIDS6 = [v17 handleForIDS];
      v78 = handleForIDS6;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
      v33 = v71[3];
      v34 = v65[5];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_33;
      v43[3] = &unk_279867770;
      v44 = v42;
      [WeakRetained startSharingTripWithContacts:v32 capabilityType:v33 serviceName:v34 completion:v43];
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v70, 8);
    goto LABEL_25;
  }

LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
}

void __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CCA068];
  v6[0] = @"No contacts provided";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:10 userInfo:v2];

  (*(v1 + 16))(v1, 0, 0, v3);
  v4 = *MEMORY[0x277D85DE8];
}

void __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CCA068];
  v6[0] = @"Already sharing with contacts";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:12 userInfo:v2];

  (*(v1 + 16))(v1, 0, 0, v3);
  v4 = *MEMORY[0x277D85DE8];
}

void __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_2_26;
  block[3] = &unk_2798676F8;
  block[4] = v5;
  v7 = v4;
  v14 = *(a1 + 64);
  v10 = v7;
  v11 = v3;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v8 = v3;
  dispatch_async(v6, block);
}

void __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_28(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v2 = *(*(a1[6] + 8) + 24);
  v8 = a1[4];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  if ([v3 count])
  {
    v4 = *MEMORY[0x277CCA068];
    v9[0] = @"InvalidContacts";
    v9[1] = v4;
    v10[0] = v3;
    v10[1] = @"Contacts not valid due to missing/unusable handles";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:14 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(v1 + 16))(v1, v2, 0, v6);
  v7 = *MEMORY[0x277D85DE8];
}

void __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_30(uint64_t a1, unint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 56) isEqual:*(a1 + 40)] & 1) == 0)
  {
    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 48) handleForIDS];
      *buf = 138477827;
      v25 = v10;
      v11 = "[ContactController] shareWithContactValue will not retry sharing for pending handle %{private}@ as that session is over";
LABEL_11:
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([*(*(a1 + 32) + 32) containsObject:*(a1 + 48)] & 1) == 0)
  {
    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 48) handleForIDS];
      *buf = 138477827;
      v25 = v10;
      v11 = "[ContactController] shareWithContactValue will not retry sharing for pending handle %{private}@ as it was removed from the pending set";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [*(*(a1 + 32) + 32) removeObject:*(a1 + 48)];
  v4 = MSPGetSharedTripLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = [*(a1 + 48) handleForIDS];
      v7 = v6;
      if (a2 > 4)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_279867948[a2 - 1];
      }

      v21 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138478339;
      v25 = v6;
      v26 = 2114;
      v27 = v8;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[ContactController] shareWithContactValue received capability for pending contact %{private}@: %{public}@/%{public}@", buf, 0x20u);
    }

    [*(a1 + 32) _shareWithContactValue:*(a1 + 48) queue:*(a1 + 64) completion:*(a1 + 80)];
  }

  else
  {
    if (v5)
    {
      v13 = [*(a1 + 48) handleForIDS];
      *buf = 138477827;
      v25 = v13;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[ContactController] shareWithContactValue timed out waiting for pending contact %{private}@. falling back to messages", buf, 0xCu);
    }

    *(*(*(a1 + 88) + 8) + 24) = 3;
    v14 = *(*(a1 + 96) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v16 = *(a1 + 56);
    v17 = [*(a1 + 48) handleForIDS];
    v30[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v19 = *(*(*(a1 + 88) + 8) + 24);
    v20 = *(*(*(a1 + 96) + 8) + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__MSPSharedTripContactController__shareWithContactValue_queue_completion___block_invoke_31;
    v22[3] = &unk_279867770;
    v23 = *(a1 + 72);
    [v16 startSharingTripWithContacts:v18 capabilityType:v19 serviceName:v20 completion:v22];
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_didStartSharingWithContact:(id)contact withCapabilityType:(unint64_t)type serviceName:(id)name error:(id)error queue:(id)queue completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  nameCopy = name;
  errorCopy = error;
  completionCopy = completion;
  isolationQueue = self->_isolationQueue;
  queueCopy = queue;
  dispatch_assert_queue_V2(isolationQueue);
  if (errorCopy)
  {
    v20 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = errorCopy;
      _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_ERROR, "[ContactController] Error trying to start sharing: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v20 = [(NSDictionary *)self->_serviceNamesByActiveHandle mutableCopy];
    v21 = nameCopy;
    if (!nameCopy)
    {
      if (type - 2 > 2)
      {
        v34 = 0;
        v21 = 0;
      }

      else
      {
        v21 = *off_279867968[type - 2];
        v34 = v21;
      }
    }

    handleForIDS = [contactCopy handleForIDS];
    [v20 setObject:v21 forKeyedSubscript:handleForIDS];

    if (!nameCopy)
    {
    }

    v23 = [v20 copy];
    serviceNamesByActiveHandle = self->_serviceNamesByActiveHandle;
    self->_serviceNamesByActiveHandle = v23;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v27 = [bundleIdentifier isEqualToString:*MEMORY[0x277D0EA88]];

    if ((v27 & 1) == 0)
    {
      [MEMORY[0x277D0E788] captureUserAction:104 target:0 value:0];
    }

    v28 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (type > 4)
      {
        v29 = @"Unknown";
      }

      else
      {
        v29 = off_279867980[type];
      }

      *buf = 138543362;
      v41 = v29;
      _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_DEFAULT, "[ContactController] Did start sharing via %{public}@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__MSPSharedTripContactController__didStartSharingWithContact_withCapabilityType_serviceName_error_queue_completion___block_invoke;
  block[3] = &unk_2798677C0;
  v38 = completionCopy;
  typeCopy = type;
  v36 = nameCopy;
  v37 = errorCopy;
  v30 = errorCopy;
  v31 = nameCopy;
  v32 = completionCopy;
  dispatch_async(queueCopy, block);

  v33 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingWithContactValue:(id)value reason:(unint64_t)reason queue:(id)queue completion:(id)completion
{
  valueCopy = value;
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__MSPSharedTripContactController_stopSharingWithContactValue_reason_queue_completion___block_invoke;
  v17[3] = &unk_2798677E8;
  objc_copyWeak(v21, &location);
  v18 = valueCopy;
  v19 = queueCopy;
  v21[1] = reason;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  v16 = valueCopy;
  dispatch_async(isolationQueue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __86__MSPSharedTripContactController_stopSharingWithContactValue_reason_queue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _stopSharingWithContactValue:*(a1 + 32) reason:*(a1 + 64) queue:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_stopSharingWithContactValue:(id)value reason:(unint64_t)reason queue:(id)queue completion:(id)completion
{
  v26[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (valueCopy)
  {
    activeHandles = self->_activeHandles;
    handleForIDS = [valueCopy handleForIDS];
    LOBYTE(activeHandles) = [(NSOrderedSet *)activeHandles containsObject:handleForIDS];

    if (activeHandles)
    {
      [(NSMutableSet *)self->_pendingContacts removeObject:valueCopy];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v17 = [bundleIdentifier isEqualToString:*MEMORY[0x277D0EA88]];

      if ((v17 & 1) == 0)
      {
        [MEMORY[0x277D0E788] captureUserAction:9026 target:0 value:0];
      }

      WeakRetained = objc_loadWeakRetained(&self->_sharedTripServer);
      handleForIDS2 = [valueCopy handleForIDS];
      v26[0] = handleForIDS2;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      [WeakRetained stopSharingTripWithContacts:v20 reason:reason completion:completionCopy];
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __87__MSPSharedTripContactController__stopSharingWithContactValue_reason_queue_completion___block_invoke_2;
      v22[3] = &unk_2798676D0;
      v23 = completionCopy;
      dispatch_async(queueCopy, v22);
      WeakRetained = v23;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__MSPSharedTripContactController__stopSharingWithContactValue_reason_queue_completion___block_invoke;
    block[3] = &unk_2798676D0;
    v25 = completionCopy;
    dispatch_async(queueCopy, block);
    WeakRetained = v25;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __87__MSPSharedTripContactController__stopSharingWithContactValue_reason_queue_completion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CCA068];
  v6[0] = @"No contacts provided";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:10 userInfo:v2];

  (*(v1 + 16))(v1, v3);
  v4 = *MEMORY[0x277D85DE8];
}

void __87__MSPSharedTripContactController__stopSharingWithContactValue_reason_queue_completion___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CCA068];
  v6[0] = @"Not currently sharing with contacts";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:13 userInfo:v2];

  (*(v1 + 16))(v1, v3);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopAllSharingWithReason:(unint64_t)reason queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MSPSharedTripContactController_stopAllSharingWithReason_queue_completion___block_invoke;
  block[3] = &unk_279867810;
  objc_copyWeak(v16, &location);
  v16[1] = reason;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __76__MSPSharedTripContactController_stopAllSharingWithReason_queue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stopAllSharingWithReason:*(a1 + 56) queue:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_stopAllSharingWithReason:(unint64_t)reason queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if ([(NSOrderedSet *)self->_activeHandles count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sharedTripServer);
    [WeakRetained stopSharingTripWithReason:reason completion:completionCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__MSPSharedTripContactController__stopAllSharingWithReason_queue_completion___block_invoke;
    block[3] = &unk_2798676D0;
    v12 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

void __77__MSPSharedTripContactController__stopAllSharingWithReason_queue_completion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CCA068];
  v6[0] = @"Not currently sharing with contacts";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:13 userInfo:v2];

  (*(v1 + 16))(v1, v3);
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)contactIsActive:(id)active
{
  activeCopy = active;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MSPSharedTripContactController_contactIsActive___block_invoke;
  v8[3] = &unk_279867860;
  v10 = &v13;
  objc_copyWeak(&v11, &location);
  v9 = activeCopy;
  v6 = activeCopy;
  dispatch_sync(isolationQueue, v8);
  LOBYTE(isolationQueue) = *(v14 + 24);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);
  return isolationQueue;
}

void __50__MSPSharedTripContactController_contactIsActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _contactIsActive:*(a1 + 32)];
}

- (BOOL)_contactIsActive:(id)active
{
  isolationQueue = self->_isolationQueue;
  activeCopy = active;
  dispatch_assert_queue_V2(isolationQueue);
  activeHandles = self->_activeHandles;
  handleForIDS = [activeCopy handleForIDS];

  LOBYTE(activeHandles) = [(NSOrderedSet *)activeHandles containsObject:handleForIDS];
  return activeHandles;
}

- (unint64_t)activeCapabilityTypeForContact:(id)contact serviceName:(id *)name
{
  contactCopy = contact;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MSPSharedTripContactController_activeCapabilityTypeForContact_serviceName___block_invoke;
  block[3] = &unk_279867888;
  v13 = &v16;
  objc_copyWeak(v14, &location);
  v12 = contactCopy;
  v14[1] = name;
  v8 = contactCopy;
  dispatch_sync(isolationQueue, block);
  v9 = v17[3];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void __77__MSPSharedTripContactController_activeCapabilityTypeForContact_serviceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _activeCapabilityTypeForContact:*(a1 + 32) serviceName:*(a1 + 56)];
}

- (unint64_t)_activeCapabilityTypeForContact:(id)contact serviceName:(id *)name
{
  isolationQueue = self->_isolationQueue;
  contactCopy = contact;
  dispatch_assert_queue_V2(isolationQueue);
  serviceNamesByActiveHandle = self->_serviceNamesByActiveHandle;
  handleForIDS = [contactCopy handleForIDS];

  v10 = [(NSDictionary *)serviceNamesByActiveHandle objectForKeyedSubscript:handleForIDS];

  if (v10)
  {
    if ([v10 isEqualToString:@"Maps"])
    {
      v11 = 4;
      if (!name)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"iMessage"])
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if (name)
    {
LABEL_10:
      v12 = v10;
      *name = v10;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (void)updateActiveSharingHandles:(id)handles serviceNames:(id)names
{
  handlesCopy = handles;
  namesCopy = names;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__MSPSharedTripContactController_updateActiveSharingHandles_serviceNames___block_invoke;
  v11[3] = &unk_2798678B0;
  objc_copyWeak(&v14, &location);
  v12 = handlesCopy;
  v13 = namesCopy;
  v9 = namesCopy;
  v10 = handlesCopy;
  dispatch_async(isolationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __74__MSPSharedTripContactController_updateActiveSharingHandles_serviceNames___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateActiveSharingHandles:*(a1 + 32) serviceNames:*(a1 + 40)];
}

- (void)_updateActiveSharingHandles:(id)handles serviceNames:(id)names
{
  v59 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  namesCopy = names;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:handlesCopy];
  activeHandles = self->_activeHandles;
  v10 = v8;
  v11 = activeHandles;
  if (v10 | v11)
  {
    v12 = v11;
    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v58 = v10;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[ContactController] updating _activeHandles with: %{private}@", buf, 0xCu);
      }

      objc_storeStrong(&self->_activeHandles, v8);
      objc_storeStrong(&self->_serviceNamesByActiveHandle, names);
      selfCopy = self;
      v15 = [(NSOrderedSet *)self->_activeContacts mutableCopy];
      v16 = [v10 mutableCopy];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v52;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v52 != v20)
            {
              objc_enumerationMutation(v17);
            }

            handleForIDS = [*(*(&v51 + 1) + 8 * i) handleForIDS];
            [v16 removeObject:handleForIDS];
          }

          v19 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v19);
      }

      mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
      isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

      if (isInternalInstall)
      {
        v40 = namesCopy;
        v41 = handlesCopy;
        v25 = MSPSharedTripGetVirtualReceivers(v16);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v48;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v48 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v47 + 1) + 8 * j);
              v31 = [MSPSharedTripContact virtualReceiverWithHandle:v30];
              [v17 addObject:v31];

              [v16 removeObject:v30];
            }

            v27 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v27);
        }

        namesCopy = v40;
        handlesCopy = v41;
      }

      if ([v16 count])
      {
        allObjects = [v16 allObjects];
        v33 = [MSPSharedTripContact contactsFromIDSHandles:allObjects];
        [v17 addObjectsFromArray:v33];
      }

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __75__MSPSharedTripContactController__updateActiveSharingHandles_serviceNames___block_invoke;
      v45[3] = &unk_2798678D8;
      v34 = v10;
      v46 = v34;
      v35 = [v17 indexesOfObjectsPassingTest:v45];
      [v17 removeObjectsAtIndexes:v35];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __75__MSPSharedTripContactController__updateActiveSharingHandles_serviceNames___block_invoke_2;
      v43[3] = &unk_279867900;
      v44 = v34;
      [v17 sortUsingComparator:v43];
      v36 = [v17 copy];
      activeContacts = selfCopy->_activeContacts;
      selfCopy->_activeContacts = v36;

      v38 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v58 = v17;
        _os_log_impl(&dword_25813A000, v38, OS_LOG_TYPE_DEFAULT, "[ContactController] activeContacts is now: %{private}@", buf, 0xCu);
      }

      [(MSPSharedTripContactController *)selfCopy _notifyDelegateContactsChanged];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __75__MSPSharedTripContactController__updateActiveSharingHandles_serviceNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 handleForIDS];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __75__MSPSharedTripContactController__updateActiveSharingHandles_serviceNames___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 handleForIDS];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 handleForIDS];

  v11 = [v9 indexOfObject:v10];
  if (v8 < v11)
  {
    return -1;
  }

  else
  {
    return v8 > v11;
  }
}

- (MSPSharingRestorationStorage)archivedSharingStorage
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSPSharedTripContactController_archivedSharingStorage__block_invoke;
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

void __56__MSPSharedTripContactController_archivedSharingStorage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _archivedSharingStorage];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_archivedSharingStorage
{
  v43 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(NSOrderedSet *)self->_activeHandles mutableCopy];
  if (![v3 count])
  {
    v5 = 0;
    goto LABEL_35;
  }

  v4 = self->_activeContacts;
  v5 = objc_alloc_init(MSPSharingRestorationStorage);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(MSPSharingRestorationStorage *)v5 setCreatedTimestamp:?];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v6 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v8 = *v34;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      handleForIDS = [v10 handleForIDS];
      [v3 removeObject:handleForIDS];

      mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
      if ([mEMORY[0x277D0EC70] isInternalInstall])
      {
        handleForIDS2 = [v10 handleForIDS];
        IsValid = MSPSharedTripVirtualReceiverIsValid(handleForIDS2);

        if (IsValid)
        {
          continue;
        }
      }

      else
      {
      }

      v15 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      v16 = [v15 capabilityLevelForContact:v10];

      if ((v16 - 2) < 2 || v16 == 0)
      {
        stringValue = [v10 stringValue];
        [(MSPSharingRestorationStorage *)v5 addMessagesIdentifier:stringValue];
      }

      else
      {
        if (v16 != 4)
        {
          continue;
        }

        stringValue = [v10 stringValue];
        [(MSPSharingRestorationStorage *)v5 addMapsIdentifier:stringValue];
      }
    }

    v7 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  }

  while (v7);
LABEL_22:

  if ([v3 count])
  {
    v19 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = [v3 count];
      *buf = 134218243;
      v39 = v20;
      v40 = 2113;
      v41 = v3;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_FAULT, "There are %lu leftover active handles after enumerating activeContacts: %{private}@", buf, 0x16u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v3;
    v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(MSPSharingRestorationStorage *)v5 addMessagesIdentifier:*(*(&v29 + 1) + 8 * j)];
        }

        v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }
  }

LABEL_35:
  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)reset
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__MSPSharedTripContactController_reset__block_invoke;
  v4[3] = &unk_279866390;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__MSPSharedTripContactController_reset__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reset];
}

- (void)_reset
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[ContactController] Reset", v12, 2u);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = uUID;

  v6 = objc_alloc_init(MEMORY[0x277CBEB70]);
  activeHandles = self->_activeHandles;
  self->_activeHandles = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB70]);
  activeContacts = self->_activeContacts;
  self->_activeContacts = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  pendingContacts = self->_pendingContacts;
  self->_pendingContacts = v10;
}

- (MSPSharedTripContactControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end