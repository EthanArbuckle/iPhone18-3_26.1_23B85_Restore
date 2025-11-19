@interface HDWorkoutZonesAssociationEntity
+ (BOOL)_wasDeletedObjectWithUUID:(void *)a3 transaction:(uint64_t)a4 error:;
+ (BOOL)associateSyncedZonesSamplesWithUUIDs:(id)a3 withWorkoutUUID:(id)a4 syncIdentity:(id)a5 syncProvenance:(int64_t)a6 transaction:(id)a7 error:(id *)a8;
+ (BOOL)associateZonesSamplesWithUUIDs:(id)a3 withWorkoutUUID:(id)a4 transaction:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)enumerateZonesSamplesWithWorkoutPersistentID:(unint64_t)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 handler:(id)a7;
+ (id)foreignKeys;
+ (id)uniquedColumns;
+ (uint64_t)_insertAssociationsForZonesSamplesWithUUIDs:(void *)a3 withWorkoutUUID:(uint64_t)a4 syncProvenance:(uint64_t)a5 syncIdentity:(int)a6 ignoreDeletedObjects:(void *)a7 transaction:(void *)a8 error:;
- (id)_dataObjectUUIDWithPredicate:(void *)a3 transaction:(uint64_t)a4 error:;
- (id)workoutUUIDWithTransaction:(id)a3 error:(id *)a4;
- (id)zonesUUIDWithTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDWorkoutZonesAssociationEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"workout_id";
  v5[1] = @"zones_sample_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"workout_id";
  v2 = +[(HDDataEntity *)HDWorkoutEntity];
  v7[1] = @"zones_sample_id";
  v8[0] = v2;
  v3 = +[(HDDataEntity *)HDWorkoutZonesSampleEntity];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)associateZonesSamplesWithUUIDs:(id)a3 withWorkoutUUID:(id)a4 transaction:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  LOBYTE(a7) = +[HDWorkoutZonesAssociationEntity _insertAssociationsForZonesSamplesWithUUIDs:withWorkoutUUID:syncProvenance:syncIdentity:ignoreDeletedObjects:transaction:error:](a1, v14, v13, 0, [a6 currentSyncIdentityPersistentID], 0, v12, a7);

  return a7;
}

+ (uint64_t)_insertAssociationsForZonesSamplesWithUUIDs:(void *)a3 withWorkoutUUID:(uint64_t)a4 syncProvenance:(uint64_t)a5 syncIdentity:(int)a6 ignoreDeletedObjects:(void *)a7 transaction:(void *)a8 error:
{
  v46[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a7;
  v14 = objc_opt_self();
  v15 = [v13 databaseForEntityClass:v14];
  v46[0] = @"workout_id";
  v46[1] = @"zones_sample_id";
  v46[2] = @"sync_provenance";
  v46[3] = @"sync_identity";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  v17 = HDDataEntityPredicateForDataUUID();
  v43 = 0;
  v18 = [(HDDataEntity *)HDWorkoutEntity anyInDatabase:v15 predicate:v17 error:&v43];
  v19 = v43;

  if (v18)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __162__HDWorkoutZonesAssociationEntity__insertAssociationsForZonesSamplesWithUUIDs_withWorkoutUUID_syncProvenance_syncIdentity_ignoreDeletedObjects_transaction_error___block_invoke;
    v32[3] = &unk_27861BB10;
    v41 = a6;
    v33 = v15;
    v38 = v14;
    v34 = v13;
    v35 = v12;
    v36 = v16;
    v37 = v18;
    v39 = a4;
    v40 = a5;
    v20 = [v11 hk_enumerateUUIDsWithError:a8 block:v32];

    goto LABEL_16;
  }

  if (!v19)
  {
    if (a6)
    {
      v42 = 0;
      v21 = [(HDWorkoutZonesAssociationEntity *)v14 _wasDeletedObjectWithUUID:v12 transaction:v13 error:&v42];
      v19 = v42;
      if (v21)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v12;
          _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "Not inserting zones associations since workout %{public}@ was previously deleted", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }
  }

  if (v19)
  {
    v19 = v19;
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = [v12 UUIDString];
    v25 = [v23 hk_error:118 format:{@"Workout %@ does not exist when associating zones", v24}];

    v19 = v25;
    if (!v19)
    {
LABEL_13:
      v20 = 1;
      goto LABEL_16;
    }
  }

  if (a8)
  {
    v26 = v19;
    *a8 = v19;
  }

  else
  {
    _HKLogDroppedError();
  }

  v20 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)associateSyncedZonesSamplesWithUUIDs:(id)a3 withWorkoutUUID:(id)a4 syncIdentity:(id)a5 syncProvenance:(int64_t)a6 transaction:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:a5 transaction:v16 error:a8];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 entity];
    v20 = +[HDWorkoutZonesAssociationEntity _insertAssociationsForZonesSamplesWithUUIDs:withWorkoutUUID:syncProvenance:syncIdentity:ignoreDeletedObjects:transaction:error:](a1, v14, v15, a6, [v19 persistentID], 1, v16, a8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)enumerateZonesSamplesWithWorkoutPersistentID:(unint64_t)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 handler:(id)a7
{
  v29[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a7;
  v14 = MEMORY[0x277D10B18];
  v15 = MEMORY[0x277CCABB0];
  v16 = a5;
  v17 = [v15 numberWithUnsignedLongLong:a3];
  v18 = [v14 predicateWithProperty:@"workout_id" equalToValue:v17];

  v19 = [v16 databaseForEntityClass:a1];

  v20 = [a1 queryWithDatabase:v19 predicate:v18];
  v29[0] = @"zones_sample_id";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__HDWorkoutZonesAssociationEntity_enumerateZonesSamplesWithWorkoutPersistentID_profile_transaction_error_handler___block_invoke;
  v26[3] = &unk_27861BAC0;
  v27 = v12;
  v28 = v13;
  v22 = v13;
  v23 = v12;
  LOBYTE(a6) = [v20 enumerateProperties:v21 error:a6 enumerationHandler:v26];

  v24 = *MEMORY[0x277D85DE8];
  return a6;
}

uint64_t __114__HDWorkoutZonesAssociationEntity_enumerateZonesSamplesWithWorkoutPersistentID_profile_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:HDSQLiteColumnWithNameAsInt64()];
  v7 = [(HDDataEntity *)HDWorkoutZonesSampleEntity objectWithID:v6 encodingOptions:0 profile:*(a1 + 32) error:a4];

  if (v7)
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)workoutUUIDWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDHealthEntity *)self numberForProperty:@"workout_id" transaction:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = HDDataEntityPredicateForRowID(v7, 1);
    v10 = [(HDWorkoutZonesAssociationEntity *)self _dataObjectUUIDWithPredicate:v9 transaction:v6 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_dataObjectUUIDWithPredicate:(void *)a3 transaction:(uint64_t)a4 error:
{
  if (a1)
  {
    v6 = a3;
    v7 = a2;
    v8 = [v6 databaseForEntityClass:objc_opt_class()];

    v9 = [(HDSQLiteEntity *)HDDataEntity propertyValueForAnyInDatabase:v8 property:@"uuid" predicate:v7 error:a4];

    v10 = _HDUUIDForSQLiteValue();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)zonesUUIDWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDHealthEntity *)self numberForProperty:@"zones_sample_id" transaction:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = HDDataEntityPredicateForRowID(v7, 1);
    v10 = [(HDWorkoutZonesAssociationEntity *)self _dataObjectUUIDWithPredicate:v9 transaction:v6 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_wasDeletedObjectWithUUID:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [HDDeletedObjectEntity deletedObjectEntityWithUUID:v7 transaction:v6 error:a4];

  return v8 != 0;
}

BOOL __162__HDWorkoutZonesAssociationEntity__insertAssociationsForZonesSamplesWithUUIDs_withWorkoutUUID_syncProvenance_syncIdentity_ignoreDeletedObjects_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = HDDataEntityPredicateForDataUUID();
  v33 = 0;
  v9 = [(HDDataEntity *)HDWorkoutZonesSampleEntity anyInDatabase:v7 predicate:v8 error:&v33];
  v10 = v33;

  if (v9)
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __162__HDWorkoutZonesAssociationEntity__insertAssociationsForZonesSamplesWithUUIDs_withWorkoutUUID_syncProvenance_syncIdentity_ignoreDeletedObjects_transaction_error___block_invoke_335;
    v28[3] = &unk_27861BAE8;
    v29 = v9;
    v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    v14 = [v11 insertOrReplaceEntity:0 database:v12 properties:v13 error:a4 bindingHandler:v28];
    v15 = v14 != 0;

    goto LABEL_13;
  }

  if (v10)
  {
    goto LABEL_4;
  }

  if (*(a1 + 96) != 1)
  {
    goto LABEL_15;
  }

  v17 = *(a1 + 72);
  v18 = *(a1 + 40);
  v32 = 0;
  v19 = [(HDWorkoutZonesAssociationEntity *)v17 _wasDeletedObjectWithUUID:v6 transaction:v18 error:&v32];
  v20 = v32;
  v10 = v20;
  if (v19)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Not inserting zones associations since zones sample %{public}@ was previously deleted", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (!v20)
  {
LABEL_15:
    v24 = MEMORY[0x277CCA9B8];
    v25 = [v6 UUIDString];
    v26 = [*(a1 + 48) UUIDString];
    v27 = [v24 hk_error:118 format:{@"Zones sample %@ does not exist when associating with workout %@", v25, v26}];

    v10 = v27;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_16:
    v15 = 1;
    goto LABEL_13;
  }

LABEL_4:
  v10 = v10;
LABEL_5:
  if (a4)
  {
    v16 = v10;
    *a4 = v10;
  }

  else
  {
    _HKLogDroppedError();
  }

  v15 = 0;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

void __162__HDWorkoutZonesAssociationEntity__insertAssociationsForZonesSamplesWithUUIDs_withWorkoutUUID_syncProvenance_syncIdentity_ignoreDeletedObjects_transaction_error___block_invoke_335(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"zones_sample_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"workout_id", [*(a1 + 40) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 48));
  v4 = *(a1 + 56);

  JUMPOUT(0x22AAC6B90);
}

@end