@interface HDSharingRelationshipSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDSharingRelationshipSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -1;
  database = [profileCopy database];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __110__HDSharingRelationshipSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v25 = &unk_2786208D0;
  v17 = sessionCopy;
  v30 = start;
  v31 = end;
  v26 = v17;
  v29 = &v32;
  v18 = profileCopy;
  v27 = v18;
  v19 = array;
  v28 = v19;
  LODWORD(profileCopy) = [(HDHealthEntity *)HDSharingRelationshipEntity performReadTransactionWithHealthDatabase:database error:error block:&v22];

  if (profileCopy)
  {
    v20 = [handlerCopy sendCodableChange:v19 resultAnchor:v33[3] sequence:0 done:1 error:{error, v22, v23, v24, v25, v26, v27}];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v20;
}

BOOL __110__HDSharingRelationshipSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20[0] = @"sync_identity";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HDSharingRelationshipSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v16[3] = &unk_2786208A8;
  v17 = v5;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = v5;
  v13 = [(HDHealthEntity *)HDSharingRelationshipEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __110__HDSharingRelationshipSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a2;
  v11 = *(a1 + 32);
  v41 = 0;
  v12 = [v10 recipientIdentifierInDatabaseTransaction:v11 error:&v41];
  v13 = v41;
  v14 = v13;
  if (!v12)
  {
    v16 = v13;
    if (v16)
    {
      if (a8)
      {
        v33 = v16;
        v26 = 0;
        *a8 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v26 = 0;
      }

      v14 = v16;
    }

    else
    {
      v14 = 0;
      v26 = 1;
    }

LABEL_29:

    goto LABEL_30;
  }

  if ([v12 type] == 1)
  {
    v15 = *(a1 + 32);
    v40 = v14;
    v16 = [v10 dateModifiedInDatabaseTransaction:v15 error:&v40];
    v17 = v40;

    if (v16)
    {
      v18 = *(a1 + 32);
      v39 = v17;
      v19 = [HDSharingAuthorizationsEntity sharingAuthorizationsForRecipientIdentifier:v12 databaseTransaction:v18 error:&v39];
      v20 = v39;

      if ([v19 count])
      {
        v21 = HDSQLiteColumnWithNameAsInt64();
        v22 = [*(a1 + 40) syncIdentityManager];
        v23 = *(a1 + 32);
        v38 = v20;
        v24 = [v22 identityForEntityID:v21 transaction:v23 error:&v38];
        v14 = v38;

        if (v24)
        {
          v25 = objc_alloc_init(HDCodableSharingRelationship);
          v26 = 1;
          [(HDCodableSharingRelationship *)v25 setRecipientType:1];
          v27 = [v12 clinicalAccountIdentifier];
          [(HDCodableSharingRelationship *)v25 setRecipientIdentifier:v27];

          [v16 timeIntervalSinceReferenceDate];
          [(HDCodableSharingRelationship *)v25 setDateModified:?];
          v28 = HDCodableSharingAuthorizationsFromSharingAuthorizations(v19);
          [(HDCodableSharingRelationship *)v25 setSharingAuthorizations:v28];

          v29 = [(HDCodableSharingRelationship *)v25 sharingAuthorizations];
          HDAuthorizationIdentifiersFromCodableSharingAuthorizations(v29);
          v30 = v37 = v19;
          [(HDCodableSharingRelationship *)v25 setAuthorizationIdentifiers:v30];

          v31 = [v24 identity];
          v32 = [v31 codableSyncIdentity];
          [(HDCodableSharingRelationship *)v25 setSyncIdentity:v32];

          v19 = v37;
          [*(a1 + 48) addObject:v25];
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v24 = v20;
        if (v24)
        {
          if (a8)
          {
            v35 = v24;
            v26 = 0;
            *a8 = v24;
          }

          else
          {
            _HKLogDroppedError();
            v26 = 0;
          }

          v14 = v24;
        }

        else
        {
          v14 = 0;
          v26 = 1;
        }
      }
    }

    else
    {
      v19 = v17;
      if (v19)
      {
        if (a8)
        {
          v34 = v19;
          v26 = 0;
          *a8 = v19;
        }

        else
        {
          _HKLogDroppedError();
          v26 = 0;
        }

        v14 = v19;
      }

      else
      {
        v14 = 0;
        v26 = 1;
      }
    }

    goto LABEL_29;
  }

  v26 = 1;
LABEL_30:

  return v26;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableSharingRelationship alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [(HDHealthEntity *)HDSharingRelationshipEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  profileCopy = profile;
  storeCopy = store;
  v13 = [HDInsertOrUpdateSharingRelationshipOperation alloc];
  syncProvenance = [storeCopy syncProvenance];

  v15 = [(HDInsertOrUpdateSharingRelationshipOperation *)v13 initWithCodableSharingRelationships:objectsCopy syncProvenance:syncProvenance];
  LODWORD(error) = [(HDJournalableOperation *)v15 performOrJournalWithProfile:profileCopy error:error];

  return error ^ 1;
}

@end