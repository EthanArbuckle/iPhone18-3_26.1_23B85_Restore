@interface HDContributorManager
- (HDContributorManager)initWithProfile:(id)profile;
- (id)_imPreferredAccount;
- (id)_primaryAppleAccount;
- (id)contributorForReference:(id)reference error:(id *)error;
- (id)defaultContributorReference;
- (id)insertOrLookupContributorEntityWithReference:(id)reference transaction:(id)transaction error:(id *)error;
@end

@implementation HDContributorManager

- (HDContributorManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDContributorManager;
  v5 = [(HDContributorManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (id)contributorForReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDContributorEntity contributorForReference:referenceCopy profile:WeakRetained error:error];

  return v8;
}

- (id)defaultContributorReference
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileType = [WeakRetained profileType];

  if (profileType == 1)
  {
    +[HDContributorReference contributorReferenceForNoContributor];
  }

  else
  {
    +[HDContributorReference contributorReferenceForPrimaryUser];
  }
  v4 = ;

  return v4;
}

- (id)insertOrLookupContributorEntityWithReference:(id)reference transaction:(id)transaction error:(id *)error
{
  referenceCopy = reference;
  transactionCopy = transaction;
  contributorType = [referenceCopy contributorType];
  if (contributorType <= 2)
  {
    if (contributorType != 1)
    {
      if (contributorType == 2)
      {
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        syncIdentityManager = [WeakRetained syncIdentityManager];
        currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
        entity = [currentSyncIdentity entity];
        self = +[HDContributorEntity insertOrLookupContributorEntityForNoContributorWithTransaction:syncIdentity:error:](HDContributorEntity, "insertOrLookupContributorEntityForNoContributorWithTransaction:syncIdentity:error:", transactionCopy, [entity persistentID], error);

LABEL_9:
LABEL_17:

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    persistentID = [referenceCopy persistentID];

    if (persistentID)
    {
      persistentID2 = [referenceCopy persistentID];
      self = [(HDSQLiteEntity *)HDContributorEntity entityWithPersistentID:persistentID2];

      goto LABEL_22;
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Contributor reference for unknown type should have a persistent ID";
LABEL_20:
    [v22 hk_assignError:error code:100 format:{v23, v29}];
    goto LABEL_21;
  }

  if (contributorType == 3)
  {
    if (!self)
    {
      goto LABEL_22;
    }

    v18 = transactionCopy;
    v19 = [v18 databaseForEntityClass:objc_opt_class()];

    v33 = 0;
    v20 = [HDContributorEntity primaryUserContributorInDatabase:v19 error:&v33];
    v21 = v33;
    WeakRetained = v21;
    if (v20)
    {
      self = v20;
    }

    else if (v21)
    {
      if (error)
      {
        v25 = v21;
        self = 0;
        *error = WeakRetained;
      }

      else
      {
        _HKLogDroppedError();
        self = 0;
      }
    }

    else
    {
      _primaryAppleAccount = [(HDContributorManager *)self _primaryAppleAccount];
      _imPreferredAccount = [(HDContributorManager *)self _imPreferredAccount];
      v31 = objc_loadWeakRetained(&self->_profile);
      syncIdentityManager2 = [v31 syncIdentityManager];
      currentSyncIdentity2 = [syncIdentityManager2 currentSyncIdentity];
      entity2 = [currentSyncIdentity2 entity];
      self = +[HDContributorEntity insertPrimaryUserWithAppleID:callerID:syncIdentity:database:error:](HDContributorEntity, "insertPrimaryUserWithAppleID:callerID:syncIdentity:database:error:", _primaryAppleAccount, _imPreferredAccount, [entity2 persistentID], v19, error);
    }

    goto LABEL_17;
  }

  if (contributorType == 4)
  {
    uUID = [referenceCopy UUID];

    if (uUID)
    {
      WeakRetained = [referenceCopy UUID];
      syncIdentityManager = objc_loadWeakRetained(&self->_profile);
      self = [HDContributorEntity contributorEntityWithUUID:WeakRetained profile:syncIdentityManager includeDeleted:0 error:error];
      goto LABEL_9;
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Contributor reference for other type should have an UUID";
    goto LABEL_20;
  }

LABEL_10:
  [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Contributor reference of invalid type %ld", objc_msgSend(referenceCopy, "contributorType")}];
LABEL_21:
  self = 0;
LABEL_22:

  return self;
}

- (id)_primaryAppleAccount
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  if (!aa_primaryAppleAccount)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching primary Apple account", &v9, 0xCu);
    }
  }

  appleID = [aa_primaryAppleAccount appleID];

  v7 = *MEMORY[0x277D85DE8];

  return appleID;
}

- (id)_imPreferredAccount
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v3 = getIMServiceImplClass_softClass;
  v19 = getIMServiceImplClass_softClass;
  if (!getIMServiceImplClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIMServiceImplClass_block_invoke;
    v21 = &unk_278616E90;
    v22 = &v16;
    __getIMServiceImplClass_block_invoke(buf);
    v3 = v17[3];
  }

  v4 = v3;
  _Block_object_dispose(&v16, 8);
  iMessageService = [v3 iMessageService];
  if (iMessageService && IMCoreLibraryCore() && getIMPreferredAccountForServiceSymbolLoc())
  {
    v6 = iMessageService;
    IMPreferredAccountForServiceSymbolLoc = getIMPreferredAccountForServiceSymbolLoc();
    if (!IMPreferredAccountForServiceSymbolLoc)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IMAccount *getIMPreferredAccountForService(IMService *__strong)"];
      [currentHandler handleFailureInFunction:v15 file:@"HDContributorManager.m" lineNumber:35 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v8 = IMPreferredAccountForServiceSymbolLoc(v6);

    displayName = [v8 displayName];
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"non-nil";
      if (!displayName)
      {
        v11 = @"nil";
      }

      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: returned %{public}@ string", buf, 0x16u);
    }
  }

  else
  {
    displayName = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return displayName;
}

@end