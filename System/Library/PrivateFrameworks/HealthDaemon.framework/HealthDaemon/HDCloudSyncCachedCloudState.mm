@interface HDCloudSyncCachedCloudState
- (BOOL)addDatabaseWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (BOOL)addZoneWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetServerChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (BOOL)setServerChangeToken:(id)token containerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (BOOL)unitTest_deleteDatabaseWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (HDCloudSyncCachedCloudState)init;
- (HDCloudSyncCachedCloudState)initWithRepository:(id)repository accessibilityAssertion:(id)assertion;
- (HDProfile)profile;
- (id)_singletonZoneOfType:(void *)type containerID:(unint64_t)d error:(void *)error filter:(void *)filter;
- (id)detailedDescription;
- (id)serverChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (id)zoneForRecordID:(id)d containerIdentifier:(id)identifier error:(id *)error;
- (id)zoneIdentifiersForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (id)zoneIdentifiersRequiringFetchForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (id)zoneIdentifiersWithIdentityLossForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error;
- (id)zonesByIdentifierForContainers:(id)containers error:(id *)error filter:(id)filter;
- (id)zonesByIdentifierWithError:(id *)error filter:(id)filter;
- (id)zonesForContainerID:(id)d error:(id *)error;
- (uint64_t)_resetServerChangeTokenForContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope error:;
@end

@implementation HDCloudSyncCachedCloudState

- (HDCloudSyncCachedCloudState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncCachedCloudState)initWithRepository:(id)repository accessibilityAssertion:(id)assertion
{
  v33 = *MEMORY[0x277D85DE8];
  repositoryCopy = repository;
  assertionCopy = assertion;
  v29.receiver = self;
  v29.super_class = HDCloudSyncCachedCloudState;
  v9 = [(HDCloudSyncCachedCloudState *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_repository, repository);
    profile = [repositoryCopy profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];
    objc_storeWeak(&v10->_profile, legacyRepositoryProfile);

    objc_storeStrong(&v10->_accessibilityAssertion, assertion);
    v28 = 0;
    v13 = repositoryCopy;
    userRecordName = [v13 userRecordName];
    profile2 = [v13 profile];
    legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
    v17 = [HDCachedCKDatabaseEntity deleteDatabasesNotMatchingUserRecordName:userRecordName profile:legacyRepositoryProfile2 error:&v28];

    if (v17)
    {
      profile3 = [v13 profile];
      legacyRepositoryProfile3 = [profile3 legacyRepositoryProfile];
      *buf = 0;
      v20 = [HDCachedSecureCKRecordEntity synchronizeRecordsWithProfile:legacyRepositoryProfile3 error:buf];
      v21 = *buf;

      if (v20 || ([v21 hk_isDatabaseAccessibilityError] & 1) != 0)
      {
        LOBYTE(v17) = 1;
      }

      else
      {
        v23 = v21;
        if (v23)
        {
          v23 = v23;
          v28 = v23;
        }

        LOBYTE(v17) = 0;
      }
    }
  }

  else
  {
    v28 = 0;
    v22 = repositoryCopy;
    LOBYTE(v17) = 0;
  }

  v24 = v28;
  if (!v17)
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v10;
      v31 = 2114;
      v32 = v24;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Error clearing and synchronizing cache %{public}@.", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)addDatabaseWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  repository = self->_repository;
  identifierCopy = identifier;
  userRecordName = [(HDCloudSyncRepository *)repository userRecordName];
  profile = [(HDCloudSyncCachedCloudState *)self profile];
  LOBYTE(error) = [HDCachedCKDatabaseEntity insertIfDoesNotExistWithContainerIdentifier:identifierCopy databaseScope:scope userRecordName:userRecordName serverChangeToken:0 profile:profile error:error];

  return error;
}

- (BOOL)setServerChangeToken:(id)token containerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  repository = self->_repository;
  identifierCopy = identifier;
  tokenCopy = token;
  userRecordName = [(HDCloudSyncRepository *)repository userRecordName];
  profile = [(HDCloudSyncCachedCloudState *)self profile];
  LOBYTE(error) = [HDCachedCKDatabaseEntity insertOrUpdateWithContainerIdentifier:identifierCopy databaseScope:scope userRecordName:userRecordName serverChangeToken:tokenCopy profile:profile error:error];

  return error;
}

- (BOOL)resetServerChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  identifierCopy = identifier;
  v9 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v10 = v9;
  if (self)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
  }

  else
  {
    accessibilityAssertion = 0;
  }

  v12 = [v9 contextWithAccessibilityAssertion:accessibilityAssertion];

  repository = [(HDCloudSyncCachedCloudState *)self repository];
  profile = [repository profile];
  database = [profile database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__HDCloudSyncCachedCloudState_resetServerChangeTokenForContainerIdentifier_databaseScope_error___block_invoke;
  v22[3] = &unk_278614698;
  v22[4] = self;
  v23 = identifierCopy;
  scopeCopy = scope;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__HDCloudSyncCachedCloudState_resetServerChangeTokenForContainerIdentifier_databaseScope_error___block_invoke_2;
  v19[3] = &unk_2786146C0;
  v19[4] = self;
  v20 = v23;
  scopeCopy2 = scope;
  v16 = v23;
  v17 = [database performTransactionWithContext:v12 error:error block:v22 inaccessibilityHandler:v19];

  return v17;
}

- (uint64_t)_resetServerChangeTokenForContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope error:
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
  {
    v52 = 0;
    v8 = [self zoneIdentifiersForContainerIdentifier:v7 databaseScope:identifier error:&v52];
    v9 = v52;
    v10 = v9;
    if (v8 || !v9)
    {
      scopeCopy = scope;
      v43 = v9;
      v44 = v7;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v49;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v49 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v48 + 1) + 8 * i);
            v18 = [HDCloudSyncCachedZone alloc];
            repository = [self repository];
            v20 = [(HDCloudSyncCachedZone *)v18 initForZoneIdentifier:v17 repository:repository accessibilityAssertion:*(self + 64)];

            v47 = 0;
            LOBYTE(repository) = [v20 deleteZoneWithError:&v47];
            v21 = v47;
            if ((repository & 1) == 0)
            {
              v31 = v21;
              v32 = v31;
              v10 = v43;
              v7 = v44;
              if (v31)
              {
                if (scopeCopy)
                {
                  v33 = v31;
                  *scopeCopy = v32;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              goto LABEL_26;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v46 = 0;
      v7 = v44;
      v22 = [self setServerChangeToken:0 containerIdentifier:v44 databaseScope:identifier error:&v46];
      v23 = v46;
      v24 = v23;
      if (v22)
      {
        v41 = v23;
        uUID = [MEMORY[0x277CCAD78] UUID];
        repository2 = [self repository];
        profile = [repository2 profile];
        legacyRepositoryProfile = [profile legacyRepositoryProfile];
        v45 = 0;
        v29 = HDSetCloudSyncAttachmentManagementUUID(uUID, legacyRepositoryProfile, &v45);
        v30 = v45;

        if (v29)
        {
          self = 1;
          v10 = v43;
          v24 = v41;
        }

        else
        {
          _HKInitializeLogging();
          v36 = *MEMORY[0x277CCC328];
          v10 = v43;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy = self;
            v55 = 2114;
            v56 = v30;
            _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to reset attachment UUID in response to a reset change token, %{public}@", buf, 0x16u);
          }

          v37 = v30;
          v30 = v37;
          self = v37 == 0;
          v24 = v41;
          if (v37)
          {
            if (scopeCopy)
            {
              v38 = v37;
              *scopeCopy = v30;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }
      }

      else
      {
        v34 = v23;
        v30 = v34;
        if (v34)
        {
          v10 = v43;
          if (scopeCopy)
          {
            v35 = v34;
            self = 0;
            *scopeCopy = v30;
          }

          else
          {
            _HKLogDroppedError();
            self = 0;
          }
        }

        else
        {
          self = 0;
          v10 = v43;
        }
      }
    }

    else if (scope)
    {
      v11 = v9;
      self = 0;
      *scope = v10;
    }

    else
    {
      _HKLogDroppedError();
LABEL_26:
      self = 0;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)serverChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  identifierCopy = identifier;
  profile = [(HDCloudSyncCachedCloudState *)self profile];
  v10 = [HDCachedCKDatabaseEntity serverChangeTokenForContainerIdentifier:identifierCopy databaseScope:scope profile:profile error:error];

  return v10;
}

- (BOOL)addZoneWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDCloudSyncCachedCloudState_addZoneWithIdentifier_error___block_invoke;
  v11[3] = &unk_278613218;
  v12 = identifierCopy;
  selfCopy = self;
  v9 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

BOOL __59__HDCloudSyncCachedCloudState_addZoneWithIdentifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = a2;
  v5 = [*(a1 + 32) containerIdentifier];
  v6 = [*(a1 + 32) scope];
  v7 = [*(a1 + 32) zoneIdentifier];
  v8 = [v7 zoneName];
  v9 = [*(a1 + 32) zoneIdentifier];
  v10 = [v9 ownerName];
  v11 = [*(*(a1 + 40) + 16) userRecordName];
  v12 = [*(a1 + 40) profile];
  v22 = a3;
  LODWORD(a3) = [HDCachedCKRecordZoneEntity insertIfDoesNotExistWithContainerIdentifier:v5 databaseScope:v6 zoneName:v8 ownerName:v10 userRecordName:v11 serverChangeToken:0 profile:v12 error:a3];

  if (a3)
  {
    v13 = [*(a1 + 32) containerIdentifier];
    v14 = [*(a1 + 32) scope];
    v15 = [*(a1 + 32) zoneIdentifier];
    v16 = [v15 zoneName];
    v17 = [*(a1 + 32) zoneIdentifier];
    v18 = [v17 ownerName];
    v19 = v23;
    v20 = [HDCachedCKRecordZoneEntity setRequiresFetch:1 containerIdentifier:v13 databaseScope:v14 zoneName:v16 ownerName:v18 transaction:v23 error:v22];
  }

  else
  {
    v20 = 0;
    v19 = v23;
  }

  return v20;
}

- (id)zoneIdentifiersForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  identifierCopy = identifier;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  repository = [(HDCloudSyncCachedCloudState *)self repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HDCloudSyncCachedCloudState_zoneIdentifiersForContainerIdentifier_databaseScope_error___block_invoke;
  v17[3] = &unk_2786146E8;
  scopeCopy = scope;
  v18 = identifierCopy;
  selfCopy = self;
  v13 = v9;
  v20 = v13;
  v14 = identifierCopy;
  LODWORD(error) = [HDCachedCKRecordZoneEntity enumerateCKRecordZoneIDsWithContainerIdentifier:v14 databaseScope:scope profile:legacyRepositoryProfile error:error enumerationHandler:v17];

  if (error)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __89__HDCloudSyncCachedCloudState_zoneIdentifiersForContainerIdentifier_databaseScope_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [[HDCloudSyncZoneIdentifier alloc] initForZone:v6 container:*(a1 + 32) scope:*(a1 + 56)];

  if (a4 == 1)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v7 zoneIdentifier];
      v12 = *(a1 + 32);
      v13 = HDCKDatabaseScopeToString(*(a1 + 56));
      v16 = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring zone %{public}@; with state Identity Lost, container %{public}@, database %{public}@", &v16, 0x2Au);
    }
  }

  else
  {
    [*(a1 + 48) addObject:v7];
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)zoneIdentifiersRequiringFetchForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  identifierCopy = identifier;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  repository = [(HDCloudSyncCachedCloudState *)self repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__HDCloudSyncCachedCloudState_zoneIdentifiersRequiringFetchForContainerIdentifier_databaseScope_error___block_invoke;
  v17[3] = &unk_278614710;
  v18 = identifierCopy;
  scopeCopy = scope;
  v13 = v9;
  v19 = v13;
  v14 = identifierCopy;
  LODWORD(error) = [HDCachedCKRecordZoneEntity enumerateCKRecordZoneIDsWithContainerIdentifier:v14 databaseScope:scope profile:legacyRepositoryProfile error:error enumerationHandler:v17];

  if (error)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __103__HDCloudSyncCachedCloudState_zoneIdentifiersRequiringFetchForContainerIdentifier_databaseScope_error___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (a4 != 1 && a3)
  {
    v5 = a2;
    v6 = [[HDCloudSyncZoneIdentifier alloc] initForZone:v5 container:*(a1 + 32) scope:*(a1 + 48)];

    [*(a1 + 40) addObject:v6];
  }

  return 1;
}

- (id)zoneIdentifiersWithIdentityLossForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  identifierCopy = identifier;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  repository = [(HDCloudSyncCachedCloudState *)self repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__HDCloudSyncCachedCloudState_zoneIdentifiersWithIdentityLossForContainerIdentifier_databaseScope_error___block_invoke;
  v17[3] = &unk_278614710;
  v18 = identifierCopy;
  scopeCopy = scope;
  v13 = v9;
  v19 = v13;
  v14 = identifierCopy;
  LODWORD(error) = [HDCachedCKRecordZoneEntity enumerateCKRecordZoneIDsWithContainerIdentifier:v14 databaseScope:scope profile:legacyRepositoryProfile error:error enumerationHandler:v17];

  if (error)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __105__HDCloudSyncCachedCloudState_zoneIdentifiersWithIdentityLossForContainerIdentifier_databaseScope_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v5 = a2;
    v6 = [[HDCloudSyncZoneIdentifier alloc] initForZone:v5 container:*(a1 + 32) scope:*(a1 + 48)];

    [*(a1 + 40) addObject:v6];
  }

  return 1;
}

- (id)zonesByIdentifierWithError:(id *)error filter:(id)filter
{
  filterCopy = filter;
  repository = [(HDCloudSyncCachedCloudState *)self repository];
  allCKContainers = [repository allCKContainers];
  v9 = [(HDCloudSyncCachedCloudState *)self zonesByIdentifierForContainers:allCKContainers error:error filter:filterCopy];

  return v9;
}

- (id)zonesByIdentifierForContainers:(id)containers error:(id *)error filter:(id)filter
{
  v65 = *MEMORY[0x277D85DE8];
  containersCopy = containers;
  filterCopy = filter;
  v59 = 0;
  selfCopy = self;
  if (!self)
  {
    v18 = 0;
    v47 = 0;
    goto LABEL_15;
  }

  profile = [(HDCloudSyncCachedCloudState *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  *buf = 0;
  v9 = [cloudSyncManager shareOwnerParticipantWithError:buf];
  v10 = *buf;
  userIdentity = [v9 userIdentity];
  userRecordID = [userIdentity userRecordID];
  recordName = [userRecordID recordName];

  if (!recordName)
  {
    if (v10)
    {
      v15 = v10;
      v47 = 0;
      v59 = v10;
      goto LABEL_14;
    }

    profile2 = [(HDCloudSyncCachedCloudState *)selfCopy profile];
    profileType = [profile2 profileType];

    if (profileType > 3)
    {
      if (profileType == 100 || profileType == 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((profileType - 2) < 2)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:&v59 code:729 format:{@"Profile type %ld requires a zone owner name but none was present.", profileType, containersCopy}];
LABEL_13:
        v47 = 0;
        goto LABEL_14;
      }

      if (profileType == 1)
      {
LABEL_37:
        v14 = *MEMORY[0x277CBBF28];
        goto LABEL_4;
      }
    }

    [MEMORY[0x277CCA9B8] hk_assignError:&v59 code:729 format:{@"Unexpected profile type %ld; requiring zone owner to be safe.", profileType, containersCopy}];
    goto LABEL_13;
  }

  v14 = recordName;
LABEL_4:
  v47 = v14;
LABEL_14:

  v18 = v59;
LABEL_15:
  v19 = v18;
  v42 = v19;
  if (v47 || !v19)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = __Block_byref_object_copy__8;
    v63 = __Block_byref_object_dispose__8;
    v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = containersCopy;
    v23 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    v24 = selfCopy;
    if (v23)
    {
      v44 = *v56;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v56 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v55 + 1) + 8 * i);
          repository = [(HDCloudSyncCachedCloudState *)v24 repository];
          profileIdentifier = [repository profileIdentifier];
          v29 = HDDatabaseForContainer(v26, profileIdentifier);

          containerIdentifier = [v26 containerIdentifier];
          databaseScope = [v29 databaseScope];
          repository2 = [(HDCloudSyncCachedCloudState *)selfCopy repository];
          profile3 = [repository2 profile];
          legacyRepositoryProfile = [profile3 legacyRepositoryProfile];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __75__HDCloudSyncCachedCloudState_zonesByIdentifierForContainers_error_filter___block_invoke;
          v49[3] = &unk_278614758;
          v49[4] = v26;
          v35 = v29;
          v50 = v35;
          v51 = selfCopy;
          v52 = v47;
          v53 = filterCopy;
          v54 = buf;
          LOBYTE(v29) = [HDCachedCKRecordZoneEntity enumerateCKRecordZoneIDsWithContainerIdentifier:containerIdentifier databaseScope:databaseScope profile:legacyRepositoryProfile error:error enumerationHandler:v49];

          if ((v29 & 1) == 0)
          {

            v22 = 0;
            goto LABEL_31;
          }

          v24 = selfCopy;
        }

        v23 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v22 = *(*&buf[8] + 40);
LABEL_31:
    _Block_object_dispose(buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v38 = v20;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_profile);
      profileIdentifier2 = [WeakRetained profileIdentifier];
      *buf = 138543874;
      *&buf[4] = selfCopy;
      *&buf[12] = 2114;
      *&buf[14] = profileIdentifier2;
      *&buf[22] = 2114;
      v62 = v42;
      _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Cannot get zone owner name for profile %{public}@ with error %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v21 = v42;
      v22 = 0;
      *error = v42;
    }

    else
    {
      _HKLogDroppedError();
      v22 = 0;
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __75__HDCloudSyncCachedCloudState_zonesByIdentifierForContainers_error_filter___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [HDCloudSyncZoneIdentifier alloc];
  v8 = [*(a1 + 32) containerIdentifier];
  v9 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v7, "initForZone:container:scope:", v6, v8, [*(a1 + 40) databaseScope]);

  if (a4)
  {
    if (a4 == 1)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 48);
        v12 = v10;
        v13 = [v9 zoneIdentifier];
        v14 = [*(a1 + 32) containerIdentifier];
        v15 = HDCKDatabaseScopeToString([*(a1 + 40) databaseScope]);
        v44 = 138544130;
        v45 = v11;
        v46 = 2114;
        v47 = v13;
        v48 = 2114;
        v49 = v14;
        v50 = 2114;
        v51 = v15;
        _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring zone %{public}@; with state Identity Lost, container %{public}@, database %{public}@", &v44, 0x2Au);

LABEL_16:
        goto LABEL_17;
      }
    }

    goto LABEL_17;
  }

  if (!*(a1 + 56))
  {
LABEL_8:
    if ((*(*(a1 + 64) + 16))())
    {
      v24 = [HDCloudSyncCachedZone alloc];
      v25 = [*(a1 + 48) repository];
      v26 = *(a1 + 48);
      if (v26)
      {
        v27 = *(v26 + 64);
      }

      else
      {
        v27 = 0;
      }

      v28 = [(HDCloudSyncCachedZone *)v24 initForZoneIdentifier:v9 repository:v25 accessibilityAssertion:v27];

      [*(*(*(a1 + 72) + 8) + 40) setObject:v28 forKeyedSubscript:v9];
    }

    goto LABEL_17;
  }

  v16 = [v9 zoneIdentifier];
  v17 = [v16 ownerName];
  v18 = [v17 isEqualToString:*(a1 + 56)];

  if (v18)
  {
    v19 = [v9 zoneIdentifier];
    v20 = [v19 hd_syncCircleIdentifier];
    v21 = [*(a1 + 48) repository];
    v22 = [v21 syncCircleIdentifier];
    v23 = [v20 isEqualToString:v22];

    if ((v23 & 1) == 0)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 48);
        v12 = v35;
        v37 = [v9 zoneIdentifier];
        v38 = [v9 zoneIdentifier];
        v39 = [v38 hd_syncCircleIdentifier];
        v40 = [*(a1 + 48) repository];
        v41 = [v40 syncCircleIdentifier];
        v44 = 138544130;
        v45 = v36;
        v46 = 2114;
        v47 = v37;
        v48 = 2114;
        v49 = v39;
        v50 = 2114;
        v51 = v41;
        _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring zone %{public}@; syncCircleIdentifier %{public}@ does not match our expected syncCircleIdentifier %{public}@", &v44, 0x2Au);

        goto LABEL_16;
      }

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  _HKInitializeLogging();
  v29 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 48);
    v12 = v29;
    v31 = [v9 zoneIdentifier];
    v32 = [v9 zoneIdentifier];
    v33 = [v32 ownerName];
    v34 = *(a1 + 56);
    v44 = 138544130;
    v45 = v30;
    v46 = 2114;
    v47 = v31;
    v48 = 2114;
    v49 = v33;
    v50 = 2114;
    v51 = v34;
    _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring zone %{public}@; owner %{public}@ does not match our expected zone owner name %{public}@", &v44, 0x2Au);

    goto LABEL_16;
  }

LABEL_17:

  v42 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_singletonZoneOfType:(void *)type containerID:(unint64_t)d error:(void *)error filter:(void *)filter
{
  v39 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = errorCopy;
  if (type)
  {
    dCopy = d;
    v28 = 0;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __77__HDCloudSyncCachedCloudState__singletonZoneOfType_containerID_error_filter___block_invoke;
    v24 = &unk_278614780;
    v9 = errorCopy;
    v25 = v9;
    v26 = 0;
    v10 = [type zonesByIdentifierWithError:&v28 filter:&v21];
    v11 = v28;
    v12 = v11;
    if (v10 || !v11)
    {
      allValues = [v10 allValues];
      if ([allValues count] >= 2)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          v18 = v15;
          v19 = HDCloudSyncZoneTypeToString(d);
          profile = [type profile];
          *buf = 138544386;
          typeCopy = type;
          v31 = 2114;
          v32 = v19;
          v33 = 2114;
          v34 = profile;
          v35 = 2114;
          v36 = v9;
          v37 = 2112;
          v38 = allValues;
          _os_log_fault_impl(&dword_228986000, v18, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple cached zones of type %{public}@ for profile %{public}@, container %{public}@. This is unexpected. (%@)", buf, 0x34u);
        }
      }

      type = [allValues firstObject];
    }

    else if (filter)
    {
      v13 = v11;
      type = 0;
      *filter = v12;
    }

    else
    {
      _HKLogDroppedError();
      type = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return type;
}

uint64_t __77__HDCloudSyncCachedCloudState__singletonZoneOfType_containerID_error_filter___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == a1[6])
  {
    v4 = [v3 containerIdentifier];
    if ([v4 isEqualToString:a1[4]])
    {
      v5 = a1[5];
      if (v5)
      {
        v6 = (*(v5 + 16))(v5, v3);
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)zoneForRecordID:(id)d containerIdentifier:(id)identifier error:(id *)error
{
  dCopy = d;
  identifierCopy = identifier;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __73__HDCloudSyncCachedCloudState_zoneForRecordID_containerIdentifier_error___block_invoke;
  v19 = &unk_2786147A8;
  v20 = dCopy;
  v21 = identifierCopy;
  v10 = identifierCopy;
  v11 = dCopy;
  v12 = [(HDCloudSyncCachedCloudState *)self zonesByIdentifierWithError:error filter:&v16];
  allValues = [v12 allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

uint64_t __73__HDCloudSyncCachedCloudState_zoneForRecordID_containerIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v5 = [*(a1 + 32) zoneID];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 containerIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)zonesForContainerID:(id)d error:(id *)error
{
  dCopy = d;
  v16 = 0;
  v7 = [(HDCloudSyncCachedCloudState *)self zonesByIdentifierWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7 || !v8)
  {
    allValues = [v7 allValues];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__HDCloudSyncCachedCloudState_zonesForContainerID_error___block_invoke;
    v14[3] = &unk_2786147D0;
    v15 = dCopy;
    v11 = [allValues hk_filter:v14];
  }

  else if (error)
  {
    v10 = v8;
    v11 = 0;
    *error = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

  return v11;
}

uint64_t __57__HDCloudSyncCachedCloudState_zonesForContainerID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 zoneIdentifier];
  v4 = [v3 containerIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)detailedDescription
{
  selfCopy3 = self;
  v98 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  if (self)
  {
    v83 = 0;
    v4 = [(HDCloudSyncCachedCloudState *)self zonesByIdentifierWithError:&v83];
    v5 = v83;
    v6 = v5;
    if (v4 || !v5)
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = [v4 allValues];
      v9 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
      if (v9)
      {
        v10 = v9;
        v58 = v6;
        v59 = v4;
        v61 = v3;
        v11 = *v80;
        v12 = 1;
        do
        {
          v13 = 0;
          v65 = v10;
          do
          {
            if (*v80 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v79 + 1) + 8 * v13);
            v15 = objc_opt_class();
            v78 = 0;
            v16 = [v14 recordsForClass:v15 error:&v78];
            v17 = v78;
            v18 = v17;
            if (v16)
            {
              v19 = 1;
            }

            else
            {
              v19 = v17 == 0;
            }

            if (v19)
            {
              v20 = v11;
              v77 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              v21 = v16;
              v22 = [v21 countByEnumeratingWithState:&v74 objects:v85 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v75;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v75 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v74 + 1) + 8 * i);
                    if (v26)
                    {
                      supportedProtocolVersion = [v26 supportedProtocolVersion];
                      if (v12 >= supportedProtocolVersion)
                      {
                        v12 = supportedProtocolVersion;
                      }
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v74 objects:v85 count:16];
                }

                while (v23);
              }

              v11 = v20;
              v10 = v65;
            }

            else
            {
              _HKInitializeLogging();
              v28 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v30 = v28;
                zoneIdentifier = [v14 zoneIdentifier];
                *buf = 138543874;
                selfCopy2 = self;
                v88 = 2114;
                v89 = zoneIdentifier;
                v90 = 2114;
                v91 = v18;
                _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
              }
            }

            ++v13;
          }

          while (v13 != v10);
          v10 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
        }

        while (v10);
        v8 = v12;
        selfCopy3 = self;
        v4 = v59;
        v3 = v61;
        v6 = v58;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v92 = 138543618;
        selfCopy4 = selfCopy3;
        v94 = 2114;
        v95 = v6;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers while generating push targets, %{public}@", v92, 0x16u);
      }

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  obja = [v3 stringWithFormat:@"%@\nMinimum supported protocol: %ld\n\n", selfCopy3, v8];
  v73 = 0;
  v32 = [(HDCloudSyncCachedCloudState *)selfCopy3 zonesByIdentifierWithError:&v73];
  v33 = v73;
  v34 = v33;
  if (!v32)
  {
    if (v33)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v92 = 138543618;
        selfCopy4 = selfCopy3;
        v94 = 2114;
        v95 = v34;
        _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve zone identifiers for cached cloud state description, %{public}@", v92, 0x16u);
      }
    }
  }

  allValues = [v32 allValues];
  v37 = [allValues hk_filter:&__block_literal_global_313];

  if ([v37 count])
  {
    v62 = v34;
    v63 = v32;
    [obja appendFormat:@"Master Records (%ld):\n", objc_msgSend(v37, "count")];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v60 = v37;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v70;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v70 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v69 + 1) + 8 * j);
          v44 = objc_opt_class();
          v68 = 0;
          v45 = [v43 recordsForClass:v44 error:&v68];
          v46 = v68;
          v47 = v46;
          if (v45)
          {
            v48 = 1;
          }

          else
          {
            v48 = v46 == 0;
          }

          if (v48)
          {
            firstObject = [v45 firstObject];
            v50 = [firstObject description];
            v51 = [v50 hk_stringIndentedBy:4];
            [obja appendFormat:@"%@\n\n", v51];
          }

          else
          {
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v54 = v52;
              zoneIdentifier2 = [v43 zoneIdentifier];
              *v92 = 138543874;
              selfCopy4 = self;
              v94 = 2114;
              v95 = zoneIdentifier2;
              v96 = 2114;
              v97 = v47;
              _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", v92, 0x20u);
            }
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v69 objects:v84 count:16];
      }

      while (v40);
    }

    v34 = v62;
    v32 = v63;
    v37 = v60;
  }

  v56 = *MEMORY[0x277D85DE8];

  return obja;
}

BOOL __50__HDCloudSyncCachedCloudState_detailedDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zoneIdentifier];
  v3 = [v2 type] == 0;

  return v3;
}

- (BOOL)unitTest_deleteDatabaseWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope error:(id *)error
{
  v7 = HDPredicateForContainerIdentifierAndDatabaseScope(identifier, scope);
  profile = [(HDCloudSyncCachedCloudState *)self profile];
  database = [profile database];
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKDatabaseEntity deleteEntitiesWithPredicate:v7 healthDatabase:database error:error];

  return error;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end