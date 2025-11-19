@interface HDNanoSyncStore
+ (HDNanoSyncStore)nanoSyncStoreWithProfile:(id)a3 device:(id)a4 delegate:(id)a5 tinkerPaired:(BOOL)a6;
+ (id)_observedDeviceProperties;
+ (id)orderedSyncEntitiesForProfile:(id)a3 protocolVersion:(int)a4 companion:(BOOL)a5;
- (BOOL)resetProvenanceWithError:(id *)a3;
- (BOOL)supportsSpeculativeChangesForSyncEntityClass:(Class)a3;
- (BOOL)validatePairingUUIDsWithIncomingMessage:(id)a3;
- (HDNanoSyncStoreDelegate)delegate;
- (HKNanoSyncPairedDeviceInfo)deviceInfo;
- (NSString)description;
- (id)_initWithIdentityServicesDevice:(void *)a3 nanoRegistryDevice:(void *)a4 pairingEntity:(void *)a5 obliteratedDatabaseUUIDs:(int)a6 protocolVersion:(void *)a7 delegate:(void *)a8 profile:(char)a9 tinkerPairing:;
- (id)beginRestoreSessionWithUUID:(id)a3 timeout:(double)a4 timeoutHandler:(id)a5;
- (id)diagnosticDescription;
- (id)nanoSyncStoreForProtocolVersion:(int)a3;
- (id)orderedSyncEntities;
- (id)profile;
- (int64_t)expectedSequenceNumberForSyncEntityClass:(Class)a3;
- (void)_notifyIncomingSyncObservers;
- (void)_savePairingEntity;
- (void)_setRestoreState:(uint64_t)a1;
- (void)addIncomingSyncObserverWithTimeout:(double)a3 timeoutHandler:(id)a4 completion:(id)a5;
- (void)configureOutgoingResponse:(id)a3;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)didReceiveRequestWithChangeSet:(id)a3;
- (void)finishRestoreSessionWithError:(id)a3;
- (void)invalidate;
- (void)prepareForObliteration;
- (void)removeExpiredIncomingSyncObservers;
- (void)setExpectedSequenceNumber:(int64_t)a3 forSyncEntityClass:(Class)a4;
- (void)setHealthUUID:(id)a3;
- (void)setPersistentUUID:(id)a3;
@end

@implementation HDNanoSyncStore

- (HKNanoSyncPairedDeviceInfo)deviceInfo
{
  v3 = objc_alloc(MEMORY[0x277CCD6B0]);
  v4 = [(HDNanoSyncStore *)self sourceBundleIdentifier];
  v5 = [v3 initWithSourceBundleIdentifier:v4 systemBuildVersion:self->_remoteSystemBuildVersion productType:self->_remoteProductType active:-[HDNanoSyncStore isActive](self restoreComplete:"isActive") protocolVersion:{-[HDNanoSyncStore isRestoreComplete](self, "isRestoreComplete"), self->_protocolVersion}];

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

  v6 = [(NRDevice *)nanoRegistryDevice hd_productType];
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

  v9 = [(HDNanoSyncStore *)self nanoRegistryUUID];
  v10 = [v9 UUIDString];
  v11 = [(HDNanoSyncStore *)self device];
  v12 = [v11 hd_deviceIdentifier];
  v13 = [v3 stringWithFormat:@"<%@:%p %@ (%s) (%s) registry-id:%@ device-id:%@>", v4, self, v6, v7, v8, v10, v12, 0];

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
  if (a1)
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    v3 = [*(a1 + 80) dateByAddingTimeInterval:30.0];
    v4 = *(a1 + 56);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__HDNanoSyncStore__notifyIncomingSyncObservers__block_invoke;
    v7[3] = &unk_27862DBA8;
    v8 = v3;
    v9 = v2;
    v5 = v2;
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

- (id)_initWithIdentityServicesDevice:(void *)a3 nanoRegistryDevice:(void *)a4 pairingEntity:(void *)a5 obliteratedDatabaseUUIDs:(int)a6 protocolVersion:(void *)a7 delegate:(void *)a8 profile:(char)a9 tinkerPairing:
{
  v16 = a2;
  v17 = a3;
  obj = a4;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (v17)
  {
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_13:
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:sel__initWithIdentityServicesDevice_nanoRegistryDevice_pairingEntity_obliteratedDatabaseUUIDs_protocolVersion_delegate_profile_tinkerPairing_ object:a1 file:@"HDNanoSyncStore.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"identityServicesDevice != nil"}];

    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v37 = [MEMORY[0x277CCA890] currentHandler];
  [v37 handleFailureInMethod:sel__initWithIdentityServicesDevice_nanoRegistryDevice_pairingEntity_obliteratedDatabaseUUIDs_protocolVersion_delegate_profile_tinkerPairing_ object:a1 file:@"HDNanoSyncStore.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"registryDevice != nil"}];

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v18)
  {
    goto LABEL_5;
  }

LABEL_14:
  v39 = [MEMORY[0x277CCA890] currentHandler];
  [v39 handleFailureInMethod:sel__initWithIdentityServicesDevice_nanoRegistryDevice_pairingEntity_obliteratedDatabaseUUIDs_protocolVersion_delegate_profile_tinkerPairing_ object:a1 file:@"HDNanoSyncStore.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"pairingEntity != nil"}];

LABEL_5:
  v42.receiver = a1;
  v42.super_class = HDNanoSyncStore;
  v22 = objc_msgSendSuper2(&v42, sel_init);
  a1 = v22;
  if (v22)
  {
    objc_storeWeak(v22 + 1, v21);
    objc_storeWeak(a1 + 17, v20);
    *(a1 + 115) = [v20 isMaster];
    v23 = [v17 hd_systemBuildVersion];
    v24 = a1[2];
    a1[2] = v23;

    v25 = [v17 hd_productType];
    v26 = a1[3];
    a1[3] = v25;

    v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2D6D2220-64DB-408A-89ED-ED05391073E8"];
    *(a1 + 113) = [v17 supportsCapability:v27];

    v28 = [v19 copy];
    v29 = a1[20];
    a1[20] = v28;

    *(a1 + 12) = a6;
    *(a1 + 52) = [v16 isActive];
    v30 = [v18 isRestoreComplete];
    v31 = 3;
    if (!v30)
    {
      v31 = 1;
    }

    a1[18] = v31;
    objc_storeStrong(a1 + 16, a3);
    objc_storeStrong(a1 + 4, obj);
    *(a1 + 112) = a9;
    if ((a9 & 1) == 0)
    {
      v32 = a1[16];
      v33 = +[HDNanoSyncStore _observedDeviceProperties];
      [v32 addPropertyObserver:a1 forPropertyChanges:v33];
    }

    objc_storeStrong(a1 + 15, a2);
    v34 = [MEMORY[0x277CBEB38] dictionary];
    v35 = a1[5];
    a1[5] = v34;
  }

LABEL_11:

  return a1;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"HDNanoSyncStore.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"_invalidated"}];
  }

  v5.receiver = self;
  v5.super_class = HDNanoSyncStore;
  [(HDNanoSyncStore *)&v5 dealloc];
}

+ (HDNanoSyncStore)nanoSyncStoreWithProfile:(id)a3 device:(id)a4 delegate:(id)a5 tinkerPaired:(BOOL)a6
{
  v133 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v22 = objc_opt_self();
    if (v9)
    {
      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v107 = [MEMORY[0x277CCA890] currentHandler];
      [v107 handleFailureInMethod:sel__nanoSyncStoreWithProfile_device_delegate_ object:v22 file:@"HDNanoSyncStore.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"identityServicesDevice != nil"}];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    v108 = [MEMORY[0x277CCA890] currentHandler];
    [v108 handleFailureInMethod:sel__nanoSyncStoreWithProfile_device_delegate_ object:v22 file:@"HDNanoSyncStore.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_10:
    v12 = [v8 daemon];
    v23 = [v12 nanoPairedDeviceRegistry];
    v14 = [v23 hd_deviceForIDSDevice:v9];

    if (!v14)
    {
      _HKInitializeLogging();
      v41 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v38 = v41;
        v39 = [v9 hd_shortDescription];
        *buf = 138543362;
        v130 = v39;
        v40 = "unable to find NanoRegistry device for IDS device %{public}@";
        goto LABEL_26;
      }

LABEL_30:
      v18 = 0;
      goto LABEL_112;
    }

    v24 = [v14 valueForProperty:*MEMORY[0x277D2BB48]];
    v25 = [v24 BOOLValue];

    if ((v25 & 1) == 0)
    {
      _HKInitializeLogging();
      v42 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v38 = v42;
        v39 = [v9 hd_shortDescription];
        *buf = 138543362;
        v130 = v39;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "NanoRegistry device for IDS device %{public}@ is not paired", buf, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v26 = [v14 hd_pairingID];
    if (!v26)
    {
      _HKInitializeLogging();
      v44 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v96 = v44;
        v97 = [v14 hd_shortDescription];
        *buf = 138543362;
        v130 = v97;
        _os_log_error_impl(&dword_228986000, v96, OS_LOG_TYPE_ERROR, "missing pairing ID for NanoRegistry device %{public}@", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_111;
    }

    v27 = [v10 isMaster];
    v28 = [v14 hd_systemBuildVersion];
    if (v27)
    {
      v29 = [MEMORY[0x277CCDD30] nanoSyncProtocolVersionForWatchSystemBuildVersion:v28];
      if (v29 >= 6)
      {
        v113 = v29;
        v115 = v28;
        v30 = [v12 healthDomainAccessorWithPairedDevice:v14];
        v31 = [v30 stringForKey:@"LastRegistryUUID"];
        v117 = v26;
        v32 = [v26 UUIDString];
        v123 = v32;
        v119 = v31;
        if (v31 && (v33 = v32, ![v32 isEqualToString:v31]))
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
              v114 = v12;
              [v30 stringArrayForKey:@"ObliteratedDatabaseUUIDs"];
              v53 = v52 = v31;
              v121 = [v53 hk_map:&__block_literal_global_229];

              v26 = v117;
LABEL_59:
              v120 = [v8 database];
              v128 = 0;
              v54 = [HDNanoPairingEntity nanoPairingEntityWithRegistryUUID:v26 profile:v8 error:&v128];
              v55 = v128;
              v124 = v54;
              if (v54)
              {
                v56 = v27;
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
                  v92 = [(HDNanoSyncStore *)&v89->super.isa _initWithIdentityServicesDevice:v9 nanoRegistryDevice:v14 pairingEntity:v124 obliteratedDatabaseUUIDs:v91 protocolVersion:v113 delegate:v10 profile:v8 tinkerPairing:0];
                }

                else
                {
                  _HKInitializeLogging();
                  v93 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v100 = v93;
                    v101 = [v9 hd_shortDescription];
                    *buf = 138543618;
                    v130 = v101;
                    v131 = 2114;
                    v132 = v116;
                    _os_log_error_impl(&dword_228986000, v100, OS_LOG_TYPE_ERROR, "failed to create sync store for IDS device %{public}@: %{public}@", buf, 0x16u);
                  }

                  v92 = 0;
                  v58 = v121;
                  v88 = 0;
                }

                v18 = v92;

                v12 = v114;
                v28 = v115;
LABEL_110:

LABEL_111:
                goto LABEL_112;
              }

              v110 = v55;
              v59 = v54;
              v60 = [v54 persistentUUID];
              v61 = v60;
              v118 = v26;
              if (v60 == v35)
              {

                v64 = 0;
              }

              else
              {
                v62 = [v54 persistentUUID];
                v63 = [v62 isEqual:v35];

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

              v65 = [v124 defaultSourceBundleIdentifier];
              v66 = v65;
              v67 = v125;
              v112 = v57;
              if (v65 == v125)
              {

                goto LABEL_79;
              }

              if (v125)
              {
                v68 = [v124 defaultSourceBundleIdentifier];
                v69 = [v68 isEqualToString:v125];

                v67 = v125;
                if (v69)
                {
LABEL_79:
                  v125 = v67;
                  v70 = v64;
                  v71 = [v9 hd_deviceIdentifier];
                  v72 = [v124 deviceIdentifier];
                  v73 = v72;
                  if (v72 == v71)
                  {

                    goto LABEL_86;
                  }

                  if (v71)
                  {
                    v74 = [v124 deviceIdentifier];
                    v75 = [v74 isEqualToString:v71];

                    if (v75)
                    {
LABEL_86:
                      v76 = [v124 healthDatabaseUUID];

                      v109 = v71;
                      if (v76)
                      {
                        if (!v70)
                        {
                          v116 = v110;
LABEL_92:
                          v79 = [v8 sourceManager];
                          v80 = [v14 hd_name];
                          v81 = [v14 hd_productType];
                          v82 = v81;
                          if (!v80 || !v81)
                          {
                            _HKInitializeLogging();
                            v83 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138543618;
                              v130 = v80;
                              v131 = 2114;
                              v132 = v82;
                              _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "unexpectedly nil NRDevice properties: name=%{public}@, productType=%{public}@", buf, 0x16u);
                            }
                          }

                          v124 = v59;
                          v126 = 0;
                          v84 = v79;
                          v85 = [v79 sourceForAppleDeviceWithUUID:v112 identifier:v125 name:v80 productType:v82 createIfNecessary:1 error:&v126];
                          v86 = v126;
                          if (!v85)
                          {
                            _HKInitializeLogging();
                            v87 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                            {
                              v104 = v87;
                              v111 = [v14 hd_shortDescription];
                              *buf = 138543618;
                              v130 = v111;
                              v131 = 2114;
                              v132 = v86;
                              _os_log_error_impl(&dword_228986000, v104, OS_LOG_TYPE_ERROR, "failed to get source for paired device %{public}@: %{public}@", buf, 0x16u);
                            }
                          }

                          v26 = v118;
                          v57 = v112;
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        v77 = [MEMORY[0x277CCAD78] UUID];
                        [v124 setHealthDatabaseUUID:v77];
                      }

                      v127 = v110;
                      v78 = [v124 saveWithHealthDatabase:v120 error:&v127];
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

                  [v124 setDeviceIdentifier:v71];
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
          v50 = [v30 synchronize];
          if (v50)
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
              v132 = v50;
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
        v49 = [v47 UUIDString];
        [v30 setObject:v49 forKey:@"PersistentPairingUUID"];

        [v30 setObject:v48 forKey:@"DeviceSourceIdentifier"];
        v125 = v48;
        v31 = v119;
        goto LABEL_53;
      }
    }

    else
    {
      v45 = [MEMORY[0x277CCDD30] nanoSyncProtocolVersionForCompanionSystemBuildVersion:v28];
      if (v45 > 7)
      {
        v114 = v12;
        v115 = v28;
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
      v99 = [v9 hd_shortDescription];
      *buf = 138543618;
      v130 = v99;
      v131 = 2114;
      v132 = v28;
      _os_log_error_impl(&dword_228986000, v98, OS_LOG_TYPE_ERROR, "IDS device %{public}@ has unsupported system build version %{public}@", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_110;
  }

  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_self();
  if (v9)
  {
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v105 = [MEMORY[0x277CCA890] currentHandler];
    [v105 handleFailureInMethod:sel__tinkerNanoSyncStoreWithProfile_device_delegate_ object:v11 file:@"HDNanoSyncStore.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"idsDevice != nil"}];

    if (v10)
    {
      goto LABEL_4;
    }
  }

  v106 = [MEMORY[0x277CCA890] currentHandler];
  [v106 handleFailureInMethod:sel__tinkerNanoSyncStoreWithProfile_device_delegate_ object:v11 file:@"HDNanoSyncStore.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_4:
  v12 = [v8 daemon];
  v13 = [v12 nanoPairedDeviceRegistry];
  v14 = [v13 hd_deviceForIDSDevice:v9];

  if (!v14)
  {
    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      v39 = [v9 hd_shortDescription];
      *buf = 138543362;
      v130 = v39;
      v40 = "Unable to find NanoRegistry device for IDS device %{public}@ (#t0)";
LABEL_26:
      _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, v40, buf, 0xCu);
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v15 = [v14 hd_pairingID];
  v128 = 0;
  v16 = [HDNanoPairingEntity nanoPairingEntityWithRegistryUUID:v15 profile:v8 error:&v128];
  v17 = v128;

  if (v16)
  {
    v18 = [[HDNanoSyncStore alloc] _initWithIdentityServicesDevice:v9 nanoRegistryDevice:v14 pairingEntity:v16 obliteratedDatabaseUUIDs:0 protocolVersion:17 delegate:v10 profile:v8 tinkerPairing:1];
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v9 hd_shortDescription];
      *buf = 138543618;
      v130 = v18;
      v131 = 2114;
      v132 = v21;
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

- (id)nanoSyncStoreForProtocolVersion:(int)a3
{
  v5 = [HDNanoSyncStore alloc];
  identityServicesDevice = self->_identityServicesDevice;
  nanoRegistryDevice = self->_nanoRegistryDevice;
  pairingEntity = self->_pairingEntity;
  obliteratedDatabaseUUIDs = self->_obliteratedDatabaseUUIDs;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_loadWeakRetained(&self->_profile);
  v12 = [(HDNanoSyncStore *)&v5->super.isa _initWithIdentityServicesDevice:nanoRegistryDevice nanoRegistryDevice:pairingEntity pairingEntity:obliteratedDatabaseUUIDs obliteratedDatabaseUUIDs:a3 protocolVersion:WeakRetained delegate:v11 profile:self->_isTinkerPairing tinkerPairing:?];

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
      v10 = [(HDNanoSyncStore *)self nanoRegistryUUID];
      v11 = [v8 hk_errorForInvalidArgument:@"@" class:v9 selector:a2 format:{@"Sync store for device with pairingID %@ was invalidated", v10}];

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
  v3 = [(HDNanoPairingEntity *)self->_pairingEntity healthDatabaseUUID];
  v4 = v3;
  if (v3)
  {
    v13 = v3;
    v5 = [(NSSet *)self->_obliteratedDatabaseUUIDs setByAddingObject:v3];
    obliteratedDatabaseUUIDs = self->_obliteratedDatabaseUUIDs;
    self->_obliteratedDatabaseUUIDs = v5;

    v7 = [(NSSet *)self->_obliteratedDatabaseUUIDs allObjects];
    v8 = [v7 hk_map:&__block_literal_global_362_0];

    v9 = [(HDNanoSyncStore *)self profile];
    v10 = [v9 daemon];
    v11 = [v10 healthDomainAccessorWithPairedDevice:self->_nanoRegistryDevice];

    if (v8)
    {
      [v11 setObject:v8 forKey:@"ObliteratedDatabaseUUIDs"];
    }

    else
    {
      [v11 removeObjectForKey:@"ObliteratedDatabaseUUIDs"];
    }

    v12 = [v11 synchronize];

    v4 = v13;
  }

  MEMORY[0x2821F96F8](v3, v4);
}

- (id)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)setHealthUUID:(id)a3
{
  v7 = a3;
  v4 = [(HDNanoPairingEntity *)self->_pairingEntity healthDatabaseUUID];
  if (v4 == v7)
  {

    goto LABEL_8;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v5 = [(HDNanoPairingEntity *)self->_pairingEntity healthDatabaseUUID];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    [(HDNanoPairingEntity *)self->_pairingEntity setHealthDatabaseUUID:v7];
    [(HDNanoSyncStore *)self _savePairingEntity];
  }

LABEL_8:
}

- (void)_savePairingEntity
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = [WeakRetained database];
    v10 = 0;
    v5 = [v2 saveWithHealthDatabase:v4 error:&v10];
    v6 = v10;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
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

- (void)setPersistentUUID:(id)a3
{
  v7 = a3;
  v4 = [(HDNanoPairingEntity *)self->_pairingEntity persistentUUID];
  if (v4 == v7)
  {

    goto LABEL_8;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v5 = [(HDNanoPairingEntity *)self->_pairingEntity persistentUUID];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    [(HDNanoPairingEntity *)self->_pairingEntity setPersistentUUID:v7];
    [(HDNanoSyncStore *)self _savePairingEntity];
  }

LABEL_8:
}

- (id)beginRestoreSessionWithUUID:(id)a3 timeout:(double)a4 timeoutHandler:(id)a5
{
  v9 = a5;
  v10 = MEMORY[0x277CCA9B8];
  v11 = a3;
  v12 = [v10 hk_error:100 description:@"Canceled by new restore session"];
  [(HDNanoSyncStore *)self finishRestoreSessionWithError:v12];

  v13 = [[HDNanoSyncRestoreSession alloc] initWithSyncStore:self sessionUUID:v11];
  restoreSession = self->_restoreSession;
  self->_restoreSession = v13;

  if (a4 > 0.0)
  {
    if (!v9)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"HDNanoSyncStore.m" lineNumber:611 description:{@"Invalid parameter not satisfying: %@", @"timeoutHandler != NULL"}];
    }

    [(HDNanoSyncRestoreSession *)self->_restoreSession scheduleTimeoutWithInterval:v9 handler:a4];
  }

  [(HDNanoSyncStore *)self _setRestoreState:?];
  v15 = self->_restoreSession;
  v16 = v15;

  return v15;
}

- (void)_setRestoreState:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 144) != a2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 144);
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
      *&v14[4] = a1;
      *&v14[12] = 2112;
      *&v14[14] = v8;
      *&v14[22] = 2112;
      v15 = v10;
      v11 = v4;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "store %{public}@ transitioning from %@ to %@", v14, 0x20u);
    }

    *(a1 + 144) = a2;
    if ((a2 == 3) != [*(a1 + 32) isRestoreComplete])
    {
      [*(a1 + 32) setRestoreComplete:a2 == 3];
      [(HDNanoSyncStore *)a1 _savePairingEntity];
    }

    v12 = [a1 delegate];
    [v12 nanoSyncStore:a1 restoreStateDidChange:a2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)finishRestoreSessionWithError:(id)a3
{
  restoreSession = self->_restoreSession;
  if (restoreSession)
  {
    [(HDNanoSyncRestoreSession *)restoreSession finishWithError:a3];
    v6 = self->_restoreSession;
    self->_restoreSession = 0;
  }

  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [(HDNanoSyncStore *)self _setRestoreState:v7];
}

- (BOOL)resetProvenanceWithError:(id *)a3
{
  p_pairingEntity = &self->_pairingEntity;
  pairingEntity = self->_pairingEntity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [(HDNanoPairingEntity *)pairingEntity resetProvenanceForProfile:WeakRetained error:a3];

  if (v7)
  {
    objc_storeStrong(p_pairingEntity, v7);
  }

  return v7 != 0;
}

- (void)configureOutgoingResponse:(id)a3
{
  v3 = a3;
  [v3 setForceLocalDelivery:1];
  [v3 setSendTimeout:300.0];
}

- (void)didReceiveRequestWithChangeSet:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 statusCode];
  v6 = [v4 decodedSessionUUID];
  v7 = [v4 decodedSessionStartDate];
  v8 = [v4 decodedSessionError];

  v9 = MEMORY[0x277CCC328];
  if (v8 && (_HKInitializeLogging(), v10 = *v9, os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR)))
  {
    v20 = v10;
    v21 = [v6 UUIDString];
    v22 = 138543618;
    v23 = v21;
    v24 = 2114;
    v25 = v8;
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "incoming sync session %{public}@ error: %{public}@", &v22, 0x16u);

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  if (!v7 || ([v7 timeIntervalSinceNow], v11 > 3600.0))
  {
LABEL_6:
    _HKInitializeLogging();
    v12 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v18 = v12;
      v19 = [v6 UUIDString];
      v22 = 138543618;
      v23 = v19;
      v24 = 2114;
      v25 = v7;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "unexpected session UUID (%{public}@) or date (%{public}@) in change set", &v22, 0x16u);
    }

    goto LABEL_8;
  }

  lastIncompleteIncomingSyncUUID = self->_lastIncompleteIncomingSyncUUID;
  if (!lastIncompleteIncomingSyncUUID || (-[NSUUID isEqual:](lastIncompleteIncomingSyncUUID, "isEqual:", v6) & 1) != 0 || [v7 hk_isAfterDate:self->_lastIncompleteIncomingSyncDate])
  {
    if ((v5 - 2) >= 2)
    {
      if (v5 == 1)
      {
        objc_storeStrong(&self->_lastIncompleteIncomingSyncUUID, v6);
        objc_storeStrong(&self->_lastIncompleteIncomingSyncDate, v7);
      }

      else
      {
        _HKInitializeLogging();
        v17 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v22 = 67109120;
          LODWORD(v23) = v5;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "unexpected change set status code %d", &v22, 8u);
        }
      }
    }

    else
    {
      objc_storeStrong(&self->_lastCompleteIncomingSyncDate, v7);
      objc_storeStrong(&self->_lastCompleteIncomingSyncError, v8);
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

- (void)addIncomingSyncObserverWithTimeout:(double)a3 timeoutHandler:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (!self->_incomingSyncObserverTimers)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    incomingSyncObserverTimers = self->_incomingSyncObserverTimers;
    self->_incomingSyncObserverTimers = v10;
  }

  v12 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithCompletion:v9];
  [(NSMutableArray *)self->_incomingSyncObserverTimers addObject:v12];
  [v12 startWithTimeoutInterval:v8 handler:a3];
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    v15 = v13;
    v16 = [v12 startDate];
    v17 = 134218498;
    v18 = v12;
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v16;
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
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Sync request timed out"];
    incomingSyncObserverTimers = self->_incomingSyncObserverTimers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__HDNanoSyncStore_removeExpiredIncomingSyncObservers__block_invoke;
    v8[3] = &unk_27862DBA8;
    v9 = v4;
    v10 = v3;
    v6 = v3;
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

- (BOOL)validatePairingUUIDsWithIncomingMessage:(id)a3
{
  v6 = a3;
  v7 = [v6 decodedPersistentPairingUUID];
  v8 = [v6 decodedHealthPairingUUID];

  v9 = [(HDNanoSyncStore *)self persistentUUID];
  if (v7 != v9)
  {
    v10 = [(HDNanoSyncStore *)self persistentUUID];
    if (!v10)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v3 = v10;
    v4 = [(HDNanoSyncStore *)self persistentUUID];
    if (![v7 isEqual:v4])
    {
      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v12 = [(HDNanoSyncStore *)self healthUUID];
  v13 = v12;
  if (v8 == v12)
  {

    v11 = 1;
  }

  else
  {
    v14 = [(HDNanoSyncStore *)self healthUUID];
    if (v14)
    {
      v15 = v14;
      v16 = [(HDNanoSyncStore *)self healthUUID];
      v11 = [v8 isEqual:v16];
    }

    else
    {

      v11 = 0;
    }
  }

  if (v7 != v9)
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

+ (id)orderedSyncEntitiesForProfile:(id)a3 protocolVersion:(int)a4 companion:(BOOL)a5
{
  v17[6] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8;
  }

  if (v5 <= a4)
  {
    if (a5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [a3 syncEngine];
    v10 = [v9 allOrderedSyncEntities];

    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v17[5] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:6];
    v12 = [v10 arrayByExcludingObjectsInArray:v11];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__HDNanoSyncStore_orderedSyncEntitiesForProfile_protocolVersion_companion___block_invoke;
    v15[3] = &__block_descriptor_44_e8_B16__0_8l;
    v15[4] = v8;
    v16 = a4;
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

- (BOOL)supportsSpeculativeChangesForSyncEntityClass:(Class)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)a3 supportsSpeculativeNanoSyncChanges];
}

- (int64_t)expectedSequenceNumberForSyncEntityClass:(Class)a3
{
  expectedSequenceNumbers = self->_expectedSequenceNumbers;
  v4 = NSStringFromClass(a3);
  v5 = [(NSMutableDictionary *)expectedSequenceNumbers objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  return v6;
}

- (void)setExpectedSequenceNumber:(int64_t)a3 forSyncEntityClass:(Class)a4
{
  if (!self->_expectedSequenceNumbers)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    expectedSequenceNumbers = self->_expectedSequenceNumbers;
    self->_expectedSequenceNumbers = v7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = self->_expectedSequenceNumbers;
  v10 = NSStringFromClass(a4);
  [(NSMutableDictionary *)v9 setObject:v11 forKeyedSubscript:v10];
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v10 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x277D2BC08]])
  {
    v8 = [(HDNanoSyncStore *)self delegate];
    v9 = [v10 hd_systemBuildVersion];
    [v8 nanoSyncStore:self remoteSystemBuildVersionDidChange:v9];
  }

  else
  {
    if (![v7 isEqualToString:*MEMORY[0x277D2BBA8]])
    {
      goto LABEL_6;
    }

    v8 = [(HDNanoSyncStore *)self delegate];
    v9 = [v10 hd_name];
    [v8 nanoSyncStore:self deviceNameDidChange:v9];
  }

LABEL_6:
}

- (id)diagnosticDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"%@:%p {", objc_opt_class(), self];
  if (self)
  {
    nanoRegistryDevice = self->_nanoRegistryDevice;
  }

  else
  {
    nanoRegistryDevice = 0;
  }

  v5 = nanoRegistryDevice;
  v6 = [(NRDevice *)v5 hd_productType];
  [v3 appendFormat:@"\n\tDevice:(%@)", v6];

  if ([(HDNanoSyncStore *)self isMaster])
  {
    v7 = [(NRDevice *)v5 hd_lastActiveDate];
    v8 = [(NRDevice *)v5 hd_lastInactiveDate];
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
    [v3 appendFormat:v9, v10, v11];
  }

  v12 = [(IDSDevice *)self->_identityServicesDevice hd_deviceIdentifier];
  [v3 appendFormat:@"\n\tIDS Device ID: %@", v12];

  v13 = [(HDNanoSyncStore *)self nanoRegistryUUID];
  v14 = [v13 UUIDString];
  v15 = v14;
  v16 = @"<none>";
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = @"<none>";
  }

  [v3 appendFormat:@"\n\tRegistry UUID: %@", v17];

  v18 = [(HDNanoSyncStore *)self persistentUUID];
  v19 = [v18 UUIDString];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"<none>";
  }

  [v3 appendFormat:@"\n\tPersistent UUID: %@", v21];

  if ([(HDNanoSyncStore *)self isMaster])
  {
    v22 = [(HDNanoSyncStore *)self sourceBundleIdentifier];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"<none>";
    }

    [v3 appendFormat:@"\n\tSource identifier: %@", v24];
  }

  v25 = [(HDNanoSyncStore *)self remoteSystemBuildVersion];
  v26 = v25;
  if (v25)
  {
    v16 = v25;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[HDNanoSyncStore protocolVersion](self, "protocolVersion")}];
  [v3 appendFormat:@"\n\tSystem build: %@ (protocol vers %@)", v16, v27];

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

  [v3 appendFormat:@"\n\tRestore state: %@", v30];
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

    v33 = [(HDNanoSyncRestoreSession *)self->_restoreSession sessionUUID];
    v34 = [v33 UUIDString];
    [v3 appendFormat:@"\n\tRestore %s, id:%@", v32, v34];
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
    [v3 appendFormat:@"\n\tLast complete sync began %@%@", v37, v35];
  }

  if (self->_lastIncompleteIncomingSyncDate)
  {
    v38 = HKDiagnosticStringFromDate();
    [v3 appendFormat:@"\n\tLast incomplete sync began %@", v38];
  }

  if ([(HDNanoSyncStore *)self needsSyncOnUnlock])
  {
    [v3 appendFormat:@"\n\tNeeds sync on unlock: YES"];
  }

  [v3 appendString:@"\n}"];

  return v3;
}

- (HDNanoSyncStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end