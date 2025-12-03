@interface HDWorkoutZonesAssociationEntity
+ (BOOL)_wasDeletedObjectWithUUID:(void *)d transaction:(uint64_t)transaction error:;
+ (BOOL)associateSyncedZonesSamplesWithUUIDs:(id)ds withWorkoutUUID:(id)d syncIdentity:(id)identity syncProvenance:(int64_t)provenance transaction:(id)transaction error:(id *)error;
+ (BOOL)associateZonesSamplesWithUUIDs:(id)ds withWorkoutUUID:(id)d transaction:(id)transaction profile:(id)profile error:(id *)error;
+ (BOOL)enumerateZonesSamplesWithWorkoutPersistentID:(unint64_t)d profile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (id)foreignKeys;
+ (id)uniquedColumns;
+ (uint64_t)_insertAssociationsForZonesSamplesWithUUIDs:(void *)ds withWorkoutUUID:(uint64_t)d syncProvenance:(uint64_t)provenance syncIdentity:(int)identity ignoreDeletedObjects:(void *)objects transaction:(void *)transaction error:;
- (id)_dataObjectUUIDWithPredicate:(void *)predicate transaction:(uint64_t)transaction error:;
- (id)workoutUUIDWithTransaction:(id)transaction error:(id *)error;
- (id)zonesUUIDWithTransaction:(id)transaction error:(id *)error;
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

+ (BOOL)associateZonesSamplesWithUUIDs:(id)ds withWorkoutUUID:(id)d transaction:(id)transaction profile:(id)profile error:(id *)error
{
  transactionCopy = transaction;
  dCopy = d;
  dsCopy = ds;
  LOBYTE(error) = +[HDWorkoutZonesAssociationEntity _insertAssociationsForZonesSamplesWithUUIDs:withWorkoutUUID:syncProvenance:syncIdentity:ignoreDeletedObjects:transaction:error:](self, dsCopy, dCopy, 0, [profile currentSyncIdentityPersistentID], 0, transactionCopy, error);

  return error;
}

+ (uint64_t)_insertAssociationsForZonesSamplesWithUUIDs:(void *)ds withWorkoutUUID:(uint64_t)d syncProvenance:(uint64_t)provenance syncIdentity:(int)identity ignoreDeletedObjects:(void *)objects transaction:(void *)transaction error:
{
  v46[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  dsCopy = ds;
  objectsCopy = objects;
  v14 = objc_opt_self();
  v15 = [objectsCopy databaseForEntityClass:v14];
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
    identityCopy = identity;
    v33 = v15;
    v38 = v14;
    v34 = objectsCopy;
    v35 = dsCopy;
    v36 = v16;
    v37 = v18;
    dCopy = d;
    provenanceCopy = provenance;
    v20 = [v11 hk_enumerateUUIDsWithError:transaction block:v32];

    goto LABEL_16;
  }

  if (!v19)
  {
    if (identity)
    {
      v42 = 0;
      v21 = [(HDWorkoutZonesAssociationEntity *)v14 _wasDeletedObjectWithUUID:dsCopy transaction:objectsCopy error:&v42];
      v19 = v42;
      if (v21)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = dsCopy;
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
    uUIDString = [dsCopy UUIDString];
    v25 = [v23 hk_error:118 format:{@"Workout %@ does not exist when associating zones", uUIDString}];

    v19 = v25;
    if (!v19)
    {
LABEL_13:
      v20 = 1;
      goto LABEL_16;
    }
  }

  if (transaction)
  {
    v26 = v19;
    *transaction = v19;
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

+ (BOOL)associateSyncedZonesSamplesWithUUIDs:(id)ds withWorkoutUUID:(id)d syncIdentity:(id)identity syncProvenance:(int64_t)provenance transaction:(id)transaction error:(id *)error
{
  dsCopy = ds;
  dCopy = d;
  transactionCopy = transaction;
  v17 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:identity transaction:transactionCopy error:error];
  v18 = v17;
  if (v17)
  {
    entity = [v17 entity];
    v20 = +[HDWorkoutZonesAssociationEntity _insertAssociationsForZonesSamplesWithUUIDs:withWorkoutUUID:syncProvenance:syncIdentity:ignoreDeletedObjects:transaction:error:](self, dsCopy, dCopy, provenance, [entity persistentID], 1, transactionCopy, error);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)enumerateZonesSamplesWithWorkoutPersistentID:(unint64_t)d profile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  v14 = MEMORY[0x277D10B18];
  v15 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  v17 = [v15 numberWithUnsignedLongLong:d];
  v18 = [v14 predicateWithProperty:@"workout_id" equalToValue:v17];

  v19 = [transactionCopy databaseForEntityClass:self];

  v20 = [self queryWithDatabase:v19 predicate:v18];
  v29[0] = @"zones_sample_id";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__HDWorkoutZonesAssociationEntity_enumerateZonesSamplesWithWorkoutPersistentID_profile_transaction_error_handler___block_invoke;
  v26[3] = &unk_27861BAC0;
  v27 = profileCopy;
  v28 = handlerCopy;
  v22 = handlerCopy;
  v23 = profileCopy;
  LOBYTE(error) = [v20 enumerateProperties:v21 error:error enumerationHandler:v26];

  v24 = *MEMORY[0x277D85DE8];
  return error;
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

- (id)workoutUUIDWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [(HDHealthEntity *)self numberForProperty:@"workout_id" transaction:transactionCopy error:error];
  v8 = v7;
  if (v7)
  {
    v9 = HDDataEntityPredicateForRowID(v7, 1);
    v10 = [(HDWorkoutZonesAssociationEntity *)self _dataObjectUUIDWithPredicate:v9 transaction:transactionCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_dataObjectUUIDWithPredicate:(void *)predicate transaction:(uint64_t)transaction error:
{
  if (self)
  {
    predicateCopy = predicate;
    v7 = a2;
    v8 = [predicateCopy databaseForEntityClass:objc_opt_class()];

    v9 = [(HDSQLiteEntity *)HDDataEntity propertyValueForAnyInDatabase:v8 property:@"uuid" predicate:v7 error:transaction];

    v10 = _HDUUIDForSQLiteValue();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)zonesUUIDWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [(HDHealthEntity *)self numberForProperty:@"zones_sample_id" transaction:transactionCopy error:error];
  v8 = v7;
  if (v7)
  {
    v9 = HDDataEntityPredicateForRowID(v7, 1);
    v10 = [(HDWorkoutZonesAssociationEntity *)self _dataObjectUUIDWithPredicate:v9 transaction:transactionCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_wasDeletedObjectWithUUID:(void *)d transaction:(uint64_t)transaction error:
{
  dCopy = d;
  v7 = a2;
  objc_opt_self();
  v8 = [HDDeletedObjectEntity deletedObjectEntityWithUUID:v7 transaction:dCopy error:transaction];

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