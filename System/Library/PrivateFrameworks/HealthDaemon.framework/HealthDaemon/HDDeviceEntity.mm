@interface HDDeviceEntity
+ (BOOL)insertCodableDevices:(id)devices syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (HDDeviceEntity)deviceEntityWithDevice:(id)device syncIdentity:(int64_t)identity healthDatabase:(id)database error:(id *)error;
+ (HDDeviceEntity)deviceEntityWithDevice:(id)device transaction:(id)transaction error:(id *)error;
+ (HDDeviceEntity)deviceEntityWithUUID:(id)d healthDatabase:(id)database error:(id *)error;
+ (id)_codableDeviceWithRow:(HDSQLiteRow *)row;
+ (id)_deviceEntitiesWithPredicate:(void *)predicate healthDatabase:(uint64_t)database error:;
+ (id)_insertDeviceWithUUID:(id)d creationDate:(double)date name:(id)name bluetoothIdentifier:(id)identifier manufacturer:(id)manufacturer model:(id)model hardwareVersion:(id)version firmwareVersion:(id)self0 softwareVersion:(id)self1 localIdentifier:(id)self2 UDIDeviceIdentifier:(id)self3 syncProvenance:(int64_t)self4 syncIdentity:(int64_t)self5 database:(id)self6 error:(id *)self7;
+ (id)_predicateForDevice:(uint64_t)device;
+ (id)_propertiesForDevice;
+ (id)deviceEntitiesWithDevice:(id)device healthDatabase:(id)database error:(id *)error;
+ (id)deviceEntitiesWithProperty:(id)property matchingValues:(id)values healthDatabase:(id)database error:(id *)error;
+ (id)uniquedColumns;
- (id)creationDateInHealthDatabase:(id)database error:(id *)error;
- (id)deviceInHealthDatabase:(id)database error:(id *)error;
- (id)deviceUUIDInHealthDatabase:(id)database error:(id *)error;
@end

@implementation HDDeviceEntity

+ (id)_propertiesForDevice
{
  v5[12] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"creation_date";
  v5[2] = @"name";
  v5[3] = @"manufacturer";
  v5[4] = @"model";
  v5[5] = @"hardware";
  v5[6] = @"firmware";
  v5[7] = @"software";
  v5[8] = @"localIdentifier";
  v5[9] = @"FDAUDI";
  v5[10] = @"sync_identity";
  v5[11] = @"bluetooth_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:12];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)uniquedColumns
{
  v5[12] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v5[1] = @"manufacturer";
  v5[2] = @"model";
  v5[3] = @"hardware";
  v5[4] = @"firmware";
  v5[5] = @"software";
  v5[6] = @"localIdentifier";
  v5[7] = @"FDAUDI";
  v5[8] = @"sync_provenance";
  v5[9] = @"uuid";
  v5[10] = @"sync_identity";
  v5[11] = @"bluetooth_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:12];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (HDDeviceEntity)deviceEntityWithDevice:(id)device syncIdentity:(int64_t)identity healthDatabase:(id)database error:(id *)error
{
  deviceCopy = device;
  databaseCopy = database;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__203;
  v35 = __Block_byref_object_dispose__203;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__203;
  v29 = __Block_byref_object_dispose__203;
  v30 = 0;
  obj = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__HDDeviceEntity_deviceEntityWithDevice_syncIdentity_healthDatabase_error___block_invoke;
  v18[3] = &unk_27862F5E8;
  selfCopy = self;
  v20 = &v25;
  v12 = deviceCopy;
  identityCopy = identity;
  v19 = v12;
  v21 = &v31;
  [self performWriteTransactionWithHealthDatabase:databaseCopy error:&obj block:v18];
  objc_storeStrong(&v36, obj);
  v13 = v32[5];
  v14 = v13;
  if (v13)
  {
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v16;
}

BOOL __75__HDDeviceEntity_deviceEntityWithDevice_syncIdentity_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v8 = [*(a1 + 56) deviceEntityWithDevice:*(a1 + 32) transaction:v6 error:a3];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v39 = *(a1 + 56);
    v42 = [MEMORY[0x277CCAD78] UUID];
    v40 = [MEMORY[0x277CBEAA8] date];
    [v40 timeIntervalSinceReferenceDate];
    v12 = v11;
    v37 = [*(a1 + 32) name];
    v38 = [*(a1 + 32) bluetoothIdentifier];
    v13 = [*(a1 + 32) manufacturer];
    v36 = [*(a1 + 32) model];
    v14 = [*(a1 + 32) hardwareVersion];
    v35 = [*(a1 + 32) firmwareVersion];
    v15 = [*(a1 + 32) softwareVersion];
    v16 = [*(a1 + 32) localIdentifier];
    v17 = [*(a1 + 32) UDIDeviceIdentifier];
    v18 = *(a1 + 64);
    v19 = *(*(a1 + 48) + 8);
    obj = *(v19 + 40);
    v41 = v7;
    v20 = [v39 _insertDeviceWithUUID:v42 creationDate:v37 name:v38 bluetoothIdentifier:v13 manufacturer:v36 model:v14 hardwareVersion:v12 firmwareVersion:v35 softwareVersion:v15 localIdentifier:v16 UDIDeviceIdentifier:v17 syncProvenance:0 syncIdentity:v18 database:v7 error:&obj];
    objc_storeStrong((v19 + 40), obj);
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = *(*(*(a1 + 40) + 8) + 40);
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    v25 = *MEMORY[0x277CCC2A0];
    if (v23)
    {
      v7 = v41;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(*(*(a1 + 40) + 8) + 40);
        v27 = v24;
        v28 = [v26 persistentID];
        v29 = *(a1 + 32);
        *buf = 134218242;
        v45 = v28;
        v46 = 2114;
        v47 = v29;
        _os_log_debug_impl(&dword_228986000, v27, OS_LOG_TYPE_DEBUG, "Inserted new device entity %lld for device: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v7 = v41;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v31 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v45 = v30;
        v46 = 2114;
        v47 = v31;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "Insert new device %@ failed: %{public}@", buf, 0x16u);
      }
    }
  }

  v32 = *(*(*(a1 + 40) + 8) + 40) != 0;

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (HDDeviceEntity)deviceEntityWithUUID:(id)d healthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  objc_opt_self();
  v10 = MEMORY[0x277D10B18];
  v11 = _HDSQLiteValueForUUID();

  v12 = [v10 predicateWithProperty:@"uuid" equalToValue:v11];

  v13 = [self anyWithPredicate:v12 healthDatabase:databaseCopy error:error];

  return v13;
}

+ (id)deviceEntitiesWithDevice:(id)device healthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [(HDDeviceEntity *)self _predicateForDevice:device];
  v10 = [(HDDeviceEntity *)self _deviceEntitiesWithPredicate:v9 healthDatabase:databaseCopy error:error];

  return v10;
}

+ (id)_predicateForDevice:(uint64_t)device
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277D10B18];
  name = [v2 name];
  v6 = name;
  v7 = *MEMORY[0x277CCBC38];
  if (name)
  {
    v8 = name;
  }

  else
  {
    v8 = *MEMORY[0x277CCBC38];
  }

  v9 = [v4 predicateWithProperty:@"name" equalToValue:v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277D10B18];
  manufacturer = [v2 manufacturer];
  v12 = manufacturer;
  if (manufacturer)
  {
    v13 = manufacturer;
  }

  else
  {
    v13 = v7;
  }

  v14 = [v10 predicateWithProperty:@"manufacturer" equalToValue:v13];
  [v3 addObject:v14];

  v15 = MEMORY[0x277D10B18];
  model = [v2 model];
  v17 = model;
  if (model)
  {
    v18 = model;
  }

  else
  {
    v18 = v7;
  }

  v19 = [v15 predicateWithProperty:@"model" equalToValue:v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x277D10B18];
  hardwareVersion = [v2 hardwareVersion];
  v22 = hardwareVersion;
  if (hardwareVersion)
  {
    v23 = hardwareVersion;
  }

  else
  {
    v23 = v7;
  }

  v24 = [v20 predicateWithProperty:@"hardware" equalToValue:v23];
  [v3 addObject:v24];

  v25 = MEMORY[0x277D10B18];
  firmwareVersion = [v2 firmwareVersion];
  v27 = firmwareVersion;
  if (firmwareVersion)
  {
    v28 = firmwareVersion;
  }

  else
  {
    v28 = v7;
  }

  v29 = [v25 predicateWithProperty:@"firmware" equalToValue:v28];
  [v3 addObject:v29];

  v30 = MEMORY[0x277D10B18];
  softwareVersion = [v2 softwareVersion];
  v32 = softwareVersion;
  if (softwareVersion)
  {
    v33 = softwareVersion;
  }

  else
  {
    v33 = v7;
  }

  v34 = [v30 predicateWithProperty:@"software" equalToValue:v33];
  [v3 addObject:v34];

  v35 = MEMORY[0x277D10B18];
  localIdentifier = [v2 localIdentifier];
  v37 = localIdentifier;
  if (localIdentifier)
  {
    v38 = localIdentifier;
  }

  else
  {
    v38 = v7;
  }

  v39 = [v35 predicateWithProperty:@"localIdentifier" equalToValue:v38];
  [v3 addObject:v39];

  v40 = MEMORY[0x277D10B18];
  uDIDeviceIdentifier = [v2 UDIDeviceIdentifier];
  v42 = uDIDeviceIdentifier;
  if (uDIDeviceIdentifier)
  {
    v43 = uDIDeviceIdentifier;
  }

  else
  {
    v43 = v7;
  }

  v44 = [v40 predicateWithProperty:@"FDAUDI" equalToValue:v43];
  [v3 addObject:v44];

  bluetoothIdentifier = [v2 bluetoothIdentifier];

  if (bluetoothIdentifier)
  {
    v46 = MEMORY[0x277D10B18];
    bluetoothIdentifier2 = [v2 bluetoothIdentifier];
    v48 = [v46 predicateWithProperty:@"bluetooth_identifier" equalToValue:bluetoothIdentifier2];
    [v3 addObject:v48];
  }

  else
  {
    bluetoothIdentifier2 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"bluetooth_identifier"];
    [v3 addObject:bluetoothIdentifier2];
  }

  if ([v3 count] < 2)
  {
    [v3 firstObject];
  }

  else
  {
    [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v3];
  }
  v49 = ;

  return v49;
}

+ (id)_deviceEntitiesWithPredicate:(void *)predicate healthDatabase:(uint64_t)database error:
{
  v6 = a2;
  predicateCopy = predicate;
  v8 = objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__203;
  v21 = __Block_byref_object_dispose__203;
  array = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HDDeviceEntity__deviceEntitiesWithPredicate_healthDatabase_error___block_invoke;
  v13[3] = &unk_278616AA0;
  v16 = v8;
  v9 = v6;
  v14 = v9;
  v15 = &v17;
  if ([v8 performReadTransactionWithHealthDatabase:predicateCopy error:database block:v13])
  {
    v10 = v18[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);

  return v11;
}

+ (id)deviceEntitiesWithProperty:(id)property matchingValues:(id)values healthDatabase:(id)database error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  propertyCopy = property;
  valuesCopy = values;
  objc_opt_self();
  v13 = propertyCopy;
  objc_opt_self();
  v14 = *MEMORY[0x277CCBC58];
  *&v34 = *MEMORY[0x277CCBC68];
  *(&v34 + 1) = v14;
  v33[0] = @"name";
  v33[1] = @"manufacturer";
  v15 = *MEMORY[0x277CCBC48];
  *&v35 = *MEMORY[0x277CCBC60];
  *(&v35 + 1) = v15;
  v33[2] = @"model";
  v33[3] = @"hardware";
  v16 = *MEMORY[0x277CCBC70];
  *&v36 = *MEMORY[0x277CCBC40];
  *(&v36 + 1) = v16;
  v33[4] = @"firmware";
  v33[5] = @"software";
  v17 = *MEMORY[0x277CCBC78];
  *&v37 = *MEMORY[0x277CCBC50];
  *(&v37 + 1) = v17;
  v33[6] = @"localIdentifier";
  v33[7] = @"FDAUDI";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v34 count:8];
  v19 = [v18 objectForKeyedSubscript:v13];

  if (v19)
  {
    v31 = databaseCopy;
    errorCopy = error;
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = valuesCopy;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [MEMORY[0x277D10B18] predicateWithProperty:v19 equalToValue:*(*(&v34 + 1) + 8 * i)];
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v23);
    }

    if ([v20 count] < 2)
    {
      [v20 firstObject];
    }

    else
    {
      [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v20];
    }
    falsePredicate = ;
    databaseCopy = v31;
    error = errorCopy;
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  v28 = [(HDDeviceEntity *)self _deviceEntitiesWithPredicate:falsePredicate healthDatabase:databaseCopy error:error];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __68__HDDeviceEntity__deviceEntitiesWithPredicate_healthDatabase_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 databaseForEntityClass:a1[6]];
  v4 = a1[4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDDeviceEntity__deviceEntitiesWithPredicate_healthDatabase_error___block_invoke_2;
  v7[3] = &unk_27862F610;
  v5 = a1[6];
  v7[4] = a1[5];
  [v5 enumerateEntitiesInDatabase:v3 predicate:v4 error:0 enumerationHandler:v7];

  return 1;
}

uint64_t __68__HDDeviceEntity__deviceEntitiesWithPredicate_healthDatabase_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return 1;
}

+ (HDDeviceEntity)deviceEntityWithDevice:(id)device transaction:(id)transaction error:(id *)error
{
  deviceCopy = device;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [(HDDeviceEntity *)self _predicateForDevice:deviceCopy];

  v11 = [self anyInDatabase:v9 predicate:v10 error:error];

  return v11;
}

- (id)deviceInHealthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v7 = +[HDDeviceEntity _propertiesForDevice];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__203;
  v20 = __Block_byref_object_dispose__203;
  v21 = 0;
  v8 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__HDDeviceEntity_deviceInHealthDatabase_error___block_invoke;
  v13[3] = &unk_278615F88;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  if ([v8 performReadTransactionWithHealthDatabase:databaseCopy error:error block:v13])
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

uint64_t __47__HDDeviceEntity_deviceInHealthDatabase_error___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 databaseForEntity:a1[4]];
  v4 = a1[4];
  v5 = a1[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__HDDeviceEntity_deviceInHealthDatabase_error___block_invoke_2;
  v12[3] = &unk_278618B98;
  v12[4] = a1[6];
  [v4 getValuesForProperties:v5 database:v3 handler:v12];
  if (!*(*(a1[6] + 8) + 40))
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = v6;
      v9 = [v7 persistentID];
      *buf = 134217984;
      v14 = v9;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Missing database device entity %lld", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void __47__HDDeviceEntity_deviceInHealthDatabase_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  if (!a3)
  {
    v19 = v4;
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:sel__deviceWithRow_ object:v19 file:@"HDDeviceEntity.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
  }

  v5 = objc_alloc(MEMORY[0x277CCD2E8]);
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = HDSQLiteColumnWithNameAsString();
  v9 = HDSQLiteColumnWithNameAsString();
  v10 = HDSQLiteColumnWithNameAsString();
  v11 = HDSQLiteColumnWithNameAsString();
  v12 = HDSQLiteColumnWithNameAsString();
  v13 = HDSQLiteColumnWithNameAsString();
  v14 = [v5 initWithName:v6 manufacturer:v7 model:v8 hardwareVersion:v9 firmwareVersion:v10 softwareVersion:v11 localIdentifier:v12 UDIDeviceIdentifier:v13];

  v15 = HDSQLiteColumnWithNameAsDate();
  [v14 _setCreationDate:v15];

  v16 = HDSQLiteColumnWithNameAsString();
  [v14 _setBluetoothIdentifier:v16];

  v17 = *(*(a1 + 32) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v14;
}

- (id)deviceUUIDInHealthDatabase:(id)database error:(id *)error
{
  v4 = [(HDHealthEntity *)self valueForProperty:@"uuid" healthDatabase:database error:error];
  v5 = _HDUUIDForSQLiteValue();

  return v5;
}

- (id)creationDateInHealthDatabase:(id)database error:(id *)error
{
  v4 = [(HDHealthEntity *)self valueForProperty:@"creation_date" healthDatabase:database error:error];
  v5 = _HDDateForSQLiteValue();

  return v5;
}

+ (id)_insertDeviceWithUUID:(id)d creationDate:(double)date name:(id)name bluetoothIdentifier:(id)identifier manufacturer:(id)manufacturer model:(id)model hardwareVersion:(id)version firmwareVersion:(id)self0 softwareVersion:(id)self1 localIdentifier:(id)self2 UDIDeviceIdentifier:(id)self3 syncProvenance:(int64_t)self4 syncIdentity:(int64_t)self5 database:(id)self6 error:(id *)self7
{
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  manufacturerCopy = manufacturer;
  modelCopy = model;
  versionCopy = version;
  firmwareVersionCopy = firmwareVersion;
  softwareVersionCopy = softwareVersion;
  localIdentifierCopy = localIdentifier;
  deviceIdentifierCopy = deviceIdentifier;
  databaseCopy = database;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __224__HDDeviceEntity__insertDeviceWithUUID_creationDate_name_bluetoothIdentifier_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier_syncProvenance_syncIdentity_database_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280D67E38 != -1)
  {
    dispatch_once(&qword_280D67E38, block);
  }

  v29 = _MergedGlobals_223;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __224__HDDeviceEntity__insertDeviceWithUUID_creationDate_name_bluetoothIdentifier_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier_syncProvenance_syncIdentity_database_error___block_invoke_2;
  v51[3] = &unk_27862F638;
  v49 = dCopy;
  v52 = v49;
  dateCopy = date;
  v47 = nameCopy;
  v53 = v47;
  v30 = identifierCopy;
  v54 = v30;
  v31 = manufacturerCopy;
  v55 = v31;
  v32 = modelCopy;
  v56 = v32;
  v33 = versionCopy;
  v57 = v33;
  v34 = firmwareVersionCopy;
  v58 = v34;
  v35 = softwareVersionCopy;
  v59 = v35;
  v36 = localIdentifierCopy;
  v60 = v36;
  v37 = deviceIdentifierCopy;
  v61 = v37;
  provenanceCopy = provenance;
  identityCopy = identity;
  v38 = databaseCopy;
  v39 = [databaseCopy executeSQL:v29 error:error bindingHandler:v51 enumerationHandler:0];
  v40 = 0;
  if (v39)
  {
    lastInsertRowID = [databaseCopy lastInsertRowID];
    v40 = [(HDSQLiteEntity *)HDDeviceEntity entityWithPersistentID:lastInsertRowID];

    v38 = databaseCopy;
  }

  return v40;
}

void __224__HDDeviceEntity__insertDeviceWithUUID_creationDate_name_bluetoothIdentifier_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier_syncProvenance_syncIdentity_database_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v2 initWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);", v5, @"uuid", @"creation_date", @"name", @"bluetooth_identifier", @"manufacturer", @"model", @"hardware", @"firmware", @"software", @"localIdentifier", @"FDAUDI", @"sync_provenance", @"sync_identity", 0];
  v4 = _MergedGlobals_223;
  _MergedGlobals_223 = v3;
}

uint64_t __224__HDDeviceEntity__insertDeviceWithUUID_creationDate_name_bluetoothIdentifier_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier_syncProvenance_syncIdentity_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) hk_dataForUUIDBytes];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_double(a2, 2, *(a1 + 112));
  v5 = *MEMORY[0x277CCBC38];
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = *MEMORY[0x277CCBC38];
  }

  HDSQLiteBindFoundationValueToStatement();
  v7 = *(a1 + 48);
  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 56))
  {
    v8 = *(a1 + 56);
  }

  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 64))
  {
    v9 = *(a1 + 64);
  }

  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 72))
  {
    v10 = *(a1 + 72);
  }

  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 80))
  {
    v11 = *(a1 + 80);
  }

  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 88))
  {
    v12 = *(a1 + 88);
  }

  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 96))
  {
    v13 = *(a1 + 96);
  }

  HDSQLiteBindFoundationValueToStatement();
  if (*(a1 + 104))
  {
    v14 = *(a1 + 104);
  }

  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 12, *(a1 + 120));
  v15 = *(a1 + 128);

  return sqlite3_bind_int64(a2, 13, v15);
}

+ (BOOL)insertCodableDevices:(id)devices syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  devicesCopy = devices;
  profileCopy = profile;
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDDeviceEntity_insertCodableDevices_syncProvenance_profile_error___block_invoke;
  v16[3] = &unk_2786154B8;
  v17 = devicesCopy;
  v18 = profileCopy;
  selfCopy = self;
  provenanceCopy = provenance;
  v13 = profileCopy;
  v14 = devicesCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDDeviceEntity performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __68__HDDeviceEntity_insertCodableDevices_syncProvenance_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 databaseForEntityClass:*(a1 + 48)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = MEMORY[0x277D85DD0];
        v19 = *(a1 + 48);
        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = *(a1 + 40);
        v17 = v3;
        v20 = *(a1 + 56);
        v18 = v4;
        v10 = HKWithAutoreleasePool();

        if (!v10)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:{16, v14, 3221225472, __68__HDDeviceEntity_insertCodableDevices_syncProvenance_profile_error___block_invoke_2, &unk_27862F660, v15}];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __68__HDDeviceEntity_insertCodableDevices_syncProvenance_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  objc_opt_self();
  v6 = MEMORY[0x277CCAD78];
  v7 = [v5 uuid];
  v8 = [v6 hk_UUIDWithData:v7];

  if (v8)
  {
    if ([v5 hasCreationDate])
    {

      goto LABEL_8;
    }

    v9 = @"missing creation date for codable device";
  }

  else
  {
    v9 = @"missing UUID for codable device";
  }

  v10 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__validateCodableDevice_error_ format:v9];

  if (v10)
  {
    v11 = 0;
LABEL_15:
    if ([v11 hd_isConstraintViolation])
    {
      v32 = 0;
      goto LABEL_17;
    }

    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v56 = v11;
      _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_INFO, "Failed to insert codable device: %{public}@", buf, 0xCu);
    }

    v14 = v11;
    if (v14)
    {
      if (a2)
      {
        v35 = v14;
        *a2 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }

      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

LABEL_42:

    v32 = 0;
    v33 = 0;
    goto LABEL_43;
  }

LABEL_8:
  v12 = MEMORY[0x277CCAD78];
  v13 = [*(a1 + 32) uuid];
  v14 = [v12 hk_UUIDWithData:v13];

  v15 = [*(a1 + 40) syncIdentityManager];
  v16 = [v15 legacySyncIdentity];

  if ([*(a1 + 32) hasSyncIdentity])
  {
    v17 = [*(a1 + 32) syncIdentity];
    v54 = 0;
    v18 = [HDSyncIdentity syncIdentityWithCodable:v17 error:&v54];
    v19 = v54;

    if (v18)
    {
      v20 = [*(a1 + 40) syncIdentityManager];
      v21 = *(a1 + 48);
      v53 = v19;
      v22 = [v20 concreteIdentityForIdentity:v18 shouldCreate:1 transaction:v21 error:&v53];
      v23 = v53;

      if (v22)
      {
        v51 = v14;
        v42 = a2;

        v16 = v22;
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v56 = v23;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_INFO, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v16 = v23;
      if (v16)
      {
        if (a2)
        {
          v39 = v16;
          *a2 = v16;
        }

        else
        {
          _HKLogDroppedError();
        }

        v11 = v16;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v56 = v19;
        _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_INFO, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v11 = v19;
      if (v11)
      {
        if (a2)
        {
          v37 = v11;
          *a2 = v11;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    goto LABEL_42;
  }

  v51 = v14;
  v42 = a2;
  v23 = 0;
LABEL_13:
  v50 = v16;
  [*(a1 + 32) creationDate];
  v25 = v24;
  v46 = [*(a1 + 32) name];
  v49 = [*(a1 + 32) bluetoothIdentifier];
  v48 = [*(a1 + 32) manufacturer];
  v47 = [*(a1 + 32) model];
  v45 = [*(a1 + 32) hardwareVersion];
  v44 = [*(a1 + 32) firmwareVersion];
  v43 = [*(a1 + 32) softwareVersion];
  v26 = [*(a1 + 32) localIdentifier];
  v27 = [*(a1 + 32) fDAUDI];
  v28 = *(a1 + 72);
  v29 = [v16 entity];
  v30 = [v29 persistentID];
  v31 = *(a1 + 56);
  v52 = v23;
  v32 = [HDDeviceEntity _insertDeviceWithUUID:v51 creationDate:v46 name:v49 bluetoothIdentifier:v48 manufacturer:v47 model:v45 hardwareVersion:v25 firmwareVersion:v44 softwareVersion:v43 localIdentifier:v26 UDIDeviceIdentifier:v27 syncProvenance:v28 syncIdentity:v30 database:v31 error:&v52];
  v11 = v52;

  if (!v32)
  {
    a2 = v42;
    goto LABEL_15;
  }

LABEL_17:
  v33 = 1;
LABEL_43:

  v40 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (id)_codableDeviceWithRow:(HDSQLiteRow *)row
{
  if (!row)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDeviceEntity.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
  }

  v3 = objc_alloc_init(HDCodableDevice);
  v4 = HDSQLiteColumnWithNameAsData();
  [(HDCodableDevice *)v3 setUuid:v4];

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableDevice *)v3 setCreationDate:?];
  v5 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setName:v5];

  v6 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setBluetoothIdentifier:v6];

  v7 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setManufacturer:v7];

  v8 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setModel:v8];

  v9 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setHardwareVersion:v9];

  v10 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setFirmwareVersion:v10];

  v11 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setSoftwareVersion:v11];

  v12 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setLocalIdentifier:v12];

  v13 = HDSQLiteColumnWithNameAsNonEmptyString();
  [(HDCodableDevice *)v3 setFDAUDI:v13];

  return v3;
}

@end