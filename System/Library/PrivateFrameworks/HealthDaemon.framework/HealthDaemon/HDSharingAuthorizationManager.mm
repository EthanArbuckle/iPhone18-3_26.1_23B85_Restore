@interface HDSharingAuthorizationManager
- (BOOL)_addSharingAuthorizations:(void *)a3 recipientIdentifier:(void *)a4 databaseTransaction:(void *)a5 error:;
- (BOOL)_removeSharingAuthorizations:(void *)a3 recipientIdentifier:(void *)a4 databaseTransaction:(void *)a5 error:;
- (BOOL)addSharingAuthorizations:(id)a3 recipientIdentifier:(id)a4 error:(id *)a5;
- (BOOL)insertOrUpdateCodableRelationships:(id)a3 syncProvenance:(int64_t)a4 error:(id *)a5;
- (BOOL)insertOrUpdateRecipientIdentifier:(id)a3 sharingAuthorizations:(id)a4 dateModified:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 databaseTransaction:(id)a8 error:(id *)a9;
- (BOOL)markSharingAuthorizationsForDeletion:(id)a3 recipientIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeSharingAuthorizations:(id)a3 recipientIdentifier:(id)a4 error:(id *)a5;
- (BOOL)revokeRecipientWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)updateAuthorizationsForRecipientIdentifier:(id)a3 sharingAuthorizationsToAdd:(id)a4 sharingAuthorizationsToRemove:(id)a5 error:(id *)a6;
- (HDSharingAuthorizationManager)initWithProfile:(id)a3;
- (id)recipientIdentifiersForSharingAuthorizations:(id)a3 error:(id *)a4;
- (id)sharingAuthorizationsForRecipientIdentifier:(id)a3 error:(id *)a4;
- (id)sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:(id)a3 error:(id *)a4;
- (void)deleteMarkedSharingAuthorizations;
@end

@implementation HDSharingAuthorizationManager

- (HDSharingAuthorizationManager)initWithProfile:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDSharingAuthorizationManager;
  v5 = [(HDSharingAuthorizationManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277CCDA88]);
    v8 = HKLogSharing();
    v9 = [v7 initWithName:@"sharing-authorization-manager-observers" loggingCategory:v8];
    observers = v6->_observers;
    v6->_observers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    addedAuthorizationsByRecipient = v6->_addedAuthorizationsByRecipient;
    v6->_addedAuthorizationsByRecipient = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    removedAuthorizationsByRecipient = v6->_removedAuthorizationsByRecipient;
    v6->_removedAuthorizationsByRecipient = v13;
  }

  return v6;
}

- (id)sharingAuthorizationsForRecipientIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__161;
  v20 = __Block_byref_object_dispose__161;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HDSharingAuthorizationManager_sharingAuthorizationsForRecipientIdentifier_error___block_invoke;
  v13[3] = &unk_278619398;
  v15 = &v16;
  v9 = v6;
  v14 = v9;
  LODWORD(a4) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __83__HDSharingAuthorizationManager_sharingAuthorizationsForRecipientIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDSharingAuthorizationsEntity sharingAuthorizationsForRecipientIdentifier:*(a1 + 32) databaseTransaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__161;
  v20 = __Block_byref_object_dispose__161;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HDSharingAuthorizationManager_sharingAuthorizationsMarkedForDeletionForRecipientIdentifier_error___block_invoke;
  v13[3] = &unk_278619398;
  v15 = &v16;
  v9 = v6;
  v14 = v9;
  LODWORD(a4) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __100__HDSharingAuthorizationManager_sharingAuthorizationsMarkedForDeletionForRecipientIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDSharingAuthorizationsEntity sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:*(a1 + 32) databaseTransaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)recipientIdentifiersForSharingAuthorizations:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HDSharingAuthorizationManager_recipientIdentifiersForSharingAuthorizations_error___block_invoke;
  v15[3] = &unk_278613218;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  LODWORD(a4) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performReadTransactionWithHealthDatabase:v9 error:a4 block:v15];

  if (a4)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

uint64_t __84__HDSharingAuthorizationManager_recipientIdentifiersForSharingAuthorizations_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = a3;
    v9 = *v23;
    while (2)
    {
      a3 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * a3);
        v21 = 0;
        v11 = [HDSharingAuthorizationsEntity recipientIdentifiersForSharingAuthorization:v10 databaseTransaction:v5 error:&v21, v20];
        v12 = v21;
        v13 = v12;
        if (!v11)
        {
          v15 = v12;
          v16 = v15;
          LODWORD(a3) = v15 == 0;
          if (v15)
          {
            if (v20)
            {
              v17 = v15;
              *v20 = v16;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v14 = 0;
          goto LABEL_15;
        }

        [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];

        a3 = (a3 + 1);
      }

      while (v8 != a3);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return (a3 | v14) & 1;
}

- (BOOL)addSharingAuthorizations:(id)a3 recipientIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HDSharingAuthorizationManager_addSharingAuthorizations_recipientIdentifier_error___block_invoke;
  v15[3] = &unk_278615D40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  LOBYTE(a5) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v15];

  return a5;
}

- (BOOL)_addSharingAuthorizations:(void *)a3 recipientIdentifier:(void *)a4 databaseTransaction:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_7;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __105__HDSharingAuthorizationManager__addSharingAuthorizations_recipientIdentifier_databaseTransaction_error___block_invoke;
  v23[3] = &unk_278613830;
  v23[4] = a1;
  v12 = v9;
  v24 = v12;
  v13 = v10;
  v25 = v13;
  [v11 onCommit:v23 orRollback:0];
  if ([v13 type] == 1)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v22 = 0;
    v16 = +[HDSharingRelationshipEntity insertOrReplaceWithRecipientIdentifier:dateModified:syncProvenance:syncIdentity:databaseTransaction:error:](HDSharingRelationshipEntity, "insertOrReplaceWithRecipientIdentifier:dateModified:syncProvenance:syncIdentity:databaseTransaction:error:", v13, v14, 0, [WeakRetained currentSyncIdentityPersistentID], v11, &v22);
    v17 = v22;

    if (!v16)
    {
      v20 = v17;
      v18 = v20 == 0;
      if (v20)
      {
        if (a5)
        {
          v21 = v20;
          *a5 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_6;
    }
  }

  v18 = [HDSharingAuthorizationsEntity addSharingAuthorizations:v12 forRecipientIdentifier:v13 databaseTransaction:v11 error:a5];
LABEL_6:

LABEL_7:
  return v18;
}

void __105__HDSharingAuthorizationManager__addSharingAuthorizations_recipientIdentifier_databaseTransaction_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __105__HDSharingAuthorizationManager__addSharingAuthorizations_recipientIdentifier_databaseTransaction_error___block_invoke_2;
  v5[3] = &unk_2786292D0;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 notifyObservers:v5];
}

- (BOOL)removeSharingAuthorizations:(id)a3 recipientIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HDSharingAuthorizationManager_removeSharingAuthorizations_recipientIdentifier_error___block_invoke;
  v15[3] = &unk_278615D40;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  LOBYTE(a5) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v15];

  return a5;
}

- (BOOL)_removeSharingAuthorizations:(void *)a3 recipientIdentifier:(void *)a4 databaseTransaction:(void *)a5 error:
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __108__HDSharingAuthorizationManager__removeSharingAuthorizations_recipientIdentifier_databaseTransaction_error___block_invoke;
  v28[3] = &unk_278613830;
  v28[4] = a1;
  v12 = v9;
  v29 = v12;
  v13 = v10;
  v30 = v13;
  [v11 onCommit:v28 orRollback:0];
  if ([v13 type] == 1)
  {
    v27 = 0;
    v14 = [HDSharingRelationshipEntity entityWithRecipientIdentifier:v13 databaseTransaction:v11 error:&v27];
    v15 = v27;
    if (v15)
    {
      v16 = v15;
      if (a5)
      {
        v17 = v15;
        v18 = 0;
        *a5 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v18 = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    if (v14)
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      v26 = 0;
      v20 = [v14 setDateModified:v19 databaseTransaction:v11 error:&v26];
      v21 = v26;

      if ((v20 & 1) == 0)
      {
        v16 = v21;
        v18 = v16 == 0;
        if (v16)
        {
          if (a5)
          {
            v22 = v16;
            *a5 = v16;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      _HKInitializeLogging();
      v23 = HKLogSharing();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = a1;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Removing authorizations from non-existent relationship with recipient %@", buf, 0x16u);
      }

      v21 = 0;
    }
  }

  v18 = [HDSharingAuthorizationsEntity deleteSharingAuthorizations:v12 recipientIdentifier:v13 databaseTransaction:v11 error:a5];
LABEL_20:

LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

void __108__HDSharingAuthorizationManager__removeSharingAuthorizations_recipientIdentifier_databaseTransaction_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __108__HDSharingAuthorizationManager__removeSharingAuthorizations_recipientIdentifier_databaseTransaction_error___block_invoke_2;
  v5[3] = &unk_2786292D0;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 notifyObservers:v5];
}

- (BOOL)updateAuthorizationsForRecipientIdentifier:(id)a3 sharingAuthorizationsToAdd:(id)a4 sharingAuthorizationsToRemove:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __139__HDSharingAuthorizationManager_updateAuthorizationsForRecipientIdentifier_sharingAuthorizationsToAdd_sharingAuthorizationsToRemove_error___block_invoke;
  v19[3] = &unk_27861B120;
  v19[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  LOBYTE(a6) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v14 error:a6 block:v19];

  return a6;
}

uint64_t __139__HDSharingAuthorizationManager_updateAuthorizationsForRecipientIdentifier_sharingAuthorizationsToAdd_sharingAuthorizationsToRemove_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  LODWORD(v5) = [(HDSharingAuthorizationManager *)v5 _addSharingAuthorizations:v6 recipientIdentifier:v7 databaseTransaction:v8 error:a3];
  LODWORD(a3) = [(HDSharingAuthorizationManager *)*(a1 + 32) _removeSharingAuthorizations:*(a1 + 48) recipientIdentifier:v8 databaseTransaction:a3 error:?];

  return v5 & a3;
}

- (BOOL)revokeRecipientWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDSharingAuthorizationManager_revokeRecipientWithIdentifier_error___block_invoke;
  v11[3] = &unk_278613218;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  LOBYTE(a4) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v8 error:a4 block:v11];

  return a4;
}

BOOL __69__HDSharingAuthorizationManager_revokeRecipientWithIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HDSharingAuthorizationManager_revokeRecipientWithIdentifier_error___block_invoke_2;
  v15[3] = &unk_278613920;
  v6 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v6;
  [v5 onCommit:v15 orRollback:0];
  if ([*(a1 + 40) type] != 1)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 40);
  v14 = 0;
  v8 = [HDSharingRelationshipEntity deleteEntityWithRecipientIdentifier:v7 databaseTransaction:v5 error:&v14];
  v9 = v14;
  if (v8)
  {

LABEL_4:
    v10 = [HDSharingAuthorizationsEntity deleteAllSharingAuthorizationsForRecipientIdentifier:*(a1 + 40) databaseTransaction:v5 error:a3];
    goto LABEL_10;
  }

  v11 = v9;
  v10 = v11 == 0;
  if (v11)
  {
    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_10:
  return v10;
}

void __69__HDSharingAuthorizationManager_revokeRecipientWithIdentifier_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HDSharingAuthorizationManager_revokeRecipientWithIdentifier_error___block_invoke_3;
  v4[3] = &unk_2786292F8;
  v4[4] = v2;
  v5 = v1;
  [v3 notifyObservers:v4];
}

- (BOOL)markSharingAuthorizationsForDeletion:(id)a3 recipientIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__HDSharingAuthorizationManager_markSharingAuthorizationsForDeletion_recipientIdentifier_error___block_invoke;
  v15[3] = &unk_278613218;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  LOBYTE(a5) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v15];

  return a5;
}

- (void)deleteMarkedSharingAuthorizations
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  v9 = 0;
  v5 = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v4 error:&v9 block:&__block_literal_global_194];
  v6 = v9;

  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogSharing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error removing marked sharing authorizations %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)insertOrUpdateCodableRelationships:(id)a3 syncProvenance:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HDSharingAuthorizationManager_insertOrUpdateCodableRelationships_syncProvenance_error___block_invoke;
  v13[3] = &unk_278614698;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v11 = v8;
  LOBYTE(a5) = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:v10 error:a5 block:v13];

  return a5;
}

uint64_t __89__HDSharingAuthorizationManager_insertOrUpdateCodableRelationships_syncProvenance_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __89__HDSharingAuthorizationManager_insertOrUpdateCodableRelationships_syncProvenance_error___block_invoke_2;
  v46[3] = &unk_278613968;
  v46[4] = *(a1 + 32);
  v38 = v4;
  [v4 onCommit:v46 orRollback:0];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    v35 = *v43;
    v36 = a1;
LABEL_3:
    v8 = 0;
    v37 = v6;
    while (1)
    {
      if (*v43 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v42 + 1) + 8 * v8);
      if ([v9 recipientType] != 1)
      {
        goto LABEL_20;
      }

      v10 = objc_alloc(MEMORY[0x277CCD988]);
      v11 = [v9 recipientIdentifier];
      v12 = [v10 initForClinicalAccountIdentifier:v11];

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v14 = [WeakRetained syncIdentityManager];
      v15 = [v14 legacySyncIdentity];

      if (![v9 hasSyncIdentity])
      {
        goto LABEL_11;
      }

      v16 = [v9 syncIdentity];
      v41 = 0;
      v17 = [HDSyncIdentity syncIdentityWithCodable:v16 error:&v41];
      v18 = v41;

      if (v17)
      {
        v19 = objc_loadWeakRetained((*(v36 + 32) + 8));
        v20 = [v19 syncIdentityManager];
        v40 = v18;
        v21 = [v20 concreteIdentityForIdentity:v17 shouldCreate:1 transaction:v38 error:&v40];
        v22 = v40;

        if (v21)
        {

          v15 = v21;
          a1 = v36;
LABEL_11:
          v23 = *(a1 + 32);
          v24 = [v9 sharingAuthorizations];
          v25 = HDSharingAuthorizationsFromCodableSharingAuthorizations(v24);
          v26 = MEMORY[0x277CBEAA8];
          [v9 dateModified];
          v27 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
          v28 = *(a1 + 48);
          v29 = [v15 entity];
          LODWORD(v23) = [v23 insertOrUpdateRecipientIdentifier:v12 sharingAuthorizations:v25 dateModified:v27 syncProvenance:v28 syncIdentity:objc_msgSend(v29 databaseTransaction:"persistentID") error:{v38, a3}];

          if (!v23)
          {

            v31 = 0;
            goto LABEL_24;
          }

          v7 = v35;
          v6 = v37;
          goto LABEL_19;
        }

        _HKInitializeLogging();
        v30 = HKLogSharing();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v48 = v22;
          _os_log_fault_impl(&dword_228986000, v30, OS_LOG_TYPE_FAULT, "HDSharingRelationshipEntity ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
        }

        v15 = 0;
        v18 = v22;
        v7 = v35;
        a1 = v36;
        v6 = v37;
      }

      else
      {
        _HKInitializeLogging();
        v30 = HKLogSharing();
        a1 = v36;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v48 = v18;
          _os_log_fault_impl(&dword_228986000, v30, OS_LOG_TYPE_FAULT, "HDSharingRelationshipEntity SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
        }
      }

LABEL_19:
LABEL_20:
      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v31 = 1;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t __89__HDSharingAuthorizationManager_insertOrUpdateCodableRelationships_syncProvenance_error___block_invoke_2(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (v1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v2 = *(v1 + 24);
    v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v24;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v23 + 1) + 8 * i);
          v8 = *(v1 + 16);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __69__HDSharingAuthorizationManager__notifyAuthorizationsAddedAndRemoved__block_invoke;
          v22[3] = &unk_2786292F8;
          v22[4] = v1;
          v22[5] = v7;
          [v8 notifyObservers:v22];
        }

        v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v4);
    }

    [*(v1 + 24) removeAllObjects];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = *(v1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * j);
          v15 = *(v1 + 16);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __69__HDSharingAuthorizationManager__notifyAuthorizationsAddedAndRemoved__block_invoke_2;
          v17[3] = &unk_2786292F8;
          v17[4] = v1;
          v17[5] = v14;
          [v15 notifyObservers:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v11);
    }

    result = [*(v1 + 32) removeAllObjects];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)insertOrUpdateRecipientIdentifier:(id)a3 sharingAuthorizations:(id)a4 dateModified:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 databaseTransaction:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if ([v15 type] == 1)
  {
    v41 = self;
    v19 = a9;
    v45 = 0;
    v20 = [HDSharingRelationshipEntity entityWithRecipientIdentifier:v15 databaseTransaction:v18 error:&v45];
    v21 = v45;
    v22 = v21;
    if (!v20 && v21)
    {
      if (a9)
      {
        v23 = v21;
        LOBYTE(v19) = 0;
        *a9 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_34;
    }

    if (v20)
    {
      v39 = v16;
      v44 = v21;
      v24 = [v20 dateModifiedInDatabaseTransaction:v18 error:&v44];
      v25 = v44;

      if (!v24)
      {
        v27 = v25;
        v22 = v27;
        v19 = (v27 == 0);
        v16 = v39;
        if (v27)
        {
          if (a9)
          {
            v28 = v27;
            *a9 = v22;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_34;
      }

      v26 = [v24 hk_isAfterOrEqualToDate:v17];

      if (v26)
      {
        LOBYTE(v19) = 1;
        v22 = v25;
        v16 = v39;
LABEL_34:

        goto LABEL_35;
      }

      v22 = v25;
      v19 = a9;
      v16 = v39;
    }

    v43 = v22;
    v29 = [HDSharingRelationshipEntity insertOrReplaceWithRecipientIdentifier:v15 dateModified:v17 syncProvenance:a6 syncIdentity:a7 databaseTransaction:v18 error:&v43];
    v30 = v43;

    if (v29)
    {
      v40 = v29;
      v31 = v19;
      v42 = v30;
      v32 = [HDSharingAuthorizationsEntity sharingAuthorizationsForRecipientIdentifier:v15 databaseTransaction:v18 error:&v42];
      v22 = v42;

      if (v32)
      {
        [v16 arrayByExcludingObjectsInArray:v32];
        v33 = v19 = v16;
        [(NSMutableDictionary *)v41->_addedAuthorizationsByRecipient setObject:v33 forKeyedSubscript:v15];

        v34 = [v32 arrayByExcludingObjectsInArray:v19];
        [(NSMutableDictionary *)v41->_removedAuthorizationsByRecipient setObject:v34 forKeyedSubscript:v15];

        v16 = v19;
        LOBYTE(v19) = [HDSharingAuthorizationsEntity insertOrReplaceWithRecipientIdentifier:v15 sharingAuthorizations:v19 databaseTransaction:v18 error:v31];
      }

      else
      {
        v22 = v22;
        LOBYTE(v19) = v22 == 0;
        if (v22)
        {
          if (v31)
          {
            v37 = v22;
            *v31 = v22;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v32 = 0;
      }

      v29 = v40;
    }

    else
    {
      v32 = v30;
      if (v32)
      {
        if (v19)
        {
          v35 = v32;
          v36 = v19;
          LOBYTE(v19) = 0;
          *v36 = v32;
        }

        else
        {
          _HKLogDroppedError();
        }

        v22 = v32;
      }

      else
      {
        v22 = 0;
        LOBYTE(v19) = 1;
      }
    }

    goto LABEL_34;
  }

  LOBYTE(v19) = 1;
LABEL_35:

  return v19;
}

void __69__HDSharingAuthorizationManager__notifyAuthorizationsAddedAndRemoved__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 24);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v4];
  [v6 sharingAuthorizationManager:v3 didAddSharingAuthorizations:v7 recipientIdentifier:*(a1 + 40)];
}

void __69__HDSharingAuthorizationManager__notifyAuthorizationsAddedAndRemoved__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v4];
  [v6 sharingAuthorizationManager:v3 didRemoveSharingAuthorizations:v7 recipientIdentifier:*(a1 + 40)];
}

@end