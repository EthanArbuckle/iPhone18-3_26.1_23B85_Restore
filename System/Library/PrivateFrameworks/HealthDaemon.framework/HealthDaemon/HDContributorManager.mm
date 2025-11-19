@interface HDContributorManager
- (HDContributorManager)initWithProfile:(id)a3;
- (id)_imPreferredAccount;
- (id)_primaryAppleAccount;
- (id)contributorForReference:(id)a3 error:(id *)a4;
- (id)defaultContributorReference;
- (id)insertOrLookupContributorEntityWithReference:(id)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDContributorManager

- (HDContributorManager)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDContributorManager;
  v5 = [(HDContributorManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)contributorForReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDContributorEntity contributorForReference:v6 profile:WeakRetained error:a4];

  return v8;
}

- (id)defaultContributorReference
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained profileType];

  if (v3 == 1)
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

- (id)insertOrLookupContributorEntityWithReference:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 contributorType];
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v12 = [WeakRetained syncIdentityManager];
        v13 = [v12 currentSyncIdentity];
        v14 = [v13 entity];
        self = +[HDContributorEntity insertOrLookupContributorEntityForNoContributorWithTransaction:syncIdentity:error:](HDContributorEntity, "insertOrLookupContributorEntityForNoContributorWithTransaction:syncIdentity:error:", v9, [v14 persistentID], a5);

LABEL_9:
LABEL_17:

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v16 = [v8 persistentID];

    if (v16)
    {
      v17 = [v8 persistentID];
      self = [(HDSQLiteEntity *)HDContributorEntity entityWithPersistentID:v17];

      goto LABEL_22;
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Contributor reference for unknown type should have a persistent ID";
LABEL_20:
    [v22 hk_assignError:a5 code:100 format:{v23, v29}];
    goto LABEL_21;
  }

  if (v10 == 3)
  {
    if (!self)
    {
      goto LABEL_22;
    }

    v18 = v9;
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
      if (a5)
      {
        v25 = v21;
        self = 0;
        *a5 = WeakRetained;
      }

      else
      {
        _HKLogDroppedError();
        self = 0;
      }
    }

    else
    {
      v32 = [(HDContributorManager *)self _primaryAppleAccount];
      v26 = [(HDContributorManager *)self _imPreferredAccount];
      v31 = objc_loadWeakRetained(&self->_profile);
      v30 = [v31 syncIdentityManager];
      v27 = [v30 currentSyncIdentity];
      v28 = [v27 entity];
      self = +[HDContributorEntity insertPrimaryUserWithAppleID:callerID:syncIdentity:database:error:](HDContributorEntity, "insertPrimaryUserWithAppleID:callerID:syncIdentity:database:error:", v32, v26, [v28 persistentID], v19, a5);
    }

    goto LABEL_17;
  }

  if (v10 == 4)
  {
    v15 = [v8 UUID];

    if (v15)
    {
      WeakRetained = [v8 UUID];
      v12 = objc_loadWeakRetained(&self->_profile);
      self = [HDContributorEntity contributorEntityWithUUID:WeakRetained profile:v12 includeDeleted:0 error:a5];
      goto LABEL_9;
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Contributor reference for other type should have an UUID";
    goto LABEL_20;
  }

LABEL_10:
  [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"Contributor reference of invalid type %ld", objc_msgSend(v8, "contributorType")}];
LABEL_21:
  self = 0;
LABEL_22:

  return self;
}

- (id)_primaryAppleAccount
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v4 = [v3 aa_primaryAppleAccount];
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching primary Apple account", &v9, 0xCu);
    }
  }

  v6 = [v4 appleID];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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
  v5 = [v3 iMessageService];
  if (v5 && IMCoreLibraryCore() && getIMPreferredAccountForServiceSymbolLoc())
  {
    v6 = v5;
    IMPreferredAccountForServiceSymbolLoc = getIMPreferredAccountForServiceSymbolLoc();
    if (!IMPreferredAccountForServiceSymbolLoc)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IMAccount *getIMPreferredAccountForService(IMService *__strong)"];
      [v14 handleFailureInFunction:v15 file:@"HDContributorManager.m" lineNumber:35 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v8 = IMPreferredAccountForServiceSymbolLoc(v6);

    v9 = [v8 displayName];
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"non-nil";
      if (!v9)
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
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

@end