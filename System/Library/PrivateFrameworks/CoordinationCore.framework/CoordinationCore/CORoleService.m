@interface CORoleService
+ (id)serviceWithDelegate:(id)a3;
- (BOOL)_applicableToCluster:(id)a3;
- (CORoleService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5;
- (id)_membersWithRole:(id)a3 inCluster:(id)a4;
- (id)_membersWithRole:(id)a3 inSnapshots:(id)a4;
- (id)_remoteInterfaceForClient:(id)a3 withErrorHandler:(id)a4;
- (id)_roleOfMember:(id)a3 inCluster:(id)a4;
- (id)_roleOfMember:(id)a3 inSnapshots:(id)a4;
- (id)_snapshotsForCluster:(id)a3;
- (void)_addMemberObserverForClient:(id)a3 ofRole:(id)a4 inCluster:(id)a5;
- (void)_addOnAdded:(id)a3;
- (void)_addOnRemoved:(id)a3;
- (void)_addRoleObserverForClient:(id)a3 ofMember:(id)a4 inCluster:(id)a5;
- (void)_addSnapshotObserverForClient:(id)a3 inCluster:(id)a4;
- (void)_clientLost:(id)a3;
- (void)_configureServiceInterfacesOnConnection:(id)a3;
- (void)_identifyAndNotifyMemberChangesFromSnapshot:(id)a3 inCluster:(id)a4;
- (void)_identifyAndNotifyRoleChangesFromSnapshot:(id)a3 inCluster:(id)a4;
- (void)_notifyMemberObserver:(id)a3 membersWithRole:(id)a4 inCluster:(id)a5 didChangeTo:(id)a6;
- (void)_notifyMemberObserversMembersWithRole:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5;
- (void)_notifyRoleObserver:(id)a3 roleOfMember:(id)a4 inCluster:(id)a5 didChangeTo:(id)a6;
- (void)_notifyRoleObserversRoleOfMember:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5;
- (void)_notifySnapshotObserver:(id)a3 snapshotOfCluster:(id)a4 didChangeTo:(id)a5;
- (void)_notifySnapshotObserversSnapshotOfCluster:(id)a3 didChangeTo:(id)a4;
- (void)_removeMemberObserverForClient:(id)a3 ofRole:(id)a4 inCluster:(id)a5;
- (void)_removeRoleObserverForClient:(id)a3 ofMember:(id)a4 inCluster:(id)a5;
- (void)_removeSnapshotObserverForClient:(id)a3 inCluster:(id)a4;
- (void)_updateSnapshots:(id)a3 inCluster:(id)a4;
- (void)addOn:(id)a3 stateChanged:(id)a4;
- (void)registerForMemberChangesWithRole:(id)a3 inCluster:(id)a4;
- (void)registerForRoleChangesOfMember:(id)a3 inCluster:(id)a4;
- (void)registerForSnapshotChangesInCluster:(id)a3;
- (void)unregisterForMemberChangesWithRole:(id)a3 inCluster:(id)a4;
- (void)unregisterForRoleChangesOfMember:(id)a3 inCluster:(id)a4;
- (void)unregisterForSnapshotChangesInCluster:(id)a3;
@end

@implementation CORoleService

+ (id)serviceWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.role" entitlement:@"com.apple.private.coordination.role"];
  v5 = objc_alloc_init(CORoleAddOnProvider);
  v6 = [[CORoleService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:v3];

  return v6;
}

- (CORoleService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5
{
  v15.receiver = self;
  v15.super_class = CORoleService;
  v5 = [(COService *)&v15 initWithListenerProvider:a3 addOnProvider:a4 delegate:a5];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionary];
    snapshotState = v5->_snapshotState;
    v5->_snapshotState = v6;

    v8 = [MEMORY[0x277CBEAC0] dictionary];
    roleObservers = v5->_roleObservers;
    v5->_roleObservers = v8;

    v10 = [MEMORY[0x277CBEAC0] dictionary];
    memberObservers = v5->_memberObservers;
    v5->_memberObservers = v10;

    v12 = [MEMORY[0x277CBEAC0] dictionary];
    snapshotObservers = v5->_snapshotObservers;
    v5->_snapshotObservers = v12;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)a3
{
  v16.receiver = self;
  v16.super_class = CORoleService;
  v4 = a3;
  [(COService *)&v16 _configureServiceInterfacesOnConnection:v4];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857DA598;
  v7 = [v5 interfaceWithProtocol:v6];
  [v4 setExportedInterface:v7];
  [v4 setExportedObject:self];
  v8 = &unk_2857E6748;

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v8];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0, v16.receiver, v16.super_class}];
  [v9 setClasses:v12 forSelector:sel_membersWithRole_inCluster_didChangeTo_ argumentIndex:2 ofReply:0];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v9 setClasses:v15 forSelector:sel_snapshotOfCluster_didChangeTo_ argumentIndex:1 ofReply:0];

  [v4 setRemoteObjectInterface:v9];
}

- (void)_clientLost:(id)a3
{
  v5.receiver = self;
  v5.super_class = CORoleService;
  v4 = a3;
  [(COService *)&v5 _clientLost:v4];
  [(CORoleService *)self _removeRoleObserverForClient:v4 ofMember:0 inCluster:0, v5.receiver, v5.super_class];
  [(CORoleService *)self _removeMemberObserverForClient:v4 ofRole:0 inCluster:0];
  [(CORoleService *)self _removeSnapshotObserverForClient:v4 inCluster:0];
}

- (void)_addOnAdded:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CFD078] pairCluster];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(COService *)self _clustersForAddOn:v4, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CBEB98] set];
        [(CORoleService *)self _updateSnapshots:v12 inCluster:v11];

        if ([v5 isEqual:v11])
        {
          [v4 _enableForPairLegacySupport];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v4 setDelegate:self];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDelegate:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(COService *)self _clustersForAddOn:v4, 0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CORoleService *)self _updateSnapshots:0 inCluster:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_applicableToCluster:(id)a3
{
  v3 = [a3 configuration];
  v4 = ([v3 requiredServices] & 0xC) != 0;

  return v4;
}

- (void)registerForRoleChangesOfMember:(id)a3 inCluster:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(COService *)self currentClient];
  if (v7)
  {
    v8 = [(CORoleService *)self _roleOfMember:v9 inCluster:v6];
    [(CORoleService *)self _notifyRoleObserver:v7 roleOfMember:v9 inCluster:v6 didChangeTo:v8];
    [(CORoleService *)self _addRoleObserverForClient:v7 ofMember:v9 inCluster:v6];
  }
}

- (void)unregisterForRoleChangesOfMember:(id)a3 inCluster:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(COService *)self currentClient];
  if (v7)
  {
    [(CORoleService *)self _removeRoleObserverForClient:v7 ofMember:v8 inCluster:v6];
  }
}

- (void)registerForMemberChangesWithRole:(id)a3 inCluster:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(COService *)self currentClient];
  if (v7)
  {
    v8 = [(CORoleService *)self _membersWithRole:v9 inCluster:v6];
    [(CORoleService *)self _notifyMemberObserver:v7 membersWithRole:v9 inCluster:v6 didChangeTo:v8];
    [(CORoleService *)self _addMemberObserverForClient:v7 ofRole:v9 inCluster:v6];
  }
}

- (void)unregisterForMemberChangesWithRole:(id)a3 inCluster:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(COService *)self currentClient];
  if (v7)
  {
    [(CORoleService *)self _removeMemberObserverForClient:v7 ofRole:v8 inCluster:v6];
  }
}

- (void)registerForSnapshotChangesInCluster:(id)a3
{
  v6 = a3;
  v4 = [(COService *)self currentClient];
  if (v4)
  {
    v5 = [(CORoleService *)self _snapshotsForCluster:v6];
    [(CORoleService *)self _notifySnapshotObserver:v4 snapshotOfCluster:v6 didChangeTo:v5];
    [(CORoleService *)self _addSnapshotObserverForClient:v4 inCluster:v6];
  }
}

- (void)unregisterForSnapshotChangesInCluster:(id)a3
{
  v5 = a3;
  v4 = [(COService *)self currentClient];
  if (v4)
  {
    [(CORoleService *)self _removeSnapshotObserverForClient:v4 inCluster:v5];
  }
}

- (void)addOn:(id)a3 stateChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CORoleService_addOn_stateChanged___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __36__CORoleService_addOn_stateChanged___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) _clustersForAddOn:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = COCoreLogForCategory(4);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = *(a1 + 48);
          *buf = 134218498;
          v17 = v9;
          v18 = 2112;
          v19 = v7;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Snapshot changed in Cluster(%@), now %@", buf, 0x20u);
        }

        [*(a1 + 32) _updateSnapshots:*(a1 + 48) inCluster:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateSnapshots:(id)a3 inCluster:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218498;
    v15 = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p will process snapshot update for Cluster(%@) to Snapshots(%@)", &v14, 0x20u);
  }

  v9 = [(CORoleService *)self _snapshotsForCluster:v7];
  v10 = [(CORoleService *)self snapshotState];
  v11 = [v10 mutableCopy];

  if (v6)
  {
    [v11 setObject:v6 forKey:v7];
  }

  else
  {
    v12 = COCoreLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = self;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p removing snaphots for Cluster(%@)", &v14, 0x16u);
    }

    [v11 removeObjectForKey:v7];
    v6 = [MEMORY[0x277CBEB98] set];
  }

  [(CORoleService *)self setSnapshotState:v11];
  [(CORoleService *)self _notifySnapshotObserversSnapshotOfCluster:v7 didChangeTo:v6];
  [(CORoleService *)self _identifyAndNotifyMemberChangesFromSnapshot:v9 inCluster:v7];
  [(CORoleService *)self _identifyAndNotifyRoleChangesFromSnapshot:v9 inCluster:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_identifyAndNotifyRoleChangesFromSnapshot:(id)a3 inCluster:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORoleService *)self roleObservers];
  v9 = [v8 objectForKey:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [(CORoleService *)self _roleOfMember:v15 inSnapshots:v6, v19];
        v17 = [(CORoleService *)self _roleOfMember:v15 inCluster:v7];
        if (([v17 isEqual:v16] & 1) == 0)
        {
          [(CORoleService *)self _notifyRoleObserversRoleOfMember:v15 inCluster:v7 didChangeTo:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_identifyAndNotifyMemberChangesFromSnapshot:(id)a3 inCluster:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORoleService *)self memberObservers];
  v9 = [v8 objectForKey:v7];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    v34 = self;
    v35 = v6;
    v32 = *v50;
    v33 = v7;
    do
    {
      v13 = 0;
      v36 = v11;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        v15 = [(CORoleService *)self _membersWithRole:v14 inSnapshots:v6];
        v16 = [(CORoleService *)self _membersWithRole:v14 inCluster:v7];
        v17 = [v15 count];
        if (v17 != [v16 count])
        {
          goto LABEL_25;
        }

        v40 = v14;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v18 = v15;
        v19 = [v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v19)
        {
          v20 = v19;
          v38 = v13;
          v39 = v15;
          v21 = *v46;
          while (1)
          {
            v22 = 0;
LABEL_10:
            if (*v46 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = v18;
            v24 = *(*(&v45 + 1) + 8 * v22);
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v25 = v16;
            v26 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
            if (!v26)
            {
              break;
            }

            v27 = v26;
            v28 = *v42;
LABEL_14:
            v29 = 0;
            while (1)
            {
              if (*v42 != v28)
              {
                objc_enumerationMutation(v25);
              }

              if ([v24 isSameDeviceAsMember:*(*(&v41 + 1) + 8 * v29)])
              {
                break;
              }

              if (v27 == ++v29)
              {
                v27 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
                if (v27)
                {
                  goto LABEL_14;
                }

                goto LABEL_24;
              }
            }

            ++v22;
            v18 = v23;
            if (v22 != v20)
            {
              goto LABEL_10;
            }

            v20 = [v23 countByEnumeratingWithState:&v45 objects:v54 count:16];
            if (!v20)
            {

              self = v34;
              v6 = v35;
              v12 = v32;
              v7 = v33;
              v11 = v36;
              v13 = v38;
              v15 = v39;
              goto LABEL_26;
            }
          }

LABEL_24:

          self = v34;
          v6 = v35;
          v12 = v32;
          v7 = v33;
          v11 = v36;
          v15 = v39;
          v14 = v40;
          v13 = v38;
LABEL_25:
          [(CORoleService *)self _notifyMemberObserversMembersWithRole:v14 inCluster:v7 didChangeTo:v16];
          goto LABEL_26;
        }

LABEL_26:
        ++v13;
      }

      while (v13 != v11);
      v30 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      v11 = v30;
    }

    while (v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_roleOfMember:(id)a3 inCluster:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORoleService *)self _snapshotsForCluster:v7];
  v9 = [(CORoleService *)self _roleOfMember:v6 inSnapshots:v8];
  if ([v9 isUnknown] && +[CODeviceClass isAudioAccessory](CODeviceClass, "isAudioAccessory"))
  {
    v10 = [MEMORY[0x277CFD078] pairCluster];
    if ([v7 isEqual:v10])
    {
      v11 = [objc_alloc(MEMORY[0x277CFD0A0]) initWithRoleFlags:1];

      v9 = v11;
    }
  }

  v12 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218754;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p Member(%@) in Cluster(%@) has Role(%@)", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_roleOfMember:(id)a3 inSnapshots:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      v13 = [v12 member];
      v14 = [v13 isSameDeviceAsMember:v6];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = [v12 role];

    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v15 = [MEMORY[0x277CFD0A0] roleForUnknown];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218754;
    v24 = self;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_error_impl(&dword_244378000, v16, OS_LOG_TYPE_ERROR, "%p synthesized Role(%@) for Member(%@) missing from Snapshots(%@)", buf, 0x2Au);
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_membersWithRole:(id)a3 inCluster:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORoleService *)self _snapshotsForCluster:v7];
  v9 = [(CORoleService *)self _membersWithRole:v6 inSnapshots:v8];
  v10 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218754;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%p Role(%@) is associated with Members(%@) in Cluster(%@)", &v13, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_membersWithRole:(id)a3 inSnapshots:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 role];
        if ([v14 satisfiesRole:v5])
        {
          v15 = [v13 member];
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

- (id)_snapshotsForCluster:(id)a3
{
  v4 = a3;
  v5 = [(CORoleService *)self snapshotState];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (void)_notifyRoleObserversRoleOfMember:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CORoleService *)self roleObservers];
  v12 = [v11 objectForKey:v9];

  v13 = [v12 objectForKey:v8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CORoleService *)self _notifyRoleObserver:*(*(&v19 + 1) + 8 * v17++) roleOfMember:v8 inCluster:v9 didChangeTo:v10];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyMemberObserversMembersWithRole:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CORoleService *)self memberObservers];
  v12 = [v11 objectForKey:v9];

  v13 = [v12 objectForKey:v8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CORoleService *)self _notifyMemberObserver:*(*(&v19 + 1) + 8 * v17++) membersWithRole:v8 inCluster:v9 didChangeTo:v10];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifySnapshotObserversSnapshotOfCluster:(id)a3 didChangeTo:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORoleService *)self snapshotObservers];
  v9 = [v8 objectForKey:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CORoleService *)self _notifySnapshotObserver:*(*(&v16 + 1) + 8 * v14++) snapshotOfCluster:v6 didChangeTo:v7, v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_notifyRoleObserver:(id)a3 roleOfMember:(id)a4 inCluster:(id)a5 didChangeTo:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke;
  v21 = &unk_278E16A88;
  v22 = self;
  v14 = v10;
  v23 = v14;
  v15 = [(CORoleService *)self _remoteInterfaceForClient:v14 withErrorHandler:&v18];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v25 = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Role(%@) of Member(%@) in Cluster(%@)", buf, 0x34u);
  }

  [v15 roleOfMember:v11 inCluster:v12 didChangeTo:{v13, v18, v19, v20, v21, v22}];
  v17 = *MEMORY[0x277D85DE8];
}

void __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke_cold_1(a1);
  }
}

- (void)_notifyMemberObserver:(id)a3 membersWithRole:(id)a4 inCluster:(id)a5 didChangeTo:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke;
  v21 = &unk_278E16A88;
  v22 = self;
  v14 = v10;
  v23 = v14;
  v15 = [(CORoleService *)self _remoteInterfaceForClient:v14 withErrorHandler:&v18];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v25 = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Members(%@) with Role(%@) in Cluster(%@)", buf, 0x34u);
  }

  [v15 membersWithRole:v11 inCluster:v12 didChangeTo:{v13, v18, v19, v20, v21, v22}];
  v17 = *MEMORY[0x277D85DE8];
}

void __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke_cold_1(a1);
  }
}

- (void)_notifySnapshotObserver:(id)a3 snapshotOfCluster:(id)a4 didChangeTo:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke;
  v18 = &unk_278E16A88;
  v19 = self;
  v11 = v8;
  v20 = v11;
  v12 = [(CORoleService *)self _remoteInterfaceForClient:v11 withErrorHandler:&v15];
  v13 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v22 = self;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Snapshots(%@) in Cluster(%@)", buf, 0x2Au);
  }

  [v12 snapshotOfCluster:v9 didChangeTo:{v10, v15, v16, v17, v18, v19}];
  v14 = *MEMORY[0x277D85DE8];
}

void __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke_cold_1(a1);
  }
}

- (void)_addRoleObserverForClient:(id)a3 ofMember:(id)a4 inCluster:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(COService *)self _takeAssertionForCluster:v10];
  v11 = [(CORoleService *)self roleObservers];
  v12 = [v11 mutableCopy];

  v13 = [v12 objectForKey:v10];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = v15;
  v17 = [v15 objectForKey:v9];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v17 addObject:v8];
  [v16 setObject:v17 forKey:v9];
  [v12 setObject:v16 forKey:v10];
  [(CORoleService *)self setRoleObservers:v12];
  v18 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_debug_impl(&dword_244378000, v18, OS_LOG_TYPE_DEBUG, "%p added client %@ role observer for %@ in %@", &v20, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_removeRoleObserverForClient:(id)a3 ofMember:(id)a4 inCluster:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28 = a5;
  v30 = self;
  v10 = [(CORoleService *)self roleObservers];
  v23 = [v10 mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v25 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v25)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if (!v28 || [v28 isEqual:*(*(&v35 + 1) + 8 * i)])
        {
          v27 = i;
          v13 = [obj objectForKey:v12];
          v29 = [v13 mutableCopy];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v47 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            do
            {
              v18 = 0;
              do
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * v18);
                if (!v9 || [v9 isSameDeviceAsMember:*(*(&v31 + 1) + 8 * v18)])
                {
                  v20 = [v14 objectForKey:v19];
                  if ([v20 containsObject:v8])
                  {
                    v21 = COCoreLogForCategory(4);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134218754;
                      v40 = v30;
                      v41 = 2112;
                      v42 = v8;
                      v43 = 2112;
                      v44 = v9;
                      v45 = 2112;
                      v46 = v28;
                      _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p removed client %@ role observer for %@ in %@", buf, 0x2Au);
                    }

                    [v20 removeObject:v8];
                    [(COService *)v30 _releaseAssertionForCluster:v12];
                    if (![v20 count])
                    {
                      [v29 removeObjectForKey:v19];
                    }
                  }
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v31 objects:v47 count:16];
            }

            while (v16);
          }

          if ([v29 count])
          {
            [v23 setObject:v29 forKey:v12];
          }

          else
          {
            [v23 removeObjectForKey:v12];
          }

          i = v27;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v25);
  }

  [(CORoleService *)v30 setRoleObservers:v23];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addMemberObserverForClient:(id)a3 ofRole:(id)a4 inCluster:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(COService *)self _takeAssertionForCluster:v10];
  v11 = [(CORoleService *)self memberObservers];
  v12 = [v11 mutableCopy];

  v13 = [v12 objectForKey:v10];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = v15;
  v17 = [v15 objectForKey:v9];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v17 addObject:v8];
  [v16 setObject:v17 forKey:v9];
  [v12 setObject:v16 forKey:v10];
  [(CORoleService *)self setMemberObservers:v12];
  v18 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_debug_impl(&dword_244378000, v18, OS_LOG_TYPE_DEBUG, "%p added client %@ member observer for %@ in %@", &v20, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_removeMemberObserverForClient:(id)a3 ofRole:(id)a4 inCluster:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28 = a5;
  v30 = self;
  v10 = [(CORoleService *)self memberObservers];
  v23 = [v10 mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v25 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v25)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if (!v28 || [v28 isEqual:*(*(&v35 + 1) + 8 * i)])
        {
          v27 = i;
          v13 = [obj objectForKey:v12];
          v29 = [v13 mutableCopy];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v47 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            do
            {
              v18 = 0;
              do
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * v18);
                if (!v9 || [v9 isEqual:*(*(&v31 + 1) + 8 * v18)])
                {
                  v20 = [v14 objectForKey:v19];
                  if ([v20 containsObject:v8])
                  {
                    v21 = COCoreLogForCategory(4);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134218754;
                      v40 = v30;
                      v41 = 2112;
                      v42 = v8;
                      v43 = 2112;
                      v44 = v9;
                      v45 = 2112;
                      v46 = v28;
                      _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p removed client %@ member observer for %@ in %@", buf, 0x2Au);
                    }

                    [v20 removeObject:v8];
                    [(COService *)v30 _releaseAssertionForCluster:v12];
                    if (![v20 count])
                    {
                      [v29 removeObjectForKey:v19];
                    }
                  }
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v31 objects:v47 count:16];
            }

            while (v16);
          }

          if ([v29 count])
          {
            [v23 setObject:v29 forKey:v12];
          }

          else
          {
            [v23 removeObjectForKey:v12];
          }

          i = v27;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v25);
  }

  [(CORoleService *)v30 setMemberObservers:v23];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addSnapshotObserverForClient:(id)a3 inCluster:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(COService *)self _takeAssertionForCluster:v7];
  v8 = [(CORoleService *)self snapshotObservers];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [(CORoleService *)self snapshotObservers];
    v11 = [v10 mutableCopy];

    [v11 setObject:v9 forKey:v7];
    [(CORoleService *)self setSnapshotObservers:v11];
  }

  [v9 addObject:v6];
  v12 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218498;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p added client %@ snapshot observer in %@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeSnapshotObserverForClient:(id)a3 inCluster:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORoleService *)self snapshotObservers];
  v20 = [v8 mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v22;
    *&v11 = 134218498;
    v19 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        if (!v7 || [v7 isEqual:*(*(&v21 + 1) + 8 * v14)])
        {
          v16 = [v9 objectForKey:{v15, v19}];
          if ([v16 containsObject:v6])
          {
            v17 = COCoreLogForCategory(4);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = v19;
              v26 = self;
              v27 = 2112;
              v28 = v6;
              v29 = 2112;
              v30 = v7;
              _os_log_debug_impl(&dword_244378000, v17, OS_LOG_TYPE_DEBUG, "%p removed client %@ snapshot observer in %@", buf, 0x20u);
            }

            [v16 removeObject:v6];
            [(COService *)self _releaseAssertionForCluster:v15];
            if (![v16 count])
            {
              [v20 removeObjectForKey:v15];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v12);
  }

  [(CORoleService *)self setSnapshotObservers:v20];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)_remoteInterfaceForClient:(id)a3 withErrorHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];

  return v7;
}

void __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_8(&dword_244378000, v3, v4, "%p -> %@ remote Role failed: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_8(&dword_244378000, v3, v4, "%p -> %@ remote Member failed: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_8(&dword_244378000, v3, v4, "%p -> %@ remote snapshot failed: %@");
  v5 = *MEMORY[0x277D85DE8];
}

@end