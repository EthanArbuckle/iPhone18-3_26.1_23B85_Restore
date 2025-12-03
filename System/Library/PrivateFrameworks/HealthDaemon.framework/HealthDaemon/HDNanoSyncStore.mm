@interface HDNanoSyncStore
+ (HDNanoSyncStore)nanoSyncStoreWithProfile:(id)profile device:(id)device delegate:(id)delegate tinkerPaired:(BOOL)paired;
+ (id)_observedDeviceProperties;
+ (id)orderedSyncEntitiesForProfile:(id)profile protocolVersion:(int)version companion:(BOOL)companion;
- (BOOL)resetProvenanceWithError:(id *)error;
- (BOOL)supportsSpeculativeChangesForSyncEntityClass:(Class)class;
- (BOOL)validatePairingUUIDsWithIncomingMessage:(id)message;
- (HDNanoSyncStoreDelegate)delegate;
- (HKNanoSyncPairedDeviceInfo)deviceInfo;
- (NSString)description;
- (id)_initWithIdentityServicesDevice:(void *)device nanoRegistryDevice:(void *)registryDevice pairingEntity:(void *)entity obliteratedDatabaseUUIDs:(int)ds protocolVersion:(void *)version delegate:(void *)delegate profile:(char)profile tinkerPairing:;
- (id)beginRestoreSessionWithUUID:(id)d timeout:(double)timeout timeoutHandler:(id)handler;
- (id)diagnosticDescription;
- (id)nanoSyncStoreForProtocolVersion:(int)version;
- (id)orderedSyncEntities;
- (id)profile;
- (int64_t)expectedSequenceNumberForSyncEntityClass:(Class)class;
- (void)_notifyIncomingSyncObservers;
- (void)_savePairingEntity;
- (void)_setRestoreState:(uint64_t)state;
- (void)addIncomingSyncObserverWithTimeout:(double)timeout timeoutHandler:(id)handler completion:(id)completion;
- (void)configureOutgoingResponse:(id)response;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)didReceiveRequestWithChangeSet:(id)set;
- (void)finishRestoreSessionWithError:(id)error;
- (void)invalidate;
- (void)prepareForObliteration;
- (void)removeExpiredIncomingSyncObservers;
- (void)setExpectedSequenceNumber:(int64_t)number forSyncEntityClass:(Class)class;
- (void)setHealthUUID:(id)d;
- (void)setPersistentUUID:(id)d;
@end

@implementation HDNanoSyncStore

- (HKNanoSyncPairedDeviceInfo)deviceInfo
{
  v3 = objc_alloc(MEMORY[0x277CCD6B0]);
  sourceBundleIdentifier = [(HDNanoSyncStore *)self sourceBundleIdentifier];
  v5 = [v3 initWithSourceBundleIdentifier:sourceBundleIdentifier systemBuildVersion:self->_remoteSystemBuildVersion productType:self->_remoteProductType active:-[HDNanoSyncStore isActive](self restoreComplete:"isActive") protocolVersion:{-[HDNanoSyncStore isRestoreComplete](self, "isRestoreComplete"), self->_protocolVersion}];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self)
  {
    nanoRegistryDevice = self->_nanoRegistryDevice;
  }

  else
  {
    nanoRegistryDevice = 0;
  }

  hd_productType = [(NRDevice *)nanoRegistryDevice hd_productType];
  if (self->_active)
  {
    v7 = "active";
  }

  else
  {
    v7 = "inactive";
  }

  if ([(HDNanoSyncStore *)self isAltAccount])
  {
    v8 = "alt account";
  }

  else
  {
    v8 = "standard account";
  }

  nanoRegistryUUID = [(HDNanoSyncStore *)self nanoRegistryUUID];
  uUIDString = [nanoRegistryUUID UUIDString];
  device = [(HDNanoSyncStore *)self device];
  hd_deviceIdentifier = [device hd_deviceIdentifier];
  v13 = [v3 stringWithFormat:@"<%@:%p %@ (%s) (%s) registry-id:%@ device-id:%@>", v4, self, hd_productType, v7, v8, uUIDString, hd_deviceIdentifier, 0];

  return v13;
}

- (id)orderedSyncEntities
{
  orderedSyncEntities = self->_orderedSyncEntities;
  if (!orderedSyncEntities)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v5 = [HDNanoSyncStore orderedSyncEntitiesForProfile:WeakRetained protocolVersion:self->_protocolVersion companion:self->_master];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__HDNanoSyncStore_orderedSyncEntities__block_invoke;
    v9[3] = &unk_278623A30;
    v9[4] = self;
    v6 = [v5 hk_filter:v9];
    v7 = self->_orderedSyncEntities;
    self->_orderedSyncEntities = v6;

    orderedSyncEntities = self->_orderedSyncEntities;
  }

  return orderedSyncEntities;
}

- (void)_notifyIncomingSyncObservers
{
  if (self)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v3 = [*(self + 80) dateByAddingTimeInterval:30.0];
    v4 = *(self + 56);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__HDNanoSyncStore__notifyIncomingSyncObservers__block_invoke;
    v7[3] = &unk_27862DBA8;
    v8 = v3;
    v9 = date;
    v5 = date;
    v6 = v3;
    [v4 hk_removeObjectsPassingTest:v7];
  }
}

+ (id)_observedDeviceProperties
{
  v4[2] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = *MEMORY[0x277D2BBA8];
  v4[0] = *MEMORY[0x277D2BC08];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)_initWithIdentityServicesDevice:(void *)device nanoRegistryDevice:(void *)registryDevice pairingEntity:(void *)entity obliteratedDatabaseUUIDs:(int)ds protocolVersion:(void *)version delegate:(void *)delegate profile:(char)profile tinkerPairing:
{
  v16 = a2;
  deviceCopy = device;
  obj = registryDevice;
  registryDeviceCopy = registryDevice;
  entityCopy = entity;
  versionCopy = version;
  delegateCopy = delegate;
  if (!self)
  {
    goto LABEL_11;
  }

  if (deviceCopy)
  {
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_13:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__initWithIdentityServicesDevice_nanoRegistryDevice_pairingEntity_obliteratedDatabaseUUIDs_protocolVersion_delegate_profile_tinkerPairing_ object:self file:@"HDNanoSyncStore.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"identityServicesDevice != nil"}];

    if (registryDeviceCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:sel__initWithIdentityServicesDevice_nanoRegistryDevice_pairingEntity_obliteratedDatabaseUUIDs_protocolVersion_delegate_profile_tinkerPairing_ object:self file:@"HDNanoSyncStore.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"registryDevice != nil"}];

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (registryDeviceCopy)
  {
    goto LABEL_5;
  }

LABEL_14:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__initWithIdentityServicesDevice_nanoRegistryDevice_pairingEntity_obliteratedDatabaseUUIDs_protocolVersion_delegate_profile_tinkerPairing_ object:self file:@"HDNanoSyncStore.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"pairingEntity != nil"}];

LABEL_5:
  v42.receiver = self;
  v42.super_class = HDNanoSyncStore;
  v22 = objc_msgSendSuper2(&v42, sel_init);
  self = v22;
  if (v22)
  {
    objc_storeWeak(v22 + 1, delegateCopy);
    objc_storeWeak(self + 17, versionCopy);
    *(self + 115) = [versionCopy isMaster];
    hd_systemBuildVersion = [deviceCopy hd_systemBuildVersion];
    v24 = self[2];
    self[2] = hd_systemBuildVersion;

    hd_productType = [deviceCopy hd_productType];
    v26 = self[3];
    self[3] = hd_productType;

    v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2D6D2220-64DB-408A-89ED-ED05391073E8"];
    *(self + 113) = [deviceCopy supportsCapability:v27];

    v28 = [entityCopy copy];
    v29 = self[20];
    self[20] = v28;

    *(self + 12) = ds;
    *(self + 52) = [v16 isActive];
    isRestoreComplete = [registryDeviceCopy isRestoreComplete];
    v31 = 3;
    if (!isRestoreComplete)
    {
      v31 = 1;
    }

    self[18] = v31;
    objc_storeStrong(self + 16, device);
    objc_storeStrong(self + 4, obj);
    *(self + 112) = profile;
    if ((profile & 1) == 0)
    {
      v32 = self[16];
      v33 = +[HDNanoSyncStore _observedDeviceProperties];
      [v32 addPropertyObserver:self forPropertyChanges:v33];
    }

    objc_storeStrong(self + 15, a2);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v35 = self[5];
    self[5] = dictionary;
  }

LABEL_11:

  return self;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoSyncStore.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"_invalidated"}];
  }

  v5.receiver = self;
  v5.super_class = HDNanoSyncStore;
  [(HDNanoSyncStore *)&v5 dealloc];
}

+ (HDNanoSyncStore)nanoSyncStoreWithProfile:(id)profile device:(id)device delegate:(id)delegate tinkerPaired:(BOOL)paired
{
  v133 = *MEMORY[0x277D85DE8];
  if (!paired)
  {
    profileCopy2 = profile;
    deviceCopy2 = device;
    delegateCopy2 = delegate;
    v22 = objc_opt_self();
    if (deviceCopy2)
    {
      if (delegateCopy2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__nanoSyncStoreWithProfile_device_delegate_ object:v22 file:@"HDNanoSyncStore.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"identityServicesDevice != nil"}];

      if (delegateCopy2)
      {
        goto LABEL_10;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__nanoSyncStoreWithProfile_device_delegate_ object:v22 file:@"HDNanoSyncStore.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_10:
    daemon = [profileCopy2 daemon];
    nanoPairedDeviceRegistry = [daemon nanoPairedDeviceRegistry];
    v14 = [nanoPairedDeviceRegistry hd_deviceForIDSDevice:deviceCopy2];

    if (!v14)
    {
      _HKInitializeLogging();
      v41 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v38 = v41;
        hd_shortDescription = [deviceCopy2 hd_shortDescription];
        *buf = 138543362;
        v130 = hd_shortDescription;
        v40 = "unable to find NanoRegistry device for IDS device %{public}@";
        goto LABEL_26;
      }

LABEL_30:
      v18 = 0;
      goto LABEL_112;
    }

    v24 = [v14 valueForProperty:*MEMORY[0x277D2BB48]];
    bOOLValue = [v24 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      _HKInitializeLogging();
      v42 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v38 = v42;
        hd_shortDescription = [deviceCopy2 hd_shortDescription];
        *buf = 138543362;
        v130 = hd_shortDescription;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "NanoRegistry device for IDS device %{public}@ is not paired", buf, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    hd_pairingID = [v14 hd_pairingID];
    if (!hd_pairingID)
    {
      _HKInitializeLogging();
      v44 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v96 = v44;
        hd_shortDescription2 = [v14 hd_shortDescription];
        *buf = 138543362;
        v130 = hd_shortDescription2;
        _os_log_error_impl(&dword_228986000, v96, OS_LOG_TYPE_ERROR, "missing pairing ID for NanoRegistry device %{public}@", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_111;
    }

    isMaster = [delegateCopy2 isMaster];
    hd_systemBuildVersion = [v14 hd_systemBuildVersion];
    if (isMaster)
    {
      v29 = [MEMORY[0x277CCDD30] nanoSyncProtocolVersionForWatchSystemBuildVersion:hd_systemBuildVersion];
      if (v29 >= 6)
      {
        v113 = v29;
        v115 = hd_systemBuildVersion;
        v30 = [daemon healthDomainAccessorWithPairedDevice:v14];
        v31 = [v30 stringForKey:@"LastRegistryUUID"];
        v117 = hd_pairingID;
        uUIDString = [hd_pairingID UUIDString];
        v123 = uUIDString;
        v119 = v31;
        if (v31 && (v33 = uUIDString, ![uUIDString isEqualToString:v31]))
        {
          v125 = 0;
          v35 = 0;
          if (v33 == v31)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v34 = [v30 stringForKey:@"PersistentPairingUUID"];
          if (v34)
          {
            v35 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v34];
            if (!v35)
            {
              _HKInitializeLogging();
              v36 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v130 = v34;
                _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "invalid persistent pairing UUID string %{public}@ in NPS", buf, 0xCu);
              }

              v35 = 0;
              v31 = v119;
            }
          }

          else
          {
            v35 = 0;
          }

          v125 = [v30 stringForKey:@"DeviceSourceIdentifier"];

          v33 = v123;
          if (v123 == v31)
          {
LABEL_49:
            if (v35)
            {
LABEL_58:
              v114 = daemon;
              [v30 stringArrayForKey:@"ObliteratedDatabaseUUIDs"];
              v53 = v52 = v31;
              v121 = [v53 hk_map:&__block_literal_global_229];

              hd_pairingID = v117;
LABEL_59:
              database = [profileCopy2 database];
              v128 = 0;
              v54 = [HDNanoPairingEntity nanoPairingEntityWithRegistryUUID:hd_pairingID profile:profileCopy2 error:&v128];
              v55 = v128;
              v124 = v54;
              if (v54)
              {
                v56 = isMaster;
              }

              else
              {
                v56 = 0;
              }

              v57 = v35;
              if (!v35)
              {
                v116 = v55;
LABEL_100:
                v58 = v121;
                goto LABEL_101;
              }

              v58 = v121;
              if (!v56)
              {
                v116 = v55;
LABEL_101:
                v88 = v124;
                if (v124)
                {
                  v89 = [HDNanoSyncStore alloc];
                  if (v58)
                  {
                    v90 = v58;
                  }

                  else
                  {
                    v90 = MEMORY[0x277CBEBF8];
                  }

                  v91 = [MEMORY[0x277CBEB98] setWithArray:v90];
                  v92 = [(HDNanoSyncStore *)&v89->super.isa _initWithIdentityServicesDevice:deviceCopy2 nanoRegistryDevice:v14 pairingEntity:v124 obliteratedDatabaseUUIDs:v91 protocolVersion:v113 delegate:delegateCopy2 profile:profileCopy2 tinkerPairing:0];
                }

                else
                {
                  _HKInitializeLogging();
                  v93 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v100 = v93;
                    hd_shortDescription3 = [deviceCopy2 hd_shortDescription];
                    *buf = 138543618;
                    v130 = hd_shortDescription3;
                    v131 = 2114;
                    v132 = v116;
                    _os_log_error_impl(&dword_228986000, v100, OS_LOG_TYPE_ERROR, "failed to create sync store for IDS device %{public}@: %{public}@", buf, 0x16u);
                  }

                  v92 = 0;
                  v58 = v121;
                  v88 = 0;
                }

                v18 = v92;

                daemon = v114;
                hd_systemBuildVersion = v115;
LABEL_110:

LABEL_111:
                goto LABEL_112;
              }

              v110 = v55;
              v59 = v54;
              persistentUUID = [v54 persistentUUID];
              v61 = persistentUUID;
              v118 = hd_pairingID;
              if (persistentUUID == v35)
              {

                v64 = 0;
              }

              else
              {
                persistentUUID2 = [v54 persistentUUID];
                v63 = [persistentUUID2 isEqual:v35];

                if (v63)
                {
                  v64 = 0;
                }

                else
                {
                  [v54 setPersistentUUID:v35];
                  [v54 setRestoreComplete:0];
                  v64 = 1;
                }

                v57 = v35;
              }

              defaultSourceBundleIdentifier = [v124 defaultSourceBundleIdentifier];
              v66 = defaultSourceBundleIdentifier;
              v67 = v125;
              v112 = v57;
              if (defaultSourceBundleIdentifier == v125)
              {

                goto LABEL_79;
              }

              if (v125)
              {
                defaultSourceBundleIdentifier2 = [v124 defaultSourceBundleIdentifier];
                v69 = [defaultSourceBundleIdentifier2 isEqualToString:v125];

                v67 = v125;
                if (v69)
                {
LABEL_79:
                  v125 = v67;
                  v70 = v64;
                  hd_deviceIdentifier = [deviceCopy2 hd_deviceIdentifier];
                  deviceIdentifier = [v124 deviceIdentifier];
                  v73 = deviceIdentifier;
                  if (deviceIdentifier == hd_deviceIdentifier)
                  {

                    goto LABEL_86;
                  }

                  if (hd_deviceIdentifier)
                  {
                    deviceIdentifier2 = [v124 deviceIdentifier];
                    v75 = [deviceIdentifier2 isEqualToString:hd_deviceIdentifier];

                    if (v75)
                    {
LABEL_86:
                      healthDatabaseUUID = [v124 healthDatabaseUUID];

                      v109 = hd_deviceIdentifier;
                      if (healthDatabaseUUID)
                      {
                        if (!v70)
                        {
                          v116 = v110;
LABEL_92:
                          sourceManager = [profileCopy2 sourceManager];
                          hd_name = [v14 hd_name];
                          hd_productType = [v14 hd_productType];
                          v82 = hd_productType;
                          if (!hd_name || !hd_productType)
                          {
                            _HKInitializeLogging();
                            v83 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138543618;
                              v130 = hd_name;
                              v131 = 2114;
                              v132 = v82;
                              _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "unexpectedly nil NRDevice properties: name=%{public}@, productType=%{public}@", buf, 0x16u);
                            }
                          }

                          v124 = v59;
                          v126 = 0;
                          v84 = sourceManager;
                          v85 = [sourceManager sourceForAppleDeviceWithUUID:v112 identifier:v125 name:hd_name productType:v82 createIfNecessary:1 error:&v126];
                          v86 = v126;
                          if (!v85)
                          {
                            _HKInitializeLogging();
                            v87 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                            {
                              v104 = v87;
                              hd_shortDescription4 = [v14 hd_shortDescription];
                              *buf = 138543618;
                              v130 = hd_shortDescription4;
                              v131 = 2114;
                              v132 = v86;
                              _os_log_error_impl(&dword_228986000, v104, OS_LOG_TYPE_ERROR, "failed to get source for paired device %{public}@: %{public}@", buf, 0x16u);
                            }
                          }

                          hd_pairingID = v118;
                          v57 = v112;
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        uUID = [MEMORY[0x277CCAD78] UUID];
                        [v124 setHealthDatabaseUUID:uUID];
                      }

                      v127 = v110;
                      v78 = [v124 saveWithHealthDatabase:database error:&v127];
                      v116 = v127;

                      if ((v78 & 1) == 0)
                      {

                        v59 = 0;
                      }

                      goto LABEL_92;
                    }
                  }

                  else
                  {
                  }

                  [v124 setDeviceIdentifier:hd_deviceIdentifier];
                  v70 = 1;
                  goto LABEL_86;
                }
              }

              else
              {
              }

              [v124 setDefaultSourceBundleIdentifier:v67];
              v64 = 1;
              goto LABEL_79;
            }

            goto LABEL_52;
          }

          if (!v31)
          {
            goto LABEL_51;
          }
        }

        if ([v33 isEqualToString:v31])
        {
          goto LABEL_49;
        }

LABEL_51:
        [v30 setObject:v33 forKey:@"LastRegistryUUID"];
        if (v35)
        {
LABEL_53:
          synchronize = [v30 synchronize];
          if (synchronize)
          {
            _HKInitializeLogging();
            v51 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v102 = v51;
              v103 = objc_opt_class();
              *buf = 138543618;
              v130 = v103;
              v131 = 2114;
              v132 = synchronize;
              v122 = v103;
              _os_log_error_impl(&dword_228986000, v102, OS_LOG_TYPE_ERROR, "failed to synchronize %{public}@: %{public}@", buf, 0x16u);
            }

            v125 = 0;
            v35 = 0;
            v31 = v119;
          }

          v33 = v123;
          goto LABEL_58;
        }

LABEL_52:
        v47 = v117;
        v48 = [MEMORY[0x277CCDA00] _generateIdentifierForAppleDeviceWithUUID:v47];

        v35 = v47;
        uUIDString2 = [v47 UUIDString];
        [v30 setObject:uUIDString2 forKey:@"PersistentPairingUUID"];

        [v30 setObject:v48 forKey:@"DeviceSourceIdentifier"];
        v125 = v48;
        v31 = v119;
        goto LABEL_53;
      }
    }

    else
    {
      v45 = [MEMORY[0x277CCDD30] nanoSyncProtocolVersionForCompanionSystemBuildVersion:hd_systemBuildVersion];
      if (v45 > 7)
      {
        v114 = daemon;
        v115 = hd_systemBuildVersion;
        v113 = v45;
        v121 = 0;
        v125 = 0;
        v35 = 0;
        goto LABEL_59;
      }
    }

    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v98 = v46;
      hd_shortDescription5 = [deviceCopy2 hd_shortDescription];
      *buf = 138543618;
      v130 = hd_shortDescription5;
      v131 = 2114;
      v132 = hd_systemBuildVersion;
      _os_log_error_impl(&dword_228986000, v98, OS_LOG_TYPE_ERROR, "IDS device %{public}@ has unsupported system build version %{public}@", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_110;
  }

  profileCopy2 = profile;
  deviceCopy2 = device;
  delegateCopy2 = delegate;
  v11 = objc_opt_self();
  if (deviceCopy2)
  {
    if (delegateCopy2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__tinkerNanoSyncStoreWithProfile_device_delegate_ object:v11 file:@"HDNanoSyncStore.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"idsDevice != nil"}];

    if (delegateCopy2)
    {
      goto LABEL_4;
    }
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:sel__tinkerNanoSyncStoreWithProfile_device_delegate_ object:v11 file:@"HDNanoSyncStore.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_4:
  daemon = [profileCopy2 daemon];
  nanoPairedDeviceRegistry2 = [daemon nanoPairedDeviceRegistry];
  v14 = [nanoPairedDeviceRegistry2 hd_deviceForIDSDevice:deviceCopy2];

  if (!v14)
  {
    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      hd_shortDescription = [deviceCopy2 hd_shortDescription];
      *buf = 138543362;
      v130 = hd_shortDescription;
      v40 = "Unable to find NanoRegistry device for IDS device %{public}@ (#t0)";
LABEL_26:
      _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, v40, buf, 0xCu);
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  hd_pairingID2 = [v14 hd_pairingID];
  v128 = 0;
  v16 = [HDNanoPairingEntity nanoPairingEntityWithRegistryUUID:hd_pairingID2 profile:profileCopy2 error:&v128];
  v17 = v128;

  if (v16)
  {
    v18 = [[HDNanoSyncStore alloc] _initWithIdentityServicesDevice:deviceCopy2 nanoRegistryDevice:v14 pairingEntity:v16 obliteratedDatabaseUUIDs:0 protocolVersion:17 delegate:delegateCopy2 profile:profileCopy2 tinkerPairing:1];
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      hd_shortDescription6 = [deviceCopy2 hd_shortDescription];
      *buf = 138543618;
      v130 = v18;
      v131 = 2114;
      v132 = hd_shortDescription6;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Created sync store %{public}@ for IDS device %{public}@ (#t0)", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v130 = v17;
      _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "Unable to create entity for pairing %{public}@ (#t0)", buf, 0xCu);
    }

    v18 = 0;
  }

LABEL_112:
  v94 = *MEMORY[0x277D85DE8];

  return v18;
}

id __61__HDNanoSyncStore__nanoSyncStoreWithProfile_device_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)nanoSyncStoreForProtocolVersion:(int)version
{
  v5 = [HDNanoSyncStore alloc];
  identityServicesDevice = self->_identityServicesDevice;
  nanoRegistryDevice = self->_nanoRegistryDevice;
  pairingEntity = self->_pairingEntity;
  obliteratedDatabaseUUIDs = self->_obliteratedDatabaseUUIDs;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_loadWeakRetained(&self->_profile);
  v12 = [(HDNanoSyncStore *)&v5->super.isa _initWithIdentityServicesDevice:nanoRegistryDevice nanoRegistryDevice:pairingEntity pairingEntity:obliteratedDatabaseUUIDs obliteratedDatabaseUUIDs:version protocolVersion:WeakRetained delegate:v11 profile:self->_isTinkerPairing tinkerPairing:?];

  return v12;
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    nanoRegistryDevice = self->_nanoRegistryDevice;
    v5 = +[HDNanoSyncStore _observedDeviceProperties];
    [(NRDevice *)nanoRegistryDevice removePropertyObserver:self forPropertyChanges:v5];

    if (self->_restoreSession)
    {
      v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Canceled by invalidation"];
      [(HDNanoSyncStore *)self finishRestoreSessionWithError:v6];

      restoreSession = self->_restoreSession;
      self->_restoreSession = 0;
    }

    if ([(NSMutableArray *)self->_incomingSyncObserverTimers count])
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = objc_opt_class();
      nanoRegistryUUID = [(HDNanoSyncStore *)self nanoRegistryUUID];
      v11 = [v8 hk_errorForInvalidArgument:@"@" class:v9 selector:a2 format:{@"Sync store for device with pairingID %@ was invalidated", nanoRegistryUUID}];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = self->_incomingSyncObserverTimers;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v19 + 1) + 8 * v16++) invalidateAndInvokeCompletionWithError:v11];
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }

      incomingSyncObserverTimers = self->_incomingSyncObserverTimers;
      self->_incomingSyncObserverTimers = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)prepareForObliteration
{
  healthDatabaseUUID = [(HDNanoPairingEntity *)self->_pairingEntity healthDatabaseUUID];
  v4 = healthDatabaseUUID;
  if (healthDatabaseUUID)
  {
    v13 = healthDatabaseUUID;
    v5 = [(NSSet *)self->_obliteratedDatabaseUUIDs setByAddingObject:healthDatabaseUUID];
    obliteratedDatabaseUUIDs = self->_obliteratedDatabaseUUIDs;
    self->_obliteratedDatabaseUUIDs = v5;

    allObjects = [(NSSet *)self->_obliteratedDatabaseUUIDs allObjects];
    v8 = [allObjects hk_map:&__block_literal_global_362_0];

    profile = [(HDNanoSyncStore *)self profile];
    daemon = [profile daemon];
    v11 = [daemon healthDomainAccessorWithPairedDevice:self->_nanoRegistryDevice];

    if (v8)
    {
      [v11 setObject:v8 forKey:@"ObliteratedDatabaseUUIDs"];
    }

    else
    {
      [v11 removeObjectForKey:@"ObliteratedDatabaseUUIDs"];
    }

    synchronize = [v11 synchronize];

    v4 = v13;
  }

  MEMORY[0x2821F96F8](healthDatabaseUUID, v4);
}

- (id)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)setHealthUUID:(id)d
{
  dCopy = d;
  healthDatabaseUUID = [(HDNanoPairingEntity *)self->_pairingEntity healthDatabaseUUID];
  if (healthDatabaseUUID == dCopy)
  {

    goto LABEL_8;
  }

  if (!dCopy)
  {

    goto LABEL_7;
  }

  healthDatabaseUUID2 = [(HDNanoPairingEntity *)self->_pairingEntity healthDatabaseUUID];
  v6 = [healthDatabaseUUID2 isEqual:dCopy];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    [(HDNanoPairingEntity *)self->_pairingEntity setHealthDatabaseUUID:dCopy];
    [(HDNanoSyncStore *)self _savePairingEntity];
  }

LABEL_8:
}

- (void)_savePairingEntity
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 32);
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v10 = 0;
    v5 = [v2 saveWithHealthDatabase:database error:&v10];
    v6 = v10;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v9 = *(self + 32);
        *buf = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v6;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "failed to save pairing entity %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setPersistentUUID:(id)d
{
  dCopy = d;
  persistentUUID = [(HDNanoPairingEntity *)self->_pairingEntity persistentUUID];
  if (persistentUUID == dCopy)
  {

    goto LABEL_8;
  }

  if (!dCopy)
  {

    goto LABEL_7;
  }

  persistentUUID2 = [(HDNanoPairingEntity *)self->_pairingEntity persistentUUID];
  v6 = [persistentUUID2 isEqual:dCopy];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    [(HDNanoPairingEntity *)self->_pairingEntity setPersistentUUID:dCopy];
    [(HDNanoSyncStore *)self _savePairingEntity];
  }

LABEL_8:
}

- (id)beginRestoreSessionWithUUID:(id)d timeout:(double)timeout timeoutHandler:(id)handler
{
  handlerCopy = handler;
  v10 = MEMORY[0x277CCA9B8];
  dCopy = d;
  v12 = [v10 hk_error:100 description:@"Canceled by new restore session"];
  [(HDNanoSyncStore *)self finishRestoreSessionWithError:v12];

  v13 = [[HDNanoSyncRestoreSession alloc] initWithSyncStore:self sessionUUID:dCopy];
  restoreSession = self->_restoreSession;
  self->_restoreSession = v13;

  if (timeout > 0.0)
  {
    if (!handlerCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoSyncStore.m" lineNumber:611 description:{@"Invalid parameter not satisfying: %@", @"timeoutHandler != NULL"}];
    }

    [(HDNanoSyncRestoreSession *)self->_restoreSession scheduleTimeoutWithInterval:handlerCopy handler:timeout];
  }

  [(HDNanoSyncStore *)self _setRestoreState:?];
  v15 = self->_restoreSession;
  v16 = v15;

  return v15;
}

- (void)_setRestoreState:(uint64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  if (state && *(state + 144) != a2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(state + 144);
      if (v5 == 2)
      {
        v6 = @"In Progress";
      }

      else
      {
        v6 = @"Incomplete";
      }

      if (v5 == 3)
      {
        v7 = @"Complete";
      }

      else
      {
        v7 = v6;
      }

      v8 = v7;
      if (a2 == 2)
      {
        v9 = @"In Progress";
      }

      else
      {
        v9 = @"Incomplete";
      }

      if (a2 == 3)
      {
        v9 = @"Complete";
      }

      v10 = v9;
      *v14 = 138543874;
      *&v14[4] = state;
      *&v14[12] = 2112;
      *&v14[14] = v8;
      *&v14[22] = 2112;
      v15 = v10;
      v11 = v4;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "store %{public}@ transitioning from %@ to %@", v14, 0x20u);
    }

    *(state + 144) = a2;
    if ((a2 == 3) != [*(state + 32) isRestoreComplete])
    {
      [*(state + 32) setRestoreComplete:a2 == 3];
      [(HDNanoSyncStore *)state _savePairingEntity];
    }

    delegate = [state delegate];
    [delegate nanoSyncStore:state restoreStateDidChange:a2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)finishRestoreSessionWithError:(id)error
{
  restoreSession = self->_restoreSession;
  if (restoreSession)
  {
    [(HDNanoSyncRestoreSession *)restoreSession finishWithError:error];
    v6 = self->_restoreSession;
    self->_restoreSession = 0;
  }

  if (error)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [(HDNanoSyncStore *)self _setRestoreState:v7];
}

- (BOOL)resetProvenanceWithError:(id *)error
{
  p_pairingEntity = &self->_pairingEntity;
  pairingEntity = self->_pairingEntity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [(HDNanoPairingEntity *)pairingEntity resetProvenanceForProfile:WeakRetained error:error];

  if (v7)
  {
    objc_storeStrong(p_pairingEntity, v7);
  }

  return v7 != 0;
}

- (void)configureOutgoingResponse:(id)response
{
  responseCopy = response;
  [responseCopy setForceLocalDelivery:1];
  [responseCopy setSendTimeout:300.0];
}

- (void)didReceiveRequestWithChangeSet:(id)set
{
  v26 = *MEMORY[0x277D85DE8];
  setCopy = set;
  statusCode = [setCopy statusCode];
  decodedSessionUUID = [setCopy decodedSessionUUID];
  decodedSessionStartDate = [setCopy decodedSessionStartDate];
  decodedSessionError = [setCopy decodedSessionError];

  v9 = MEMORY[0x277CCC328];
  if (decodedSessionError && (_HKInitializeLogging(), v10 = *v9, os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR)))
  {
    v20 = v10;
    uUIDString = [decodedSessionUUID UUIDString];
    v22 = 138543618;
    v23 = uUIDString;
    v24 = 2114;
    v25 = decodedSessionError;
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "incoming sync session %{public}@ error: %{public}@", &v22, 0x16u);

    if (!decodedSessionUUID)
    {
      goto LABEL_6;
    }
  }

  else if (!decodedSessionUUID)
  {
    goto LABEL_6;
  }

  if (!decodedSessionStartDate || ([decodedSessionStartDate timeIntervalSinceNow], v11 > 3600.0))
  {
LABEL_6:
    _HKInitializeLogging();
    v12 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v18 = v12;
      uUIDString2 = [decodedSessionUUID UUIDString];
      v22 = 138543618;
      v23 = uUIDString2;
      v24 = 2114;
      v25 = decodedSessionStartDate;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "unexpected session UUID (%{public}@) or date (%{public}@) in change set", &v22, 0x16u);
    }

    goto LABEL_8;
  }

  lastIncompleteIncomingSyncUUID = self->_lastIncompleteIncomingSyncUUID;
  if (!lastIncompleteIncomingSyncUUID || (-[NSUUID isEqual:](lastIncompleteIncomingSyncUUID, "isEqual:", decodedSessionUUID) & 1) != 0 || [decodedSessionStartDate hk_isAfterDate:self->_lastIncompleteIncomingSyncDate])
  {
    if ((statusCode - 2) >= 2)
    {
      if (statusCode == 1)
      {
        objc_storeStrong(&self->_lastIncompleteIncomingSyncUUID, decodedSessionUUID);
        objc_storeStrong(&self->_lastIncompleteIncomingSyncDate, decodedSessionStartDate);
      }

      else
      {
        _HKInitializeLogging();
        v17 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v22 = 67109120;
          LODWORD(v23) = statusCode;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "unexpected change set status code %d", &v22, 8u);
        }
      }
    }

    else
    {
      objc_storeStrong(&self->_lastCompleteIncomingSyncDate, decodedSessionStartDate);
      objc_storeStrong(&self->_lastCompleteIncomingSyncError, decodedSessionError);
      v15 = self->_lastIncompleteIncomingSyncUUID;
      self->_lastIncompleteIncomingSyncUUID = 0;

      lastIncompleteIncomingSyncDate = self->_lastIncompleteIncomingSyncDate;
      self->_lastIncompleteIncomingSyncDate = 0;

      [(HDNanoSyncStore *)self _notifyIncomingSyncObservers];
    }
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addIncomingSyncObserverWithTimeout:(double)timeout timeoutHandler:(id)handler completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  completionCopy = completion;
  if (!self->_incomingSyncObserverTimers)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    incomingSyncObserverTimers = self->_incomingSyncObserverTimers;
    self->_incomingSyncObserverTimers = v10;
  }

  v12 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithCompletion:completionCopy];
  [(NSMutableArray *)self->_incomingSyncObserverTimers addObject:v12];
  [v12 startWithTimeoutInterval:handlerCopy handler:timeout];
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    v15 = v13;
    startDate = [v12 startDate];
    v17 = 134218498;
    v18 = v12;
    v19 = 2048;
    timeoutCopy = timeout;
    v21 = 2112;
    v22 = startDate;
    _os_log_debug_impl(&dword_228986000, v15, OS_LOG_TYPE_DEBUG, "added incoming sync observer %p with %.2f timeout at %@", &v17, 0x20u);
  }

  [(HDNanoSyncStore *)self _notifyIncomingSyncObservers];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HDNanoSyncStore__notifyIncomingSyncObservers__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v4 hk_isBeforeDate:*(a1 + 32)];

  if (v5)
  {
    [v3 invalidateAndInvokeCompletionWithError:0];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = v6;
      v11 = [v3 startDate];
      [v9 timeIntervalSinceDate:v11];
      v13 = 134218240;
      v14 = v3;
      v15 = 2048;
      v16 = v12;
      _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "notified sync observer %p after %.3f seconds", &v13, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)removeExpiredIncomingSyncObservers
{
  if ([(NSMutableArray *)self->_incomingSyncObserverTimers count])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v4 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Sync request timed out"];
    incomingSyncObserverTimers = self->_incomingSyncObserverTimers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__HDNanoSyncStore_removeExpiredIncomingSyncObservers__block_invoke;
    v8[3] = &unk_27862DBA8;
    v9 = v4;
    v10 = date;
    v6 = date;
    v7 = v4;
    [(NSMutableArray *)incomingSyncObserverTimers hk_removeObjectsPassingTest:v8];
  }
}

uint64_t __53__HDNanoSyncStore_removeExpiredIncomingSyncObservers__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isExpired];
  if (v4)
  {
    [v3 invalidateAndInvokeCompletionWithError:*(a1 + 32)];
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = v5;
      v10 = [v3 startDate];
      [v8 timeIntervalSinceDate:v10];
      v12 = 134218240;
      v13 = v3;
      v14 = 2048;
      v15 = v11;
      _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "removed expired sync observer %p after %.3f seconds", &v12, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)validatePairingUUIDsWithIncomingMessage:(id)message
{
  messageCopy = message;
  decodedPersistentPairingUUID = [messageCopy decodedPersistentPairingUUID];
  decodedHealthPairingUUID = [messageCopy decodedHealthPairingUUID];

  persistentUUID = [(HDNanoSyncStore *)self persistentUUID];
  if (decodedPersistentPairingUUID != persistentUUID)
  {
    persistentUUID2 = [(HDNanoSyncStore *)self persistentUUID];
    if (!persistentUUID2)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v3 = persistentUUID2;
    persistentUUID3 = [(HDNanoSyncStore *)self persistentUUID];
    if (![decodedPersistentPairingUUID isEqual:persistentUUID3])
    {
      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  healthUUID = [(HDNanoSyncStore *)self healthUUID];
  v13 = healthUUID;
  if (decodedHealthPairingUUID == healthUUID)
  {

    v11 = 1;
  }

  else
  {
    healthUUID2 = [(HDNanoSyncStore *)self healthUUID];
    if (healthUUID2)
    {
      v15 = healthUUID2;
      healthUUID3 = [(HDNanoSyncStore *)self healthUUID];
      v11 = [decodedHealthPairingUUID isEqual:healthUUID3];
    }

    else
    {

      v11 = 0;
    }
  }

  if (decodedPersistentPairingUUID != persistentUUID)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v11;
}

uint64_t __38__HDNanoSyncStore_orderedSyncEntities__block_invoke(uint64_t a1, void *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);

  return [a2 supportsSyncStore:v4];
}

+ (id)orderedSyncEntitiesForProfile:(id)profile protocolVersion:(int)version companion:(BOOL)companion
{
  v17[6] = *MEMORY[0x277D85DE8];
  if (companion)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8;
  }

  if (v5 <= version)
  {
    if (companion)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    syncEngine = [profile syncEngine];
    allOrderedSyncEntities = [syncEngine allOrderedSyncEntities];

    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v17[5] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:6];
    v12 = [allOrderedSyncEntities arrayByExcludingObjectsInArray:v11];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__HDNanoSyncStore_orderedSyncEntitiesForProfile_protocolVersion_companion___block_invoke;
    v15[3] = &__block_descriptor_44_e8_B16__0_8l;
    v15[4] = v8;
    versionCopy = version;
    v6 = [v12 hk_filter:v15];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL __75__HDNanoSyncStore_orderedSyncEntitiesForProfile_protocolVersion_companion___block_invoke(uint64_t a1, void *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  return ([a2 supportedNanoSyncDirectionsForProtocolVersion:*(a1 + 40)] & v4) != 0;
}

- (BOOL)supportsSpeculativeChangesForSyncEntityClass:(Class)class
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)class supportsSpeculativeNanoSyncChanges];
}

- (int64_t)expectedSequenceNumberForSyncEntityClass:(Class)class
{
  expectedSequenceNumbers = self->_expectedSequenceNumbers;
  v4 = NSStringFromClass(class);
  v5 = [(NSMutableDictionary *)expectedSequenceNumbers objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)setExpectedSequenceNumber:(int64_t)number forSyncEntityClass:(Class)class
{
  if (!self->_expectedSequenceNumbers)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    expectedSequenceNumbers = self->_expectedSequenceNumbers;
    self->_expectedSequenceNumbers = v7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:number];
  v9 = self->_expectedSequenceNumbers;
  v10 = NSStringFromClass(class);
  [(NSMutableDictionary *)v9 setObject:v11 forKeyedSubscript:v10];
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  changeCopy = change;
  if ([changeCopy isEqualToString:*MEMORY[0x277D2BC08]])
  {
    delegate = [(HDNanoSyncStore *)self delegate];
    hd_systemBuildVersion = [deviceCopy hd_systemBuildVersion];
    [delegate nanoSyncStore:self remoteSystemBuildVersionDidChange:hd_systemBuildVersion];
  }

  else
  {
    if (![changeCopy isEqualToString:*MEMORY[0x277D2BBA8]])
    {
      goto LABEL_6;
    }

    delegate = [(HDNanoSyncStore *)self delegate];
    hd_systemBuildVersion = [deviceCopy hd_name];
    [delegate nanoSyncStore:self deviceNameDidChange:hd_systemBuildVersion];
  }

LABEL_6:
}

- (id)diagnosticDescription
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"%@:%p {", objc_opt_class(), self];
  if (self)
  {
    nanoRegistryDevice = self->_nanoRegistryDevice;
  }

  else
  {
    nanoRegistryDevice = 0;
  }

  v5 = nanoRegistryDevice;
  hd_productType = [(NRDevice *)v5 hd_productType];
  [string appendFormat:@"\n\tDevice:(%@)", hd_productType];

  if ([(HDNanoSyncStore *)self isMaster])
  {
    hd_lastActiveDate = [(NRDevice *)v5 hd_lastActiveDate];
    hd_lastInactiveDate = [(NRDevice *)v5 hd_lastInactiveDate];
    if ([(HDNanoSyncStore *)self isActive])
    {
      v9 = @"\n\tLast Inactive: %@ - %@";
    }

    else
    {
      v9 = @"\n\tLast Active: %@ - %@";
    }

    v10 = HKDiagnosticStringFromDate();
    v11 = HKDiagnosticStringFromDate();
    [string appendFormat:v9, v10, v11];
  }

  hd_deviceIdentifier = [(IDSDevice *)self->_identityServicesDevice hd_deviceIdentifier];
  [string appendFormat:@"\n\tIDS Device ID: %@", hd_deviceIdentifier];

  nanoRegistryUUID = [(HDNanoSyncStore *)self nanoRegistryUUID];
  uUIDString = [nanoRegistryUUID UUIDString];
  v15 = uUIDString;
  v16 = @"<none>";
  if (uUIDString)
  {
    v17 = uUIDString;
  }

  else
  {
    v17 = @"<none>";
  }

  [string appendFormat:@"\n\tRegistry UUID: %@", v17];

  persistentUUID = [(HDNanoSyncStore *)self persistentUUID];
  uUIDString2 = [persistentUUID UUIDString];
  v20 = uUIDString2;
  if (uUIDString2)
  {
    v21 = uUIDString2;
  }

  else
  {
    v21 = @"<none>";
  }

  [string appendFormat:@"\n\tPersistent UUID: %@", v21];

  if ([(HDNanoSyncStore *)self isMaster])
  {
    sourceBundleIdentifier = [(HDNanoSyncStore *)self sourceBundleIdentifier];
    v23 = sourceBundleIdentifier;
    if (sourceBundleIdentifier)
    {
      v24 = sourceBundleIdentifier;
    }

    else
    {
      v24 = @"<none>";
    }

    [string appendFormat:@"\n\tSource identifier: %@", v24];
  }

  remoteSystemBuildVersion = [(HDNanoSyncStore *)self remoteSystemBuildVersion];
  v26 = remoteSystemBuildVersion;
  if (remoteSystemBuildVersion)
  {
    v16 = remoteSystemBuildVersion;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[HDNanoSyncStore protocolVersion](self, "protocolVersion")}];
  [string appendFormat:@"\n\tSystem build: %@ (protocol vers %@)", v16, v27];

  restoreState = self->_restoreState;
  v29 = @"Incomplete";
  if (restoreState == 2)
  {
    v29 = @"In Progress";
  }

  if (restoreState == 3)
  {
    v30 = @"Complete";
  }

  else
  {
    v30 = v29;
  }

  [string appendFormat:@"\n\tRestore state: %@", v30];
  restoreSession = self->_restoreSession;
  if (restoreSession)
  {
    if ([(HDNanoSyncRestoreSession *)restoreSession isFinished])
    {
      v32 = "finished";
    }

    else
    {
      v32 = "unfinished";
    }

    sessionUUID = [(HDNanoSyncRestoreSession *)self->_restoreSession sessionUUID];
    uUIDString3 = [sessionUUID UUIDString];
    [string appendFormat:@"\n\tRestore %s, id:%@", v32, uUIDString3];
  }

  if (self->_lastCompleteIncomingSyncDate)
  {
    if (self->_lastCompleteIncomingSyncError)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@" (error: %@)", self->_lastCompleteIncomingSyncError];
      lastCompleteIncomingSyncDate = self->_lastCompleteIncomingSyncDate;
    }

    else
    {
      v35 = &stru_283BF39C8;
    }

    v37 = HKDiagnosticStringFromDate();
    [string appendFormat:@"\n\tLast complete sync began %@%@", v37, v35];
  }

  if (self->_lastIncompleteIncomingSyncDate)
  {
    v38 = HKDiagnosticStringFromDate();
    [string appendFormat:@"\n\tLast incomplete sync began %@", v38];
  }

  if ([(HDNanoSyncStore *)self needsSyncOnUnlock])
  {
    [string appendFormat:@"\n\tNeeds sync on unlock: YES"];
  }

  [string appendString:@"\n}"];

  return string;
}

- (HDNanoSyncStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end