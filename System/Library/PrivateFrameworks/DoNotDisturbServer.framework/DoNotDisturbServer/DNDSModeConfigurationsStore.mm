@interface DNDSModeConfigurationsStore
- (BOOL)_lock_mergeLocalConfigurationRecord:(id)a3 withRemoteCKRecord:(id)a4 deleteModeOnCorruption:(BOOL)a5;
- (BOOL)_lock_mergeLocalConfigurationRecord:(id)a3 withRemoteConfigurationRecord:(id)a4 modeIdentifier:(id)a5 sourceDeviceIdentifier:(id)a6 sourceFrameworkVersion:(id *)a7 sourceIsCloud:(BOOL)a8 sourceWantsToForce:(BOOL)a9 deleteModeOnCorruption:(BOOL)a10;
- (BOOL)_lock_populateDNDSIDSRecord:(id)a3;
- (DNDSModeConfigurationsStore)initWithBackingStore:(id)a3 syncEngine:(id)a4 idsSyncEngine:(id)a5;
- (DNDSModeConfigurationsStoreDelegate)delegate;
- (NSSet)monitoredContacts;
- (id)_lock_existingConfigurations;
- (id)_lock_modeConfigurationForCKRecordID:(id)a3;
- (id)_lock_modeConfigurationForDNDSIDSRecordID:(id)a3;
- (id)_lock_modeConfigurationForModeIdentifier:(id)a3;
- (id)_lock_modeIdentifiers;
- (id)_lock_mutableExistingConfigurations;
- (id)_lock_recordIDsForIDSSyncEngine:(id)a3;
- (id)backingStore:(id)a3 migrateDictionaryRepresentation:(id)a4 fromVersionNumber:(unint64_t)a5 toVersionNumber:(unint64_t)a6;
- (id)readRecordWithError:(id *)a3;
- (id)recordIDsForIDSSyncEngine:(id)a3;
- (id)recordIDsForSyncEngine:(id)a3;
- (int64_t)_lock_populateCKRecord:(id)a3 lastChanceRecord:(id)a4;
- (int64_t)syncEngine:(id)a3 prepareRecordToSave:(id)a4;
- (int64_t)syncEngine:(id)a3 wantsRecord:(id)a4;
- (unint64_t)_lock_writeRecord:(id)a3 writePartition:(BOOL)a4 error:(id *)a5;
- (void)_lock_existingConfigurations;
- (void)_lock_modeIdentifiers;
- (void)_lock_purgeData;
- (void)_lock_purgeRecordIDs:(id)a3;
- (void)_lock_removeModeConfigurationWithCKRecordID:(id)a3;
- (void)_lock_removeModeConfigurationWithModeIdentifier:(id)a3;
- (void)_lock_updateModeConfigurationWithConfiguration:(id)a3;
- (void)_notifyDelegateOfAvailableModes;
- (void)_purgeData;
- (void)_purgeRecordIDs:(id)a3;
- (void)cachedBackingStoreDidPurgeCache:(id)a3;
- (void)contactMonitor:(id)a3 didReceiveUpdatedContacts:(id)a4 deletedContactIdentifiers:(id)a5 withContactHistoryToken:(id)a6;
- (void)contactMonitor:(id)a3 didReceiveUpdatedContactsForContactsWithoutIdentifiers:(id)a4;
- (void)idsSyncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)idsSyncEngine:(id)a3 prepareRecordToSave:(id)a4;
- (void)idsSyncEngine:(id)a3 recordWithIDWasDeleted:(id)a4;
- (void)monitoredContacts;
- (void)purgeRecordsForIDSSyncEngine:(id)a3;
- (void)syncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4;
- (void)syncEngine:(id)a3 resolveConflictBetweenClientRecord:(id)a4 andServerRecord:(id)a5;
- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4 removingRecordIDs:(id)a5;
@end

@implementation DNDSModeConfigurationsStore

- (DNDSModeConfigurationsStore)initWithBackingStore:(id)a3 syncEngine:(id)a4 idsSyncEngine:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = DNDSModeConfigurationsStore;
  v12 = [(DNDSModeConfigurationsStore *)&v22 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_backingStore, a3);
    [(DNDSBackingStore *)v13->_backingStore setDelegate:v13];
    objc_storeStrong(&v13->_syncEngine, a4);
    [(DNDSSyncEngine *)v13->_syncEngine setDataSource:v13 forZoneName:@"DNDSModeConfigurations"];
    objc_storeStrong(&v13->_idsSyncEngine, a5);
    [(DNDSIDSSyncEngine *)v13->_idsSyncEngine setDataSource:v13 forZone:@"DNDSModeConfigurations"];
    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v14 dataForKey:@"DNDSModeConfigurationsContactHistoryToken"];
    contactHistoryToken = v13->_contactHistoryToken;
    v13->_contactHistoryToken = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    ckRecordIDsToForceSave = v13->_ckRecordIDsToForceSave;
    v13->_ckRecordIDsToForceSave = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    idsRecordIDsToForceSave = v13->_idsRecordIDsToForceSave;
    v13->_idsRecordIDsToForceSave = v19;
  }

  return v13;
}

- (id)readRecordWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)backingStore:(id)a3 migrateDictionaryRepresentation:(id)a4 fromVersionNumber:(unint64_t)a5 toVersionNumber:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(DNDSModeConfigurationsStore *)self delegate];
  v13 = [v12 backingStore:v11 migrateDictionaryRepresentation:v10 fromVersionNumber:a5 toVersionNumber:a6];

  return v13;
}

- (void)cachedBackingStoreDidPurgeCache:(id)a3
{
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Backing store was purged", v5, 2u);
  }

  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
}

- (int64_t)syncEngine:(id)a3 wantsRecord:(id)a4
{
  v5 = a4;
  v6 = [v5 recordID];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];
  v9 = [v8 isEqualToString:@"DNDSModeConfigurations"];

  if (v9)
  {
    v10 = [v5 objectForKey:@"DNDSModeConfigurationsMinimumRequiredVersion"];
    v11 = [v10 integerValue];
    v12 = [v5 objectForKey:@"DNDSModeConfigurationsVersion"];
    v13 = [v12 integerValue];
    v14 = DNDSModeConfigurationsVersionSupported();
    v15 = [v14 integerValue];

    if (os_variant_has_internal_content())
    {
      compatibilityVersion = self->_compatibilityVersion;
      if (compatibilityVersion)
      {
        v15 = [(NSNumber *)compatibilityVersion integerValue];
      }
    }

    if (v11 <= v15)
    {
      if (v13 <= v15)
      {
        v18 = [v5 recordType];
        v19 = [v18 isEqualToString:@"DNDSModeConfigurationsRecord"];

        v17 = v19;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_lock_mergeLocalConfigurationRecord:(id)a3 withRemoteConfigurationRecord:(id)a4 modeIdentifier:(id)a5 sourceDeviceIdentifier:(id)a6 sourceFrameworkVersion:(id *)a7 sourceIsCloud:(BOOL)a8 sourceWantsToForce:(BOOL)a9 deleteModeOnCorruption:(BOOL)a10
{
  v10 = a8;
  v141 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = v19;
  if (v17)
  {
    v122 = v10;
    v123 = v19;
    v21 = [MEMORY[0x277D05990] modeConfigurationForRecord:v17];
    v22 = [MEMORY[0x277D05990] modeConfigurationForRecord:v16];
    [v22 log:DNDSLogModeConfigurations withMessage:@"Local configuration"];
    [v21 log:DNDSLogModeConfigurations withMessage:@"Remote configuration"];
    v23 = objc_alloc_init(MEMORY[0x277D05900]);
    [v23 diffObject:v22 againstObject:v21 withDescription:@"modeConfiguration"];
    if ([v23 hasDifferences])
    {
      [v23 log:DNDSLogModeConfigurations withPrefix:v18];
    }

    if ([v22 isEqual:v21])
    {
      v24 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Record for %{public}@ does not contain configuration changes.", buf, 0xCu);
      }

      v25 = 0;
      goto LABEL_74;
    }

    if (v22)
    {
      v38 = [v22 mergeWithRemoteModeConfiguration:v21];
    }

    else
    {
      v38 = v21;
    }

    v120 = v16;
    v121 = v38;
    if (!a9)
    {
      if (v38 == v21)
      {
        goto LABEL_52;
      }

      goto LABEL_28;
    }

    if (v21)
    {
      [v21 lastModifiedByVersion];
    }

    if (v22)
    {
      [v22 lastModifiedByVersion];
    }

    v126 = 0uLL;
    v39 = +[DNDSDevice currentDevice];
    v40 = v39;
    if (v39)
    {
      [v39 frameworkVersion];
    }

    else
    {
      v126 = 0uLL;
    }

    v57 = DNDSLogModeConfigurations;
    v58 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT);
    if (v121 == v21)
    {
      if (v58)
      {
        *buf = *&a7->var0;
        *&buf[16] = a7->var2;
        v66 = v57;
        DNDStringFromOperatingSystemVersion();
        loga = v18;
        v68 = v67 = self;
        *buf = v126;
        *&buf[16] = 0;
        v69 = DNDStringFromOperatingSystemVersion();
        memset(buf, 0, sizeof(buf));
        v70 = DNDStringFromOperatingSystemVersion();
        memset(buf, 0, sizeof(buf));
        v71 = DNDStringFromOperatingSystemVersion();
        *buf = 138413314;
        *&buf[4] = v123;
        *&buf[12] = 2114;
        *&buf[14] = v68;
        *&buf[22] = 2114;
        v136 = v69;
        v137 = 2114;
        v138 = v70;
        v139 = 2114;
        v140 = v71;
        _os_log_impl(&dword_24912E000, v66, OS_LOG_TYPE_DEFAULT, "Remote device is forcing a write that we agree with. device: %@; sourceFrameworkVersion: %{public}@; currentFrameworkVersion: %{public}@; remoteRecordVersion: %{public}@; localRecordVersion: %{public}@;", buf, 0x34u);

        self = v67;
        v18 = loga;
      }
    }

    else
    {
      if (v58)
      {
        *buf = *&a7->var0;
        *&buf[16] = a7->var2;
        log = v57;
        v113 = DNDStringFromOperatingSystemVersion();
        *buf = v126;
        *&buf[16] = 0;
        v112 = DNDStringFromOperatingSystemVersion();
        memset(buf, 0, sizeof(buf));
        v59 = DNDStringFromOperatingSystemVersion();
        memset(buf, 0, sizeof(buf));
        DNDStringFromOperatingSystemVersion();
        v118 = v17;
        v60 = v18;
        v62 = v61 = self;
        *buf = 138413314;
        *&buf[4] = v123;
        *&buf[12] = 2114;
        *&buf[14] = v113;
        *&buf[22] = 2114;
        v136 = v112;
        v137 = 2114;
        v138 = v59;
        v139 = 2114;
        v140 = v62;
        _os_log_impl(&dword_24912E000, log, OS_LOG_TYPE_DEFAULT, "Remote device is forcing a write that we disagree with. device: %@; sourceFrameworkVersion: %{public}@; currentFrameworkVersion: %{public}@; remoteRecordVersion: %{public}@; localRecordVersion: %{public}@;", buf, 0x34u);

        self = v61;
        v18 = v60;
        v17 = v118;
      }

      *buf = v126;
      *&buf[16] = 0;
      v124 = *&a7->var0;
      var2 = a7->var2;
      v63 = DNDOperatingSystemVersionCompare();
      if (v63)
      {
        if (v63 == -1)
        {
          v64 = DNDSLogModeConfigurations;
          if (!os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_52;
          }

          *buf = 0;
          v65 = "Accepting forced write because the remote framework revision is newer than the current version.";
          goto LABEL_49;
        }

        v99 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v100 = "Rejecting forced write because the remote framework revision is older than the current version.";
LABEL_80:
          _os_log_impl(&dword_24912E000, v99, OS_LOG_TYPE_DEFAULT, v100, buf, 2u);
        }

LABEL_28:
        v117 = self;
        v41 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v18;
          _os_log_impl(&dword_24912E000, v41, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %{public}@ is outdated; ignoring update and resending local data", buf, 0xCu);
        }

        v42 = [v21 lastModified];
        v43 = [v22 lastModified];
        v44 = [v21 lastModifiedByDeviceID];
        if (!v44)
        {
          v44 = [v43 laterDate:v42];
          if (v42 == v44)
          {
            v45 = [v21 rawResolvedCompatibilityVersion];
            v46 = *MEMORY[0x277D05828];

            if (v45 > v46)
            {
LABEL_37:
              if (v122)
              {
                v50 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
                v51 = objc_alloc(MEMORY[0x277CBC5D0]);
                v52 = [(DNDSIDSRecordID *)v50 zoneID];
                v53 = [v51 initWithRecordName:v18 zoneID:v52];

                [(NSMutableSet *)v117->_ckRecordIDsToForceSave addObject:v53];
                syncEngine = v117->_syncEngine;
                v130 = v53;
                v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
                [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:v55 recordIDsToDelete:0];
              }

              else
              {
                v50 = [[DNDSIDSRecordID alloc] initWithIdentifier:v18 zone:@"DNDSModeConfigurations"];
                [(NSMutableSet *)v117->_idsRecordIDsToForceSave addObject:v50];
                idsSyncEngine = v117->_idsSyncEngine;
                v129 = v50;
                v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
                [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:v53 recordIDsToDelete:0];
              }

              v25 = 0;
              goto LABEL_73;
            }

            v44 = [(DNDSIDSRecordID *)v42 dateByAddingTimeInterval:60.0];
            v47 = DNDSLogModeConfigurations;
            if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = v44;
              *&buf[22] = 2114;
              v136 = v42;
              _os_log_error_impl(&dword_24912E000, v47, OS_LOG_TYPE_ERROR, "Remote configuration is from a device that doesn't agree with this resolution. Bumping lastModified from %{public}@ to %{public}@ to overcome remote lastModified of %{public}@ and resyncing.", buf, 0x20u);
            }

            v48 = [v22 mutableCopy];
            [v48 setLastModified:v44];
            v49 = [v48 makeRecord];
            [(DNDSModeConfigurationsStore *)v117 _lock_updateModeConfigurationWithConfiguration:v49];
          }
        }

        goto LABEL_37;
      }

      v93 = v17;
      v94 = v18;
      v95 = self;
      v96 = +[DNDSDevice currentDevice];
      v97 = [v96 identifier];
      v98 = [v97 compare:v123 options:769];

      if (v98 == 1)
      {
        v99 = DNDSLogModeConfigurations;
        self = v95;
        v18 = v94;
        v17 = v93;
        if (!os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v100 = "Accepting forced write because the remote framework revision is the same as the current version but lost the tie-breaker.";
        goto LABEL_80;
      }

      self = v95;
      if (v98)
      {
        v18 = v94;
        v17 = v93;
        if (v98 != -1)
        {
          goto LABEL_28;
        }

        v64 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v65 = "Accepting forced write because the remote framework revision is the same as the current version and won the tie-breaker.";
LABEL_49:
          _os_log_impl(&dword_24912E000, v64, OS_LOG_TYPE_DEFAULT, v65, buf, 2u);
        }
      }

      else
      {
        v64 = DNDSLogModeConfigurations;
        v18 = v94;
        v17 = v93;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v65 = "Accepting forced write because it came from this device.";
          goto LABEL_49;
        }
      }
    }

LABEL_52:
    v72 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_24912E000, v72, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %{public}@ is current; applying update", buf, 0xCu);
    }

    [(DNDSModeConfigurationsStore *)self _lock_updateModeConfigurationWithConfiguration:v17];
    v73 = [v21 lastModifiedByDeviceID];
    if (!v73)
    {
      v74 = [v21 rawResolvedCompatibilityVersion];
      if (v74 == [v21 resolvedCompatibilityVersion])
      {
        goto LABEL_70;
      }

      v75 = [v21 lastModified];
      v73 = [v75 dateByAddingTimeInterval:60.0];

      v76 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
        [v21 rawResolvedCompatibilityVersion];
        v78 = DNDCompatibilityVersionToString();
        [v21 resolvedCompatibilityVersion];
        v79 = DNDCompatibilityVersionToString();
        [v21 lastModified];
        v81 = v80 = self;
        *buf = 138544130;
        *&buf[4] = v78;
        *&buf[12] = 2114;
        *&buf[14] = v79;
        *&buf[22] = 2114;
        v136 = v81;
        v137 = 2114;
        v138 = v73;
        _os_log_impl(&dword_24912E000, v77, OS_LOG_TYPE_DEFAULT, "Remote configuration is from a device that has a different version resolution. Updating resolvedCompatibilityVersion from %{public}@ to %{public}@ and bumping lastModified from %{public}@ to %{public}@ and resyncing.", buf, 0x2Au);

        self = v80;
      }

      v82 = [v21 mutableCopy];
      [v82 setLastModified:v73];
      v83 = [v82 makeRecord];
      [(DNDSModeConfigurationsStore *)self _lock_updateModeConfigurationWithConfiguration:v83];

      if (v122)
      {
        v119 = v82;
        v84 = v17;
        v85 = v18;
        v86 = self;
        v87 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
        v88 = objc_alloc(MEMORY[0x277CBC5D0]);
        v89 = [(DNDSIDSRecordID *)v87 zoneID];
        v90 = [v88 initWithRecordName:v85 zoneID:v89];

        v91 = v86;
        logb = &v86->_syncEngine->super;
        v18 = v85;
        v17 = v84;
        v82 = v119;
        v134 = v90;
        v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
        [logb addRecordIDsToSave:v92 recordIDsToDelete:0];
      }

      else
      {
        [(DNDSModeConfigurationsStore *)self _lock_updateModeConfigurationWithConfiguration:v17];
        v101 = [[DNDSIDSRecordID alloc] initWithIdentifier:v18 zone:@"DNDSModeConfigurations"];
        v102 = self;
        v87 = v101;
        v91 = v102;
        v103 = v102->_idsSyncEngine;
        v133 = v101;
        v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
        [(DNDSIDSSyncEngine *)v103 addRecordIDsToSave:v90 recordIDsToDelete:0];
      }

      self = v91;
    }

LABEL_70:
    if (v122)
    {
      v42 = [[DNDSIDSRecordID alloc] initWithIdentifier:v18 zone:@"DNDSModeConfigurations"];
      v104 = self->_idsSyncEngine;
      v132 = v42;
      v25 = 1;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
      [(DNDSIDSSyncEngine *)v104 addRecordIDsToSave:v43 recordIDsToDelete:0];
    }

    else
    {
      v42 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
      v105 = objc_alloc(MEMORY[0x277CBC5D0]);
      [(DNDSIDSRecordID *)v42 zoneID];
      v107 = v106 = self;
      v43 = [v105 initWithRecordName:v18 zoneID:v107];

      v108 = v106->_syncEngine;
      v131 = v43;
      v25 = 1;
      v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
      [(DNDSSyncEngine *)v108 addRecordIDsToSave:v109 recordIDsToDelete:0];
    }

LABEL_73:

    v16 = v120;
LABEL_74:
    v20 = v123;
    goto LABEL_75;
  }

  v26 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR);
  if (a10)
  {
    v27 = self;
    v28 = v20;
    if (v26)
    {
      [DNDSModeConfigurationsStore _lock_mergeLocalConfigurationRecord:withRemoteConfigurationRecord:modeIdentifier:sourceDeviceIdentifier:sourceFrameworkVersion:sourceIsCloud:sourceWantsToForce:deleteModeOnCorruption:];
    }

    v29 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
    v30 = objc_alloc(MEMORY[0x277CBC5D0]);
    v31 = [v29 zoneID];
    v32 = [v30 initWithRecordName:v18 zoneID:v31];

    v33 = self->_syncEngine;
    v128 = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
    [(DNDSSyncEngine *)v33 addRecordIDsToSave:0 recordIDsToDelete:v34];

    v35 = self->_idsSyncEngine;
    v36 = [[DNDSIDSRecordID alloc] initWithIdentifier:v18 zone:@"DNDSModeConfigurations"];
    v127 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
    [(DNDSIDSSyncEngine *)v35 addRecordIDsToSave:0 recordIDsToDelete:v37];

    v25 = v16 != 0;
    if (v16)
    {
      [(DNDSModeConfigurationsStore *)v27 _lock_removeModeConfigurationWithModeIdentifier:v18];
    }

    v20 = v28;
    v17 = 0;
  }

  else
  {
    if (v26)
    {
      [DNDSModeConfigurationsStore _lock_mergeLocalConfigurationRecord:withRemoteConfigurationRecord:modeIdentifier:sourceDeviceIdentifier:sourceFrameworkVersion:sourceIsCloud:sourceWantsToForce:deleteModeOnCorruption:];
    }

    v25 = 0;
  }

LABEL_75:

  v110 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)_lock_mergeLocalConfigurationRecord:(id)a3 withRemoteCKRecord:(id)a4 deleteModeOnCorruption:(BOOL)a5
{
  HIDWORD(v35) = a5;
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 recordID];
  v9 = [v8 recordName];

  v10 = [v7 encryptedValues];
  v11 = [v10 objectForKey:@"DNDSModeConfigurationsRecordForceUpdate"];

  v12 = [v11 BOOLValue];
  v13 = [v7 encryptedValues];
  v14 = [v13 objectForKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];

  v15 = [v7 encryptedValues];
  v16 = [v15 objectForKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];

  v37 = 0uLL;
  v38 = 0;
  DNDOperatingSystemVersionFromString();
  v17 = [v7 encryptedValues];
  v18 = [v17 objectForKey:@"DNDSModeConfigurationsLastModified"];

  v19 = DNDSLogModeConfigurations;
  v20 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT);
  if (v14 | v16)
  {
    if (v20)
    {
      v21 = @"NO";
      *buf = 138544130;
      *&buf[4] = v9;
      if (v12)
      {
        v21 = @"YES";
      }

      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v40 = v16;
      v41 = 2114;
      v42 = v21;
      v22 = "Fetched record with ID: %{public}@ from device %@ / %@ (force: %{public}@).";
      v23 = v19;
      v24 = 42;
      goto LABEL_8;
    }
  }

  else if (v20)
  {
    *buf = 138543362;
    *&buf[4] = v9;
    v22 = "Fetched record with ID: %{public}@ from legacy device.";
    v23 = v19;
    v24 = 12;
LABEL_8:
    _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
  }

  v25 = [DNDSModeConfigurationRecord newWithCKRecord:v7 currentRecord:v6];
  v26 = v25;
  if (!v18)
  {
    goto LABEL_13;
  }

  v27 = [v25 lastModified];
  [v27 timeIntervalSinceDate:v18];
  v29 = v28;

  v30 = -v29;
  if (v29 >= 0.0)
  {
    v30 = v29;
  }

  if (v30 > 1.0)
  {
LABEL_13:

    v37 = *MEMORY[0x277D05858];
    v38 = *(MEMORY[0x277D05858] + 16);
    v31 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v31, OS_LOG_TYPE_DEFAULT, "Record has source info set but the mdate doesn't match. Ignoring source and treating as legacy.", buf, 2u);
    }

    v14 = 0;
    LOBYTE(v12) = 0;
  }

  *buf = v37;
  *&buf[16] = v38;
  BYTE1(v35) = BYTE4(v35);
  LOBYTE(v35) = v12;
  v32 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v6 withRemoteConfigurationRecord:v26 modeIdentifier:v9 sourceDeviceIdentifier:v14 sourceFrameworkVersion:buf sourceIsCloud:1 sourceWantsToForce:v35 deleteModeOnCorruption:?];

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)syncEngine:(id)a3 didFetchRecord:(id)a4
{
  v5 = a4;
  v6 = [v5 recordID];
  v10 = [v6 recordName];

  os_unfair_lock_lock(&self->_lock);
  v7 = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v8 = [v7 modeConfigurationForModeIdentifier:v10];
  v9 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v8 withRemoteCKRecord:v5 deleteModeOnCorruption:1];

  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
  }
}

- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore syncEngine:v7 failedToDeleteRecordWithID:a4 error:v6];
  }
}

- (void)syncEngine:(id)a3 resolveConflictBetweenClientRecord:(id)a4 andServerRecord:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [v7 recordID];
  v10 = [v9 recordName];

  os_unfair_lock_lock(&self->_lock);
  v11 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Encountered conflict while saving configuration: %{public}@", &v17, 0xCu);
  }

  v12 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:v10];
  v13 = [DNDSModeConfigurationRecord newWithCKRecord:v8 currentRecord:v12];

  if (([v12 isEqual:v13] & 1) == 0)
  {
    v14 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Server version of the record from this device is out of date.", &v17, 2u);
    }
  }

  v15 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v12 withRemoteCKRecord:v7 deleteModeOnCorruption:0];
  os_unfair_lock_unlock(&self->_lock);
  if (v15)
  {
    [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int64_t)syncEngine:(id)a3 prepareRecordToSave:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v6 recordID];
  v9 = [v8 recordName];

  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v30) = 138543362;
    *(&v30 + 4) = v9;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to save record %{public}@", &v30, 0xCu);
  }

  v11 = [v6 recordID];
  v12 = [v7 lastChanceRecordForRecordID:v11];

  os_unfair_lock_lock(&self->_lock);
  v13 = [(DNDSModeConfigurationsStore *)self _lock_populateCKRecord:v6 lastChanceRecord:v12];
  ckRecordIDsToForceSave = self->_ckRecordIDsToForceSave;
  v15 = [v6 recordID];
  v16 = [(NSMutableSet *)ckRecordIDsToForceSave containsObject:v15];

  v17 = self->_ckRecordIDsToForceSave;
  v18 = [v6 recordID];
  [(NSMutableSet *)v17 removeObject:v18];

  v19 = [v6 encryptedValues];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v19 setObject:v20 forKey:@"DNDSModeConfigurationsRecordForceUpdate"];

  v21 = [v6 encryptedValues];
  v22 = +[DNDSDevice currentDevice];
  v23 = v22;
  if (v22)
  {
    [v22 frameworkVersion];
  }

  else
  {
    v30 = 0uLL;
    v31 = 0;
  }

  v24 = DNDStringFromOperatingSystemVersion();
  [v21 setObject:v24 forKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];

  v25 = [v6 encryptedValues];
  v26 = +[DNDSDevice currentDevice];
  v27 = [v26 identifier];
  [v25 setObject:v27 forKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];

  os_unfair_lock_unlock(&self->_lock);
  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 recordName];
  v7 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Server removed record %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_removeModeConfigurationWithCKRecordID:v5];

  v8 = [[DNDSIDSRecordID alloc] initWithIdentifier:v6 zone:@"DNDSModeConfigurations"];
  idsSyncEngine = self->_idsSyncEngine;
  v12 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:0 recordIDsToDelete:v10];

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4 removingRecordIDs:(id)a5
{
  v6 = a5;
  v7 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Removing all records because zone was deleted", v8, 2u);
  }

  [(DNDSModeConfigurationsStore *)self _purgeRecordIDs:v6];
}

- (id)recordIDsForSyncEngine:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSModeConfigurationsStore *)self _lock_modeIdentifiers];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
  v7 = [v6 zoneID];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CBC5D0]);
        v15 = [v14 initWithRecordName:v13 zoneID:{v7, v21}];
        [v4 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  v16 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v4 count];
    *buf = 134349056;
    v26 = v18;
    _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Fetched %{public}llu record IDs for the sync engine", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)idsSyncEngine:(id)a3 prepareRecordToSave:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 recordID];
  v7 = [v6 identifier];

  v8 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v21) = 138543362;
    *(&v21 + 4) = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Preparing to save record for IDS sync engine: %{public}@", &v21, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_populateDNDSIDSRecord:v5];
  idsRecordIDsToForceSave = self->_idsRecordIDsToForceSave;
  v10 = [v5 recordID];
  v11 = [(NSMutableSet *)idsRecordIDsToForceSave containsObject:v10];

  v12 = self->_idsRecordIDsToForceSave;
  v13 = [v5 recordID];
  [(NSMutableSet *)v12 removeObject:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v5 setObject:v14 forKey:@"DNDSModeConfigurationsRecordForceUpdate"];

  v15 = +[DNDSDevice currentDevice];
  v16 = v15;
  if (v15)
  {
    [v15 frameworkVersion];
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
  }

  v17 = DNDStringFromOperatingSystemVersion();
  [v5 setObject:v17 forKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];

  v18 = +[DNDSDevice currentDevice];
  v19 = [v18 identifier];
  [v5 setObject:v19 forKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)a3 didFetchRecord:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 recordID];
  v7 = [v6 identifier];

  v8 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Fetched record from IDS sync engine with ID: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:v7];
  v10 = [DNDSModeConfigurationRecord newWithDNDSIDSRecord:v5 currentRecord:v9];
  v11 = [v5 objectForKey:@"DNDSModeConfigurationsRecordForceUpdate"];
  v12 = [v11 BOOLValue];
  v13 = [v5 objectForKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];
  v14 = [v5 objectForKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];
  v26 = 0uLL;
  v27 = 0;
  DNDOperatingSystemVersionFromString();
  v15 = [v5 objectForKey:@"DNDSModeConfigurationsLastModified"];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = [v10 lastModified];
  [v16 timeIntervalSinceDate:v15];
  v18 = v17;

  v19 = -v18;
  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  if (v19 <= 1.0)
  {
    v23 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      v24 = @"NO";
      *buf = 138544130;
      *&buf[4] = v7;
      if (v12)
      {
        v24 = @"YES";
      }

      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v29 = v14;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, "Fetched record with ID: %{public}@ from device %@ / %@ (force: %{public}@).", buf, 0x2Au);
    }
  }

  else
  {
LABEL_7:

    v26 = *MEMORY[0x277D05858];
    v27 = *(MEMORY[0x277D05858] + 16);
    v20 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Fetched record with ID: %{public}@ from legacy device.", buf, 0xCu);
    }

    v13 = 0;
    LOBYTE(v12) = 0;
  }

  *buf = v26;
  *&buf[16] = v27;
  BYTE1(v25) = 1;
  LOBYTE(v25) = v12;
  v21 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v9 withRemoteConfigurationRecord:v10 modeIdentifier:v7 sourceDeviceIdentifier:v13 sourceFrameworkVersion:buf sourceIsCloud:0 sourceWantsToForce:v25 deleteModeOnCorruption:?];
  os_unfair_lock_unlock(&self->_lock);
  if (v21)
  {
    [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)a3 recordWithIDWasDeleted:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [a4 identifier];
  v6 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "IDS sync engine removed record %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_removeModeConfigurationWithModeIdentifier:v5];
  v7 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
  v8 = [v7 zoneID];
  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v5 zoneID:v8];
  syncEngine = self->_syncEngine;
  v13 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:0 recordIDsToDelete:v11];

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)recordIDsForIDSSyncEngine:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSModeConfigurationsStore *)self _lock_recordIDsForIDSSyncEngine:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)purgeRecordsForIDSSyncEngine:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Purging data for IDS sync engine", buf, 2u);
  }

  v5 = [MEMORY[0x277D05990] defaultModeConfiguration];
  v6 = [v5 makeRecord];
  v7 = objc_alloc_init(DNDSMutableModeConfigurationsRecord);
  v8 = [v5 mode];
  v9 = [v8 modeIdentifier];
  [(DNDSMutableModeConfigurationsRecord *)v7 setModeConfiguration:v6 forModeIdentifier:v9];

  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Replacing records with default mode configuration", v14, 2u);
  }

  backingStore = self->_backingStore;
  v13 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v7 writePartition:1 error:&v13];
  v12 = v13;
  if (v12 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore purgeRecordsForIDSSyncEngine:];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
}

- (NSSet)monitoredContacts
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock(&self->_lock);
  backingStore = self->_backingStore;
  v47 = 0;
  v5 = [(DNDSBackingStore *)backingStore readRecordWithError:&v47];
  v6 = v47;
  if (v6)
  {
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationsStore monitoredContacts];
    }
  }

  else
  {
    v31 = v5;
    v32 = self;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [v5 modeConfigurations];
    v7 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v7)
    {
      v8 = v7;
      v34 = *v44;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          v11 = [v10 secureConfiguration];
          v12 = [v11 senderConfiguration];
          v13 = [v12 allowedContacts];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v40;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v40 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [MEMORY[0x277D058F0] contactForRecord:*(*(&v39 + 1) + 8 * j)];
                [v3 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
            }

            while (v16);
          }

          v20 = [v10 secureConfiguration];
          v21 = [v20 senderConfiguration];
          v22 = [v21 deniedContacts];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v35 objects:v48 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v36;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v36 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [MEMORY[0x277D058F0] contactForRecord:*(*(&v35 + 1) + 8 * k)];
                [v3 addObject:v28];
              }

              v25 = [v23 countByEnumeratingWithState:&v35 objects:v48 count:16];
            }

            while (v25);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v8);
    }

    v5 = v31;
    self = v32;
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)contactMonitor:(id)a3 didReceiveUpdatedContactsForContactsWithoutIdentifiers:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v77 = v5;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Received updated identifierless contacts: %{private}@", buf, 0xCu);
    }

    v49 = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
    [v49 modeConfigurations];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v52 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (!v52)
    {
      goto LABEL_37;
    }

    v47 = self;
    v48 = 0;
    v51 = *v70;
    do
    {
      v7 = 0;
      do
      {
        if (*v70 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v7;
        v8 = *(*(&v69 + 1) + 8 * v7);
        v55 = [v8 mutableCopy];
        v9 = [v55 secureConfiguration];
        v10 = [v9 mutableCopy];

        v54 = v10;
        v11 = [v10 senderConfiguration];
        v53 = [v11 mutableCopy];

        v12 = [MEMORY[0x277CBEB58] set];
        v57 = v8;
        v13 = [v8 secureConfiguration];
        v14 = [v13 senderConfiguration];
        v15 = [v14 allowedContacts];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v60 = v15;
        v16 = [v60 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v66;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v66 != v19)
              {
                objc_enumerationMutation(v60);
              }

              v21 = *(*(&v65 + 1) + 8 * i);
              v22 = [MEMORY[0x277D058F0] contactForRecord:v21];
              v23 = [v5 objectForKeyedSubscript:v22];
              v24 = v23;
              if (v23)
              {
                v25 = [v23 makeRecord];

                v18 = 1;
                v21 = v25;
              }

              [v12 addObject:v21];
            }

            v17 = [v60 countByEnumeratingWithState:&v65 objects:v74 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        v58 = v12;

        v26 = [MEMORY[0x277CBEB58] set];
        v27 = [v57 secureConfiguration];
        v28 = [v27 senderConfiguration];
        v29 = [v28 deniedContacts];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = v29;
        v30 = [v59 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v62;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v62 != v32)
              {
                objc_enumerationMutation(v59);
              }

              v34 = *(*(&v61 + 1) + 8 * j);
              v35 = [MEMORY[0x277D058F0] contactForRecord:v34];
              v36 = [v5 objectForKeyedSubscript:v35];
              v37 = v36;
              if (v36)
              {
                v38 = [v36 makeRecord];

                v18 = 1;
                v34 = v38;
              }

              [v26 addObject:v34];
            }

            v31 = [v59 countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v31);
        }

        if (v18)
        {
          v39 = DNDSLogModeConfigurations;
          if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
            v41 = [v57 mode];
            v42 = [v41 modeIdentifier];
            *buf = 138543362;
            v77 = v42;
            _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Detected matching contact in configuration: %{public}@", buf, 0xCu);
          }

          [v53 setAllowedContacts:v58];
          [v53 setDeniedContacts:v26];
          [v54 setSenderConfiguration:v53];
          [v55 setSecureConfiguration:v54];
          v43 = [v55 mode];
          v44 = [v43 modeIdentifier];
          [v49 setModeConfiguration:v55 forModeIdentifier:v44];

          v48 = 1;
        }

        v7 = v56 + 1;
      }

      while (v56 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v52);
    self = v47;
    if (v48)
    {
      [v49 log:DNDSLogModeConfigurations withMessage:@"Writing updated configurations"];
      [(DNDSModeConfigurationsStore *)v47 _lock_writeRecord:v49 writePartition:1 error:0];
      os_unfair_lock_unlock(&v47->_lock);
      [(DNDSModeConfigurationsStore *)v47 _notifyDelegateOfAvailableModes];
    }

    else
    {
LABEL_37:
      v45 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v45, OS_LOG_TYPE_DEFAULT, "Did not encounter any matching configurations", buf, 2u);
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)contactMonitor:(id)a3 didReceiveUpdatedContacts:(id)a4 deletedContactIdentifiers:(id)a5 withContactHistoryToken:(id)a6
{
  v125 = *MEMORY[0x277D85DE8];
  v96 = a4;
  v74 = a5;
  v72 = a6;
  os_unfair_lock_lock(&self->_lock);
  v9 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v124 = v96;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Received updated contacts: %{private}@", buf, 0xCu);
  }

  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v124 = v74;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Received deleted contact identifiers: %{private}@", buf, 0xCu);
  }

  v11 = [v72 copy];
  contactHistoryToken = self->_contactHistoryToken;
  self->_contactHistoryToken = v11;

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v13 setObject:self->_contactHistoryToken forKey:@"DNDSModeConfigurationsContactHistoryToken"];

  if (![v96 count] && !objc_msgSend(v74, "count"))
  {
    goto LABEL_69;
  }

  v14 = [MEMORY[0x277CBEB98] setWithArray:v74];
  v76 = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  [v76 modeConfigurations];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v117 = 0u;
  v80 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
  if (!v80)
  {
    goto LABEL_66;
  }

  v75 = 0;
  v78 = *v115;
  v93 = v14;
  v79 = self;
  do
  {
    v15 = 0;
    do
    {
      if (*v115 != v78)
      {
        objc_enumerationMutation(obj);
      }

      v81 = v15;
      v16 = *(*(&v114 + 1) + 8 * v15);
      v85 = [v16 mutableCopy];
      v17 = [v85 secureConfiguration];
      v18 = [v17 mutableCopy];

      v84 = v18;
      v19 = [v18 senderConfiguration];
      v83 = [v19 mutableCopy];

      v97 = [MEMORY[0x277CBEB58] set];
      v82 = v16;
      v20 = [v16 secureConfiguration];
      v21 = [v20 senderConfiguration];
      v22 = [v21 allowedContacts];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v92 = v22;
      v23 = [v92 countByEnumeratingWithState:&v110 objects:v121 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v111;
        v88 = *v111;
        do
        {
          v27 = 0;
          v90 = v24;
          do
          {
            if (*v111 != v26)
            {
              objc_enumerationMutation(v92);
            }

            v28 = *(*(&v110 + 1) + 8 * v27);
            v29 = [v28 contactIdentifier];
            v30 = [v14 containsObject:v29];

            if (v30)
            {
              v31 = [v28 mutableCopy];
              [v31 setContactIdentifier:0];
              v25 = 1;
              v32 = v28;
              v28 = v31;
            }

            else
            {
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v32 = v96;
              v33 = [v32 countByEnumeratingWithState:&v106 objects:v120 count:16];
              if (v33)
              {
                v34 = v33;
                v94 = v25;
                v35 = *v107;
                do
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v107 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v37 = *(*(&v106 + 1) + 8 * i);
                    v38 = [v28 contactIdentifier];
                    v39 = [v37 contactIdentifier];
                    if ([v38 isEqualToString:v39])
                    {
                      v40 = [v28 isEqual:v37];

                      if ((v40 & 1) == 0)
                      {
                        v41 = [v37 makeRecord];

                        v25 = 1;
                        v28 = v41;
                        v14 = v93;
                        goto LABEL_31;
                      }
                    }

                    else
                    {
                    }
                  }

                  v34 = [v32 countByEnumeratingWithState:&v106 objects:v120 count:16];
                }

                while (v34);
                v14 = v93;
                v25 = v94;
LABEL_31:
                v26 = v88;
                v24 = v90;
              }
            }

            [v97 addObject:v28];
            ++v27;
          }

          while (v27 != v24);
          v24 = [v92 countByEnumeratingWithState:&v110 objects:v121 count:16];
        }

        while (v24);
      }

      else
      {
        v25 = 0;
      }

      v42 = [MEMORY[0x277CBEB58] set];
      v43 = [v82 secureConfiguration];
      v44 = [v43 senderConfiguration];
      v45 = [v44 deniedContacts];

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v91 = v45;
      v46 = [v91 countByEnumeratingWithState:&v102 objects:v119 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v103;
        v86 = *v103;
        v87 = v42;
        do
        {
          v49 = 0;
          v89 = v47;
          do
          {
            if (*v103 != v48)
            {
              objc_enumerationMutation(v91);
            }

            v50 = *(*(&v102 + 1) + 8 * v49);
            v51 = [v50 contactIdentifier];
            v52 = [v14 containsObject:v51];

            if (v52)
            {
              v53 = [v50 mutableCopy];
              [v53 setContactIdentifier:0];
              v25 = 1;
              v54 = v50;
              v50 = v53;
            }

            else
            {
              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v54 = v96;
              v55 = [v54 countByEnumeratingWithState:&v98 objects:v118 count:16];
              if (v55)
              {
                v56 = v55;
                v95 = v25;
                v57 = *v99;
                do
                {
                  for (j = 0; j != v56; ++j)
                  {
                    if (*v99 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v98 + 1) + 8 * j);
                    v60 = [v50 contactIdentifier];
                    v61 = [v59 contactIdentifier];
                    if ([v60 isEqualToString:v61])
                    {
                      v62 = [v50 isEqual:v59];

                      if ((v62 & 1) == 0)
                      {
                        v63 = [v59 makeRecord];

                        v25 = 1;
                        v50 = v63;
                        v14 = v93;
                        goto LABEL_55;
                      }
                    }

                    else
                    {
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v98 objects:v118 count:16];
                }

                while (v56);
                v14 = v93;
                v25 = v95;
LABEL_55:
                v48 = v86;
                v42 = v87;
                v47 = v89;
              }
            }

            [v42 addObject:v50];
            ++v49;
          }

          while (v49 != v47);
          v47 = [v91 countByEnumeratingWithState:&v102 objects:v119 count:16];
        }

        while (v47);
      }

      self = v79;
      if (v25)
      {
        v64 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v64;
          v66 = [v82 mode];
          v67 = [v66 modeIdentifier];
          *buf = 138543362;
          v124 = v67;
          _os_log_impl(&dword_24912E000, v65, OS_LOG_TYPE_DEFAULT, "Detected matching contact in configuration: %{public}@", buf, 0xCu);
        }

        [v83 setAllowedContacts:v97];
        [v83 setDeniedContacts:v42];
        [v84 setSenderConfiguration:v83];
        [v85 setSecureConfiguration:v84];
        v68 = [v85 mode];
        v69 = [v68 modeIdentifier];
        [v76 setModeConfiguration:v85 forModeIdentifier:v69];

        v75 = 1;
      }

      v15 = v81 + 1;
    }

    while (v81 + 1 != v80);
    v80 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
  }

  while (v80);
  if ((v75 & 1) == 0)
  {
LABEL_66:
    v70 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v70, OS_LOG_TYPE_DEFAULT, "Did not encounter any matching configurations", buf, 2u);
    }

LABEL_69:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_70;
  }

  [v76 log:DNDSLogModeConfigurations withMessage:@"Writing updated configurations"];
  [(DNDSModeConfigurationsStore *)v79 _lock_writeRecord:v76 writePartition:1 error:0];

  os_unfair_lock_unlock(&v79->_lock);
  [(DNDSModeConfigurationsStore *)v79 _notifyDelegateOfAvailableModes];
LABEL_70:

  v71 = *MEMORY[0x277D85DE8];
}

- (id)_lock_mutableExistingConfigurations
{
  v2 = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)_lock_existingConfigurations
{
  os_unfair_lock_assert_owner(&self->_lock);
  backingStore = self->_backingStore;
  v7 = 0;
  v4 = [(DNDSBackingStore *)backingStore readRecordWithError:&v7];
  v5 = v7;
  if (v5 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore _lock_existingConfigurations];
  }

  return v4;
}

- (BOOL)_lock_populateDNDSIDSRecord:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 recordID];
  v6 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForDNDSIDSRecordID:v5];

  v7 = [v6 lastModified];
  [v4 setObject:v7 forKey:@"DNDSModeConfigurationsLastModified"];

  LOBYTE(v7) = [v6 populateDNDSIDSRecord:v4];
  return v7;
}

- (int64_t)_lock_populateCKRecord:(id)a3 lastChanceRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [v6 recordID];
  v9 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForCKRecordID:v8];

  v10 = [v6 encryptedValues];
  v11 = [v9 lastModified];
  [v10 setObject:v11 forKey:@"DNDSModeConfigurationsLastModified"];

  if ([v9 wasLastModifiedByThisDevice])
  {
    v12 = [v9 mutableCopy];
    v13 = +[DNDSDevice currentDevice];
    v14 = [v13 identifier];
    [v12 setLastModifiedByDeviceID:v14];

    v15 = [v12 copy];
    v9 = v15;
  }

  v16 = [v9 populateCKRecord:v6 lastChanceRecord:v7];

  return v16;
}

- (id)_lock_modeConfigurationForDNDSIDSRecordID:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:v4];

  return v5;
}

- (id)_lock_modeConfigurationForCKRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:v4];

  return v5;
}

- (id)_lock_modeConfigurationForModeIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v6 = [v5 modeConfigurationForModeIdentifier:v4];

  return v6;
}

- (void)_lock_removeModeConfigurationWithCKRecordID:(id)a3
{
  v4 = [a3 recordName];
  [(DNDSModeConfigurationsStore *)self _lock_removeModeConfigurationWithModeIdentifier:v4];
}

- (void)_lock_removeModeConfigurationWithModeIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  [v5 setModeConfiguration:0 forModeIdentifier:v4];
  backingStore = self->_backingStore;
  v8 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v5 writePartition:1 error:&v8];
  v7 = v8;
  if (v7 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore _lock_removeModeConfigurationWithModeIdentifier:];
  }
}

- (void)_lock_updateModeConfigurationWithConfiguration:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 mode];
    v8 = [v7 modeIdentifier];
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Writing updated configuration with identifier: %{public}@", buf, 0xCu);
  }

  [v4 log:DNDSLogModeConfigurations withMessage:@"Configuration"];
  v9 = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  v10 = [v4 mode];
  v11 = [v10 modeIdentifier];
  [v9 setModeConfiguration:v4 forModeIdentifier:v11];

  backingStore = self->_backingStore;
  v15 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v9 writePartition:1 error:&v15];
  v13 = v15;
  if (v13 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore _lock_updateModeConfigurationWithConfiguration:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_lock_writeRecord:(id)a3 writePartition:(BOOL)a4 error:(id *)a5
{
  v54 = a4;
  v76 = *MEMORY[0x277D85DE8];
  v7 = [a3 mutableCopy];
  v61 = self;
  v56 = a5;
  v8 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:a5];
  [v7 log:DNDSLogModeConfigurations withMessage:@"Writing configurations"];
  v57 = v8;
  v55 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
  v9 = [[DNDSModeConfigurationsRecordDiff alloc] initWithOriginalModeConfigurations:v8 updatedModeConfigurations:v7 zone:v55];
  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(DNDSModeConfigurationsRecordDiff *)v9 modifiedIDs];
    *buf = 138543362;
    v75 = v12;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Merge diff modified: %{public}@", buf, 0xCu);
  }

  v13 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(DNDSModeConfigurationsRecordDiff *)v9 removedIDs];
    *buf = 138543362;
    v75 = v15;
    _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Merge diff deleted: %{public}@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277CBEAA8] date];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v58 = v9;
  obj = [(DNDSModeConfigurationsRecordDiff *)v9 modifiedIDs];
  v17 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v67;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [*(*(&v66 + 1) + 8 * i) recordName];
        v22 = [v7 modeConfigurationForModeIdentifier:v21];
        v23 = [v22 mutableCopy];

        v24 = [v23 lastModified];
        v25 = [v24 earlierDate:v16];

        if (v25 == v16)
        {
          v26 = [MEMORY[0x277CBEAA8] distantPast];
          [v23 setLastModified:v26];
        }

        else
        {
          [v23 setLastModified:v16];
        }

        v27 = [v23 mode];
        v28 = [v27 modeIdentifier];
        [v7 setModeConfiguration:v23 forModeIdentifier:v28];

        v29 = [[DNDSIDSRecordID alloc] initWithIdentifier:v21 zone:@"DNDSModeConfigurations"];
        idsSyncEngine = v61->_idsSyncEngine;
        v72 = v29;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
        [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:v31 recordIDsToDelete:0];
      }

      v18 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v18);
  }

  v59 = v7;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v32 = [(DNDSModeConfigurationsRecordDiff *)v58 removedIDs];
  v33 = [v32 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v63;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v63 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v62 + 1) + 8 * j) recordName];
        v38 = [[DNDSIDSRecordID alloc] initWithIdentifier:v37 zone:@"DNDSModeConfigurations"];
        v39 = v61->_idsSyncEngine;
        v70 = v38;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
        [(DNDSIDSSyncEngine *)v39 addRecordIDsToSave:0 recordIDsToDelete:v40];
      }

      v34 = [v32 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v34);
  }

  v41 = [(DNDSBackingStore *)v61->_backingStore writeRecord:v59 writePartition:v54 error:v56];
  if (v56)
  {
    if (*v56)
    {
      v42 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
      {
        [(DNDSModeConfigurationsStore *)v56 _lock_writeRecord:v42 writePartition:v43 error:v44, v45, v46, v47, v48];
      }
    }
  }

  syncEngine = v61->_syncEngine;
  v50 = [(DNDSModeConfigurationsRecordDiff *)v58 modifiedIDs];
  v51 = [(DNDSModeConfigurationsRecordDiff *)v58 removedIDs];
  [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:v50 recordIDsToDelete:v51];

  v52 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)_lock_purgeRecordIDs:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Purging record IDs: %{public}@", buf, 0xCu);
  }

  v6 = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  v7 = [MEMORY[0x277D05990] defaultModeConfiguration];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) recordName];
        v14 = [v7 mode];
        v15 = [v14 modeIdentifier];
        v16 = [v13 isEqualToString:v15];

        if (v16)
        {
          v17 = [v7 makeRecord];
          v18 = [v7 mode];
          v19 = [v18 modeIdentifier];
          [v6 setModeConfiguration:v17 forModeIdentifier:v19];
        }

        else
        {
          [v6 setModeConfiguration:0 forModeIdentifier:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v20 = *(v23 + 8);
  v24 = 0;
  [v20 writeRecord:v6 writePartition:1 error:&v24];
  v21 = v24;
  if (v21 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore _lock_purgeRecordIDs:];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_lock_purgeData
{
  v41[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Purging data", buf, 2u);
  }

  v4 = [MEMORY[0x277D05990] defaultModeConfiguration];
  v32 = self;
  v5 = [(DNDSModeConfigurationsStore *)self _lock_recordIDsForIDSSyncEngine:self->_idsSyncEngine];
  v6 = [DNDSIDSRecordID alloc];
  v7 = [v4 mode];
  v8 = [v7 modeIdentifier];
  v9 = [(DNDSIDSRecordID *)v6 initWithIdentifier:v8 zone:@"DNDSModeConfigurations"];
  v41[0] = v9;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

  v33 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = [v4 mode];
        v18 = [v17 modeIdentifier];
        v19 = [v16 isEqualToString:v18];

        if ((v19 & 1) == 0)
        {
          [v33 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v20 = [v4 makeRecord];
  v21 = objc_alloc_init(DNDSMutableModeConfigurationsRecord);
  v22 = [v4 mode];
  v23 = [v22 modeIdentifier];
  [(DNDSMutableModeConfigurationsRecord *)v21 setModeConfiguration:v20 forModeIdentifier:v23];

  v24 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Replacing records with default mode configuration", buf, 2u);
  }

  backingStore = v32->_backingStore;
  v34 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v21 writePartition:1 error:&v34, v30];
  v26 = v34;
  [(DNDSIDSSyncEngine *)v32->_idsSyncEngine addRecordIDsToSave:v31 recordIDsToDelete:v33];
  if (v26 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore purgeRecordsForIDSSyncEngine:];
  }

  contactHistoryToken = v32->_contactHistoryToken;
  v32->_contactHistoryToken = 0;

  v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v28 removeObjectForKey:@"DNDSModeConfigurationsContactHistoryToken"];

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_lock_modeIdentifiers
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [MEMORY[0x277CBEB18] array];
  backingStore = self->_backingStore;
  v23 = 0;
  v5 = [(DNDSBackingStore *)backingStore readRecordWithError:&v23];
  v6 = v23;
  if (v6)
  {
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationsStore _lock_modeIdentifiers];
    }
  }

  else
  {
    v7 = [v5 modeConfigurations];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) mode];
          v13 = [v12 modeIdentifier];

          [v3 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v9);
    }
  }

  v14 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v3 count];
    *buf = 134349056;
    v25 = v16;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Fetched %{public}llu mode identifiers", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_lock_recordIDsForIDSSyncEngine:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(DNDSModeConfigurationsStore *)self _lock_modeIdentifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[DNDSIDSRecordID alloc] initWithIdentifier:*(*(&v16 + 1) + 8 * i) zone:@"DNDSModeConfigurations"];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v4 count];
    *buf = 134349056;
    v21 = v13;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Fetched %{public}llu record IDs for the IDS sync engine", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_notifyDelegateOfAvailableModes
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 modeConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) mode];
        v11 = [MEMORY[0x277D05930] modeForRecord:v10];
        if (([v11 isPlaceholder] & 1) == 0)
        {
          [v4 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Notifying delegate of available modes: %{public}@", buf, 0xCu);
  }

  [WeakRetained modeConfigurationStore:self didUpdateAvailableModes:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_purgeData
{
  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_purgeData];
  os_unfair_lock_unlock(&self->_lock);

  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
}

- (void)_purgeRecordIDs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_purgeRecordIDs:v4];
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [DNDSIDSRecordID alloc];
        v13 = [v11 recordName];
        v14 = [(DNDSIDSRecordID *)v12 initWithIdentifier:v13 zone:@"DNDSModeConfigurations"];

        [v5 addObject:v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine addRecordIDsToSave:0 recordIDsToDelete:v5];
  os_unfair_lock_unlock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];

  v15 = *MEMORY[0x277D85DE8];
}

- (DNDSModeConfigurationsStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_lock_mergeLocalConfigurationRecord:withRemoteConfigurationRecord:modeIdentifier:sourceDeviceIdentifier:sourceFrameworkVersion:sourceIsCloud:sourceWantsToForce:deleteModeOnCorruption:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Fetched data with ID %{public}@ could not be reconstructed into a configuration; ignoring update", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_mergeLocalConfigurationRecord:withRemoteConfigurationRecord:modeIdentifier:sourceDeviceIdentifier:sourceFrameworkVersion:sourceIsCloud:sourceWantsToForce:deleteModeOnCorruption:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Fetched data with ID %{public}@ could not be reconstructed into a configuration; deleting local configuration", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 failedToDeleteRecordWithID:(void *)a2 error:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 recordName];
  OUTLINED_FUNCTION_4();
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Failed to delete record %{public}@: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)purgeRecordsForIDSSyncEngine:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error deleting records: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)monitoredContacts
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not read current configuration for monitored contacts: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_existingConfigurations
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to fetch existing configurations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_removeModeConfigurationWithModeIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Failed to remove record %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateModeConfigurationWithConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error writing fetched configurations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_writeRecord:(uint64_t)a3 writePartition:(uint64_t)a4 error:(uint64_t)a5 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Error writing record: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_lock_purgeRecordIDs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error purging record IDs: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_modeIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not read records to extract mode identifiers: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end