@interface HDDeviceContextEntity
+ (BOOL)deleteDeviceContextWithSyncIdentity:(int64_t)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)enumerateDeviceContextWithTransaction:(id)a3 error:(id *)a4 enumerationHandler:(id)a5;
+ (BOOL)updateDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)updateSoftwareVersionForDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_contextForEntity:(void *)a3 transaction:(uint64_t)a4 error:;
+ (id)_deviceContextWithSyncIdentity:(void *)a3 transaction:(uint64_t)a4 error:;
+ (id)_predicateForSyncEntityIdentity:(uint64_t)a1;
+ (id)_propertiesForEntity;
+ (id)deviceContextEntityWithSyncIdentity:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (id)deviceContextForLocalSyncIdentityWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)insertDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)lookupDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)lookupOrCreateDeviceContextForLocalSyncIdentityWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)lookupOrCreateDeviceContextForSyncIdentity:(id)a3 WithTransaction:(id)a4 error:(id *)a5;
@end

@implementation HDDeviceContextEntity

+ (BOOL)enumerateDeviceContextWithTransaction:(id)a3 error:(id *)a4 enumerationHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 databaseForEntityClass:objc_opt_class()];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HDDeviceContextEntity_enumerateDeviceContextWithTransaction_error_enumerationHandler___block_invoke;
  v18[3] = &unk_278615698;
  v22 = a1;
  v11 = v8;
  v19 = v11;
  v21 = &v23;
  v12 = v9;
  v20 = v12;
  v13 = [(HDSQLiteEntity *)HDDeviceContextEntity enumerateEntitiesInDatabase:v10 predicate:0 error:a4 enumerationHandler:v18];
  v14 = v24[5];
  v15 = v14;
  if (v14)
  {
    if (a4)
    {
      v16 = v14;
      *a4 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v23, 8);
  return v13;
}

uint64_t __88__HDDeviceContextEntity_enumerateDeviceContextWithTransaction_error_enumerationHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [(HDDeviceContextEntity *)v4 _contextForEntity:a2 transaction:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = a1[5];
    v8 = *(a1[6] + 8);
    v11 = *(v8 + 40);
    v9 = (*(v7 + 16))();
    objc_storeStrong((v8 + 40), v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_contextForEntity:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  v21 = 0;
  v8 = +[HDDeviceContextEntity _propertiesForEntity];
  v9 = [v7 unprotectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HDDeviceContextEntity__contextForEntity_transaction_error___block_invoke;
  v13[3] = &unk_2786156E0;
  v10 = v7;
  v14 = v10;
  v15 = &v16;
  LOBYTE(a4) = [v6 getValuesForProperties:v8 database:v9 error:a4 handler:v13];

  if (a4)
  {
    v11 = v17[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

+ (id)insertDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 syncIdentity];
  v11 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:v10 transaction:v9 error:a5];

  if (v11)
  {
    v12 = [v9 unprotectedDatabase];
    v13 = +[HDDeviceContextEntity _propertiesForEntity];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__HDDeviceContextEntity_insertDeviceContext_transaction_error___block_invoke;
    v18[3] = &unk_278613DE8;
    v19 = v11;
    v20 = v8;
    v14 = [a1 insertOrReplaceEntity:0 database:v12 properties:v13 error:a5 bindingHandler:v18];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Failed to create/lookup concrete sync identity while inserting device context"];
    if (v15)
    {
      if (a5)
      {
        v16 = v15;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_propertiesForEntity
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"sync_identity_id";
  v3[1] = @"device_type";
  v3[2] = @"currentOS_name";
  v3[3] = @"currentOS_version";
  v3[4] = @"product_type_name";
  v3[5] = @"date_modified";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __63__HDDeviceContextEntity_insertDeviceContext_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entity];
  MEMORY[0x22AAC6B90](a2, @"sync_identity_id", [v4 persistentID]);

  MEMORY[0x22AAC6B90](a2, @"device_type", [*(a1 + 40) type]);
  v5 = [*(a1 + 40) currentOSName];
  MEMORY[0x22AAC6BD0](a2, @"currentOS_name", v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 currentOSVersion];
  }

  v7 = HKNSOperatingSystemVersionString();
  MEMORY[0x22AAC6BD0](a2, @"currentOS_version", v7);

  v8 = [*(a1 + 40) productTypeName];
  MEMORY[0x22AAC6BD0](a2, @"product_type_name", v8);

  Current = CFAbsoluteTimeGetCurrent();
  return MEMORY[0x22AAC6B60](a2, @"date_modified", Current);
}

+ (BOOL)deleteDeviceContextWithSyncIdentity:(int64_t)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HDDeviceContextEntity *)a1 _predicateForSyncEntityIdentity:a3];
  v10 = [v8 database];

  LOBYTE(a5) = [(HDHealthEntity *)HDDeviceContextEntity deleteEntitiesWithPredicate:v9 healthDatabase:v10 error:a5];
  return a5;
}

+ (id)_predicateForSyncEntityIdentity:(uint64_t)a1
{
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v5 = [v3 predicateWithProperty:@"sync_identity_id" equalToValue:v4];

  return v5;
}

+ (id)deviceContextForLocalSyncIdentityWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = +[HDDeviceContextEntity _deviceContextWithSyncIdentity:transaction:error:](a1, [a3 currentSyncIdentityPersistentID], v8, a5);

  return v9;
}

+ (id)_deviceContextWithSyncIdentity:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = [v7 deviceContextEntityWithSyncIdentity:a2 transaction:v6 error:a4];
  if (v8)
  {
    v9 = [(HDDeviceContextEntity *)v7 _contextForEntity:v8 transaction:v6 error:a4];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)lookupOrCreateDeviceContextForLocalSyncIdentityWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 syncIdentityManager];
  v10 = [v9 currentSyncIdentity];
  v11 = [a1 lookupOrCreateDeviceContextForSyncIdentity:v10 WithTransaction:v8 error:a5];

  return v11;
}

+ (id)lookupOrCreateDeviceContextForSyncIdentity:(id)a3 WithTransaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 entity];
  v11 = +[HDDeviceContextEntity _deviceContextWithSyncIdentity:transaction:error:](a1, [v10 persistentID], v9, a5);

  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_9;
  }

  v14 = [HDDeviceContext localProductTypeEnumWithError:a5];
  if (v14)
  {
    v15 = [HDDeviceContext alloc];
    v16 = [v14 intValue];
    v17 = [v8 identity];
    v12 = [(HDDeviceContext *)v15 initForLocalDeviceWithType:v16 syncIdentity:v17];

    v13 = [HDDeviceContextEntity insertDeviceContext:v12 transaction:v9 error:a5];

    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
  }

  v12 = v12;
  v13 = v12;
LABEL_8:

LABEL_9:

  return v13;
}

+ (id)lookupDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 syncIdentity];
  v14 = 0;
  v10 = [HDSyncIdentityEntity concreteIdentityForIdentity:v9 transaction:v8 error:&v14];

  if (v10)
  {
    v11 = [v10 entity];
    v12 = +[HDDeviceContextEntity _deviceContextWithSyncIdentity:transaction:error:](a1, [v11 persistentID], v8, a5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)updateSoftwareVersionForDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v25[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 syncIdentity];
  v11 = [HDSyncIdentityEntity concreteIdentityForIdentity:v10 transaction:v9 error:a5];

  if (v11)
  {
    v12 = [v11 entity];
    v13 = +[HDDeviceContextEntity _predicateForSyncEntityIdentity:](a1, [v12 persistentID]);

    v25[0] = @"currentOS_version";
    v25[1] = @"product_type_name";
    v25[2] = @"date_modified";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v15 = [v9 databaseForEntityClass:a1];
    v16 = [a1 updateProperties:v14 predicate:v13 database:v15 error:a5 bindingHandler:&__block_literal_global_15];
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = MEMORY[0x277CCACA8];
    v19 = [v8 syncIdentity];
    v20 = [v18 stringWithFormat:@"No HDConcreteSyncIdentity found with sync identity %@", v19];
    v21 = [v17 hk_error:11 description:v20];
    if (v21)
    {
      if (a5)
      {
        v22 = v21;
        *a5 = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __81__HDDeviceContextEntity_updateSoftwareVersionForDeviceContext_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  [MEMORY[0x277CCDD30] currentOSVersionStruct];
  v3 = HKNSOperatingSystemVersionString();
  MEMORY[0x22AAC6BD0](a2, @"currentOS_version", v3);

  v4 = [MEMORY[0x277CCDD30] currentDeviceProductType];
  MEMORY[0x22AAC6BD0](a2, @"product_type_name", v4);

  Current = CFAbsoluteTimeGetCurrent();
  return MEMORY[0x22AAC6B60](a2, @"date_modified", Current);
}

+ (BOOL)updateDeviceContext:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 syncIdentity];
  v11 = [HDSyncIdentityEntity concreteIdentityForIdentity:v10 transaction:v9 error:a5];

  if (v11)
  {
    v12 = [v11 entity];
    v13 = +[HDDeviceContextEntity _predicateForSyncEntityIdentity:](a1, [v12 persistentID]);

    v14 = +[HDDeviceContextEntity _propertiesForEntity];
    v15 = [v9 databaseForEntityClass:a1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__HDDeviceContextEntity_updateDeviceContext_transaction_error___block_invoke;
    v18[3] = &unk_278613DE8;
    v19 = v11;
    v20 = v8;
    v16 = [a1 updateProperties:v14 predicate:v13 database:v15 error:a5 bindingHandler:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __63__HDDeviceContextEntity_updateDeviceContext_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entity];
  MEMORY[0x22AAC6B90](a2, @"sync_identity_id", [v4 persistentID]);

  MEMORY[0x22AAC6B90](a2, @"device_type", [*(a1 + 40) type]);
  v5 = [*(a1 + 40) currentOSName];
  MEMORY[0x22AAC6BD0](a2, @"currentOS_name", v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 currentOSVersion];
  }

  v7 = HKNSOperatingSystemVersionString();
  MEMORY[0x22AAC6BD0](a2, @"currentOS_version", v7);

  v8 = [*(a1 + 40) productTypeName];
  MEMORY[0x22AAC6BD0](a2, @"product_type_name", v8);

  Current = CFAbsoluteTimeGetCurrent();
  return MEMORY[0x22AAC6B60](a2, @"date_modified", Current);
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"sync_identity_id";
  v2 = +[(HDHealthEntity *)HDSyncIdentityEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void __61__HDDeviceContextEntity__contextForEntity_transaction_error___block_invoke(uint64_t a1)
{
  v19 = 0uLL;
  v20 = 0;
  v2 = HDSQLiteColumnWithNameAsString();
  HKNSOperatingSystemVersionFromString();

  v3 = HDSQLiteColumnWithNameAsInt64();
  v4 = *(a1 + 32);
  v18 = 0;
  v5 = [HDSyncIdentityEntity concreteIdentityForPersistentID:v3 transaction:v4 error:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = [HDDeviceContext alloc];
    v8 = HDSQLiteColumnWithNameAsInt64();
    v9 = HDSQLiteColumnWithNameAsString();
    v10 = HDSQLiteColumnWithNameAsString();
    v11 = HDSQLiteColumnWithNameAsDate();
    v12 = [v5 identity];
    v16 = v19;
    v17 = v20;
    v13 = [(HDDeviceContext *)v7 initWithType:v8 productTypeName:v9 currentOSName:v10 currentOSVersion:&v16 modificationDate:v11 syncIdentity:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

+ (id)deviceContextEntityWithSyncIdentity:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 databaseForEntityClass:objc_opt_class()];

  v10 = [(HDDeviceContextEntity *)a1 _predicateForSyncEntityIdentity:a3];
  v11 = [a1 anyInDatabase:v9 predicate:v10 error:a5];

  return v11;
}

@end