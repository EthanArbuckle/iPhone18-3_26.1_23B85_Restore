@interface CORoleAddOn
- (BOOL)_isLegacyStereoPair;
- (BOOL)_isLegacyStereoPairPeer:(id)a3;
- (CORoleAddOn)init;
- (CORoleAddOnDelegate)delegate;
- (id)_memberForNode:(id)a3;
- (id)_roleForCurrentDevice;
- (id)_roleForNode:(id)a3;
- (void)_enableForPairLegacySupport;
- (void)_notifyDelegate;
- (void)_updateCurrentDeviceState;
- (void)_updateState;
- (void)_withLock:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)meshController:(id)a3 willTransitionToState:(unint64_t)a4;
- (void)monitor:(id)a3 defaultChanged:(unint64_t)a4;
- (void)setDelegate:(id)a3;
@end

@implementation CORoleAddOn

- (CORoleAddOn)init
{
  v15.receiver = self;
  v15.super_class = CORoleAddOn;
  v2 = [(COMeshAddOn *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    defaultsMonitor = v2->_defaultsMonitor;
    v2->_defaultsMonitor = 0;

    v5 = [(CORoleAddOn *)v3 _memberForCurrentDevice];
    v6 = [MEMORY[0x277CFD0A0] roleForUnknown];
    v7 = [objc_alloc(MEMORY[0x277CFD090]) initWithMember:v5 role:v6];
    currentDeviceSnapshot = v3->_currentDeviceSnapshot;
    v3->_currentDeviceSnapshot = v7;

    v9 = [MEMORY[0x277CBEB98] set];
    nodeCache = v3->_nodeCache;
    v3->_nodeCache = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.coordination.CORoleAddOn.delegateQueue", v11);
    delegateQueue = v3->_delegateQueue;
    v3->_delegateQueue = v12;

    v3->_pendingChanges = 1;
    [(CORoleAddOn *)v3 _notifyDelegate];
  }

  return v3;
}

- (void)_enableForPairLegacySupport
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [[CORoleDefaultsMonitor alloc] initWithDelegate:self];
  defaultsMonitor = self->_defaultsMonitor;
  self->_defaultsMonitor = v3;

  v5 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CORoleAddOn *)self defaultsMonitor];
    v8 = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p add-on using monitor %p for local role in pair", &v8, 0x16u);
  }

  [(CORoleDefaultsMonitor *)self->_defaultsMonitor activate];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = CORoleAddOn;
  [(COMeshAddOn *)&v6 meshController:a3 didTransitionToState:?];
  if (a4 == 3)
  {
    [(CORoleAddOn *)self _updateCurrentDeviceState];
    [(CORoleAddOn *)self _updateState];
    [(CORoleAddOn *)self _notifyDelegate];
  }
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v4.receiver = self;
  v4.super_class = CORoleAddOn;
  [(COMeshAddOn *)&v4 didChangeNodesForMeshController:a3];
  [(CORoleAddOn *)self _updateCurrentDeviceState];
  [(CORoleAddOn *)self _updateState];
  [(CORoleAddOn *)self _notifyDelegate];
}

- (void)meshController:(id)a3 willTransitionToState:(unint64_t)a4
{
  v6 = a3;
  [(CORoleAddOn *)self _updateCurrentDeviceState];
  v7.receiver = self;
  v7.super_class = CORoleAddOn;
  [(COMeshAddOn *)&v7 meshController:v6 willTransitionToState:a4];
}

- (void)monitor:(id)a3 defaultChanged:(unint64_t)a4
{
  [(CORoleAddOn *)self _updateCurrentDeviceState:a3];
  [(CORoleAddOn *)self _updateState];

  [(CORoleAddOn *)self _notifyDelegate];
}

- (void)_updateState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__CORoleAddOn__updateState__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(CORoleAddOn *)self _withLock:v2];
}

void __27__CORoleAddOn__updateState__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) meshController];
  v4 = [v3 nodes];
  v5 = [v2 setWithArray:v4];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [*(a1 + 32) _memberForNode:v10];
        v12 = [*(a1 + 32) _roleForNode:v10];
        v13 = [objc_alloc(MEMORY[0x277CFD090]) initWithMember:v11 role:v12];
        v14 = [v10 memberSnapshot];
        v15 = [v13 isEqual:v14];

        if ((v15 & 1) == 0)
        {
          [v10 setMemberSnapshot:v13];
          *(*(a1 + 32) + 28) = 1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v16 = [*(*(a1 + 32) + 56) mutableCopy];
  [v16 minusSet:obj];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v27 + 1) + 8 * j) memberSnapshot];
        [v22 setStale:1];

        *(*(a1 + 32) + 28) = 1;
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 56);
  *(v23 + 56) = obj;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentDeviceState
{
  v3 = [(COMeshAddOn *)self meshController];
  v4 = [v3 nodeForMe];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CORoleAddOn__updateCurrentDeviceState__block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CORoleAddOn *)self _withLock:v6];
}

void __40__CORoleAddOn__updateCurrentDeviceState__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _roleForCurrentDevice];
  v3 = [*(*(a1 + 32) + 48) role];
  if (([v3 isEqual:v2] & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = [v4 memberSnapshot];

  if (!v5)
  {
LABEL_6:
    v6 = COCoreLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v13 = 134218242;
      v14 = v7;
      v15 = 2112;
      v16 = v2;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p add-on updated local device Role(%@)", &v13, 0x16u);
    }

    v3 = [*(*(a1 + 32) + 48) member];
    v8 = [objc_alloc(MEMORY[0x277CFD090]) initWithMember:v3 role:v2];
    [*(*(a1 + 32) + 48) setStale:1];
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;
    v11 = v8;

    *(*(a1 + 32) + 28) = 1;
    [*(a1 + 40) setMemberSnapshot:v11];

    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_memberForNode:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshController];
  v6 = [v5 nodeForMe];

  if ([v4 isEqual:v6])
  {
    v7 = [(CORoleAddOn *)self _memberForCurrentDevice];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v4 HomeKitIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 UUIDString];
      [v8 setObject:v11 forKey:@"accessory"];
    }

    v12 = [v4 IDSIdentifier];
    if (v12)
    {
      [v8 setObject:v12 forKey:@"IDS"];
    }

    v7 = [objc_alloc(MEMORY[0x277CFD088]) initWithType:3 deviceMetadata:v8];
  }

  return v7;
}

- (id)_roleForCurrentDevice
{
  v3 = [(CORoleAddOn *)self defaultsMonitor];
  v4 = v3;
  if (v3 && (v5 = [v3 result] - 1, v5 <= 2))
  {
    v6 = qword_2444487D0[v5];
  }

  else
  {
    v6 = 16;
  }

  v7 = [(COMeshAddOn *)self meshController];
  v8 = [v7 clusterOptions];

  if (v8)
  {
    v9 = [(COMeshAddOn *)self meshController];
    v10 = [v9 me];
    v11 = [(COMeshAddOn *)self meshController];
    v12 = [v11 leader];
    v13 = [v10 isEqual:v12];

    if (v13)
    {
      v6 |= 8uLL;
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CFD0A0]) initWithRoleFlags:v6];

  return v14;
}

- (id)_roleForNode:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshController];
  v6 = [v5 nodeForMe];

  if ([v4 isEqual:v6])
  {
    v7 = [(CORoleAddOn *)self _roleForCurrentDevice];
  }

  else
  {
    if ([(CORoleAddOn *)self _isLegacyStereoPair]&& [(CORoleAddOn *)self _isLegacyStereoPairPeer:v4])
    {
      v8 = [(COClusterMemberRoleSnapshot *)self->_currentDeviceSnapshot role];
      if (([v8 flags] & 4) != 0)
      {
        v9 = 18;
      }

      else
      {
        v9 = 20;
      }
    }

    else
    {
      v9 = 16;
    }

    v10 = [(COMeshAddOn *)self meshController];
    v11 = [v10 clusterOptions];

    if (v11)
    {
      v12 = [v4 remote];
      v13 = [(COMeshAddOn *)self meshController];
      v14 = [v13 leader];
      v15 = [v12 isEqual:v14];

      if (v15)
      {
        v9 |= 8uLL;
      }
    }

    v7 = [objc_alloc(MEMORY[0x277CFD0A0]) initWithRoleFlags:v9];
  }

  v16 = v7;

  return v16;
}

- (BOOL)_isLegacyStereoPair
{
  v2 = [(CORoleAddOn *)self defaultsMonitor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isLegacyStereoPairPeer:(id)a3
{
  v4 = a3;
  v5 = +[COHomeKitAdapter sharedInstance];
  v6 = [v5 currentAccessory];
  if (!v6)
  {
    v7 = 0;
LABEL_7:
    v18 = 0;
    goto LABEL_10;
  }

  v7 = [v5 homeForAccessory:v6];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [v5 mediaSystemForAccessory:v6 inHome:v7];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v8 uniqueIdentifier];
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v11 = [(COMeshAddOn *)self meshController];
    v12 = [v11 nodeManager];
    v13 = [v4 remote];
    v14 = [v12 nodeControllerForConstituent:v13];

    v15 = [v14 rapportTransport];
    v16 = [v15 client];
    v17 = [v16 destinationDevice];
  }

  else
  {
    v14 = [v4 client];
    v17 = [v14 destinationDevice];
  }

  v19 = [v17 mediaSystemIdentifier];
  v18 = [v10 isEqual:v19];

LABEL_10:
  return v18;
}

- (CORoleAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__20;
  v9 = __Block_byref_object_dispose__20;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__CORoleAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CORoleAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __23__CORoleAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __27__CORoleAddOn_setDelegate___block_invoke;
  v9 = &unk_278E156B0;
  v10 = v4;
  v11 = self;
  v5 = v4;
  [(CORoleAddOn *)self _withLock:&v6];
  [(CORoleAddOn *)self _notifyDelegate:v6];
}

void __27__CORoleAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  LOBYTE(v2) = [v2 isEqual:WeakRetained];

  if ((v2 & 1) == 0)
  {
    objc_storeWeak((*(a1 + 40) + 32), *(a1 + 32));
    if (*(a1 + 32))
    {
      *(*(a1 + 40) + 28) = 1;
    }
  }
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_notifyDelegate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__CORoleAddOn__notifyDelegate__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(CORoleAddOn *)self _withLock:v2];
}

void __30__CORoleAddOn__notifyDelegate__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 28) == 1)
  {
    objc_copyWeak(&to, (v1 + 32));
    v3 = objc_loadWeakRetained(&to);
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [v4 addObject:*(*(a1 + 32) + 48)];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = *(*(a1 + 32) + 56);
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v6)
      {
        v7 = *v20;
        do
        {
          v8 = 0;
          do
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v19 + 1) + 8 * v8) memberSnapshot];
            if (v9)
            {
              [v4 addObject:v9];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v6);
      }

      *(*(a1 + 32) + 28) = 0;
      v10 = *(*(a1 + 32) + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__CORoleAddOn__notifyDelegate__block_invoke_2;
      block[3] = &unk_278E15728;
      v11 = v3;
      v12 = *(a1 + 32);
      v16 = v11;
      v17 = v12;
      v18 = v4;
      v13 = v4;
      dispatch_async(v10, block);
    }

    objc_destroyWeak(&to);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end