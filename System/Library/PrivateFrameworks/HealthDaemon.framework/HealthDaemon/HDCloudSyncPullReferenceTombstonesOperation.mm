@interface HDCloudSyncPullReferenceTombstonesOperation
- (BOOL)performWithError:(id *)error;
@end

@implementation HDCloudSyncPullReferenceTombstonesOperation

- (BOOL)performWithError:(id *)error
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v65 = 0;
  v9 = HDCloudSyncAttachmentReferenceTombstoneEpoch(legacyRepositoryProfile, &v65);
  v10 = v65;

  v69 = v9;
  if (v67[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (v11)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    containerIdentifier = [primaryCKContainer containerIdentifier];
    v64 = 0;
    v52 = [cachedCloudState attachmentZoneForContainerID:containerIdentifier error:&v64];
    v18 = v64;

    v19 = v52;
    if (!v52 && v18)
    {
      v20 = v18;
      v21 = v20;
      if (error)
      {
        v22 = v20;
        v23 = 0;
        *error = v21;
      }

      else
      {
        _HKLogDroppedError();
        v23 = 0;
        v19 = 0;
      }

      goto LABEL_32;
    }

    if (!v52)
    {
      configuration4 = [(HDCloudSyncOperation *)self configuration];
      repository3 = [configuration4 repository];
      profileType = [repository3 profileType];

      v19 = 0;
      if (profileType != 1)
      {
        v23 = 1;
LABEL_33:

        goto LABEL_34;
      }
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__HDCloudSyncPullReferenceTombstonesOperation_performWithError___block_invoke;
    aBlock[3] = &unk_27861A500;
    v60 = v19;
    v63 = &v66;
    v50 = v29;
    v61 = v50;
    selfCopy = self;
    v30 = _Block_copy(aBlock);
    v31 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    accessibilityAssertion = [configuration5 accessibilityAssertion];
    v51 = [v31 contextWithAccessibilityAssertion:accessibilityAssertion];

    configuration6 = [(HDCloudSyncOperation *)self configuration];
    repository4 = [configuration6 repository];
    profile2 = [repository4 profile];
    database = [profile2 database];
    v58 = 0;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __64__HDCloudSyncPullReferenceTombstonesOperation_performWithError___block_invoke_3;
    v56[3] = &unk_27861A528;
    v57 = v30;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __64__HDCloudSyncPullReferenceTombstonesOperation_performWithError___block_invoke_4;
    v54[3] = &unk_278618968;
    v49 = v57;
    v55 = v49;
    LODWORD(configuration5) = [database performTransactionWithContext:v51 error:&v58 block:v56 inaccessibilityHandler:v54];
    v38 = v58;

    if (configuration5)
    {
      v39 = v67[3];
      configuration7 = [(HDCloudSyncOperation *)self configuration];
      repository5 = [configuration7 repository];
      profile3 = [repository5 profile];
      legacyRepositoryProfile2 = [profile3 legacyRepositoryProfile];
      v53 = v10;
      LOBYTE(v39) = HDSetCloudSyncAttachmentReferenceTombstoneEpoch(v39, legacyRepositoryProfile2, &v53);
      v44 = v53;

      if (v39)
      {
        v23 = 1;
        v10 = v44;
LABEL_31:

        v19 = v52;
        v21 = v50;
LABEL_32:

        goto LABEL_33;
      }

      v46 = v44;
      v45 = v46;
      if (v46)
      {
        if (!error)
        {
          _HKLogDroppedError();
          v23 = 0;
          v10 = v45;
          goto LABEL_30;
        }

        v10 = v46;
        goto LABEL_26;
      }

      v10 = 0;
    }

    else
    {
      v45 = v38;
      if (v45)
      {
        if (!error)
        {
          _HKLogDroppedError();
          v23 = 0;
LABEL_30:

          goto LABEL_31;
        }

LABEL_26:
        v47 = v45;
        v23 = 0;
        *error = v45;
        goto LABEL_30;
      }
    }

    v23 = 1;
    goto LABEL_30;
  }

  v24 = v10;
  v18 = v24;
  if (error)
  {
    v25 = v24;
    v23 = 0;
    *error = v18;
  }

  else
  {
    _HKLogDroppedError();
    v23 = 0;
  }

  v10 = v18;
LABEL_34:

  _Block_object_dispose(&v66, 8);
  return v23;
}

uint64_t __64__HDCloudSyncPullReferenceTombstonesOperation_performWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = *(a1 + 56);
  v8 = *(*(v7 + 8) + 24);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __64__HDCloudSyncPullReferenceTombstonesOperation_performWithError___block_invoke_2;
  v20 = &unk_27861A4D8;
  v22 = v7;
  v21 = *(a1 + 40);
  if ([v5 recordsForClass:v6 epoch:v8 error:a3 enumerationHandler:&v17])
  {
    v9 = [HDDeleteAttachmentReferenceOperation alloc];
    v10 = [(HDDeleteAttachmentReferenceOperation *)v9 initWithSynchronizedReferences:*(a1 + 40), v17, v18, v19, v20];
    v11 = [*(a1 + 48) configuration];
    v12 = [v11 repository];
    v13 = [v12 profile];
    v14 = [v13 legacyRepositoryProfile];
    v15 = [(HDJournalableOperation *)v10 performOrJournalWithProfile:v14 error:a3];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __64__HDCloudSyncPullReferenceTombstonesOperation_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v4 <= a3)
  {
    v4 = a3;
  }

  *(v3 + 24) = v4;
  v5 = *(a1 + 32);
  v6 = [a2 attachmentReferenceTombstones];
  [v5 addObjectsFromArray:v6];

  return 1;
}

@end