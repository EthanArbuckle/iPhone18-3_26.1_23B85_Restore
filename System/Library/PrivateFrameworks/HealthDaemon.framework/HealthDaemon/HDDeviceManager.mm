@interface HDDeviceManager
- (BOOL)deleteDevice:(id)device error:(id *)error;
- (HDDeviceManager)init;
- (HDDeviceManager)initWithProfile:(id)profile;
- (id)_noneDevice;
- (id)allDevicesWithError:(id *)error;
- (id)currentDeviceEntityWithError:(id *)error;
- (id)deviceEntitiesForDevice:(id)device error:(id *)error;
- (id)deviceEntitiesWithProperty:(id)property matchingValues:(id)values error:(id *)error;
- (id)deviceEntityForDevice:(id)device error:(id *)error;
- (id)deviceEntityForNoDeviceWithError:(id *)error;
- (id)deviceForPersistentID:(id)d error:(id *)error;
- (id)devicesWithProperty:(id)property matchingValues:(id)values error:(id *)error;
@end

@implementation HDDeviceManager

- (id)_noneDevice
{
  if (self)
  {
    if (qword_280D67DC0 != -1)
    {
      dispatch_once(&qword_280D67DC0, &__block_literal_global_179);
    }

    self = _MergedGlobals_217;
    v1 = vars8;
  }

  return self;
}

- (HDDeviceManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDeviceManager.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDDeviceManager;
  v6 = [(HDDeviceManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_profile, profileCopy);
    v8 = [HDDatabaseValueCache alloc];
    v9 = [(HDDeviceManager *)v7 hk_classNameWithTag:@"devices"];
    v10 = [(HDDatabaseValueCache *)v8 initWithName:v9];
    devicesByPersistentID = v7->_devicesByPersistentID;
    v7->_devicesByPersistentID = v10;

    v12 = [HDDatabaseValueCache alloc];
    v13 = [(HDDeviceManager *)v7 hk_classNameWithTag:@"entities"];
    v14 = [(HDDatabaseValueCache *)v12 initWithName:v13];
    deviceEntitiesByDevice = v7->_deviceEntitiesByDevice;
    v7->_deviceEntitiesByDevice = v14;
  }

  return v7;
}

- (HDDeviceManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)deviceEntityForNoDeviceWithError:(id *)error
{
  if (self && (v5 = objc_getProperty(self, a2, 32, 1)) != 0)
  {
    v6 = v5;
    v7 = -[HDSQLiteEntity initWithPersistentID:]([HDDeviceEntity alloc], "initWithPersistentID:", [v5 longLongValue]);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__147;
    v18 = __Block_byref_object_dispose__147;
    v19 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HDDeviceManager_deviceEntityForNoDeviceWithError___block_invoke;
    v13[3] = &unk_278619398;
    v13[4] = self;
    v13[5] = &v14;
    v10 = [(HDHealthEntity *)HDDeviceEntity performWriteTransactionWithHealthDatabase:database error:error block:v13];

    if (v10)
    {
      v11 = v15[5];
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;
    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

void *__52__HDDeviceManager_deviceEntityForNoDeviceWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [(HDDeviceManager *)*(a1 + 32) _noneDevice];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained currentSyncIdentityPersistentID];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = [v8 database];
  v10 = [HDDeviceEntity deviceEntityWithDevice:v5 syncIdentity:v7 healthDatabase:v9 error:a3];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(result, "persistentID")}];
    v16 = *(a1 + 32);
    if (v16)
    {
      objc_setProperty_atomic_copy(v16, v14, v15, 32);
    }

    return (*(*(*(a1 + 40) + 8) + 40) != 0);
  }

  return result;
}

- (id)currentDeviceEntityWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__147;
  v15 = __Block_byref_object_dispose__147;
  v16 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HDDeviceManager_currentDeviceEntityWithError___block_invoke;
  v10[3] = &unk_278619398;
  v10[4] = self;
  v10[5] = &v11;
  LODWORD(error) = [(HDHealthEntity *)HDDeviceEntity performWriteTransactionWithHealthDatabase:database error:error block:v10];

  if (error)
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __48__HDDeviceManager_currentDeviceEntityWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCD2E8] localDevice];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained currentSyncIdentityPersistentID];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = [v8 database];
  v10 = [HDDeviceEntity deviceEntityWithDevice:v5 syncIdentity:v7 healthDatabase:v9 error:a3];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)deviceForPersistentID:(id)d error:(id *)error
{
  dCopy = d;
  if (dCopy && (!self ? (Property = 0) : (Property = objc_getProperty(self, v6, 32, 1)), ([dCopy isEqual:Property] & 1) == 0))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__147;
    v23 = __Block_byref_object_dispose__147;
    v24 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__HDDeviceManager_deviceForPersistentID_error___block_invoke;
    v16[3] = &unk_278614288;
    v18 = &v19;
    v16[4] = self;
    v11 = dCopy;
    v17 = v11;
    [(HDHealthEntity *)HDDeviceEntity performReadTransactionWithHealthDatabase:database error:error block:v16];

    v12 = v20[5];
    _noneDevice = [(HDDeviceManager *)self _noneDevice];
    LODWORD(v12) = [v12 isEqual:_noneDevice];

    if (v12)
    {
      if (self)
      {
        objc_setProperty_atomic_copy(self, v14, v11, 32);
        self = 0;
      }
    }

    else
    {
      self = v20[5];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    self = 0;
  }

  return self;
}

uint64_t __47__HDDeviceManager_deviceForPersistentID_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = *(a1[4] + 16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HDDeviceManager_deviceForPersistentID_error___block_invoke_2;
  v14[3] = &unk_2786275D0;
  v8 = v6;
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v10 = [v7 fetchObjectForKey:v8 transaction:a2 error:a3 faultHandler:v14];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return 1;
}

id __47__HDDeviceManager_deviceForPersistentID_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [(HDSQLiteEntity *)HDDeviceEntity entityWithPersistentID:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v7 = [WeakRetained database];
  v8 = [v5 deviceInHealthDatabase:v7 error:a3];

  return v8;
}

- (id)deviceEntityForDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__147;
    v23 = __Block_byref_object_dispose__147;
    v24 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__HDDeviceManager_deviceEntityForDevice_error___block_invoke;
    v16[3] = &unk_278614288;
    v18 = &v19;
    v16[4] = self;
    v17 = deviceCopy;
    v10 = [(HDHealthEntity *)HDDeviceEntity performWriteTransactionWithHealthDatabase:database error:error block:v16];

    if (v10)
    {
      v11 = v20[5];
    }

    else
    {
      v11 = 0;
    }

    v14 = v11;

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"device" class:objc_opt_class() selector:a2];
    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
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

BOOL __47__HDDeviceManager_deviceEntityForDevice_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = *(a1[4] + 24);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__HDDeviceManager_deviceEntityForDevice_error___block_invoke_2;
  v15[3] = &unk_2786275F8;
  v8 = v6;
  v9 = a1[4];
  v16 = v8;
  v17 = v9;
  v10 = [v7 fetchObjectForKey:v8 transaction:a2 error:a3 faultHandler:v15];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1[6] + 8) + 40) != 0;
  return v13;
}

id __47__HDDeviceManager_deviceEntityForDevice_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v7 = [WeakRetained currentSyncIdentityPersistentID];
  v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v9 = [v8 database];
  v10 = [HDDeviceEntity deviceEntityWithDevice:v5 syncIdentity:v7 healthDatabase:v9 error:a3];

  return v10;
}

- (id)deviceEntitiesForDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  if (deviceCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v10 = [HDDeviceEntity deviceEntitiesWithDevice:deviceCopy healthDatabase:database error:error];
  }

  else
  {
    database = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"device" class:objc_opt_class() selector:a2];
    if (database)
    {
      if (error)
      {
        v11 = database;
        v10 = 0;
        *error = database;
      }

      else
      {
        _HKLogDroppedError();
        v10 = 0;
      }

      WeakRetained = database;
    }

    else
    {
      WeakRetained = 0;
      v10 = 0;
    }
  }

  return v10;
}

- (id)deviceEntitiesWithProperty:(id)property matchingValues:(id)values error:(id *)error
{
  propertyCopy = property;
  valuesCopy = values;
  v11 = valuesCopy;
  if (propertyCopy)
  {
    if (![valuesCopy count])
    {
      v12 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCBC38]];

      v11 = v12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v15 = [HDDeviceEntity deviceEntitiesWithProperty:propertyCopy matchingValues:v11 healthDatabase:database error:error];
  }

  else
  {
    database = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"property" class:objc_opt_class() selector:a2];
    if (database)
    {
      if (error)
      {
        v16 = database;
        v15 = 0;
        *error = database;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
      }

      WeakRetained = database;
    }

    else
    {
      WeakRetained = 0;
      v15 = 0;
    }
  }

  return v15;
}

- (id)devicesWithProperty:(id)property matchingValues:(id)values error:(id *)error
{
  propertyCopy = property;
  valuesCopy = values;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__147;
  v25 = __Block_byref_object_dispose__147;
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HDDeviceManager_devicesWithProperty_matchingValues_error___block_invoke;
  v17[3] = &unk_278627620;
  v17[4] = self;
  v12 = propertyCopy;
  v18 = v12;
  v13 = valuesCopy;
  v19 = v13;
  v20 = &v21;
  LODWORD(error) = [(HDHealthEntity *)HDDeviceEntity performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v22[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v21, 8);

  return v15;
}

BOOL __60__HDDeviceManager_devicesWithProperty_matchingValues_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) deviceEntitiesWithProperty:*(a1 + 40) matchingValues:*(a1 + 48) error:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v12 = [WeakRetained database];
        v13 = [v10 deviceInHealthDatabase:v12 error:a3];

        if (v13)
        {
          [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

uint64_t __30__HDDeviceManager__noneDevice__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCD2E8]) initWithName:@"__NONE__" manufacturer:0 model:? hardwareVersion:? firmwareVersion:? softwareVersion:? localIdentifier:? UDIDeviceIdentifier:?];
  v1 = _MergedGlobals_217;
  _MergedGlobals_217 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)allDevicesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __39__HDDeviceManager_allDevicesWithError___block_invoke;
  v14 = &unk_278613218;
  selfCopy = self;
  v8 = v5;
  v16 = v8;
  LODWORD(error) = [(HDHealthEntity *)HDDeviceEntity performReadTransactionWithHealthDatabase:database error:error block:&v11];

  if (error)
  {
    allObjects = [v8 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

uint64_t __39__HDDeviceManager_allDevicesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 databaseForEntityClass:objc_opt_class()];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41[0] = *MEMORY[0x277D10A40];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v8 = [(HDSQLiteEntity *)HDDeviceEntity queryWithDatabase:v5 predicate:0];
  v39 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __39__HDDeviceManager_allDevicesWithError___block_invoke_2;
  v37[3] = &unk_278615128;
  v9 = v6;
  v38 = v9;
  v10 = [v8 enumeratePersistentIDsAndProperties:v7 error:&v39 enumerationHandler:v37];
  v11 = v39;
  v12 = v11;
  if (v10)
  {
    v30 = v7;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v28 = v5;
      v29 = v4;
      v16 = *v34;
      while (2)
      {
        v17 = 0;
        v18 = v12;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v33 + 1) + 8 * v17);
          v20 = *(a1 + 32);
          v32 = v18;
          v21 = [v20 deviceForPersistentID:v19 error:&v32];
          v12 = v32;

          if (v21)
          {
            [*(a1 + 40) addObject:v21];
          }

          else if (v12)
          {
            if (a3)
            {
              v25 = v12;
              v22 = 0;
              *a3 = v12;
            }

            else
            {
              _HKLogDroppedError();
              v22 = 0;
            }

            goto LABEL_23;
          }

          ++v17;
          v18 = v12;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v22 = 1;
LABEL_23:
      v5 = v28;
      v4 = v29;
    }

    else
    {
      v22 = 1;
    }

    v7 = v30;
  }

  else
  {
    v23 = v11;
    v13 = v23;
    if (v23)
    {
      if (a3)
      {
        v24 = v23;
        v22 = 0;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
      v22 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __39__HDDeviceManager_allDevicesWithError___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  [v3 addObject:v4];

  return 1;
}

- (BOOL)deleteDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HDDeviceManager_deleteDevice_error___block_invoke;
  v11[3] = &unk_278616048;
  v12 = deviceCopy;
  v9 = deviceCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDDeviceEntity performWriteTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

uint64_t __38__HDDeviceManager_deleteDevice_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDDeviceEntity deviceEntityWithDevice:*(a1 + 32) transaction:v5 error:a3];
  if (v6)
  {
    v7 = [v5 databaseForEntityClass:objc_opt_class()];
    v8 = [v6 deleteFromDatabase:v7 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end