@interface DNDSModeConfigurationsStore
- (BOOL)_lock_mergeLocalConfigurationRecord:(id)record withRemoteCKRecord:(id)kRecord deleteModeOnCorruption:(BOOL)corruption;
- (BOOL)_lock_mergeLocalConfigurationRecord:(id)record withRemoteConfigurationRecord:(id)configurationRecord modeIdentifier:(id)identifier sourceDeviceIdentifier:(id)deviceIdentifier sourceFrameworkVersion:(id *)version sourceIsCloud:(BOOL)cloud sourceWantsToForce:(BOOL)force deleteModeOnCorruption:(BOOL)self0;
- (BOOL)_lock_populateDNDSIDSRecord:(id)record;
- (DNDSModeConfigurationsStore)initWithBackingStore:(id)store syncEngine:(id)engine idsSyncEngine:(id)syncEngine;
- (DNDSModeConfigurationsStoreDelegate)delegate;
- (NSSet)monitoredContacts;
- (id)_lock_existingConfigurations;
- (id)_lock_modeConfigurationForCKRecordID:(id)d;
- (id)_lock_modeConfigurationForDNDSIDSRecordID:(id)d;
- (id)_lock_modeConfigurationForModeIdentifier:(id)identifier;
- (id)_lock_modeIdentifiers;
- (id)_lock_mutableExistingConfigurations;
- (id)_lock_recordIDsForIDSSyncEngine:(id)engine;
- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber;
- (id)readRecordWithError:(id *)error;
- (id)recordIDsForIDSSyncEngine:(id)engine;
- (id)recordIDsForSyncEngine:(id)engine;
- (int64_t)_lock_populateCKRecord:(id)record lastChanceRecord:(id)chanceRecord;
- (int64_t)syncEngine:(id)engine prepareRecordToSave:(id)save;
- (int64_t)syncEngine:(id)engine wantsRecord:(id)record;
- (unint64_t)_lock_writeRecord:(id)record writePartition:(BOOL)partition error:(id *)error;
- (void)_lock_existingConfigurations;
- (void)_lock_modeIdentifiers;
- (void)_lock_purgeData;
- (void)_lock_purgeRecordIDs:(id)ds;
- (void)_lock_removeModeConfigurationWithCKRecordID:(id)d;
- (void)_lock_removeModeConfigurationWithModeIdentifier:(id)identifier;
- (void)_lock_updateModeConfigurationWithConfiguration:(id)configuration;
- (void)_notifyDelegateOfAvailableModes;
- (void)_purgeData;
- (void)_purgeRecordIDs:(id)ds;
- (void)cachedBackingStoreDidPurgeCache:(id)cache;
- (void)contactMonitor:(id)monitor didReceiveUpdatedContacts:(id)contacts deletedContactIdentifiers:(id)identifiers withContactHistoryToken:(id)token;
- (void)contactMonitor:(id)monitor didReceiveUpdatedContactsForContactsWithoutIdentifiers:(id)identifiers;
- (void)idsSyncEngine:(id)engine didFetchRecord:(id)record;
- (void)idsSyncEngine:(id)engine prepareRecordToSave:(id)save;
- (void)idsSyncEngine:(id)engine recordWithIDWasDeleted:(id)deleted;
- (void)monitoredContacts;
- (void)purgeRecordsForIDSSyncEngine:(id)engine;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted;
- (void)syncEngine:(id)engine resolveConflictBetweenClientRecord:(id)record andServerRecord:(id)serverRecord;
- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted removingRecordIDs:(id)ds;
@end

@implementation DNDSModeConfigurationsStore

- (DNDSModeConfigurationsStore)initWithBackingStore:(id)store syncEngine:(id)engine idsSyncEngine:(id)syncEngine
{
  storeCopy = store;
  engineCopy = engine;
  syncEngineCopy = syncEngine;
  v22.receiver = self;
  v22.super_class = DNDSModeConfigurationsStore;
  v12 = [(DNDSModeConfigurationsStore *)&v22 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_backingStore, store);
    [(DNDSBackingStore *)v13->_backingStore setDelegate:v13];
    objc_storeStrong(&v13->_syncEngine, engine);
    [(DNDSSyncEngine *)v13->_syncEngine setDataSource:v13 forZoneName:@"DNDSModeConfigurations"];
    objc_storeStrong(&v13->_idsSyncEngine, syncEngine);
    [(DNDSIDSSyncEngine *)v13->_idsSyncEngine setDataSource:v13 forZone:@"DNDSModeConfigurations"];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults dataForKey:@"DNDSModeConfigurationsContactHistoryToken"];
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

- (id)readRecordWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber
{
  representationCopy = representation;
  storeCopy = store;
  delegate = [(DNDSModeConfigurationsStore *)self delegate];
  v13 = [delegate backingStore:storeCopy migrateDictionaryRepresentation:representationCopy fromVersionNumber:number toVersionNumber:versionNumber];

  return v13;
}

- (void)cachedBackingStoreDidPurgeCache:(id)cache
{
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Backing store was purged", v5, 2u);
  }

  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
}

- (int64_t)syncEngine:(id)engine wantsRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  v9 = [zoneName isEqualToString:@"DNDSModeConfigurations"];

  if (v9)
  {
    v10 = [recordCopy objectForKey:@"DNDSModeConfigurationsMinimumRequiredVersion"];
    integerValue = [v10 integerValue];
    v12 = [recordCopy objectForKey:@"DNDSModeConfigurationsVersion"];
    integerValue2 = [v12 integerValue];
    v14 = DNDSModeConfigurationsVersionSupported();
    integerValue3 = [v14 integerValue];

    if (os_variant_has_internal_content())
    {
      compatibilityVersion = self->_compatibilityVersion;
      if (compatibilityVersion)
      {
        integerValue3 = [(NSNumber *)compatibilityVersion integerValue];
      }
    }

    if (integerValue <= integerValue3)
    {
      if (integerValue2 <= integerValue3)
      {
        recordType = [recordCopy recordType];
        v19 = [recordType isEqualToString:@"DNDSModeConfigurationsRecord"];

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

- (BOOL)_lock_mergeLocalConfigurationRecord:(id)record withRemoteConfigurationRecord:(id)configurationRecord modeIdentifier:(id)identifier sourceDeviceIdentifier:(id)deviceIdentifier sourceFrameworkVersion:(id *)version sourceIsCloud:(BOOL)cloud sourceWantsToForce:(BOOL)force deleteModeOnCorruption:(BOOL)self0
{
  cloudCopy = cloud;
  v141 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  configurationRecordCopy = configurationRecord;
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  v20 = deviceIdentifierCopy;
  if (configurationRecordCopy)
  {
    v122 = cloudCopy;
    v123 = deviceIdentifierCopy;
    v21 = [MEMORY[0x277D05990] modeConfigurationForRecord:configurationRecordCopy];
    v22 = [MEMORY[0x277D05990] modeConfigurationForRecord:recordCopy];
    [v22 log:DNDSLogModeConfigurations withMessage:@"Local configuration"];
    [v21 log:DNDSLogModeConfigurations withMessage:@"Remote configuration"];
    v23 = objc_alloc_init(MEMORY[0x277D05900]);
    [v23 diffObject:v22 againstObject:v21 withDescription:@"modeConfiguration"];
    if ([v23 hasDifferences])
    {
      [v23 log:DNDSLogModeConfigurations withPrefix:identifierCopy];
    }

    if ([v22 isEqual:v21])
    {
      v24 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = identifierCopy;
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

    v120 = recordCopy;
    v121 = v38;
    if (!force)
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
        *buf = *&version->var0;
        *&buf[16] = version->var2;
        v66 = v57;
        DNDStringFromOperatingSystemVersion();
        loga = identifierCopy;
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
        identifierCopy = loga;
      }
    }

    else
    {
      if (v58)
      {
        *buf = *&version->var0;
        *&buf[16] = version->var2;
        log = v57;
        v113 = DNDStringFromOperatingSystemVersion();
        *buf = v126;
        *&buf[16] = 0;
        v112 = DNDStringFromOperatingSystemVersion();
        memset(buf, 0, sizeof(buf));
        v59 = DNDStringFromOperatingSystemVersion();
        memset(buf, 0, sizeof(buf));
        DNDStringFromOperatingSystemVersion();
        v118 = configurationRecordCopy;
        v60 = identifierCopy;
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
        identifierCopy = v60;
        configurationRecordCopy = v118;
      }

      *buf = v126;
      *&buf[16] = 0;
      v124 = *&version->var0;
      var2 = version->var2;
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
        selfCopy = self;
        v41 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = identifierCopy;
          _os_log_impl(&dword_24912E000, v41, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %{public}@ is outdated; ignoring update and resending local data", buf, 0xCu);
        }

        lastModified = [v21 lastModified];
        lastModified2 = [v22 lastModified];
        lastModifiedByDeviceID = [v21 lastModifiedByDeviceID];
        if (!lastModifiedByDeviceID)
        {
          lastModifiedByDeviceID = [lastModified2 laterDate:lastModified];
          if (lastModified == lastModifiedByDeviceID)
          {
            rawResolvedCompatibilityVersion = [v21 rawResolvedCompatibilityVersion];
            v46 = *MEMORY[0x277D05828];

            if (rawResolvedCompatibilityVersion > v46)
            {
LABEL_37:
              if (v122)
              {
                v50 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
                v51 = objc_alloc(MEMORY[0x277CBC5D0]);
                zoneID = [(DNDSIDSRecordID *)v50 zoneID];
                v53 = [v51 initWithRecordName:identifierCopy zoneID:zoneID];

                [(NSMutableSet *)selfCopy->_ckRecordIDsToForceSave addObject:v53];
                syncEngine = selfCopy->_syncEngine;
                v130 = v53;
                v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
                [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:v55 recordIDsToDelete:0];
              }

              else
              {
                v50 = [[DNDSIDSRecordID alloc] initWithIdentifier:identifierCopy zone:@"DNDSModeConfigurations"];
                [(NSMutableSet *)selfCopy->_idsRecordIDsToForceSave addObject:v50];
                idsSyncEngine = selfCopy->_idsSyncEngine;
                v129 = v50;
                v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
                [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:v53 recordIDsToDelete:0];
              }

              v25 = 0;
              goto LABEL_73;
            }

            lastModifiedByDeviceID = [(DNDSIDSRecordID *)lastModified dateByAddingTimeInterval:60.0];
            v47 = DNDSLogModeConfigurations;
            if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *&buf[4] = lastModified2;
              *&buf[12] = 2114;
              *&buf[14] = lastModifiedByDeviceID;
              *&buf[22] = 2114;
              v136 = lastModified;
              _os_log_error_impl(&dword_24912E000, v47, OS_LOG_TYPE_ERROR, "Remote configuration is from a device that doesn't agree with this resolution. Bumping lastModified from %{public}@ to %{public}@ to overcome remote lastModified of %{public}@ and resyncing.", buf, 0x20u);
            }

            v48 = [v22 mutableCopy];
            [v48 setLastModified:lastModifiedByDeviceID];
            makeRecord = [v48 makeRecord];
            [(DNDSModeConfigurationsStore *)selfCopy _lock_updateModeConfigurationWithConfiguration:makeRecord];
          }
        }

        goto LABEL_37;
      }

      v93 = configurationRecordCopy;
      v94 = identifierCopy;
      selfCopy2 = self;
      v96 = +[DNDSDevice currentDevice];
      identifier = [v96 identifier];
      v98 = [identifier compare:v123 options:769];

      if (v98 == 1)
      {
        v99 = DNDSLogModeConfigurations;
        self = selfCopy2;
        identifierCopy = v94;
        configurationRecordCopy = v93;
        if (!os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v100 = "Accepting forced write because the remote framework revision is the same as the current version but lost the tie-breaker.";
        goto LABEL_80;
      }

      self = selfCopy2;
      if (v98)
      {
        identifierCopy = v94;
        configurationRecordCopy = v93;
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
        identifierCopy = v94;
        configurationRecordCopy = v93;
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
      *&buf[4] = identifierCopy;
      _os_log_impl(&dword_24912E000, v72, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %{public}@ is current; applying update", buf, 0xCu);
    }

    [(DNDSModeConfigurationsStore *)self _lock_updateModeConfigurationWithConfiguration:configurationRecordCopy];
    lastModifiedByDeviceID2 = [v21 lastModifiedByDeviceID];
    if (!lastModifiedByDeviceID2)
    {
      rawResolvedCompatibilityVersion2 = [v21 rawResolvedCompatibilityVersion];
      if (rawResolvedCompatibilityVersion2 == [v21 resolvedCompatibilityVersion])
      {
        goto LABEL_70;
      }

      lastModified3 = [v21 lastModified];
      lastModifiedByDeviceID2 = [lastModified3 dateByAddingTimeInterval:60.0];

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
        v138 = lastModifiedByDeviceID2;
        _os_log_impl(&dword_24912E000, v77, OS_LOG_TYPE_DEFAULT, "Remote configuration is from a device that has a different version resolution. Updating resolvedCompatibilityVersion from %{public}@ to %{public}@ and bumping lastModified from %{public}@ to %{public}@ and resyncing.", buf, 0x2Au);

        self = v80;
      }

      v82 = [v21 mutableCopy];
      [v82 setLastModified:lastModifiedByDeviceID2];
      makeRecord2 = [v82 makeRecord];
      [(DNDSModeConfigurationsStore *)self _lock_updateModeConfigurationWithConfiguration:makeRecord2];

      if (v122)
      {
        v119 = v82;
        v84 = configurationRecordCopy;
        v85 = identifierCopy;
        selfCopy3 = self;
        v87 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
        v88 = objc_alloc(MEMORY[0x277CBC5D0]);
        zoneID2 = [(DNDSIDSRecordID *)v87 zoneID];
        v90 = [v88 initWithRecordName:v85 zoneID:zoneID2];

        v91 = selfCopy3;
        logb = &selfCopy3->_syncEngine->super;
        identifierCopy = v85;
        configurationRecordCopy = v84;
        v82 = v119;
        v134 = v90;
        v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
        [logb addRecordIDsToSave:v92 recordIDsToDelete:0];
      }

      else
      {
        [(DNDSModeConfigurationsStore *)self _lock_updateModeConfigurationWithConfiguration:configurationRecordCopy];
        v101 = [[DNDSIDSRecordID alloc] initWithIdentifier:identifierCopy zone:@"DNDSModeConfigurations"];
        selfCopy4 = self;
        v87 = v101;
        v91 = selfCopy4;
        v103 = selfCopy4->_idsSyncEngine;
        v133 = v101;
        v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
        [(DNDSIDSSyncEngine *)v103 addRecordIDsToSave:v90 recordIDsToDelete:0];
      }

      self = v91;
    }

LABEL_70:
    if (v122)
    {
      lastModified = [[DNDSIDSRecordID alloc] initWithIdentifier:identifierCopy zone:@"DNDSModeConfigurations"];
      v104 = self->_idsSyncEngine;
      v132 = lastModified;
      v25 = 1;
      lastModified2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
      [(DNDSIDSSyncEngine *)v104 addRecordIDsToSave:lastModified2 recordIDsToDelete:0];
    }

    else
    {
      lastModified = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
      v105 = objc_alloc(MEMORY[0x277CBC5D0]);
      [(DNDSIDSRecordID *)lastModified zoneID];
      v107 = v106 = self;
      lastModified2 = [v105 initWithRecordName:identifierCopy zoneID:v107];

      v108 = v106->_syncEngine;
      v131 = lastModified2;
      v25 = 1;
      v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
      [(DNDSSyncEngine *)v108 addRecordIDsToSave:v109 recordIDsToDelete:0];
    }

LABEL_73:

    recordCopy = v120;
LABEL_74:
    v20 = v123;
    goto LABEL_75;
  }

  v26 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR);
  if (corruption)
  {
    selfCopy5 = self;
    v28 = v20;
    if (v26)
    {
      [DNDSModeConfigurationsStore _lock_mergeLocalConfigurationRecord:withRemoteConfigurationRecord:modeIdentifier:sourceDeviceIdentifier:sourceFrameworkVersion:sourceIsCloud:sourceWantsToForce:deleteModeOnCorruption:];
    }

    v29 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
    v30 = objc_alloc(MEMORY[0x277CBC5D0]);
    zoneID3 = [v29 zoneID];
    v32 = [v30 initWithRecordName:identifierCopy zoneID:zoneID3];

    v33 = self->_syncEngine;
    v128 = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
    [(DNDSSyncEngine *)v33 addRecordIDsToSave:0 recordIDsToDelete:v34];

    v35 = self->_idsSyncEngine;
    v36 = [[DNDSIDSRecordID alloc] initWithIdentifier:identifierCopy zone:@"DNDSModeConfigurations"];
    v127 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
    [(DNDSIDSSyncEngine *)v35 addRecordIDsToSave:0 recordIDsToDelete:v37];

    v25 = recordCopy != 0;
    if (recordCopy)
    {
      [(DNDSModeConfigurationsStore *)selfCopy5 _lock_removeModeConfigurationWithModeIdentifier:identifierCopy];
    }

    v20 = v28;
    configurationRecordCopy = 0;
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

- (BOOL)_lock_mergeLocalConfigurationRecord:(id)record withRemoteCKRecord:(id)kRecord deleteModeOnCorruption:(BOOL)corruption
{
  HIDWORD(v35) = corruption;
  v43 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  kRecordCopy = kRecord;
  recordID = [kRecordCopy recordID];
  recordName = [recordID recordName];

  encryptedValues = [kRecordCopy encryptedValues];
  v11 = [encryptedValues objectForKey:@"DNDSModeConfigurationsRecordForceUpdate"];

  bOOLValue = [v11 BOOLValue];
  encryptedValues2 = [kRecordCopy encryptedValues];
  v14 = [encryptedValues2 objectForKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];

  encryptedValues3 = [kRecordCopy encryptedValues];
  v16 = [encryptedValues3 objectForKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];

  v37 = 0uLL;
  v38 = 0;
  DNDOperatingSystemVersionFromString();
  encryptedValues4 = [kRecordCopy encryptedValues];
  v18 = [encryptedValues4 objectForKey:@"DNDSModeConfigurationsLastModified"];

  v19 = DNDSLogModeConfigurations;
  v20 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT);
  if (v14 | v16)
  {
    if (v20)
    {
      v21 = @"NO";
      *buf = 138544130;
      *&buf[4] = recordName;
      if (bOOLValue)
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
    *&buf[4] = recordName;
    v22 = "Fetched record with ID: %{public}@ from legacy device.";
    v23 = v19;
    v24 = 12;
LABEL_8:
    _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
  }

  v25 = [DNDSModeConfigurationRecord newWithCKRecord:kRecordCopy currentRecord:recordCopy];
  v26 = v25;
  if (!v18)
  {
    goto LABEL_13;
  }

  lastModified = [v25 lastModified];
  [lastModified timeIntervalSinceDate:v18];
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
    LOBYTE(bOOLValue) = 0;
  }

  *buf = v37;
  *&buf[16] = v38;
  BYTE1(v35) = BYTE4(v35);
  LOBYTE(v35) = bOOLValue;
  v32 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:recordCopy withRemoteConfigurationRecord:v26 modeIdentifier:recordName sourceDeviceIdentifier:v14 sourceFrameworkVersion:buf sourceIsCloud:1 sourceWantsToForce:v35 deleteModeOnCorruption:?];

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  os_unfair_lock_lock(&self->_lock);
  _lock_existingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v8 = [_lock_existingConfigurations modeConfigurationForModeIdentifier:recordName];
  v9 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v8 withRemoteCKRecord:recordCopy deleteModeOnCorruption:1];

  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
  }
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  errorCopy = error;
  v7 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore syncEngine:v7 failedToDeleteRecordWithID:d error:errorCopy];
  }
}

- (void)syncEngine:(id)engine resolveConflictBetweenClientRecord:(id)record andServerRecord:(id)serverRecord
{
  v19 = *MEMORY[0x277D85DE8];
  serverRecordCopy = serverRecord;
  recordCopy = record;
  recordID = [serverRecordCopy recordID];
  recordName = [recordID recordName];

  os_unfair_lock_lock(&self->_lock);
  v11 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = recordName;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Encountered conflict while saving configuration: %{public}@", &v17, 0xCu);
  }

  v12 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:recordName];
  v13 = [DNDSModeConfigurationRecord newWithCKRecord:recordCopy currentRecord:v12];

  if (([v12 isEqual:v13] & 1) == 0)
  {
    v14 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Server version of the record from this device is out of date.", &v17, 2u);
    }
  }

  v15 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v12 withRemoteCKRecord:serverRecordCopy deleteModeOnCorruption:0];
  os_unfair_lock_unlock(&self->_lock);
  if (v15)
  {
    [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int64_t)syncEngine:(id)engine prepareRecordToSave:(id)save
{
  v32 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  engineCopy = engine;
  recordID = [saveCopy recordID];
  recordName = [recordID recordName];

  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v30) = 138543362;
    *(&v30 + 4) = recordName;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to save record %{public}@", &v30, 0xCu);
  }

  recordID2 = [saveCopy recordID];
  v12 = [engineCopy lastChanceRecordForRecordID:recordID2];

  os_unfair_lock_lock(&self->_lock);
  v13 = [(DNDSModeConfigurationsStore *)self _lock_populateCKRecord:saveCopy lastChanceRecord:v12];
  ckRecordIDsToForceSave = self->_ckRecordIDsToForceSave;
  recordID3 = [saveCopy recordID];
  v16 = [(NSMutableSet *)ckRecordIDsToForceSave containsObject:recordID3];

  v17 = self->_ckRecordIDsToForceSave;
  recordID4 = [saveCopy recordID];
  [(NSMutableSet *)v17 removeObject:recordID4];

  encryptedValues = [saveCopy encryptedValues];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [encryptedValues setObject:v20 forKey:@"DNDSModeConfigurationsRecordForceUpdate"];

  encryptedValues2 = [saveCopy encryptedValues];
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
  [encryptedValues2 setObject:v24 forKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];

  encryptedValues3 = [saveCopy encryptedValues];
  v26 = +[DNDSDevice currentDevice];
  identifier = [v26 identifier];
  [encryptedValues3 setObject:identifier forKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];

  os_unfair_lock_unlock(&self->_lock);
  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted
{
  v15 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  recordName = [deletedCopy recordName];
  v7 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = recordName;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Server removed record %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_removeModeConfigurationWithCKRecordID:deletedCopy];

  v8 = [[DNDSIDSRecordID alloc] initWithIdentifier:recordName zone:@"DNDSModeConfigurations"];
  idsSyncEngine = self->_idsSyncEngine;
  v12 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:0 recordIDsToDelete:v10];

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted removingRecordIDs:(id)ds
{
  dsCopy = ds;
  v7 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Removing all records because zone was deleted", v8, 2u);
  }

  [(DNDSModeConfigurationsStore *)self _purgeRecordIDs:dsCopy];
}

- (id)recordIDsForSyncEngine:(id)engine
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_lock);
  _lock_modeIdentifiers = [(DNDSModeConfigurationsStore *)self _lock_modeIdentifiers];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
  zoneID = [v6 zoneID];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = _lock_modeIdentifiers;
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
        v15 = [v14 initWithRecordName:v13 zoneID:{zoneID, v21}];
        [array addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  v16 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [array count];
    *buf = 134349056;
    v26 = v18;
    _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Fetched %{public}llu record IDs for the sync engine", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)idsSyncEngine:(id)engine prepareRecordToSave:(id)save
{
  v23 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  recordID = [saveCopy recordID];
  identifier = [recordID identifier];

  v8 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v21) = 138543362;
    *(&v21 + 4) = identifier;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Preparing to save record for IDS sync engine: %{public}@", &v21, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_populateDNDSIDSRecord:saveCopy];
  idsRecordIDsToForceSave = self->_idsRecordIDsToForceSave;
  recordID2 = [saveCopy recordID];
  v11 = [(NSMutableSet *)idsRecordIDsToForceSave containsObject:recordID2];

  v12 = self->_idsRecordIDsToForceSave;
  recordID3 = [saveCopy recordID];
  [(NSMutableSet *)v12 removeObject:recordID3];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [saveCopy setObject:v14 forKey:@"DNDSModeConfigurationsRecordForceUpdate"];

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
  [saveCopy setObject:v17 forKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];

  v18 = +[DNDSDevice currentDevice];
  identifier2 = [v18 identifier];
  [saveCopy setObject:identifier2 forKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)engine didFetchRecord:(id)record
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  identifier = [recordID identifier];

  v8 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = identifier;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Fetched record from IDS sync engine with ID: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:identifier];
  v10 = [DNDSModeConfigurationRecord newWithDNDSIDSRecord:recordCopy currentRecord:v9];
  v11 = [recordCopy objectForKey:@"DNDSModeConfigurationsRecordForceUpdate"];
  bOOLValue = [v11 BOOLValue];
  v13 = [recordCopy objectForKey:@"DNDSModeConfigurationsSourceDeviceIdentifier"];
  v14 = [recordCopy objectForKey:@"DNDSModeConfigurationsSourceFrameworkVersion"];
  v26 = 0uLL;
  v27 = 0;
  DNDOperatingSystemVersionFromString();
  v15 = [recordCopy objectForKey:@"DNDSModeConfigurationsLastModified"];

  if (!v15)
  {
    goto LABEL_7;
  }

  lastModified = [v10 lastModified];
  [lastModified timeIntervalSinceDate:v15];
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
      *&buf[4] = identifier;
      if (bOOLValue)
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
      *&buf[4] = identifier;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Fetched record with ID: %{public}@ from legacy device.", buf, 0xCu);
    }

    v13 = 0;
    LOBYTE(bOOLValue) = 0;
  }

  *buf = v26;
  *&buf[16] = v27;
  BYTE1(v25) = 1;
  LOBYTE(v25) = bOOLValue;
  v21 = [(DNDSModeConfigurationsStore *)self _lock_mergeLocalConfigurationRecord:v9 withRemoteConfigurationRecord:v10 modeIdentifier:identifier sourceDeviceIdentifier:v13 sourceFrameworkVersion:buf sourceIsCloud:0 sourceWantsToForce:v25 deleteModeOnCorruption:?];
  os_unfair_lock_unlock(&self->_lock);
  if (v21)
  {
    [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)engine recordWithIDWasDeleted:(id)deleted
{
  v16 = *MEMORY[0x277D85DE8];
  identifier = [deleted identifier];
  v6 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = identifier;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "IDS sync engine removed record %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_removeModeConfigurationWithModeIdentifier:identifier];
  v7 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
  zoneID = [v7 zoneID];
  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:identifier zoneID:zoneID];
  syncEngine = self->_syncEngine;
  v13 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:0 recordIDsToDelete:v11];

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)recordIDsForIDSSyncEngine:(id)engine
{
  engineCopy = engine;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSModeConfigurationsStore *)self _lock_recordIDsForIDSSyncEngine:engineCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)purgeRecordsForIDSSyncEngine:(id)engine
{
  os_unfair_lock_lock(&self->_lock);
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Purging data for IDS sync engine", buf, 2u);
  }

  defaultModeConfiguration = [MEMORY[0x277D05990] defaultModeConfiguration];
  makeRecord = [defaultModeConfiguration makeRecord];
  v7 = objc_alloc_init(DNDSMutableModeConfigurationsRecord);
  mode = [defaultModeConfiguration mode];
  modeIdentifier = [mode modeIdentifier];
  [(DNDSMutableModeConfigurationsRecord *)v7 setModeConfiguration:makeRecord forModeIdentifier:modeIdentifier];

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
    selfCopy = self;
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
          secureConfiguration = [v10 secureConfiguration];
          senderConfiguration = [secureConfiguration senderConfiguration];
          allowedContacts = [senderConfiguration allowedContacts];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v14 = allowedContacts;
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

          secureConfiguration2 = [v10 secureConfiguration];
          senderConfiguration2 = [secureConfiguration2 senderConfiguration];
          deniedContacts = [senderConfiguration2 deniedContacts];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v23 = deniedContacts;
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
    self = selfCopy;
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)contactMonitor:(id)monitor didReceiveUpdatedContactsForContactsWithoutIdentifiers:(id)identifiers
{
  v78 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v77 = identifiersCopy;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Received updated identifierless contacts: %{private}@", buf, 0xCu);
    }

    _lock_mutableExistingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
    [_lock_mutableExistingConfigurations modeConfigurations];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v52 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (!v52)
    {
      goto LABEL_37;
    }

    selfCopy = self;
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
        secureConfiguration = [v55 secureConfiguration];
        v10 = [secureConfiguration mutableCopy];

        v54 = v10;
        senderConfiguration = [v10 senderConfiguration];
        v53 = [senderConfiguration mutableCopy];

        v12 = [MEMORY[0x277CBEB58] set];
        v57 = v8;
        secureConfiguration2 = [v8 secureConfiguration];
        senderConfiguration2 = [secureConfiguration2 senderConfiguration];
        allowedContacts = [senderConfiguration2 allowedContacts];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v60 = allowedContacts;
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
              v23 = [identifiersCopy objectForKeyedSubscript:v22];
              v24 = v23;
              if (v23)
              {
                makeRecord = [v23 makeRecord];

                v18 = 1;
                v21 = makeRecord;
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
        secureConfiguration3 = [v57 secureConfiguration];
        senderConfiguration3 = [secureConfiguration3 senderConfiguration];
        deniedContacts = [senderConfiguration3 deniedContacts];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = deniedContacts;
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
              v36 = [identifiersCopy objectForKeyedSubscript:v35];
              v37 = v36;
              if (v36)
              {
                makeRecord2 = [v36 makeRecord];

                v18 = 1;
                v34 = makeRecord2;
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
            mode = [v57 mode];
            modeIdentifier = [mode modeIdentifier];
            *buf = 138543362;
            v77 = modeIdentifier;
            _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Detected matching contact in configuration: %{public}@", buf, 0xCu);
          }

          [v53 setAllowedContacts:v58];
          [v53 setDeniedContacts:v26];
          [v54 setSenderConfiguration:v53];
          [v55 setSecureConfiguration:v54];
          mode2 = [v55 mode];
          modeIdentifier2 = [mode2 modeIdentifier];
          [_lock_mutableExistingConfigurations setModeConfiguration:v55 forModeIdentifier:modeIdentifier2];

          v48 = 1;
        }

        v7 = v56 + 1;
      }

      while (v56 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v52);
    self = selfCopy;
    if (v48)
    {
      [_lock_mutableExistingConfigurations log:DNDSLogModeConfigurations withMessage:@"Writing updated configurations"];
      [(DNDSModeConfigurationsStore *)selfCopy _lock_writeRecord:_lock_mutableExistingConfigurations writePartition:1 error:0];
      os_unfair_lock_unlock(&selfCopy->_lock);
      [(DNDSModeConfigurationsStore *)selfCopy _notifyDelegateOfAvailableModes];
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

- (void)contactMonitor:(id)monitor didReceiveUpdatedContacts:(id)contacts deletedContactIdentifiers:(id)identifiers withContactHistoryToken:(id)token
{
  v125 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  identifiersCopy = identifiers;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v9 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v124 = contactsCopy;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Received updated contacts: %{private}@", buf, 0xCu);
  }

  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v124 = identifiersCopy;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Received deleted contact identifiers: %{private}@", buf, 0xCu);
  }

  v11 = [tokenCopy copy];
  contactHistoryToken = self->_contactHistoryToken;
  self->_contactHistoryToken = v11;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:self->_contactHistoryToken forKey:@"DNDSModeConfigurationsContactHistoryToken"];

  if (![contactsCopy count] && !objc_msgSend(identifiersCopy, "count"))
  {
    goto LABEL_69;
  }

  v14 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
  _lock_mutableExistingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  [_lock_mutableExistingConfigurations modeConfigurations];
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
  selfCopy = self;
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
      secureConfiguration = [v85 secureConfiguration];
      v18 = [secureConfiguration mutableCopy];

      v84 = v18;
      senderConfiguration = [v18 senderConfiguration];
      v83 = [senderConfiguration mutableCopy];

      v97 = [MEMORY[0x277CBEB58] set];
      v82 = v16;
      secureConfiguration2 = [v16 secureConfiguration];
      senderConfiguration2 = [secureConfiguration2 senderConfiguration];
      allowedContacts = [senderConfiguration2 allowedContacts];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v92 = allowedContacts;
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
            contactIdentifier = [v28 contactIdentifier];
            v30 = [v14 containsObject:contactIdentifier];

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
              v32 = contactsCopy;
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
                    contactIdentifier2 = [v28 contactIdentifier];
                    contactIdentifier3 = [v37 contactIdentifier];
                    if ([contactIdentifier2 isEqualToString:contactIdentifier3])
                    {
                      v40 = [v28 isEqual:v37];

                      if ((v40 & 1) == 0)
                      {
                        makeRecord = [v37 makeRecord];

                        v25 = 1;
                        v28 = makeRecord;
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
      secureConfiguration3 = [v82 secureConfiguration];
      senderConfiguration3 = [secureConfiguration3 senderConfiguration];
      deniedContacts = [senderConfiguration3 deniedContacts];

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v91 = deniedContacts;
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
            contactIdentifier4 = [v50 contactIdentifier];
            v52 = [v14 containsObject:contactIdentifier4];

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
              v54 = contactsCopy;
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
                    contactIdentifier5 = [v50 contactIdentifier];
                    contactIdentifier6 = [v59 contactIdentifier];
                    if ([contactIdentifier5 isEqualToString:contactIdentifier6])
                    {
                      v62 = [v50 isEqual:v59];

                      if ((v62 & 1) == 0)
                      {
                        makeRecord2 = [v59 makeRecord];

                        v25 = 1;
                        v50 = makeRecord2;
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

      self = selfCopy;
      if (v25)
      {
        v64 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v64;
          mode = [v82 mode];
          modeIdentifier = [mode modeIdentifier];
          *buf = 138543362;
          v124 = modeIdentifier;
          _os_log_impl(&dword_24912E000, v65, OS_LOG_TYPE_DEFAULT, "Detected matching contact in configuration: %{public}@", buf, 0xCu);
        }

        [v83 setAllowedContacts:v97];
        [v83 setDeniedContacts:v42];
        [v84 setSenderConfiguration:v83];
        [v85 setSecureConfiguration:v84];
        mode2 = [v85 mode];
        modeIdentifier2 = [mode2 modeIdentifier];
        [_lock_mutableExistingConfigurations setModeConfiguration:v85 forModeIdentifier:modeIdentifier2];

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

  [_lock_mutableExistingConfigurations log:DNDSLogModeConfigurations withMessage:@"Writing updated configurations"];
  [(DNDSModeConfigurationsStore *)selfCopy _lock_writeRecord:_lock_mutableExistingConfigurations writePartition:1 error:0];

  os_unfair_lock_unlock(&selfCopy->_lock);
  [(DNDSModeConfigurationsStore *)selfCopy _notifyDelegateOfAvailableModes];
LABEL_70:

  v71 = *MEMORY[0x277D85DE8];
}

- (id)_lock_mutableExistingConfigurations
{
  _lock_existingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v3 = [_lock_existingConfigurations mutableCopy];

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

- (BOOL)_lock_populateDNDSIDSRecord:(id)record
{
  recordCopy = record;
  os_unfair_lock_assert_owner(&self->_lock);
  recordID = [recordCopy recordID];
  v6 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForDNDSIDSRecordID:recordID];

  lastModified = [v6 lastModified];
  [recordCopy setObject:lastModified forKey:@"DNDSModeConfigurationsLastModified"];

  LOBYTE(lastModified) = [v6 populateDNDSIDSRecord:recordCopy];
  return lastModified;
}

- (int64_t)_lock_populateCKRecord:(id)record lastChanceRecord:(id)chanceRecord
{
  recordCopy = record;
  chanceRecordCopy = chanceRecord;
  os_unfair_lock_assert_owner(&self->_lock);
  recordID = [recordCopy recordID];
  v9 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForCKRecordID:recordID];

  encryptedValues = [recordCopy encryptedValues];
  lastModified = [v9 lastModified];
  [encryptedValues setObject:lastModified forKey:@"DNDSModeConfigurationsLastModified"];

  if ([v9 wasLastModifiedByThisDevice])
  {
    v12 = [v9 mutableCopy];
    v13 = +[DNDSDevice currentDevice];
    identifier = [v13 identifier];
    [v12 setLastModifiedByDeviceID:identifier];

    v15 = [v12 copy];
    v9 = v15;
  }

  v16 = [v9 populateCKRecord:recordCopy lastChanceRecord:chanceRecordCopy];

  return v16;
}

- (id)_lock_modeConfigurationForDNDSIDSRecordID:(id)d
{
  identifier = [d identifier];
  v5 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:identifier];

  return v5;
}

- (id)_lock_modeConfigurationForCKRecordID:(id)d
{
  recordName = [d recordName];
  v5 = [(DNDSModeConfigurationsStore *)self _lock_modeConfigurationForModeIdentifier:recordName];

  return v5;
}

- (id)_lock_modeConfigurationForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  _lock_existingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  v6 = [_lock_existingConfigurations modeConfigurationForModeIdentifier:identifierCopy];

  return v6;
}

- (void)_lock_removeModeConfigurationWithCKRecordID:(id)d
{
  recordName = [d recordName];
  [(DNDSModeConfigurationsStore *)self _lock_removeModeConfigurationWithModeIdentifier:recordName];
}

- (void)_lock_removeModeConfigurationWithModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  _lock_mutableExistingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  [_lock_mutableExistingConfigurations setModeConfiguration:0 forModeIdentifier:identifierCopy];
  backingStore = self->_backingStore;
  v8 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:_lock_mutableExistingConfigurations writePartition:1 error:&v8];
  v7 = v8;
  if (v7 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore _lock_removeModeConfigurationWithModeIdentifier:];
  }
}

- (void)_lock_updateModeConfigurationWithConfiguration:(id)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    mode = [configurationCopy mode];
    modeIdentifier = [mode modeIdentifier];
    *buf = 138543362;
    v17 = modeIdentifier;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Writing updated configuration with identifier: %{public}@", buf, 0xCu);
  }

  [configurationCopy log:DNDSLogModeConfigurations withMessage:@"Configuration"];
  _lock_mutableExistingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  mode2 = [configurationCopy mode];
  modeIdentifier2 = [mode2 modeIdentifier];
  [_lock_mutableExistingConfigurations setModeConfiguration:configurationCopy forModeIdentifier:modeIdentifier2];

  backingStore = self->_backingStore;
  v15 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:_lock_mutableExistingConfigurations writePartition:1 error:&v15];
  v13 = v15;
  if (v13 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore _lock_updateModeConfigurationWithConfiguration:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_lock_writeRecord:(id)record writePartition:(BOOL)partition error:(id *)error
{
  partitionCopy = partition;
  v76 = *MEMORY[0x277D85DE8];
  v7 = [record mutableCopy];
  selfCopy = self;
  errorCopy = error;
  v8 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:error];
  [v7 log:DNDSLogModeConfigurations withMessage:@"Writing configurations"];
  v57 = v8;
  v55 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSModeConfigurations"];
  v9 = [[DNDSModeConfigurationsRecordDiff alloc] initWithOriginalModeConfigurations:v8 updatedModeConfigurations:v7 zone:v55];
  v10 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    modifiedIDs = [(DNDSModeConfigurationsRecordDiff *)v9 modifiedIDs];
    *buf = 138543362;
    v75 = modifiedIDs;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Merge diff modified: %{public}@", buf, 0xCu);
  }

  v13 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    removedIDs = [(DNDSModeConfigurationsRecordDiff *)v9 removedIDs];
    *buf = 138543362;
    v75 = removedIDs;
    _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Merge diff deleted: %{public}@", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
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

        recordName = [*(*(&v66 + 1) + 8 * i) recordName];
        v22 = [v7 modeConfigurationForModeIdentifier:recordName];
        v23 = [v22 mutableCopy];

        lastModified = [v23 lastModified];
        v25 = [lastModified earlierDate:date];

        if (v25 == date)
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
          [v23 setLastModified:distantPast];
        }

        else
        {
          [v23 setLastModified:date];
        }

        mode = [v23 mode];
        modeIdentifier = [mode modeIdentifier];
        [v7 setModeConfiguration:v23 forModeIdentifier:modeIdentifier];

        v29 = [[DNDSIDSRecordID alloc] initWithIdentifier:recordName zone:@"DNDSModeConfigurations"];
        idsSyncEngine = selfCopy->_idsSyncEngine;
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
  removedIDs2 = [(DNDSModeConfigurationsRecordDiff *)v58 removedIDs];
  v33 = [removedIDs2 countByEnumeratingWithState:&v62 objects:v71 count:16];
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
          objc_enumerationMutation(removedIDs2);
        }

        recordName2 = [*(*(&v62 + 1) + 8 * j) recordName];
        v38 = [[DNDSIDSRecordID alloc] initWithIdentifier:recordName2 zone:@"DNDSModeConfigurations"];
        v39 = selfCopy->_idsSyncEngine;
        v70 = v38;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
        [(DNDSIDSSyncEngine *)v39 addRecordIDsToSave:0 recordIDsToDelete:v40];
      }

      v34 = [removedIDs2 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v34);
  }

  v41 = [(DNDSBackingStore *)selfCopy->_backingStore writeRecord:v59 writePartition:partitionCopy error:errorCopy];
  if (errorCopy)
  {
    if (*errorCopy)
    {
      v42 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
      {
        [(DNDSModeConfigurationsStore *)errorCopy _lock_writeRecord:v42 writePartition:v43 error:v44, v45, v46, v47, v48];
      }
    }
  }

  syncEngine = selfCopy->_syncEngine;
  modifiedIDs2 = [(DNDSModeConfigurationsRecordDiff *)v58 modifiedIDs];
  removedIDs3 = [(DNDSModeConfigurationsRecordDiff *)v58 removedIDs];
  [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:modifiedIDs2 recordIDsToDelete:removedIDs3];

  v52 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)_lock_purgeRecordIDs:(id)ds
{
  v32 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = dsCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Purging record IDs: %{public}@", buf, 0xCu);
  }

  _lock_mutableExistingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_mutableExistingConfigurations];
  defaultModeConfiguration = [MEMORY[0x277D05990] defaultModeConfiguration];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = dsCopy;
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

        recordName = [*(*(&v25 + 1) + 8 * v12) recordName];
        mode = [defaultModeConfiguration mode];
        modeIdentifier = [mode modeIdentifier];
        v16 = [recordName isEqualToString:modeIdentifier];

        if (v16)
        {
          makeRecord = [defaultModeConfiguration makeRecord];
          mode2 = [defaultModeConfiguration mode];
          modeIdentifier2 = [mode2 modeIdentifier];
          [_lock_mutableExistingConfigurations setModeConfiguration:makeRecord forModeIdentifier:modeIdentifier2];
        }

        else
        {
          [_lock_mutableExistingConfigurations setModeConfiguration:0 forModeIdentifier:recordName];
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
  [v20 writeRecord:_lock_mutableExistingConfigurations writePartition:1 error:&v24];
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

  defaultModeConfiguration = [MEMORY[0x277D05990] defaultModeConfiguration];
  selfCopy = self;
  v5 = [(DNDSModeConfigurationsStore *)self _lock_recordIDsForIDSSyncEngine:self->_idsSyncEngine];
  v6 = [DNDSIDSRecordID alloc];
  mode = [defaultModeConfiguration mode];
  modeIdentifier = [mode modeIdentifier];
  v9 = [(DNDSIDSRecordID *)v6 initWithIdentifier:modeIdentifier zone:@"DNDSModeConfigurations"];
  v41[0] = v9;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

  array = [MEMORY[0x277CBEB18] array];
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
        identifier = [v15 identifier];
        mode2 = [defaultModeConfiguration mode];
        modeIdentifier2 = [mode2 modeIdentifier];
        v19 = [identifier isEqualToString:modeIdentifier2];

        if ((v19 & 1) == 0)
        {
          [array addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  makeRecord = [defaultModeConfiguration makeRecord];
  v21 = objc_alloc_init(DNDSMutableModeConfigurationsRecord);
  mode3 = [defaultModeConfiguration mode];
  modeIdentifier3 = [mode3 modeIdentifier];
  [(DNDSMutableModeConfigurationsRecord *)v21 setModeConfiguration:makeRecord forModeIdentifier:modeIdentifier3];

  v24 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Replacing records with default mode configuration", buf, 2u);
  }

  backingStore = selfCopy->_backingStore;
  v34 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v21 writePartition:1 error:&v34, v30];
  v26 = v34;
  [(DNDSIDSSyncEngine *)selfCopy->_idsSyncEngine addRecordIDsToSave:v31 recordIDsToDelete:array];
  if (v26 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore purgeRecordsForIDSSyncEngine:];
  }

  contactHistoryToken = selfCopy->_contactHistoryToken;
  selfCopy->_contactHistoryToken = 0;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"DNDSModeConfigurationsContactHistoryToken"];

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_lock_modeIdentifiers
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  array = [MEMORY[0x277CBEB18] array];
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
    modeConfigurations = [v5 modeConfigurations];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [modeConfigurations countByEnumeratingWithState:&v19 objects:v26 count:16];
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
            objc_enumerationMutation(modeConfigurations);
          }

          mode = [*(*(&v19 + 1) + 8 * i) mode];
          modeIdentifier = [mode modeIdentifier];

          [array addObject:modeIdentifier];
        }

        v9 = [modeConfigurations countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v9);
    }
  }

  v14 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [array count];
    *buf = 134349056;
    v25 = v16;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Fetched %{public}llu mode identifiers", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_lock_recordIDsForIDSSyncEngine:(id)engine
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  array = [MEMORY[0x277CBEB18] array];
  _lock_modeIdentifiers = [(DNDSModeConfigurationsStore *)self _lock_modeIdentifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [_lock_modeIdentifiers countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(_lock_modeIdentifiers);
        }

        v10 = [[DNDSIDSRecordID alloc] initWithIdentifier:*(*(&v16 + 1) + 8 * i) zone:@"DNDSModeConfigurations"];
        [array addObject:v10];
      }

      v7 = [_lock_modeIdentifiers countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [array count];
    *buf = 134349056;
    v21 = v13;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Fetched %{public}llu record IDs for the IDS sync engine", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_notifyDelegateOfAvailableModes
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _lock_existingConfigurations = [(DNDSModeConfigurationsStore *)self _lock_existingConfigurations];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  modeConfigurations = [_lock_existingConfigurations modeConfigurations];
  v6 = [modeConfigurations countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(modeConfigurations);
        }

        mode = [*(*(&v15 + 1) + 8 * v9) mode];
        v11 = [MEMORY[0x277D05930] modeForRecord:mode];
        if (([v11 isPlaceholder] & 1) == 0)
        {
          [array addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [modeConfigurations countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = array;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Notifying delegate of available modes: %{public}@", buf, 0xCu);
  }

  [WeakRetained modeConfigurationStore:self didUpdateAvailableModes:array];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_purgeData
{
  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_purgeData];
  os_unfair_lock_unlock(&self->_lock);

  [(DNDSModeConfigurationsStore *)self _notifyDelegateOfAvailableModes];
}

- (void)_purgeRecordIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  os_unfair_lock_lock(&self->_lock);
  [(DNDSModeConfigurationsStore *)self _lock_purgeRecordIDs:dsCopy];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dsCopy;
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
        recordName = [v11 recordName];
        v14 = [(DNDSIDSRecordID *)v12 initWithIdentifier:recordName zone:@"DNDSModeConfigurations"];

        [array addObject:v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine addRecordIDsToSave:0 recordIDsToDelete:array];
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