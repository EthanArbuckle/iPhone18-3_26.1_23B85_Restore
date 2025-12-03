@interface CORoleService
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (CORoleService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (id)_membersWithRole:(id)role inCluster:(id)cluster;
- (id)_membersWithRole:(id)role inSnapshots:(id)snapshots;
- (id)_remoteInterfaceForClient:(id)client withErrorHandler:(id)handler;
- (id)_roleOfMember:(id)member inCluster:(id)cluster;
- (id)_roleOfMember:(id)member inSnapshots:(id)snapshots;
- (id)_snapshotsForCluster:(id)cluster;
- (void)_addMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_addRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster;
- (void)_addSnapshotObserverForClient:(id)client inCluster:(id)cluster;
- (void)_clientLost:(id)lost;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_identifyAndNotifyMemberChangesFromSnapshot:(id)snapshot inCluster:(id)cluster;
- (void)_identifyAndNotifyRoleChangesFromSnapshot:(id)snapshot inCluster:(id)cluster;
- (void)_notifyMemberObserver:(id)observer membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifyMemberObserversMembersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifyRoleObserver:(id)observer roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifyRoleObserversRoleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifySnapshotObserver:(id)observer snapshotOfCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifySnapshotObserversSnapshotOfCluster:(id)cluster didChangeTo:(id)to;
- (void)_removeMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster;
- (void)_removeRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster;
- (void)_removeSnapshotObserverForClient:(id)client inCluster:(id)cluster;
- (void)_updateSnapshots:(id)snapshots inCluster:(id)cluster;
- (void)addOn:(id)on stateChanged:(id)changed;
- (void)registerForMemberChangesWithRole:(id)role inCluster:(id)cluster;
- (void)registerForRoleChangesOfMember:(id)member inCluster:(id)cluster;
- (void)registerForSnapshotChangesInCluster:(id)cluster;
- (void)unregisterForMemberChangesWithRole:(id)role inCluster:(id)cluster;
- (void)unregisterForRoleChangesOfMember:(id)member inCluster:(id)cluster;
- (void)unregisterForSnapshotChangesInCluster:(id)cluster;
@end

@implementation CORoleService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.role" entitlement:@"com.apple.private.coordination.role"];
  v5 = objc_alloc_init(CORoleAddOnProvider);
  v6 = [[CORoleService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:delegateCopy];

  return v6;
}

- (CORoleService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = CORoleService;
  v5 = [(COService *)&v15 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    snapshotState = v5->_snapshotState;
    v5->_snapshotState = dictionary;

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    roleObservers = v5->_roleObservers;
    v5->_roleObservers = dictionary2;

    dictionary3 = [MEMORY[0x277CBEAC0] dictionary];
    memberObservers = v5->_memberObservers;
    v5->_memberObservers = dictionary3;

    dictionary4 = [MEMORY[0x277CBEAC0] dictionary];
    snapshotObservers = v5->_snapshotObservers;
    v5->_snapshotObservers = dictionary4;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v16.receiver = self;
  v16.super_class = CORoleService;
  connectionCopy = connection;
  [(COService *)&v16 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857DA598;
  v7 = [v5 interfaceWithProtocol:v6];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
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

  [connectionCopy setRemoteObjectInterface:v9];
}

- (void)_clientLost:(id)lost
{
  v5.receiver = self;
  v5.super_class = CORoleService;
  lostCopy = lost;
  [(COService *)&v5 _clientLost:lostCopy];
  [(CORoleService *)self _removeRoleObserverForClient:lostCopy ofMember:0 inCluster:0, v5.receiver, v5.super_class];
  [(CORoleService *)self _removeMemberObserverForClient:lostCopy ofRole:0 inCluster:0];
  [(CORoleService *)self _removeSnapshotObserverForClient:lostCopy inCluster:0];
}

- (void)_addOnAdded:(id)added
{
  v19 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  pairCluster = [MEMORY[0x277CFD078] pairCluster];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(COService *)self _clustersForAddOn:addedCopy, 0];
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

        if ([pairCluster isEqual:v11])
        {
          [addedCopy _enableForPairLegacySupport];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [addedCopy setDelegate:self];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)removed
{
  v16 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  [removedCopy setDelegate:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(COService *)self _clustersForAddOn:removedCopy, 0];
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

- (BOOL)_applicableToCluster:(id)cluster
{
  configuration = [cluster configuration];
  v4 = ([configuration requiredServices] & 0xC) != 0;

  return v4;
}

- (void)registerForRoleChangesOfMember:(id)member inCluster:(id)cluster
{
  memberCopy = member;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    v8 = [(CORoleService *)self _roleOfMember:memberCopy inCluster:clusterCopy];
    [(CORoleService *)self _notifyRoleObserver:currentClient roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:v8];
    [(CORoleService *)self _addRoleObserverForClient:currentClient ofMember:memberCopy inCluster:clusterCopy];
  }
}

- (void)unregisterForRoleChangesOfMember:(id)member inCluster:(id)cluster
{
  memberCopy = member;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    [(CORoleService *)self _removeRoleObserverForClient:currentClient ofMember:memberCopy inCluster:clusterCopy];
  }
}

- (void)registerForMemberChangesWithRole:(id)role inCluster:(id)cluster
{
  roleCopy = role;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    v8 = [(CORoleService *)self _membersWithRole:roleCopy inCluster:clusterCopy];
    [(CORoleService *)self _notifyMemberObserver:currentClient membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:v8];
    [(CORoleService *)self _addMemberObserverForClient:currentClient ofRole:roleCopy inCluster:clusterCopy];
  }
}

- (void)unregisterForMemberChangesWithRole:(id)role inCluster:(id)cluster
{
  roleCopy = role;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    [(CORoleService *)self _removeMemberObserverForClient:currentClient ofRole:roleCopy inCluster:clusterCopy];
  }
}

- (void)registerForSnapshotChangesInCluster:(id)cluster
{
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    v5 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
    [(CORoleService *)self _notifySnapshotObserver:currentClient snapshotOfCluster:clusterCopy didChangeTo:v5];
    [(CORoleService *)self _addSnapshotObserverForClient:currentClient inCluster:clusterCopy];
  }
}

- (void)unregisterForSnapshotChangesInCluster:(id)cluster
{
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    [(CORoleService *)self _removeSnapshotObserverForClient:currentClient inCluster:clusterCopy];
  }
}

- (void)addOn:(id)on stateChanged:(id)changed
{
  onCopy = on;
  changedCopy = changed;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CORoleService_addOn_stateChanged___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = onCopy;
  v13 = changedCopy;
  v9 = changedCopy;
  v10 = onCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)_updateSnapshots:(id)snapshots inCluster:(id)cluster
{
  v20 = *MEMORY[0x277D85DE8];
  snapshotsCopy = snapshots;
  clusterCopy = cluster;
  v8 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218498;
    selfCopy2 = self;
    v16 = 2112;
    v17 = clusterCopy;
    v18 = 2112;
    v19 = snapshotsCopy;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p will process snapshot update for Cluster(%@) to Snapshots(%@)", &v14, 0x20u);
  }

  v9 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
  snapshotState = [(CORoleService *)self snapshotState];
  v11 = [snapshotState mutableCopy];

  if (snapshotsCopy)
  {
    [v11 setObject:snapshotsCopy forKey:clusterCopy];
  }

  else
  {
    v12 = COCoreLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      selfCopy2 = self;
      v16 = 2112;
      v17 = clusterCopy;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p removing snaphots for Cluster(%@)", &v14, 0x16u);
    }

    [v11 removeObjectForKey:clusterCopy];
    snapshotsCopy = [MEMORY[0x277CBEB98] set];
  }

  [(CORoleService *)self setSnapshotState:v11];
  [(CORoleService *)self _notifySnapshotObserversSnapshotOfCluster:clusterCopy didChangeTo:snapshotsCopy];
  [(CORoleService *)self _identifyAndNotifyMemberChangesFromSnapshot:v9 inCluster:clusterCopy];
  [(CORoleService *)self _identifyAndNotifyRoleChangesFromSnapshot:v9 inCluster:clusterCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_identifyAndNotifyRoleChangesFromSnapshot:(id)snapshot inCluster:(id)cluster
{
  v24 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  clusterCopy = cluster;
  roleObservers = [(CORoleService *)self roleObservers];
  v9 = [roleObservers objectForKey:clusterCopy];

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
        v16 = [(CORoleService *)self _roleOfMember:v15 inSnapshots:snapshotCopy, v19];
        v17 = [(CORoleService *)self _roleOfMember:v15 inCluster:clusterCopy];
        if (([v17 isEqual:v16] & 1) == 0)
        {
          [(CORoleService *)self _notifyRoleObserversRoleOfMember:v15 inCluster:clusterCopy didChangeTo:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_identifyAndNotifyMemberChangesFromSnapshot:(id)snapshot inCluster:(id)cluster
{
  v56 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  clusterCopy = cluster;
  memberObservers = [(CORoleService *)self memberObservers];
  v9 = [memberObservers objectForKey:clusterCopy];

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
    selfCopy = self;
    v35 = snapshotCopy;
    v32 = *v50;
    v33 = clusterCopy;
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
        v15 = [(CORoleService *)self _membersWithRole:v14 inSnapshots:snapshotCopy];
        v16 = [(CORoleService *)self _membersWithRole:v14 inCluster:clusterCopy];
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

              self = selfCopy;
              snapshotCopy = v35;
              v12 = v32;
              clusterCopy = v33;
              v11 = v36;
              v13 = v38;
              v15 = v39;
              goto LABEL_26;
            }
          }

LABEL_24:

          self = selfCopy;
          snapshotCopy = v35;
          v12 = v32;
          clusterCopy = v33;
          v11 = v36;
          v15 = v39;
          v14 = v40;
          v13 = v38;
LABEL_25:
          [(CORoleService *)self _notifyMemberObserversMembersWithRole:v14 inCluster:clusterCopy didChangeTo:v16];
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

- (id)_roleOfMember:(id)member inCluster:(id)cluster
{
  v23 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  clusterCopy = cluster;
  v8 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
  v9 = [(CORoleService *)self _roleOfMember:memberCopy inSnapshots:v8];
  if ([v9 isUnknown] && +[CODeviceClass isAudioAccessory](CODeviceClass, "isAudioAccessory"))
  {
    pairCluster = [MEMORY[0x277CFD078] pairCluster];
    if ([clusterCopy isEqual:pairCluster])
    {
      v11 = [objc_alloc(MEMORY[0x277CFD0A0]) initWithRoleFlags:1];

      v9 = v11;
    }
  }

  v12 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218754;
    selfCopy = self;
    v17 = 2112;
    v18 = memberCopy;
    v19 = 2112;
    v20 = clusterCopy;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p Member(%@) in Cluster(%@) has Role(%@)", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_roleOfMember:(id)member inSnapshots:(id)snapshots
{
  v32 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  snapshotsCopy = snapshots;
  v8 = [snapshotsCopy countByEnumeratingWithState:&v19 objects:v31 count:16];
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
        objc_enumerationMutation(snapshotsCopy);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      member = [v12 member];
      v14 = [member isSameDeviceAsMember:memberCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [snapshotsCopy countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    role = [v12 role];

    if (role)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  role = [MEMORY[0x277CFD0A0] roleForUnknown];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218754;
    selfCopy = self;
    v25 = 2112;
    v26 = role;
    v27 = 2112;
    v28 = memberCopy;
    v29 = 2112;
    v30 = snapshotsCopy;
    _os_log_error_impl(&dword_244378000, v16, OS_LOG_TYPE_ERROR, "%p synthesized Role(%@) for Member(%@) missing from Snapshots(%@)", buf, 0x2Au);
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return role;
}

- (id)_membersWithRole:(id)role inCluster:(id)cluster
{
  v21 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  clusterCopy = cluster;
  v8 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
  v9 = [(CORoleService *)self _membersWithRole:roleCopy inSnapshots:v8];
  v10 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218754;
    selfCopy = self;
    v15 = 2112;
    v16 = roleCopy;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%p Role(%@) is associated with Members(%@) in Cluster(%@)", &v13, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_membersWithRole:(id)role inSnapshots:(id)snapshots
{
  v23 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  snapshotsCopy = snapshots;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = snapshotsCopy;
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
        role = [v13 role];
        if ([role satisfiesRole:roleCopy])
        {
          member = [v13 member];
          [v7 addObject:member];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_snapshotsForCluster:(id)cluster
{
  clusterCopy = cluster;
  snapshotState = [(CORoleService *)self snapshotState];
  v6 = [snapshotState objectForKey:clusterCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (void)_notifyRoleObserversRoleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  clusterCopy = cluster;
  toCopy = to;
  roleObservers = [(CORoleService *)self roleObservers];
  v12 = [roleObservers objectForKey:clusterCopy];

  v13 = [v12 objectForKey:memberCopy];
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

        [(CORoleService *)self _notifyRoleObserver:*(*(&v19 + 1) + 8 * v17++) roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:toCopy];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyMemberObserversMembersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  clusterCopy = cluster;
  toCopy = to;
  memberObservers = [(CORoleService *)self memberObservers];
  v12 = [memberObservers objectForKey:clusterCopy];

  v13 = [v12 objectForKey:roleCopy];
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

        [(CORoleService *)self _notifyMemberObserver:*(*(&v19 + 1) + 8 * v17++) membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:toCopy];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifySnapshotObserversSnapshotOfCluster:(id)cluster didChangeTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  toCopy = to;
  snapshotObservers = [(CORoleService *)self snapshotObservers];
  v9 = [snapshotObservers objectForKey:clusterCopy];

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

        [(CORoleService *)self _notifySnapshotObserver:*(*(&v16 + 1) + 8 * v14++) snapshotOfCluster:clusterCopy didChangeTo:toCopy, v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_notifyRoleObserver:(id)observer roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to
{
  v34 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  memberCopy = member;
  clusterCopy = cluster;
  toCopy = to;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke;
  v21 = &unk_278E16A88;
  selfCopy = self;
  v14 = observerCopy;
  v23 = v14;
  v15 = [(CORoleService *)self _remoteInterfaceForClient:v14 withErrorHandler:&v18];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    selfCopy2 = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = toCopy;
    v30 = 2112;
    v31 = memberCopy;
    v32 = 2112;
    v33 = clusterCopy;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Role(%@) of Member(%@) in Cluster(%@)", buf, 0x34u);
  }

  [v15 roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:{toCopy, v18, v19, v20, v21, selfCopy}];
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

- (void)_notifyMemberObserver:(id)observer membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to
{
  v34 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  roleCopy = role;
  clusterCopy = cluster;
  toCopy = to;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke;
  v21 = &unk_278E16A88;
  selfCopy = self;
  v14 = observerCopy;
  v23 = v14;
  v15 = [(CORoleService *)self _remoteInterfaceForClient:v14 withErrorHandler:&v18];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    selfCopy2 = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = toCopy;
    v30 = 2112;
    v31 = roleCopy;
    v32 = 2112;
    v33 = clusterCopy;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Members(%@) with Role(%@) in Cluster(%@)", buf, 0x34u);
  }

  [v15 membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:{toCopy, v18, v19, v20, v21, selfCopy}];
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

- (void)_notifySnapshotObserver:(id)observer snapshotOfCluster:(id)cluster didChangeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clusterCopy = cluster;
  toCopy = to;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke;
  v18 = &unk_278E16A88;
  selfCopy = self;
  v11 = observerCopy;
  v20 = v11;
  v12 = [(CORoleService *)self _remoteInterfaceForClient:v11 withErrorHandler:&v15];
  v13 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy2 = self;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = toCopy;
    v27 = 2112;
    v28 = clusterCopy;
    _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Snapshots(%@) in Cluster(%@)", buf, 0x2Au);
  }

  [v12 snapshotOfCluster:clusterCopy didChangeTo:{toCopy, v15, v16, v17, v18, selfCopy}];
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

- (void)_addRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  memberCopy = member;
  clusterCopy = cluster;
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  roleObservers = [(CORoleService *)self roleObservers];
  v12 = [roleObservers mutableCopy];

  v13 = [v12 objectForKey:clusterCopy];
  v14 = v13;
  if (v13)
  {
    dictionary = [v13 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = dictionary;
  v17 = [dictionary objectForKey:memberCopy];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v17 addObject:clientCopy];
  [v16 setObject:v17 forKey:memberCopy];
  [v12 setObject:v16 forKey:clusterCopy];
  [(CORoleService *)self setRoleObservers:v12];
  v18 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    selfCopy = self;
    v22 = 2112;
    v23 = clientCopy;
    v24 = 2112;
    v25 = memberCopy;
    v26 = 2112;
    v27 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v18, OS_LOG_TYPE_DEBUG, "%p added client %@ role observer for %@ in %@", &v20, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_removeRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster
{
  v49 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  memberCopy = member;
  clusterCopy = cluster;
  selfCopy = self;
  roleObservers = [(CORoleService *)self roleObservers];
  v23 = [roleObservers mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = roleObservers;
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
        if (!clusterCopy || [clusterCopy isEqual:*(*(&v35 + 1) + 8 * i)])
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
                if (!memberCopy || [memberCopy isSameDeviceAsMember:*(*(&v31 + 1) + 8 * v18)])
                {
                  v20 = [v14 objectForKey:v19];
                  if ([v20 containsObject:clientCopy])
                  {
                    v21 = COCoreLogForCategory(4);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134218754;
                      v40 = selfCopy;
                      v41 = 2112;
                      v42 = clientCopy;
                      v43 = 2112;
                      v44 = memberCopy;
                      v45 = 2112;
                      v46 = clusterCopy;
                      _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p removed client %@ role observer for %@ in %@", buf, 0x2Au);
                    }

                    [v20 removeObject:clientCopy];
                    [(COService *)selfCopy _releaseAssertionForCluster:v12];
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

  [(CORoleService *)selfCopy setRoleObservers:v23];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  roleCopy = role;
  clusterCopy = cluster;
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  memberObservers = [(CORoleService *)self memberObservers];
  v12 = [memberObservers mutableCopy];

  v13 = [v12 objectForKey:clusterCopy];
  v14 = v13;
  if (v13)
  {
    dictionary = [v13 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = dictionary;
  v17 = [dictionary objectForKey:roleCopy];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v17 addObject:clientCopy];
  [v16 setObject:v17 forKey:roleCopy];
  [v12 setObject:v16 forKey:clusterCopy];
  [(CORoleService *)self setMemberObservers:v12];
  v18 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    selfCopy = self;
    v22 = 2112;
    v23 = clientCopy;
    v24 = 2112;
    v25 = roleCopy;
    v26 = 2112;
    v27 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v18, OS_LOG_TYPE_DEBUG, "%p added client %@ member observer for %@ in %@", &v20, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_removeMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster
{
  v49 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  roleCopy = role;
  clusterCopy = cluster;
  selfCopy = self;
  memberObservers = [(CORoleService *)self memberObservers];
  v23 = [memberObservers mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = memberObservers;
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
        if (!clusterCopy || [clusterCopy isEqual:*(*(&v35 + 1) + 8 * i)])
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
                if (!roleCopy || [roleCopy isEqual:*(*(&v31 + 1) + 8 * v18)])
                {
                  v20 = [v14 objectForKey:v19];
                  if ([v20 containsObject:clientCopy])
                  {
                    v21 = COCoreLogForCategory(4);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134218754;
                      v40 = selfCopy;
                      v41 = 2112;
                      v42 = clientCopy;
                      v43 = 2112;
                      v44 = roleCopy;
                      v45 = 2112;
                      v46 = clusterCopy;
                      _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p removed client %@ member observer for %@ in %@", buf, 0x2Au);
                    }

                    [v20 removeObject:clientCopy];
                    [(COService *)selfCopy _releaseAssertionForCluster:v12];
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

  [(CORoleService *)selfCopy setMemberObservers:v23];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addSnapshotObserverForClient:(id)client inCluster:(id)cluster
{
  v20 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  clusterCopy = cluster;
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  snapshotObservers = [(CORoleService *)self snapshotObservers];
  v9 = [snapshotObservers objectForKey:clusterCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    snapshotObservers2 = [(CORoleService *)self snapshotObservers];
    v11 = [snapshotObservers2 mutableCopy];

    [v11 setObject:v9 forKey:clusterCopy];
    [(CORoleService *)self setSnapshotObservers:v11];
  }

  [v9 addObject:clientCopy];
  v12 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218498;
    selfCopy = self;
    v16 = 2112;
    v17 = clientCopy;
    v18 = 2112;
    v19 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p added client %@ snapshot observer in %@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeSnapshotObserverForClient:(id)client inCluster:(id)cluster
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  clusterCopy = cluster;
  snapshotObservers = [(CORoleService *)self snapshotObservers];
  v20 = [snapshotObservers mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = snapshotObservers;
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
        if (!clusterCopy || [clusterCopy isEqual:*(*(&v21 + 1) + 8 * v14)])
        {
          v16 = [v9 objectForKey:{v15, v19}];
          if ([v16 containsObject:clientCopy])
          {
            v17 = COCoreLogForCategory(4);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = v19;
              selfCopy = self;
              v27 = 2112;
              v28 = clientCopy;
              v29 = 2112;
              v30 = clusterCopy;
              _os_log_debug_impl(&dword_244378000, v17, OS_LOG_TYPE_DEBUG, "%p removed client %@ snapshot observer in %@", buf, 0x20u);
            }

            [v16 removeObject:clientCopy];
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

- (id)_remoteInterfaceForClient:(id)client withErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [client connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

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