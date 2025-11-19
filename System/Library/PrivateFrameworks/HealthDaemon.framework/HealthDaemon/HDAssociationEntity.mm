@interface HDAssociationEntity
+ (BOOL)_bulkInsertEntriesWithParentUUID:(id)a3 childIDs:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 creationDate:(id)a9 destinationSubObjectReference:(id)a10 profile:(id)a11 error:(id *)a12;
+ (BOOL)_enumerateAssociationsWithPredicate:(id)a3 syncEntityClass:(Class)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 lastSyncAnchor:(int64_t *)a7 healthDatabase:(id)a8 error:(id *)a9 block:(id)a10;
+ (BOOL)_enumerateTypedAssociationsWithPredicate:(id)a3 syncEntityClass:(Class)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 lastSyncAnchor:(int64_t *)a7 healthDatabase:(id)a8 transaction:(id)a9 error:(id *)a10 block:(id)a11;
+ (BOOL)_insertCodableObjectAssociations:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_insertEntriesWithParentUUID:(id)a3 childUUIDsData:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 deleted:(BOOL)a9 creationDate:(id)a10 destinationSubObjectReference:(id)a11 enforceSameSource:(BOOL)a12 permitPendingAssociations:(BOOL)a13 profile:(id)a14 lastInsertedEntityID:(id *)a15 error:(id *)a16;
+ (BOOL)associateSampleUUIDData:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 provenance:(int64_t)a10 syncIdentity:(int64_t)a11 creationDate:(id)a12 error:(id *)a13;
+ (BOOL)bulkInsertAssociationsWithParentUUID:(id)a3 childIDs:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 syncIdentity:(int64_t)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)copyAssociationsFromChildID:(id)a3 toObjectID:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)copyAssociationsFromObject:(id)a3 toObject:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)copyAssociationsFromObject:(id)a3 toObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)disassociateSampleUUIDData:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)disassociateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)insertEntriesWithAssociation:(id)a3 objects:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObject:(id)a7 enforceSameSource:(BOOL)a8 profile:(id)a9 transaction:(id)a10 error:(id *)a11;
+ (BOOL)insertEntriesWithAssociationUUID:(id)a3 objectUUIDsData:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)realizePendingAssociationsWithTransaction:(id)a3 startingAnchor:(int64_t)a4 error:(id *)a5;
+ (id)_findAssociationEntryWithParentID:(uint64_t)a3 childID:(uint64_t)a4 type:(uint64_t)a5 behavior:(void *)a6 destinationSubObjectID:(char)a7 deleted:(void *)a8 database:(uint64_t)a9 error:;
+ (id)countOfObjectsAssociatedWithObjectPID:(int64_t)a3 excludeDeleted:(BOOL)a4 associationType:(unint64_t)a5 behavior:(unint64_t)a6 anchor:(int64_t)a7 transaction:(id)a8 error:(id *)a9;
+ (id)countOfObjectsAssociatedWithObjectUUID:(id)a3 subObjectReference:(id)a4 excludeDeleted:(BOOL)a5 profile:(id)a6 error:(id *)a7;
+ (id)deleteStatementForChildIDsWithTransaction:(id)a3;
+ (id)deleteStatementForParentIDWithTransaction:(id)a3;
+ (id)indices;
+ (id)joinClausesForProperty:(id)a3;
+ (id)journalEntryForAssociation:(id)a3 objects:(id)a4 profile:(id)a5;
+ (id)objectIDsForAssociationEntityWithPersistentID:(int64_t)a3 profile:(id)a4 error:(id *)a5;
+ (id)objectsAssociatedWithObjectPID:(int64_t)a3 subObjectReference:(id)a4 dataTypes:(id)a5 associationType:(unint64_t)a6 behavior:(unint64_t)a7 limit:(unint64_t)a8 sortDescending:(BOOL)a9 profile:(id)a10 error:(id *)a11;
+ (id)privateSubEntities;
+ (id)uniquedColumns;
+ (uint64_t)_insertAssociationEntryWithParentID:(uint64_t)a3 childID:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(uint64_t)a6 type:(uint64_t)a7 behavior:(void *)a8 destinationSubObjectID:(char)a9 deleted:(void *)a10 creationDate:(void *)a11 lastInsertedEntityID:(void *)a12 database:(uint64_t)a13 error:;
+ (uint64_t)_insertEntriesWithParentUUID:(void *)a3 childUUIDsData:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(uint64_t)a6 type:(uint64_t)a7 behavior:(char)a8 deleted:(void *)a9 creationDate:(void *)a10 destinationSubObjectReference:(void *)a11 lastInsertedEntityID:(void *)a12 context:(void *)a13 error:;
+ (uint64_t)_insertPendingAssociationForParentUUID:(uint64_t)a3 childUUIDBytes:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(uint64_t)a6 type:(uint64_t)a7 behavior:(void *)a8 destinationSubObjectID:(char)a9 deleted:(void *)a10 creationDate:(void *)a11 database:(void *)a12 error:;
+ (uint64_t)_removeAssociationEntryWithParentID:(uint64_t)a3 childID:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(void *)a6 type:(void *)a7 behavior:(uint64_t)a8 destinationSubObjectID:deleted:database:error:;
+ (void)_UUIDsAssociatedWithUUID:(void *)a3 subObjectReference:(void *)a4 predicateProperty:(void *)a5 enumerateProperty:(char)a6 excludeDeleted:(void *)a7 profile:(uint64_t)a8 error:;
@end

@implementation HDAssociationEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"destination_object_id";
  v5[1] = @"source_object_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9 = @"source_object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v5 = [v2 initWithEntity:v3 name:@"source_object_id" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)joinClausesForProperty:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"parent_id_objects.uuid"])
  {
    v6 = @"destination_object_id";
LABEL_5:
    v7 = off_27860E7C8;
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"child_id_objects.uuid"])
  {
LABEL_4:
    v6 = @"source_object_id";
    goto LABEL_5;
  }

  if (([v5 isEqualToString:@"child_id_samples.end_date"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"child_id_objects.creation_date"])
    {
      goto LABEL_4;
    }

    if (([v5 isEqualToString:@"child_id_samples.data_type"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"child_id_samples.data_id"))
    {
      goto LABEL_15;
    }
  }

  v6 = @"source_object_id";
  v7 = off_27860F338;
LABEL_6:
  v8 = *v7;
  v9 = objc_opt_class();
  if (!v9)
  {
LABEL_15:
    v19.receiver = a1;
    v19.super_class = &OBJC_METACLASS___HDAssociationEntity;
    v16 = objc_msgSendSuper2(&v19, sel_joinClausesForProperty_, v5);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v5 componentsSeparatedByString:@"."];
  if ([v11 count] != 2)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"HDAssociationEntity.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"[components count] == 2"}];
  }

  v12 = MEMORY[0x277D10B50];
  v13 = [a1 disambiguatedDatabaseTable];
  v14 = [v11 objectAtIndexedSubscript:0];
  v15 = [v12 innerJoinClauseFromTable:v13 toTargetEntity:v10 as:v14 localReference:v6 targetKey:@"data_id"];

  v16 = [MEMORY[0x277CBEB98] setWithObject:v15];

LABEL_16:

  return v16;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 error:(id *)a10
{
  v16 = MEMORY[0x277CBEAA8];
  v17 = a9;
  v18 = a7;
  v19 = a4;
  v20 = a3;
  if (a5)
  {
    [v16 now];
  }

  else
  {
    [v16 distantPast];
  }
  v21 = ;
  v22 = [v20 hk_dataForAllUUIDs];

  LOWORD(v26) = 256;
  LOBYTE(v25) = 0;
  v23 = [a1 _insertEntriesWithParentUUID:v19 childUUIDsData:v22 provenance:0 syncIdentity:objc_msgSend(v17 type:"currentSyncIdentityPersistentID") behavior:a5 deleted:a6 creationDate:v25 destinationSubObjectReference:v21 enforceSameSource:v18 permitPendingAssociations:v26 profile:v17 lastInsertedEntityID:a8 error:a10];

  return v23;
}

+ (BOOL)associateSampleUUIDData:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 error:(id *)a10
{
  v17 = MEMORY[0x277CBEAA8];
  v18 = a9;
  v19 = a7;
  v20 = a4;
  v21 = a3;
  if (a5)
  {
    [v17 now];
  }

  else
  {
    [v17 distantPast];
  }
  v22 = ;
  LOWORD(v26) = 0;
  LOBYTE(v25) = 0;
  v23 = [a1 _insertEntriesWithParentUUID:v20 childUUIDsData:v21 provenance:0 syncIdentity:objc_msgSend(v18 type:"currentSyncIdentityPersistentID") behavior:a5 deleted:a6 creationDate:v25 destinationSubObjectReference:v22 enforceSameSource:v19 permitPendingAssociations:v26 profile:v18 lastInsertedEntityID:a8 error:a10];

  return v23;
}

+ (BOOL)associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 provenance:(int64_t)a10 syncIdentity:(int64_t)a11 creationDate:(id)a12 error:(id *)a13
{
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a9;
  v21 = a12;
  if (!v21)
  {
    if (a5)
    {
      [MEMORY[0x277CBEAA8] now];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v21 = ;
  }

  v22 = [v17 hk_dataForAllUUIDs];
  LOWORD(v26) = 256;
  LOBYTE(v25) = 0;
  v23 = [a1 _insertEntriesWithParentUUID:v18 childUUIDsData:v22 provenance:a10 syncIdentity:a11 type:a5 behavior:a6 deleted:v25 creationDate:v21 destinationSubObjectReference:v19 enforceSameSource:v26 permitPendingAssociations:v20 profile:a8 lastInsertedEntityID:a13 error:?];

  return v23;
}

+ (BOOL)bulkInsertAssociationsWithParentUUID:(id)a3 childIDs:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 syncIdentity:(int64_t)a8 profile:(id)a9 error:(id *)a10
{
  v17 = MEMORY[0x277CBEAA8];
  v18 = a9;
  v19 = a7;
  v20 = a4;
  v21 = a3;
  if (a5)
  {
    [v17 now];
  }

  else
  {
    [v17 distantPast];
  }
  v22 = ;
  v23 = [a1 _bulkInsertEntriesWithParentUUID:v21 childIDs:v20 provenance:0 syncIdentity:a8 type:a5 behavior:a6 creationDate:v22 destinationSubObjectReference:v19 profile:v18 error:a10];

  return v23;
}

+ (BOOL)disassociateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 lastInsertedEntityID:(id *)a8 profile:(id)a9 error:(id *)a10
{
  v16 = MEMORY[0x277CBEAA8];
  v17 = a9;
  v18 = a7;
  v19 = a4;
  v20 = a3;
  if (a5)
  {
    [v16 now];
  }

  else
  {
    [v16 distantPast];
  }
  v21 = ;
  v22 = [v20 hk_dataForAllUUIDs];

  LOWORD(v26) = 256;
  LOBYTE(v25) = 1;
  v23 = [a1 _insertEntriesWithParentUUID:v19 childUUIDsData:v22 provenance:0 syncIdentity:objc_msgSend(v17 type:"currentSyncIdentityPersistentID") behavior:a5 deleted:a6 creationDate:v25 destinationSubObjectReference:v21 enforceSameSource:v18 permitPendingAssociations:v26 profile:v17 lastInsertedEntityID:a8 error:a10];

  return v23;
}

+ (BOOL)disassociateSampleUUIDData:(id)a3 withSampleUUID:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 profile:(id)a8 error:(id *)a9
{
  v15 = MEMORY[0x277CBEAA8];
  v16 = a8;
  v17 = a7;
  v18 = a4;
  v19 = a3;
  if (a5)
  {
    [v15 now];
  }

  else
  {
    [v15 distantPast];
  }
  v20 = ;
  LOWORD(v24) = 0;
  LOBYTE(v23) = 1;
  v21 = [a1 _insertEntriesWithParentUUID:v18 childUUIDsData:v19 provenance:0 syncIdentity:objc_msgSend(v16 type:"currentSyncIdentityPersistentID") behavior:a5 deleted:a6 creationDate:v23 destinationSubObjectReference:v20 enforceSameSource:v17 permitPendingAssociations:v24 profile:v16 lastInsertedEntityID:0 error:a9];

  return v21;
}

+ (BOOL)insertEntriesWithAssociation:(id)a3 objects:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObject:(id)a7 enforceSameSource:(BOOL)a8 profile:(id)a9 transaction:(id)a10 error:(id *)a11
{
  v34 = a8;
  v44 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v14 = a4;
  v37 = a7;
  v15 = a9;
  v16 = a10;
  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v39 + 1) + 8 * i) UUID];
        [v17 hk_appendBytesWithUUID:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v20);
  }

  v24 = a5;
  if (a5)
  {
    [MEMORY[0x277CBEAA8] now];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v25 = ;
  v26 = [v38 UUID];
  v27 = v16;
  v28 = [[_HDAssociationInsertionContext alloc] initWithParentUUID:v26 enforceSameSource:v34 permitPendingAssociations:0 profile:v15 transaction:v16];
  v29 = [v15 currentSyncIdentityPersistentID];
  v30 = HDReferenceForAssociatableObject(v37);
  v31 = [(HDAssociationEntity *)a1 _insertEntriesWithParentUUID:v26 childUUIDsData:v17 provenance:0 syncIdentity:v29 type:v24 behavior:a6 deleted:0 creationDate:v25 destinationSubObjectReference:v30 lastInsertedEntityID:0 context:v28 error:a11];

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

+ (uint64_t)_insertEntriesWithParentUUID:(void *)a3 childUUIDsData:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(uint64_t)a6 type:(uint64_t)a7 behavior:(char)a8 deleted:(void *)a9 creationDate:(void *)a10 destinationSubObjectReference:(void *)a11 lastInsertedEntityID:(void *)a12 context:(void *)a13 error:
{
  v131 = *MEMORY[0x277D85DE8];
  v77 = a2;
  v73 = a3;
  v74 = a9;
  v75 = a10;
  v14 = a12;
  v15 = objc_opt_self();
  v71 = [v14 enforceSameSource];
  v65 = [v14 permitPendingAssociations];
  v16 = [v14 transaction];
  v78 = [v16 databaseForEntityClass:v15];

  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__43;
  v105 = __Block_byref_object_dispose__43;
  v106 = 0;
  v17 = HDDataEntityPredicateForDataUUID();
  v100 = 0;
  v76 = [HDDataEntity anyInDatabase:v78 predicate:v17 error:&v100];
  v72 = v100;

  if (v76)
  {
    v63 = [v76 persistentID];
    if (!v71)
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
      v32 = [v36 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ?", @"data_id", @"type", v37, @"uuid", 0];

      v26 = 0;
LABEL_11:
      if (v75)
      {
        v38 = [v14 transaction];
        v98 = 0;
        v39 = [v75 persistentIDInTransaction:v38 error:&v98];
        v21 = v98;
      }

      else
      {
        v39 = 0;
        v21 = 0;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v118 = __Block_byref_object_copy__43;
      v119 = __Block_byref_object_dispose__43;
      v120 = 0;
      v111 = 0;
      v112 = &v111;
      v113 = 0x2020000000;
      LOBYTE(v114) = 1;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_428;
      v79[3] = &unk_278619CE0;
      v79[4] = v78;
      v32 = v32;
      v95 = v71;
      v80 = v32;
      v86 = &v111;
      v87 = buf;
      v26 = v26;
      v81 = v26;
      v96 = a8;
      v82 = v77;
      v89 = v15;
      v90 = v63;
      v91 = a4;
      v92 = a5;
      v93 = a6;
      v94 = a7;
      v18 = v39;
      v83 = v18;
      v84 = v74;
      v88 = &v101;
      v97 = v65;
      v85 = v75;
      [v73 hk_enumerateUUIDBytesUsingBlock:v79];
      if ((v112[3] & 1) == 0)
      {
        v53 = *(*&buf[8] + 40);
        v54 = v53;
        if (v53)
        {
          if (a13)
          {
            v55 = v53;
            *a13 = v54;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      if (a11)
      {
        v59 = v102[5];
        if (v59)
        {
          *a11 = v59;
        }
      }

      v35 = *(v112 + 24);

      _Block_object_dispose(&v111, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_45;
    }

    v18 = [v76 valueForProperty:? database:?];
    v19 = [v14 profile];
    v20 = [v19 sourceManager];
    v99 = 0;
    v64 = [v20 clientSourceForPersistentID:v18 error:&v99];
    v21 = v99;

    if (v64)
    {
      v22 = [v14 profile];
      v23 = [v22 sourceManager];
      v24 = [v64 bundleIdentifier];
      v25 = [v23 allSourcesForBundleIdentifier:v24 error:a13];
      v26 = [v25 hk_map:&__block_literal_global_418];

      if (v26)
      {
        v27 = [HDDataEntity joinClausesForProperty:@"data_provenances.source_id"];
        v62 = [v27 count];
        if (v62 == 1)
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
          v30 = [v27 anyObject];
          v31 = [v30 SQLJoinClause];
          v32 = [v28 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ %@ WHERE %@ = ?", @"data_id", @"type", @"data_provenances.source_id", v29, v31, @"uuid", 0];
        }

        else
        {
          _HKInitializeLogging();
          v57 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            *&buf[4] = @"data_provenances.source_id";
            *&buf[12] = 2114;
            *&buf[14] = v27;
            _os_log_fault_impl(&dword_228986000, v57, OS_LOG_TYPE_FAULT, "Unexpected join clauses for %{public}@: %{public}@", buf, 0x16u);
          }

          [MEMORY[0x277CCA9B8] hk_assignError:a13 code:100 format:{@"Unexpected join clauses for %@", @"data_provenances.source_id"}];
          v32 = 0;
        }

        if (v62 != 1)
        {
          v35 = 0;
LABEL_46:

          goto LABEL_47;
        }

        goto LABEL_11;
      }

LABEL_38:

      v26 = 0;
      v32 = 0;
      v35 = 0;
LABEL_45:

      goto LABEL_46;
    }

    if (v21)
    {
      v21 = v21;
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error_ format:{@"Unable to find parent source for source id %@", v18}];
      if (!v21)
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    if (a13)
    {
      v58 = v21;
      *a13 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_37;
  }

  if (v72)
  {
    v33 = v72;
    v26 = v33;
    if (a13)
    {
      v34 = v33;
      v35 = 0;
      *a13 = v26;
      goto LABEL_47;
    }

    _HKLogDroppedError();
LABEL_27:
    v35 = 0;
    goto LABEL_47;
  }

  if (![v14 permitPendingAssociations])
  {
    v56 = MEMORY[0x277CCA9B8];
    v26 = [v77 UUIDString];
    [v56 hk_assignError:a13 code:3 format:{@"Unable to find parent object for UUID %@ when inserting associations.", v26}];
    goto LABEL_27;
  }

  v40 = [v75 UUID];
  v41 = v77;
  v42 = v73;
  v43 = v74;
  v44 = v40;
  v45 = v78;
  v46 = objc_opt_self();
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__43;
  v115 = __Block_byref_object_dispose__43;
  v116 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 1;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __176__HDAssociationEntity__insertPendingAssociationsForParentUUID_childUUIDData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectUUID_database_error___block_invoke;
  v118 = &unk_278619E48;
  v125 = v46;
  v47 = v41;
  v119 = v47;
  v126 = a4;
  v127 = a5;
  v128 = a6;
  v129 = a7;
  v26 = v44;
  v120 = v26;
  v130 = a8;
  v48 = v43;
  v121 = v48;
  v49 = v45;
  v122 = v49;
  v123 = &v111;
  v124 = &v107;
  [v42 hk_enumerateUUIDBytesUsingBlock:buf];
  v35 = *(v108 + 24);
  if ((v35 & 1) == 0)
  {
    v50 = v112[5];
    v51 = v50;
    if (v50)
    {
      if (a13)
      {
        v52 = v50;
        *a13 = v51;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v35 = *(v108 + 24);
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);

LABEL_47:
  _Block_object_dispose(&v101, 8);

  v60 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

+ (BOOL)insertEntriesWithAssociationUUID:(id)a3 objectUUIDsData:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 destinationSubObjectReference:(id)a7 profile:(id)a8 error:(id *)a9
{
  v15 = MEMORY[0x277CBEAA8];
  v16 = a8;
  v17 = a7;
  v18 = a4;
  v19 = a3;
  if (a5)
  {
    [v15 now];
  }

  else
  {
    [v15 distantPast];
  }
  v20 = ;
  LOWORD(v24) = 256;
  LOBYTE(v23) = 0;
  v21 = [a1 _insertEntriesWithParentUUID:v19 childUUIDsData:v18 provenance:0 syncIdentity:objc_msgSend(v16 type:"currentSyncIdentityPersistentID") behavior:a5 deleted:a6 creationDate:v23 destinationSubObjectReference:v20 enforceSameSource:v17 permitPendingAssociations:v24 profile:v16 lastInsertedEntityID:0 error:a9];

  return v21;
}

+ (BOOL)copyAssociationsFromObject:(id)a3 toObject:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([a1 copyAssociationsFromObject:v10 toObject:v11 type:0 behavior:0 profile:v12 error:a6])
  {
    v13 = [a1 copyAssociationsFromObject:v10 toObject:v11 type:1 behavior:0 profile:v12 error:a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)copyAssociationsFromObject:(id)a3 toObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 profile:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = [a7 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke;
  v20[3] = &unk_278619C68;
  v21 = v14;
  v22 = v15;
  v23 = a1;
  v24 = a5;
  v25 = a6;
  v17 = v15;
  v18 = v14;
  LOBYTE(a8) = [a1 performWriteTransactionWithHealthDatabase:v16 error:a8 block:v20];

  return a8;
}

uint64_t __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 32) UUID];
  v7 = HDDataEntityPredicateForDataUUID();
  v31 = 0;
  v8 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v5 predicate:v7 error:&v31];
  v9 = v31;

  if (!v9)
  {
    v12 = [*(a1 + 40) UUID];
    v13 = HDDataEntityPredicateForDataUUID();
    v30 = 0;
    v14 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v5 predicate:v13 error:&v30];
    v9 = v30;

    if (v9)
    {
      if (a3)
      {
        v15 = v9;
        v11 = 0;
        *a3 = v9;
LABEL_17:

        goto LABEL_18;
      }

      _HKLogDroppedError();
    }

    else
    {
      if (v8 && v14)
      {
        v16 = [v8 persistentID];
        v17 = [v14 persistentID];
        if (*(a1 + 56) == 1)
        {
          [MEMORY[0x277CBEAA8] date];
        }

        else
        {
          [MEMORY[0x277CBEAA8] distantPast];
        }
        v18 = ;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_2;
        v29[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v29[4] = *(a1 + 48);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_3;
        v24[3] = &unk_278619C40;
        v25 = v18;
        v26 = v17;
        v27 = v16;
        v28 = *(a1 + 56);
        v22 = v18;
        v11 = [v5 executeCachedStatementForKey:&HDAssociationEntityPropertyChildDataID_block_invoke_insertKey error:a3 SQLGenerator:v29 bindingHandler:v24 enumerationHandler:0];

        goto LABEL_17;
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = [*(a1 + 32) UUID];
      v21 = [*(a1 + 40) UUID];
      [v19 hk_assignError:a3 code:3 format:{@"One of the provided objects (UUIDs %@ and %@) was not found in database", v20, v21}];
    }

    v11 = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    v10 = v9;
    v11 = 0;
    *a3 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

LABEL_18:

  return v11;
}

id __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [*(a1 + 32) disambiguatedDatabaseTable];
  v5 = [v2 initWithFormat:@"INSERT INTO %@(%@, %@, %@, %@, %@, %@, %@, %@) SELECT ?, %@, %@, %@, %@, %@, %@, ? FROM %@ WHERE %@=? AND %@=? AND %@=? AND %@=? AND %@ IS NULL", v3, @"destination_object_id", @"source_object_id", @"sync_provenance", @"sync_identity", @"type", @"behavior", @"deleted", @"creation_date", @"source_object_id", @"sync_provenance", @"sync_identity", @"type", @"behavior", @"deleted", v4, @"destination_object_id", @"type", @"behavior", @"deleted", @"destination_sub_object_id", 0];

  return v5;
}

uint64_t __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 2, v4);
  sqlite3_bind_int64(a2, 3, *(a1 + 48));
  sqlite3_bind_int64(a2, 4, *(a1 + 56));
  sqlite3_bind_int64(a2, 5, *(a1 + 64));

  return sqlite3_bind_int64(a2, 6, 0);
}

+ (BOOL)copyAssociationsFromChildID:(id)a3 toObjectID:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke;
  v18[3] = &unk_278613550;
  v19 = v10;
  v20 = v12;
  v21 = v11;
  v22 = a1;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v18];

  return a6;
}

uint64_t __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"source_object_id" equalToValue:*(a1 + 32)];
  v19[0] = @"destination_object_id";
  v19[1] = @"sync_provenance";
  v19[2] = @"sync_identity";
  v19[3] = @"type";
  v19[4] = @"behavior";
  v19[5] = @"destination_sub_object_id";
  v19[6] = @"deleted";
  v19[7] = @"creation_date";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:8];
  v8 = *(a1 + 56);
  v9 = [*(a1 + 40) database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke_2;
  v15[3] = &unk_278617E98;
  v10 = *(a1 + 48);
  v18 = *(a1 + 56);
  v16 = v10;
  v17 = v5;
  v11 = v5;
  v12 = [v8 enumerateProperties:v7 withPredicate:v6 healthDatabase:v9 error:a3 enumerationHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsInt64();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v12 = HDSQLiteColumnWithNameAsBoolean();
  v13 = HDSQLiteColumnWithNameAsDate();
  v14 = +[HDAssociationEntity _insertAssociationEntryWithParentID:childID:provenance:syncIdentity:type:behavior:destinationSubObjectID:deleted:creationDate:lastInsertedEntityID:database:error:](*(a1 + 48), v6, [*(a1 + 32) longLongValue], v7, v8, v9, v10, v11, v12, v13, &v17, *(a1 + 40), a5);

  return v14;
}

+ (uint64_t)_insertAssociationEntryWithParentID:(uint64_t)a3 childID:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(uint64_t)a6 type:(uint64_t)a7 behavior:(void *)a8 destinationSubObjectID:(char)a9 deleted:(void *)a10 creationDate:(void *)a11 lastInsertedEntityID:(void *)a12 database:(uint64_t)a13 error:
{
  v17 = a8;
  v18 = a10;
  v19 = a12;
  v27 = objc_opt_self();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __185__HDAssociationEntity__insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error___block_invoke_2;
  v29[3] = &unk_278619DF8;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a9;
  v30 = v17;
  v31 = v18;
  v28 = v18;
  v20 = v17;
  v21 = [v19 executeCachedStatementForKey:&_insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error__insertKey error:a13 SQLGenerator:&__block_literal_global_451 bindingHandler:v29 enumerationHandler:0];
  v22 = [(HDAssociationEntity *)v27 _findAssociationEntryWithParentID:a2 childID:a3 type:a6 behavior:a7 destinationSubObjectID:v20 deleted:a9 database:v19 error:a13];

  v23 = v22;
  *a11 = v22;

  return v21;
}

+ (uint64_t)_insertPendingAssociationForParentUUID:(uint64_t)a3 childUUIDBytes:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(uint64_t)a6 type:(uint64_t)a7 behavior:(void *)a8 destinationSubObjectID:(char)a9 deleted:(void *)a10 creationDate:(void *)a11 database:(void *)a12 error:
{
  v16 = a2;
  v17 = a8;
  v18 = a10;
  v19 = a11;
  objc_opt_self();
  v41 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __174__HDAssociationEntity__insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error___block_invoke_2;
  v31[3] = &unk_278619C90;
  v20 = v16;
  v32 = v20;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a9;
  v21 = v18;
  v33 = v21;
  v22 = v17;
  v34 = v22;
  LOBYTE(v18) = [v19 executeCachedStatementForKey:&_insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error__insertKey error:&v41 SQLGenerator:&__block_literal_global_48 bindingHandler:v31 enumerationHandler:0];

  v23 = v41;
  v24 = v23;
  if (v18 & 1) != 0 || ([v23 hd_isConstraintViolation])
  {
    v25 = 1;
  }

  else
  {
    v26 = v24;
    if (v26)
    {
      if (a12)
      {
        v27 = v26;
        *a12 = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v25 = 0;
  }

  return v25;
}

id __174__HDAssociationEntity__insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v2 = [v0 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", v1, @"parent_uuid", @"child_uuid", @"sync_provenance", @"sync_identity", @"type", @"behavior", @"deleted", @"creation_date", @"destination_sub_uuid", 0];

  return v2;
}

uint64_t __174__HDAssociationEntity__insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_blob(a2, 2, *(a1 + 56), 16, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  sqlite3_bind_int64(a2, 4, *(a1 + 72));
  sqlite3_bind_int64(a2, 5, *(a1 + 80));
  sqlite3_bind_int64(a2, 6, *(a1 + 88));
  sqlite3_bind_int64(a2, 7, *(a1 + 96));
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 8, v5);
  if (*(a1 + 48))
  {

    return HDSQLiteBindFoundationValueToStatement();
  }

  else
  {

    return sqlite3_bind_null(a2, 9);
  }
}

+ (id)journalEntryForAssociation:(id)a3 objects:(id)a4 profile:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v26 + 1) + 8 * i) UUID];
        [v10 hk_appendBytesWithUUID:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v17 = [_HDAssociationInsertionJournalEntry alloc];
  v18 = [v7 UUID];
  v19 = [v9 currentSyncIdentityPersistentID];
  v20 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(v25) = 0;
  LOBYTE(v24) = 0;
  v21 = [(_HDAssociationInsertionJournalEntry *)v17 initWithParentUUID:v18 childUUIDsData:v10 provenance:0 syncIdentity:v19 type:0 behavior:0 deleted:v24 creationDate:v20 destinationSubObjectReference:0 enforceSameSource:v25, v26];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

void __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_428(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = -1;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = -1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v70[4] = a2;
  v71 = 0;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_2;
  v70[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_3;
  v68[3] = &unk_278619CB8;
  v68[4] = &v76;
  v68[5] = &v80;
  v69 = *(a1 + 160);
  v68[6] = &v72;
  v68[7] = &v84;
  v8 = [v6 executeSQL:v7 error:&v71 bindingHandler:v70 enumerationHandler:v68];
  v9 = v71;
  v10 = v71;
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    *a3 = 1;
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v9);
    goto LABEL_7;
  }

  if (*(v81 + 24) == 1)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
      v13 = [v12 UUIDString];
      *buf = 138543362;
      v89 = v13;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Not inserting association since object %{public}@ was previously deleted", buf, 0xCu);
    }

LABEL_5:

    goto LABEL_7;
  }

  if (*(v85 + 24) != 1)
  {
    if (*(a1 + 161) == 1)
    {
      *a3 = 1;
      *(*(*(a1 + 88) + 8) + 24) = 0;
      v27 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Unable to find relationship for parentUUID and child."];
      v28 = *(*(a1 + 96) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      goto LABEL_7;
    }

    if (*(a1 + 162) != 1)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
        v55 = [v54 UUIDString];
        *buf = 138543362;
        v89 = v55;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Not inserting association, unable to look up entity for object %{public}@ and pending associations are disabled.", buf, 0xCu);
      }

      goto LABEL_5;
    }

    v30 = *(a1 + 112);
    v31 = *(a1 + 56);
    v62 = *(a1 + 136);
    v63 = *(a1 + 128);
    v32 = *(a1 + 144);
    v33 = *(a1 + 152);
    v34 = [*(a1 + 80) UUID];
    v35 = *(a1 + 161);
    v36 = *(a1 + 72);
    v37 = *(a1 + 32);
    v38 = *(*(a1 + 96) + 8);
    v64 = *(v38 + 40);
    v39 = [(HDAssociationEntity *)v30 _insertPendingAssociationForParentUUID:v31 childUUIDBytes:a2 provenance:v63 syncIdentity:v62 type:v32 behavior:v33 destinationSubObjectID:v34 deleted:v35 creationDate:v36 database:v37 error:&v64];
    objc_storeStrong((v38 + 40), v64);

    if (v39)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (*(a1 + 160) != 1 || (v15 = *(a1 + 48), [MEMORY[0x277CCABB0] numberWithLongLong:v73[3]], v16 = objc_claimAutoreleasedReturnValue(), LOBYTE(v15) = objc_msgSend(v15, "containsObject:", v16), v16, (v15 & 1) != 0))
  {
    if (*(a1 + 161) == 1)
    {
      v17 = *(a1 + 112);
      v18 = *(a1 + 120);
      v19 = v77[3];
      v20 = *(a1 + 144);
      v21 = *(a1 + 152);
      v22 = *(a1 + 64);
      v23 = *(a1 + 32);
      v24 = *(*(a1 + 96) + 8);
      obj = *(v24 + 40);
      v25 = [HDAssociationEntity _removeAssociationEntryWithParentID:v17 childID:v18 provenance:v19 syncIdentity:v20 type:v21 behavior:v22 destinationSubObjectID:v23 deleted:&obj database:? error:?];
      objc_storeStrong((v24 + 40), obj);
      if (!v25)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 161);
    }

    else
    {
      v26 = 0;
    }

    v40 = *(a1 + 112);
    v41 = *(a1 + 120);
    v42 = v77[3];
    v43 = *(a1 + 128);
    v44 = *(a1 + 136);
    v45 = *(a1 + 144);
    v46 = *(a1 + 152);
    v47 = *(a1 + 64);
    v48 = *(a1 + 72);
    v49 = *(a1 + 96);
    v50 = *(*(a1 + 104) + 8);
    v66 = *(v50 + 40);
    v51 = *(a1 + 32);
    v52 = *(v49 + 8);
    v65 = *(v52 + 40);
    v53 = [(HDAssociationEntity *)v40 _insertAssociationEntryWithParentID:v41 childID:v42 provenance:v43 syncIdentity:v44 type:v45 behavior:v46 destinationSubObjectID:v47 deleted:v26 & 1 creationDate:v48 lastInsertedEntityID:&v66 database:v51 error:&v65];
    objc_storeStrong((v50 + 40), v66);
    objc_storeStrong((v52 + 40), v65);
    if (v53)
    {
      goto LABEL_7;
    }

LABEL_21:
    *(*(*(a1 + 88) + 8) + 24) = 0;
    *a3 = 1;
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v56 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v57 = [*(a1 + 56) UUIDString];
    v58 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
    v59 = [v58 UUIDString];
    v60 = v73[3];
    v61 = *(a1 + 48);
    *buf = 138544130;
    v89 = v57;
    v90 = 2114;
    v91 = v59;
    v92 = 2048;
    v93 = v60;
    v94 = 2114;
    v95 = v61;
    _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "Not inserting assocation from %{public}@ to %{public}@ because child source ID %lld is not in the allowable set of parent source IDs %{public}@", buf, 0x2Au);
  }

LABEL_7:
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_blob(a2, 1, *(a1 + 32), 16, 0);

  return sqlite3_bind_int64(a2, 2, 1);
}

uint64_t __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 40) + 8) + 24) = HDSQLiteColumnAsInt64() == 2;
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = HDSQLiteColumnAsInt64();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  return 1;
}

+ (uint64_t)_removeAssociationEntryWithParentID:(uint64_t)a3 childID:(uint64_t)a4 provenance:(uint64_t)a5 syncIdentity:(void *)a6 type:(void *)a7 behavior:(uint64_t)a8 destinationSubObjectID:deleted:database:error:
{
  v14 = a7;
  v15 = a6;
  v16 = objc_opt_self();
  v17 = [(HDAssociationEntity *)v16 _findAssociationEntryWithParentID:a2 childID:a3 type:a4 behavior:a5 destinationSubObjectID:v15 deleted:0 database:v14 error:a8];

  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v20 = [v18 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v19, *MEMORY[0x277D10A40]];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __151__HDAssociationEntity__removeAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke;
    v23[3] = &unk_278614860;
    v24 = v17;
    v21 = [v14 executeSQL:v20 error:a8 bindingHandler:v23 enumerationHandler:0];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)_insertEntriesWithParentUUID:(id)a3 childUUIDsData:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 deleted:(BOOL)a9 creationDate:(id)a10 destinationSubObjectReference:(id)a11 enforceSameSource:(BOOL)a12 permitPendingAssociations:(BOOL)a13 profile:(id)a14 lastInsertedEntityID:(id *)a15 error:(id *)a16
{
  v17 = a3;
  v18 = a4;
  v19 = a10;
  v20 = a11;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__43;
  v33 = __Block_byref_object_dispose__43;
  v34 = 0;
  v21 = a14;
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v26 = HKWithAutoreleasePool();
  if (a15)
  {
    v27 = v30[5];
    if (v27)
    {
      *a15 = v27;
    }
  }

  _Block_object_dispose(&v29, 8);
  return v26;
}

uint64_t __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = [*(a1 + 32) database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_2;
  v30[3] = &unk_278619D08;
  v6 = *(a1 + 40);
  v38 = *(a1 + 120);
  v7 = *(a1 + 32);
  v35 = *(a1 + 80);
  v8 = *(a1 + 48);
  v36 = *(a1 + 88);
  v37 = *(a1 + 104);
  v39 = *(a1 + 122);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v31 = v11;
  v32 = v10;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v33 = v12;
  v34 = v13;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_3;
  v22[3] = &unk_278619D30;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = *(a1 + 104);
  v28 = *(a1 + 122);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v23 = v19;
  v24 = v18;
  v29 = *(a1 + 120);
  v25 = *(a1 + 32);
  v20 = [v4 performWriteTransactionWithHealthDatabase:v5 error:a2 block:v30 inaccessibilityHandler:v22];

  return v20;
}

uint64_t __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [[_HDAssociationInsertionContext alloc] initWithParentUUID:*(a1 + 32) enforceSameSource:*(a1 + 120) permitPendingAssociations:*(a1 + 121) profile:*(a1 + 40) transaction:v5];

  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 122);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(*(a1 + 72) + 8);
  obj = *(v17 + 40);
  v18 = [(HDAssociationEntity *)v8 _insertEntriesWithParentUUID:v7 childUUIDsData:v14 provenance:v9 syncIdentity:v10 type:v11 behavior:v12 deleted:v13 creationDate:v15 destinationSubObjectReference:v16 lastInsertedEntityID:&obj context:v6 error:a3];
  objc_storeStrong((v17 + 40), obj);

  return v18;
}

uint64_t __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [_HDAssociationInsertionJournalEntry alloc];
  LOBYTE(v11) = *(a1 + 105);
  LOBYTE(v10) = *(a1 + 104);
  v6 = [(_HDAssociationInsertionJournalEntry *)v5 initWithParentUUID:*(a1 + 32) childUUIDsData:*(a1 + 40) provenance:*(a1 + 72) syncIdentity:*(a1 + 80) type:*(a1 + 88) behavior:*(a1 + 96) deleted:v10 creationDate:*(a1 + 48) destinationSubObjectReference:*(a1 + 56) enforceSameSource:v11];
  v7 = [*(a1 + 64) database];
  v8 = [v7 addJournalEntry:v6 error:a3];

  return v8;
}

+ (BOOL)_bulkInsertEntriesWithParentUUID:(id)a3 childIDs:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 creationDate:(id)a9 destinationSubObjectReference:(id)a10 profile:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v30 = [v21 database];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke;
  v41[3] = &unk_278619D80;
  v42 = v17;
  v43 = v21;
  v22 = a1;
  v47 = a1;
  v44 = v18;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v51 = a8;
  v45 = v19;
  v46 = v20;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke_2;
  v31[3] = &unk_278619DA8;
  v32 = v42;
  v33 = v44;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v34 = v45;
  v35 = v46;
  v36 = v43;
  v37 = a5;
  v23 = v43;
  v24 = v46;
  v25 = v45;
  v26 = v44;
  v27 = v42;
  LOBYTE(v19) = [v22 performWriteTransactionWithHealthDatabase:v30 error:a12 block:v41 inaccessibilityHandler:v31];

  return v19;
}

BOOL __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [[_HDAssociationInsertionContext alloc] initWithParentUUID:*(a1 + 32) enforceSameSource:0 permitPendingAssociations:0 profile:*(a1 + 40) transaction:v5];

  v7 = *(a1 + 32);
  v57 = *(a1 + 80);
  v58 = *(a1 + 96);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = a1 + 64;
  v10 = *(a1 + 64);
  v11 = *(v12 + 8);
  v13 = v7;
  v62 = v8;
  v61 = v9;
  v14 = v10;
  v15 = v6;
  v16 = objc_opt_self();
  v17 = [(_HDAssociationInsertionContext *)v15 transaction];
  v18 = [v17 databaseForEntityClass:v16];

  v19 = HDDataEntityPredicateForDataUUID();
  v65 = 0;
  v60 = v18;
  v20 = [HDDataEntity anyInDatabase:v18 predicate:v19 error:&v65];
  v21 = v65;

  if (!v20)
  {
    if (v21)
    {
      if (a3)
      {
        v23 = v21;
        v24 = 0;
        *a3 = v21;
        goto LABEL_27;
      }

      _HKLogDroppedError();
    }

    else
    {
      v46 = MEMORY[0x277CCA9B8];
      v47 = [v13 UUIDString];
      [v46 hk_assignError:a3 code:3 format:{@"Unable to find parent object for UUID %@ when inserting associations.", v47}];
    }

    v24 = 0;
    goto LABEL_27;
  }

  v54 = v13;
  v53 = v14;
  v49 = a3;
  v51 = v21;
  if (v14)
  {
    v22 = [(_HDAssociationInsertionContext *)v15 transaction];
    v64 = 0;
    v59 = [v14 persistentIDInTransaction:v22 error:&v64];
    v50 = v64;
  }

  else
  {
    v50 = 0;
    v59 = 0;
  }

  v52 = v20;
  v56 = [v20 persistentID];
  v25 = [v62 count];
  v26 = 0;
  v27 = 0;
  v55 = *MEMORY[0x277D10A88];
  do
  {
    v24 = v26 >= v25;
    if (v26 >= v25)
    {
      v13 = v54;
      v20 = v52;
      v14 = v53;
      v44 = v50;
      v21 = v51;
      goto LABEL_26;
    }

    if (v26 + v55 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26 + v55;
    }

    v29 = [v62 subarrayWithRange:{v26, v28 - v26}];
    v63 = v27;
    v30 = v29;
    v31 = v59;
    v32 = v61;
    v33 = v60;
    objc_opt_self();
    v34 = MEMORY[0x277CCAB68];
    v35 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v36 = [v34 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES ", v35, @"destination_object_id", @"source_object_id", @"sync_provenance", @"sync_identity", @"destination_sub_object_id", @"type", @"behavior", @"deleted", @"creation_date"];

    if ([v30 count])
    {
      v37 = 0;
      do
      {
        [v36 appendString:{@"(?, ?, ?, ?, ?, ?, ?, ?, ?), "}];
        ++v37;
      }

      while ([v30 count] > v37);
    }

    [v36 deleteCharactersInRange:{objc_msgSend(v36, "length") - 1, 1}];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __156__HDAssociationEntity__bulkInsertAssociationsForParentID_childIDs_provenance_syncIdentity_type_behavior_destinationSubObjectID_creationDate_database_error___block_invoke;
    v66[3] = &unk_278619E20;
    v67 = v30;
    v68 = v31;
    v72 = v58;
    v71 = v57;
    v69 = v32;
    v70 = v56;
    v38 = v32;
    v39 = v31;
    v40 = v30;
    v41 = [v33 executeUncachedSQL:v36 error:&v63 bindingHandler:v66 enumerationHandler:0];

    v42 = v63;
    v26 = v28;
    v27 = v42;
  }

  while ((v41 & 1) != 0);
  v43 = v42;
  v27 = v43;
  v13 = v54;
  v14 = v53;
  v44 = v50;
  v21 = v51;
  if (v43)
  {
    if (v49)
    {
      v45 = v43;
      *v49 = v27;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = v52;
  v24 = 0;
LABEL_26:

LABEL_27:
  return v24;
}

uint64_t __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[_HDAssociationInsertionJournalEntry alloc] initWithParentUUID:*(a1 + 32) childIDs:*(a1 + 40) provenance:*(a1 + 72) syncIdentity:*(a1 + 80) type:*(a1 + 88) behavior:*(a1 + 96) creationDate:*(a1 + 48) destinationSubObjectReference:*(a1 + 56)];
  v6 = [*(a1 + 64) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (id)_findAssociationEntryWithParentID:(uint64_t)a3 childID:(uint64_t)a4 type:(uint64_t)a5 behavior:(void *)a6 destinationSubObjectID:(char)a7 deleted:(void *)a8 database:(uint64_t)a9 error:
{
  v27 = a6;
  v26 = a8;
  objc_opt_self();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__43;
  v40 = __Block_byref_object_dispose__43;
  v41 = 0;
  v10 = MEMORY[0x277CCACA8];
  v11 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v12 = *MEMORY[0x277D10A40];
  v13 = [v10 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ IS NULL", *MEMORY[0x277D10A40], v11, @"destination_object_id", @"source_object_id", @"type", @"behavior", @"deleted", @"destination_sub_object_id"];

  if (v27)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v16 = [v14 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v12, v15, @"destination_object_id", @"source_object_id", @"type", @"behavior", @"deleted", @"destination_sub_object_id"];

    v13 = v16;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke;
  v29[3] = &unk_278619DD0;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a7;
  v17 = v27;
  v30 = v17;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke_2;
  v28[3] = &unk_278614620;
  v28[4] = &v36;
  if ([v26 executeSQL:v13 error:a9 bindingHandler:v29 enumerationHandler:v28])
  {
    v18 = v37[5];
    if (!v18)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a9 code:3 format:{@"Unable to find all associations for parent object for %lld when dis-associating.", a2}];
      v18 = v37[5];
    }

    v19 = [v18 copy];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v36, 8);

  return v19;
}

void *__125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  sqlite3_bind_int64(a2, 3, *(a1 + 56));
  sqlite3_bind_int64(a2, 4, *(a1 + 64));
  sqlite3_bind_int64(a2, 5, *(a1 + 72));
  result = *(a1 + 32);
  if (result)
  {
    v5 = [result longLongValue];

    return sqlite3_bind_int64(a2, 6, v5);
  }

  return result;
}

uint64_t __125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

uint64_t __151__HDAssociationEntity__removeAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

id __185__HDAssociationEntity__insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v2 = [v0 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", v1, @"destination_object_id", @"source_object_id", @"sync_provenance", @"sync_identity", @"destination_sub_object_id", @"type", @"behavior", @"deleted", @"creation_date", 0];

  return v2;
}

uint64_t __185__HDAssociationEntity__insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 48));
  sqlite3_bind_int64(a2, 2, *(a1 + 56));
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  sqlite3_bind_int64(a2, 4, *(a1 + 72));
  v4 = *(a1 + 32);
  if (v4)
  {
    sqlite3_bind_int64(a2, 5, [v4 longLongValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 5);
  }

  sqlite3_bind_int64(a2, 6, *(a1 + 80));
  sqlite3_bind_int64(a2, 7, *(a1 + 88));
  sqlite3_bind_int64(a2, 8, *(a1 + 96));
  [*(a1 + 40) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 9, v5);
}

unint64_t __156__HDAssociationEntity__bulkInsertAssociationsForParentID_childIDs_provenance_syncIdentity_type_behavior_destinationSubObjectID_creationDate_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v5 = 0;
    v6 = 5;
    do
    {
      sqlite3_bind_int64(a2, v6 - 4, *(a1 + 56));
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      sqlite3_bind_int64(a2, v6 - 3, [v7 intValue]);

      sqlite3_bind_int64(a2, v6 - 2, *(a1 + 64));
      sqlite3_bind_int64(a2, v6 - 1, *(a1 + 72));
      v8 = *(a1 + 40);
      if (v8)
      {
        sqlite3_bind_int64(a2, v6, [v8 longLongValue]);
      }

      else
      {
        sqlite3_bind_null(a2, v6);
      }

      sqlite3_bind_int64(a2, v6 + 1, *(a1 + 80));
      sqlite3_bind_int64(a2, v6 + 2, *(a1 + 88));
      sqlite3_bind_int64(a2, v6 + 3, 0);
      [*(a1 + 48) timeIntervalSinceReferenceDate];
      sqlite3_bind_double(a2, v6 + 4, v9);
      ++v5;
      result = [*(a1 + 32) count];
      v6 += 9;
    }

    while (result > v5);
  }

  return result;
}

void __176__HDAssociationEntity__insertPendingAssociationsForParentUUID_childUUIDData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectUUID_database_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 120);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(*(a1 + 64) + 8);
  obj = *(v16 + 40);
  v17 = [(HDAssociationEntity *)v6 _insertPendingAssociationForParentUUID:v11 childUUIDBytes:a2 provenance:v7 syncIdentity:v8 type:v9 behavior:v10 destinationSubObjectID:v12 deleted:v13 creationDate:v14 database:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  if ((v17 & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a3 = 1;
  }
}

+ (BOOL)realizePendingAssociationsWithTransaction:(id)a3 startingAnchor:(int64_t)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (qword_27D86C110 != -1)
  {
    dispatch_once(&qword_27D86C110, &__block_literal_global_464);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v8 databaseForEntityClass:a1];
  v11 = _MergedGlobals_3;
  v32 = a1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_2;
  v33[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v33[4] = a4;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_3;
  v29[3] = &unk_278619E70;
  v12 = v10;
  v30 = v12;
  v13 = v9;
  v31 = v13;
  if ([v12 executeSQL:v11 error:a5 bindingHandler:v33 enumerationHandler:v29])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v23 = v13;
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_4;
          v24[3] = &unk_278614860;
          v24[4] = v19;
          if (![v12 executeSQL:qword_27D86C108 error:a5 bindingHandler:v24 enumerationHandler:0])
          {
            v20 = 0;
            goto LABEL_15;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v20 = 1;
LABEL_15:
      v13 = v23;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke()
{
  v12 = MEMORY[0x277CCACA8];
  v11 = *MEMORY[0x277D10A40];
  v10 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v9 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v0 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v1 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v2 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v4 = [v12 stringWithFormat:@"SELECT parent.%@, child.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@ FROM %@ parent CROSS JOIN %@ a ON parent.%@ = a.%@ INNER JOIN %@ child ON child.%@ = a.%@ WHERE parent.%@ > ? UNION SELECT parent.%@, child.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@ FROM %@ child CROSS JOIN %@ a ON child.%@ = a.%@ INNER JOIN %@ parent ON parent.%@ = a.%@ WHERE child.%@ > ?", @"data_id", @"data_id", @"sync_provenance", @"sync_identity", v11, @"type", @"behavior", @"deleted", @"creation_date", @"destination_sub_uuid", v10, v9, @"uuid", @"parent_uuid", v0, @"uuid", @"child_uuid", @"data_id", @"data_id", @"data_id", @"sync_provenance", @"sync_identity", v11, @"type", @"behavior", @"deleted", @"creation_date", @"destination_sub_uuid", v1, v2, @"uuid", @"child_uuid", v3, @"uuid", @"parent_uuid", @"data_id"];
  v5 = _MergedGlobals_3;
  _MergedGlobals_3 = v4;

  v6 = MEMORY[0x277CCACA8];
  v13 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v7 = [v6 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v13, v11];
  v8 = qword_27D86C108;
  qword_27D86C108 = v7;
}

uint64_t __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 32);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = HDSQLiteColumnAsInt64();
  v19 = HDSQLiteColumnAsInt64();
  v18 = HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C80](a2, 4);
  v9 = HDSQLiteColumnAsInt64();
  v10 = HDSQLiteColumnAsInt64();
  v11 = MEMORY[0x22AAC6C10](a2, 7);
  v12 = MEMORY[0x22AAC6C40](a2, 8);
  v13 = MEMORY[0x22AAC6C80](a2, 9);
  if (v11 && ![HDAssociationEntity _removeAssociationEntryWithParentID:v6 childID:v7 provenance:v9 syncIdentity:v10 type:v13 behavior:*(a1 + 32) destinationSubObjectID:a3 deleted:? database:? error:?])
  {
    v15 = 0;
  }

  else
  {
    v14 = *(a1 + 48);
    v20 = 0;
    v15 = [(HDAssociationEntity *)v14 _insertAssociationEntryWithParentID:v6 childID:v7 provenance:v19 syncIdentity:v18 type:v9 behavior:v10 destinationSubObjectID:v13 deleted:v11 creationDate:v12 lastInsertedEntityID:&v20 database:*(a1 + 32) error:a3];
    v16 = v20;
    if (v15)
    {
      [*(a1 + 40) addObject:v8];
    }
  }

  return v15;
}

uint64_t __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

+ (id)objectIDsForAssociationEntityWithPersistentID:(int64_t)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__43;
  v17 = __Block_byref_object_dispose__43;
  v18 = [MEMORY[0x277CBEB18] array];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke;
  v12[3] = &unk_278619EC0;
  v12[5] = a1;
  v12[6] = a3;
  v12[4] = &v13;
  LOBYTE(a5) = [a1 performReadTransactionWithHealthDatabase:v9 error:a5 block:v12];

  if (a5)
  {
    v10 = v14[5];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:a1[5]];
  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[6]];
  v8 = [v6 predicateWithProperty:@"destination_object_id" equalToValue:v7];

  v9 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v9 setPredicate:v8];
  [v9 setEntityClass:a1[5]];
  v16[0] = @"source_object_id";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v5 descriptor:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke_2;
  v15[3] = &unk_278619E98;
  v15[4] = a1[4];
  v12 = [v11 enumerateProperties:v10 error:a3 enumerationHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AAC6C80](a3, 0);
  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

  return 1;
}

+ (id)deleteStatementForParentIDWithTransaction:(id)a3
{
  v4 = [a3 databaseForEntityClass:a1];
  v5 = [a1 deleteStatementWithProperty:@"destination_object_id" database:v4];

  return v5;
}

+ (id)deleteStatementForChildIDsWithTransaction:(id)a3
{
  v4 = [a3 databaseForEntityClass:a1];
  v5 = [a1 deleteStatementWithProperty:@"source_object_id" database:v4];

  return v5;
}

+ (id)objectsAssociatedWithObjectPID:(int64_t)a3 subObjectReference:(id)a4 dataTypes:(id)a5 associationType:(unint64_t)a6 behavior:(unint64_t)a7 limit:(unint64_t)a8 sortDescending:(BOOL)a9 profile:(id)a10 error:(id *)a11
{
  v15 = a4;
  v16 = a5;
  v17 = a10;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__43;
  v47 = __Block_byref_object_dispose__43;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__43;
  v41[4] = __Block_byref_object_dispose__43;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__43;
  v39[4] = __Block_byref_object_dispose__43;
  v40 = 0;
  v18 = [v17 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke;
  v26[3] = &unk_278619F10;
  v19 = v16;
  v27 = v19;
  v33 = a3;
  v20 = v15;
  v28 = v20;
  v38 = a9;
  v34 = a6;
  v35 = a7;
  v36 = a1;
  v37 = a8;
  v21 = v17;
  v29 = v21;
  v30 = v39;
  v31 = v41;
  v32 = &v43;
  LOBYTE(a5) = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v18 error:a11 block:v26];

  if (a5)
  {
    v22 = v44[5];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);

  return v22;
}

uint64_t __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v49 = a2;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = *(a1 + 32);
  v51 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v51)
  {
    v4 = 0x277D10000uLL;
    v5 = 0x277CCA000uLL;
    v50 = *v56;
    v6 = @"child_id_samples.data_type";
    while (2)
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v55 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v10 = *(v4 + 2840);
        v11 = [*(v5 + 2992) numberWithLongLong:*(a1 + 80)];
        v12 = [v10 predicateWithProperty:@"destination_object_id" equalToValue:v11];
        [v9 addObject:v12];

        v13 = *(a1 + 40);
        if (v13)
        {
          v14 = [v13 persistentIDInTransaction:v49 error:a3];
          if (!v14)
          {
            goto LABEL_25;
          }

          v15 = v14;
          v16 = [v14 longLongValue];
          v17 = *(v4 + 2840);
          v18 = [*(v5 + 2992) numberWithLongLong:v16];
          v19 = [v17 predicateWithProperty:@"destination_sub_object_id" equalToValue:v18];
          [v9 addObject:v19];
        }

        else
        {
          v15 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"destination_sub_object_id"];
          [v9 addObject:v15];
        }

        v20 = [*(v4 + 2840) predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
        [v9 addObject:v20];

        v21 = *(v4 + 2840);
        v22 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v8, "code")}];
        v23 = [v21 predicateWithProperty:v6 equalToValue:v22];
        [v9 addObject:v23];

        v24 = *(v4 + 2840);
        v25 = [*(v5 + 2992) numberWithUnsignedInteger:*(a1 + 88)];
        v26 = [v24 predicateWithProperty:@"type" equalToValue:v25];
        [v9 addObject:v26];

        v27 = *(v4 + 2840);
        v28 = [*(v5 + 2992) numberWithUnsignedInteger:*(a1 + 96)];
        v29 = [v27 predicateWithProperty:@"behavior" equalToValue:v28];
        [v9 addObject:v29];

        if (*(a1 + 120) == 1)
        {
          v30 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
          v31 = [MEMORY[0x277D10B68] orderingTermWithProperty:v6 entityClass:objc_opt_class() ascending:0];
          v32 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"ROWID" entityClass:*(a1 + 104) ascending:0];
          v60[0] = v31;
          v60[1] = v30;
          v60[2] = v32;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
        }

        else
        {
          v33 = 0;
        }

        v34 = *(a1 + 104);
        v35 = v6;
        v59[0] = v6;
        v59[1] = @"child_id_samples.data_id";
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        v37 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];
        v38 = *(a1 + 112);
        v39 = [*(a1 + 48) database];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke_2;
        v53[3] = &unk_278619EE8;
        v54 = *(a1 + 56);
        LODWORD(v34) = [v34 enumerateProperties:v36 withPredicate:v37 orderingTerms:v33 groupBy:0 limit:v38 healthDatabase:v39 error:a3 enumerationHandler:v53];

        if (!v34)
        {
          goto LABEL_24;
        }

        v5 = 0x277CCA000;
        v6 = v35;
        v4 = 0x277D10000;
        if (*(*(*(a1 + 56) + 8) + 40) && [*(*(*(a1 + 64) + 8) + 40) count])
        {
          v40 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_id" values:*(*(*(a1 + 64) + 8) + 40)];
          v41 = [HDSampleEntity samplesWithType:*(*(*(a1 + 56) + 8) + 40) profile:*(a1 + 48) encodingOptions:0 predicate:v40 limit:*(a1 + 112) anchor:0 error:a3];
          v42 = v41;
          if (!*(*(*(a1 + 56) + 8) + 40) || ![v41 count])
          {

LABEL_24:
LABEL_25:

            v45 = 0;
            goto LABEL_26;
          }

          [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:v42];
          [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
          v43 = *(*(a1 + 56) + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = 0;
        }
      }

      v45 = 1;
      v51 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v45 = 1;
  }

LABEL_26:

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

uint64_t __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnAsInt64();
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  [v6 addObject:v7];

  return 1;
}

+ (id)countOfObjectsAssociatedWithObjectUUID:(id)a3 subObjectReference:(id)a4 excludeDeleted:(BOOL)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__43;
  v31 = __Block_byref_object_dispose__43;
  v32 = 0;
  v15 = [v14 database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__HDAssociationEntity_countOfObjectsAssociatedWithObjectUUID_subObjectReference_excludeDeleted_profile_error___block_invoke;
  v21[3] = &unk_278619F38;
  v16 = v12;
  v22 = v16;
  v17 = v13;
  v26 = a5;
  v23 = v17;
  v24 = &v27;
  v25 = a1;
  LODWORD(a7) = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v15 error:a7 block:v21];

  if (a7)
  {
    v18 = v28[5];
  }

  else
  {
    v18 = &unk_283CB0978;
  }

  v19 = v18;

  _Block_object_dispose(&v27, 8);

  return v19;
}

BOOL __110__HDAssociationEntity_countOfObjectsAssociatedWithObjectUUID_subObjectReference_excludeDeleted_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = *(a1 + 32);
  v8 = HDDataEntityPredicateForDataUUID();
  v9 = [HDDataEntity anyInDatabase:v6 predicate:v8 error:a3];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = MEMORY[0x277D10B18];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentID")}];
    v13 = [v11 predicateWithProperty:@"destination_object_id" equalToValue:v12];
    [v10 addObject:v13];

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = MEMORY[0x277D10B18];
      v16 = [v14 UUID];
      v17 = _HDSQLiteValueForUUID();
      v18 = [v15 predicateWithProperty:@"child_id_objects.uuid" equalToValue:v17];
      [v10 addObject:v18];
    }

    else
    {
      v16 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"destination_sub_object_id"];
      [v10 addObject:v16];
    }

    if (*(a1 + 64) == 1)
    {
      v20 = MEMORY[0x277D10B18];
      v21 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v22 = [v20 predicateWithProperty:@"deleted" equalToValue:v21];
      [v10 addObject:v22];
    }

    v23 = *(a1 + 56);
    v24 = *MEMORY[0x277D10A48];
    v25 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v10];
    v26 = [v5 protectedDatabase];
    v27 = [v23 countValueForProperty:v24 predicate:v25 database:v26 error:a3];
    v28 = *(*(a1 + 48) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v19 = *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)countOfObjectsAssociatedWithObjectPID:(int64_t)a3 excludeDeleted:(BOOL)a4 associationType:(unint64_t)a5 behavior:(unint64_t)a6 anchor:(int64_t)a7 transaction:(id)a8 error:(id *)a9
{
  v11 = a4;
  v14 = a8;
  v15 = objc_opt_new();
  v16 = MEMORY[0x277D10B18];
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v18 = [v16 predicateWithProperty:@"destination_object_id" equalToValue:v17];
  [v15 addObject:v18];

  if (v11)
  {
    v19 = MEMORY[0x277D10B18];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v21 = [v19 predicateWithProperty:@"deleted" equalToValue:v20];
    [v15 addObject:v21];
  }

  v22 = MEMORY[0x277D10B18];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v24 = [v22 predicateWithProperty:@"type" equalToValue:v23];
  [v15 addObject:v24];

  v25 = MEMORY[0x277D10B18];
  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a7];
  v27 = [v25 predicateWithProperty:@"ROWID" greaterThanValue:v26];
  [v15 addObject:v27];

  v28 = *MEMORY[0x277D10A48];
  v29 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v15];
  v30 = [v14 protectedDatabase];

  v31 = [a1 countValueForProperty:v28 predicate:v29 database:v30 error:a9];

  return v31;
}

+ (void)_UUIDsAssociatedWithUUID:(void *)a3 subObjectReference:(void *)a4 predicateProperty:(void *)a5 enumerateProperty:(char)a6 excludeDeleted:(void *)a7 profile:(uint64_t)a8 error:
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = objc_opt_self();
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = [v17 database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke;
  v31[3] = &unk_278619F60;
  v32 = v13;
  v33 = v14;
  v39 = a6;
  v37 = v19;
  v38 = v18;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v21 = v19;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v13;
  LODWORD(v19) = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v20 error:a8 block:v31];

  if (v19)
  {
    v27 = v21;
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = v27;

  return v27;
}

uint64_t __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = *(a1 + 32);
  v8 = HDDataEntityPredicateForDataUUID();
  v37 = 0;
  v9 = [HDDataEntity anyInDatabase:v6 predicate:v8 error:&v37];
  v10 = v37;

  if (v9)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v36 = 0;
      v12 = [v11 persistentIDInTransaction:v5 error:&v36];
      v13 = v36;
      if (!v12)
      {
        v16 = v13;
        if (v16)
        {
          if (a3)
          {
            v31 = v16;
            v15 = 0;
            *a3 = v16;
          }

          else
          {
            _HKLogDroppedError();
            v15 = 0;
          }

          v12 = v16;
        }

        else
        {
          v12 = 0;
          v15 = 1;
        }

        goto LABEL_15;
      }

      v32 = a3;
    }

    else
    {
      v32 = a3;
      v12 = 0;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = MEMORY[0x277D10B18];
    v18 = *(a1 + 48);
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentID")}];
    v20 = [v17 predicateWithProperty:v18 equalToValue:v19];
    [v16 addObject:v20];

    if (v12)
    {
      [MEMORY[0x277D10B18] predicateWithProperty:@"destination_sub_object_id" equalToValue:v12];
    }

    else
    {
      [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"destination_sub_object_id"];
    }
    v21 = ;
    [v16 addObject:{v21, v32}];

    if (*(a1 + 88) == 1)
    {
      v22 = MEMORY[0x277D10B18];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v24 = [v22 predicateWithProperty:@"deleted" equalToValue:v23];
      [v16 addObject:v24];
    }

    v25 = *(a1 + 80);
    v38[0] = *(a1 + 56);
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v27 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v16];
    v28 = [*(a1 + 64) database];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke_2;
    v34[3] = &unk_278615128;
    v35 = *(a1 + 72);
    v15 = [v25 enumerateProperties:v26 withPredicate:v27 healthDatabase:v28 error:v33 enumerationHandler:v34];

LABEL_15:
    goto LABEL_16;
  }

  v12 = v10;
  if (v12)
  {
    if (a3)
    {
      v14 = v12;
      v15 = 0;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6CA0](a4, 0);
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

+ (BOOL)_enumerateAssociationsWithPredicate:(id)a3 syncEntityClass:(Class)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 lastSyncAnchor:(int64_t *)a7 healthDatabase:(id)a8 error:(id *)a9 block:(id)a10
{
  end = a6.end;
  start = a6.start;
  v34[3] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v19 = a10;
  v20 = [a1 predicateForSyncWithPredicate:v16 syncEntityClass:a4 session:v17 syncAnchorRange:{start, end}];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = start;
  v34[0] = @"parent_id_objects.uuid";
  v34[1] = @"child_id_objects.uuid";
  v34[2] = @"sync_identity";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __141__HDAssociationEntity__enumerateAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_error_block___block_invoke;
  v27[3] = &unk_278619FB0;
  v22 = v19;
  v28 = v22;
  v29 = &v30;
  v23 = [a1 enumerateProperties:v21 withPredicate:v20 healthDatabase:v18 error:a9 enumerationHandler:v27];

  v24 = v23 ^ 1;
  if (!a7)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    *a7 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t __141__HDAssociationEntity__enumerateAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_error_block___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = HKWithAutoreleasePool();

  return v2;
}

uint64_t __141__HDAssociationEntity__enumerateAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_error_block___block_invoke_2(void *a1)
{
  v2 = MEMORY[0x22AAC6CA0](a1[6], 0);
  v3 = MEMORY[0x22AAC6CA0](a1[6], 1);
  v4 = a1[6];
  HDSQLiteColumnAsInt64();
  (*(a1[4] + 16))();
  *(*(a1[5] + 8) + 24) = a1[7];

  return 1;
}

+ (BOOL)_enumerateTypedAssociationsWithPredicate:(id)a3 syncEntityClass:(Class)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 lastSyncAnchor:(int64_t *)a7 healthDatabase:(id)a8 transaction:(id)a9 error:(id *)a10 block:(id)a11
{
  end = a6.end;
  start = a6.start;
  v38[8] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a11;
  v21 = [a1 predicateForSyncWithPredicate:v16 syncEntityClass:a4 session:v17 syncAnchorRange:{start, end}];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = start;
  v38[0] = @"parent_id_objects.uuid";
  v38[1] = @"child_id_objects.uuid";
  v38[2] = @"sync_identity";
  v38[3] = @"type";
  v38[4] = @"behavior";
  v38[5] = @"deleted";
  v38[6] = @"creation_date";
  v38[7] = @"destination_sub_object_id";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __158__HDAssociationEntity__enumerateTypedAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_transaction_error_block___block_invoke;
  v30[3] = &unk_27861A000;
  v23 = v19;
  v31 = v23;
  v24 = v20;
  v32 = v24;
  v33 = &v34;
  v25 = [a1 enumerateProperties:v22 withPredicate:v21 healthDatabase:v18 error:a10 enumerationHandler:v30];

  v26 = v25 ^ 1;
  if (!a7)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    *a7 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __158__HDAssociationEntity__enumerateTypedAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_transaction_error_block___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v2 = HKWithAutoreleasePool();

  return v2;
}

uint64_t __158__HDAssociationEntity__enumerateTypedAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_transaction_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x22AAC6CA0](*(a1 + 56), 0);
  v5 = MEMORY[0x22AAC6CA0](*(a1 + 56), 1);
  v6 = *(a1 + 56);
  HDSQLiteColumnAsInt64();
  v7 = *(a1 + 56);
  HDSQLiteColumnAsInt64();
  v8 = *(a1 + 56);
  HDSQLiteColumnAsInt64();
  MEMORY[0x22AAC6C10](*(a1 + 56), 5);
  v9 = MEMORY[0x22AAC6C40](*(a1 + 56), 6);
  v10 = *(a1 + 56);
  v11 = HDSQLiteColumnAsInt64();
  v12 = HDReferenceForUnknownAssociatableObjectWithPersistentID(v11, *(a1 + 32), a2);
  v13 = [v12 UUID];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v4, v5);
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 64);

  return 1;
}

+ (BOOL)_insertCodableObjectAssociations:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v20 = v10;
        v21 = v9;
        LODWORD(v15) = HKWithAutoreleasePool();

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL __80__HDAssociationEntity__insertCodableObjectAssociations_syncStore_profile_error___block_invoke(id *a1, uint64_t a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__43;
  v26 = __Block_byref_object_dispose__43;
  v4 = [a1[4] syncIdentityManager];
  v27 = [v4 legacySyncIdentity];

  v5 = [a1[4] database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__HDAssociationEntity__insertCodableObjectAssociations_syncStore_profile_error___block_invoke_2;
  v19[3] = &unk_278619980;
  v21 = &v22;
  v18 = *(a1 + 2);
  v6 = v18.i64[0];
  v20 = vextq_s8(v18, v18, 8uLL);
  v7 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:v5 error:a2 block:v19];

  if (v7)
  {
    v8 = [a1[5] decodedAssociationUUID];
    v9 = [a1[5] objectUuids];
    v10 = [a1[6] syncProvenance];
    v11 = [v23[5] entity];
    v12 = [v11 persistentID];
    v13 = [MEMORY[0x277CBEAA8] distantPast];
    LOWORD(v17) = 256;
    LOBYTE(v16) = 0;
    v14 = [HDAssociationEntity _insertEntriesWithParentUUID:v8 childUUIDsData:v9 provenance:v10 syncIdentity:v12 type:0 behavior:0 deleted:v16 creationDate:v13 destinationSubObjectReference:0 enforceSameSource:v17 permitPendingAssociations:a1[4] profile:0 lastInsertedEntityID:a2 error:?];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v14;
}

uint64_t __80__HDAssociationEntity__insertCodableObjectAssociations_syncStore_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hasSyncIdentity])
  {
    v6 = [*(a1 + 32) syncIdentity];
    v21 = 0;
    v7 = [HDSyncIdentity syncIdentityWithCodable:v6 error:&v21];
    v8 = v21;

    if (v7)
    {
      v9 = [*(a1 + 40) syncIdentityManager];
      v20 = v8;
      v10 = 1;
      v11 = [v9 concreteIdentityForIdentity:v7 shouldCreate:1 transaction:v5 error:&v20];
      v12 = v20;

      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
LABEL_16:

        goto LABEL_17;
      }

      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v12;
        _os_log_fault_impl(&dword_228986000, v15, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v12;
      if (!v12)
      {
LABEL_15:

        v10 = 0;
        goto LABEL_16;
      }

      if (!a3)
      {
LABEL_8:
        _HKLogDroppedError();
        goto LABEL_15;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v8;
        _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v8;
      if (!v12)
      {
        goto LABEL_15;
      }

      if (!a3)
      {
        goto LABEL_8;
      }
    }

    v17 = v12;
    *a3 = v12;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

@end