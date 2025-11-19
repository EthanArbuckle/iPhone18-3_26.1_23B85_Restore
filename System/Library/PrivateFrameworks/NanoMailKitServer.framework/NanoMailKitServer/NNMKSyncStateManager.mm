@interface NNMKSyncStateManager
- (BOOL)pairedDeviceSupportsMailContentProtectedChannel;
- (BOOL)pairedDeviceSupportsMultipleMailboxes;
- (BOOL)pairedDeviceSupportsStandaloneMode;
- (BOOL)willPresentNotificationForMessage:(id)a3;
- (NNMKSyncStateManager)init;
- (NNMKSyncStateManagerDelegate)delegate;
- (id)_bbSubsectionIdsForMessage:(id)a3;
- (id)_pairedNanoRegistryDevice;
- (id)pairedDeviceScreenScale;
- (id)pairedDeviceScreenSize;
- (id)pairingStorePath;
- (void)_handleDidUnpairNotification:(id)a3;
- (void)_handlePairedDeviceChangedNotification:(id)a3;
- (void)dealloc;
- (void)reportInitialSyncDidComplete;
- (void)reportInitialSyncDidCompleteSending;
- (void)reportInitialSyncDidFailWithError:(id)a3;
- (void)reportInitialSyncProgress:(double)a3;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
@end

@implementation NNMKSyncStateManager

- (NNMKSyncStateManager)init
{
  v17.receiver = self;
  v17.super_class = NNMKSyncStateManager;
  v2 = [(NNMKSyncStateManager *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF35E8]);
    notificationsPingSubscriber = v2->_notificationsPingSubscriber;
    v2->_notificationsPingSubscriber = v3;

    objc_initWeak(&location, v2);
    v5 = v2->_notificationsPingSubscriber;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __28__NNMKSyncStateManager_init__block_invoke;
    v14 = &unk_279936608;
    objc_copyWeak(&v15, &location);
    [(BLTPingSubscriber *)v5 subscribeToSectionID:@"com.apple.mobilemail" withNotificationAckForwardHandler:&v11];
    v6 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:{@"com.apple.pairedsync.mail", v11, v12, v13, v14}];
    initialSyncCoordinator = v2->_initialSyncCoordinator;
    v2->_initialSyncCoordinator = v6;

    [(PSYSyncCoordinator *)v2->_initialSyncCoordinator setDelegate:v2];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel__handleDidUnpairNotification_ name:*MEMORY[0x277D2BC78] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel__handlePairedDeviceChangedNotification_ name:*MEMORY[0x277D2BC48] object:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __28__NNMKSyncStateManager_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__NNMKSyncStateManager_init__block_invoke_2;
    v9[3] = &unk_2799365E0;
    v10 = v5;
    [v8 syncStateManager:WeakRetained handleForwardForNotification:v6 completion:v9];
  }
}

uint64_t __28__NNMKSyncStateManager_init__block_invoke_2(uint64_t a1, int a2)
{
  v4 = __logCategories;
  v5 = os_log_type_enabled(__logCategories, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Calling ack block back with BLTPingSubscribingForwardAllow", buf, 2u);
    }
  }

  else if (v5)
  {
    *v7 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Calling ack block back with BLTPingSubscribingForwardSuppress", v7, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D2BC78] object:0];

  v4.receiver = self;
  v4.super_class = NNMKSyncStateManager;
  [(NNMKSyncStateManager *)&v4 dealloc];
}

- (void)reportInitialSyncProgress:(double)a3
{
  v4 = [(PSYSyncCoordinator *)self->_initialSyncCoordinator activeSyncSession];
  [v4 reportProgress:a3];
}

- (void)reportInitialSyncDidCompleteSending
{
  v2 = [(PSYSyncCoordinator *)self->_initialSyncCoordinator activeSyncSession];
  [v2 syncDidCompleteSending];
}

- (void)reportInitialSyncDidComplete
{
  v2 = [(PSYSyncCoordinator *)self->_initialSyncCoordinator activeSyncSession];
  [v2 syncDidComplete];
}

- (void)reportInitialSyncDidFailWithError:(id)a3
{
  initialSyncCoordinator = self->_initialSyncCoordinator;
  v4 = a3;
  v5 = [(PSYSyncCoordinator *)initialSyncCoordinator activeSyncSession];
  [v5 syncDidFailWithError:v4];
}

- (id)pairingStorePath
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 pairingStorePath];

  return v3;
}

- (id)pairedDeviceScreenSize
{
  v2 = [(NNMKSyncStateManager *)self _pairedNanoRegistryDevice];
  v3 = [v2 valueForProperty:*MEMORY[0x277D2BBF0]];

  return v3;
}

- (id)pairedDeviceScreenScale
{
  v2 = [(NNMKSyncStateManager *)self _pairedNanoRegistryDevice];
  v3 = [v2 valueForProperty:*MEMORY[0x277D2BBE8]];

  return v3;
}

- (BOOL)willPresentNotificationForMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 checkState:1])
  {
LABEL_9:
    v16 = 0;
    goto LABEL_13;
  }

  v5 = [v4 accountId];

  if (!v5)
  {
    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncStateManager *)v15 willPresentNotificationForMessage:v4];
    }

    goto LABEL_9;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v6 = dispatch_semaphore_create(0);
  notificationsPingSubscriber = self->_notificationsPingSubscriber;
  v8 = [(NNMKSyncStateManager *)self _bbSubsectionIdsForMessage:v4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__NNMKSyncStateManager_willPresentNotificationForMessage___block_invoke;
  v19[3] = &unk_279936630;
  v21 = &v27;
  v22 = &v23;
  v9 = v6;
  v20 = v9;
  [(BLTPingSubscriber *)notificationsPingSubscriber getWillNanoPresentNotificationForSectionID:@"com.apple.mobilemail" subsectionIDs:v8 completion:v19];

  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = qword_28144D620;
  if (v24[3])
  {
    v12 = qword_28144D620;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 messageId];
      v14 = *(v28 + 24);
      *buf = 138543618;
      v32 = v13;
      v33 = 1024;
      v34 = v14;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber did respond. (Id: %{public}@, Notification: %d)", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncStateManager willPresentNotificationForMessage:v11];
  }

  v16 = *(v28 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

intptr_t __58__NNMKSyncStateManager_willPresentNotificationForMessage___block_invoke(uint64_t a1, char a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_handleDidUnpairNotification:(id)a3
{
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Received Unpair notification from NanoRegistry. Informing NNMKSyncProvider...", v6, 2u);
  }

  v5 = [(NNMKSyncStateManager *)self delegate];
  [v5 syncStateManagerDidUnpair:self];
}

- (void)_handlePairedDeviceChangedNotification:(id)a3
{
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Received Paired Device Changed notification from NanoRegistry. Informing NNMKSyncProvider...", v6, 2u);
  }

  v5 = [(NNMKSyncStateManager *)self delegate];
  [v5 syncStateManagerDidChangePairedDevice:self];
}

- (BOOL)pairedDeviceSupportsMailContentProtectedChannel
{
  v2 = [(NNMKSyncStateManager *)self _pairedNanoRegistryDevice];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0AEBD96A-0D13-42E0-9D9B-3D4BFAB8B7DB"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a4;
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Received notification from PairedSync to begin SyncSession. Informing NNMKSyncProvider...", v11, 2u);
  }

  v7 = [(NNMKSyncStateManager *)self delegate];
  [v5 syncSessionType];
  v8 = NSStringfromPSYSyncSessionType();
  v9 = [v5 sessionIdentifier];
  v10 = [v9 UUIDString];
  [v7 syncStateManagerDidBeginSyncSession:self syncSessionType:v8 syncSessionIdentifier:v10];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v5 = a4;
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Received notification from PairedSync to invalidate SyncSession. Informing NNMKSyncProvider...", v10, 2u);
  }

  v7 = [(NNMKSyncStateManager *)self delegate];
  v8 = [v5 sessionIdentifier];
  v9 = [v8 UUIDString];
  [v7 syncStateManagerDidInvalidateSyncSession:self syncSessionIdentifier:v9];
}

- (id)_bbSubsectionIdsForMessage:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [v4 accountId];
  v7 = [v5 setWithObject:v6];

  if ([v4 checkState:64])
  {
    [v7 addObject:@"com.apple.mobilemail.bulletin-subsection.VIP"];
  }

  if ([v4 checkState:128])
  {
    [v7 addObject:@"com.apple.mobilemail.bulletin-subsection.ThreadNotify"];
  }

  v8 = [(NNMKSyncStateManager *)self delegate];
  v9 = [v4 mailboxId];
  v10 = [v8 syncStateManagerShouldAddFavoriteSubsectionForMailboxId:v9];

  if (v10)
  {
    [v7 addObject:@"com.apple.mobilemail.bulletin-subsection.FavoriteMailboxes"];
  }

  return v7;
}

- (id)_pairedNanoRegistryDevice
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  return v3;
}

- (BOOL)pairedDeviceSupportsMultipleMailboxes
{
  v2 = [(NNMKSyncStateManager *)self _pairedNanoRegistryDevice];
  v3 = NRWatchOSVersionForRemoteDevice();

  return (v3 & 0xFFFC0000) != 0;
}

- (BOOL)pairedDeviceSupportsStandaloneMode
{
  v2 = [(NNMKSyncStateManager *)self _pairedNanoRegistryDevice];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (NNMKSyncStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)willPresentNotificationForMessage:(void *)a1 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 messageId];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Received message with nil accountId. It will not preset notification. %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end