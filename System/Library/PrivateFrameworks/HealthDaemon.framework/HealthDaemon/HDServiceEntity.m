@interface HDServiceEntity
+ (BOOL)deleteService:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (BOOL)healthUpdatesEnabledForDevice:(id)a3 inDatabase:(id)a4 error:(id *)a5;
+ (BOOL)setHealthUpdatesEnabled:(BOOL)a3 forDevice:(id)a4 inDatabase:(id)a5 error:(id *)a6;
+ (id)allServicesWithProfile:(id)a3 error:(id *)a4;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertOrUpdateService:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)uniquedColumns;
@end

@implementation HDServiceEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"device_uuid";
  v5[1] = @"device_service";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertOrUpdateService:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__62;
    v40 = __Block_byref_object_dispose__62;
    v41 = 0;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke;
    v29 = &unk_27861C150;
    v33 = a1;
    v11 = v8;
    v30 = v11;
    v32 = buf;
    v31 = v10;
    if ([a1 performWriteTransactionWithHealthDatabase:v31 error:a5 block:&v26])
    {
      v12 = *(*&buf[8] + 40);
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = [v11 identifier];
        v25 = [v24 UUIDString];
        *v34 = 138543618;
        v35 = v23;
        v36 = 2114;
        v37 = v25;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: cannot insert service %{public}@ into database", v34, 0x16u);
      }

      v12 = 0;
    }

    v14 = v12;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v18 = v13;
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [v8 identifier];
      v22 = [v21 UUIDString];
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: invalid parameters, service: %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 56)];
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 56) disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", *MEMORY[0x277D10A40], @"device_last_connect", v8, @"device_uuid", @"device_service"];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_2;
  v42[3] = &unk_278614860;
  v43 = *(a1 + 32);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_3;
  v41[3] = &unk_27861C128;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v41[5] = &v44;
  v41[6] = v11;
  v41[4] = v10;
  if (([v6 executeSQL:v9 error:a3 bindingHandler:v42 enumerationHandler:v41] & 1) == 0)
  {
    v22 = 0;
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v13 = *(a1 + 40);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = *(a1 + 40);
      v36 = [v33 profile];
      v34 = [v36 daemon];
      v23 = [v34 analyticsSubmissionCoordinator];
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
      v25 = [v33 profile];
      [v23 healthService_reportServiceTypeAdded:v24 profileType:{objc_msgSend(v25, "profileType")}];
    }

    v49[0] = @"device_uuid";
    v49[1] = @"device_name";
    v49[2] = @"device_service";
    v49[3] = @"device_last_connect";
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    v27 = *(a1 + 56);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_4;
    v38[3] = &unk_278616B10;
    v39 = *(a1 + 32);
    v40 = Current;
    v28 = [v27 insertOrReplaceEntity:0 database:v6 properties:v26 error:a3 bindingHandler:v38];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = *(a1 + 40);
    v35 = [v14 profile];
    v15 = [v35 daemon];
    v16 = [v15 analyticsSubmissionCoordinator];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
    v18 = v45[3];
    v19 = [v14 profile];
    [v16 healthService_reportServiceType:v17 duration:objc_msgSend(v19 profileType:{"profileType"), Current - v18}];
  }

  v20 = *(*(*(a1 + 48) + 8) + 40);
  v48 = @"device_last_connect";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_5;
  v37[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  *&v37[4] = Current;
  v22 = [v20 updateProperties:v21 database:v6 error:a3 bindingHandler:v37];

  if (v22)
  {
LABEL_11:
    v22 = 1;
  }

LABEL_12:

  _Block_object_dispose(&v44, 8);
  v31 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) identifier];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [*(a1 + 32) type];

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(*(a1 + 48)) initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C50](a2, 1);
  return 0;
}

void __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x22AAC6C00](a2, @"device_uuid", v4);

  v5 = [*(a1 + 32) name];
  MEMORY[0x22AAC6BD0](a2, @"device_name", v5);

  MEMORY[0x22AAC6B90](a2, @"device_service", [*(a1 + 32) type]);
  v6 = *(a1 + 40);

  JUMPOUT(0x22AAC6B60);
}

+ (BOOL)deleteService:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __54__HDServiceEntity_deleteService_healthDatabase_error___block_invoke;
  v24 = &unk_2786154B8;
  v27 = a1;
  v11 = v9;
  v25 = v11;
  v12 = v10;
  v26 = v12;
  v28 = a2;
  v13 = [a1 performWriteTransactionWithHealthDatabase:v12 error:a5 block:&v21];
  if ((v13 & 1) == 0)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC318];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v11 identifier];
      v18 = [v17 UUIDString];
      v19 = v18;
      if (a5)
      {
        v20 = *a5;
      }

      else
      {
        v20 = 0;
      }

      *buf = 138543618;
      v30 = v18;
      v31 = 2114;
      v32 = v20;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Cannot delete service %{public}@ from database. Error: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __54__HDServiceEntity_deleteService_healthDatabase_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  objc_opt_self();
  v8 = MEMORY[0x277D10B18];
  v9 = [v7 identifier];
  v10 = _HDSQLiteValueForUUID();
  v11 = [v8 predicateWithProperty:@"device_uuid" equalToValue:v10];

  v12 = MEMORY[0x277D10B18];
  v13 = MEMORY[0x277CCABB0];
  v14 = [v7 type];

  v15 = [v13 numberWithInteger:v14];
  v16 = [v12 predicateWithProperty:@"device_service" equalToValue:v15];

  v17 = MEMORY[0x277D10B20];
  v32[0] = v11;
  v32[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v19 = [v17 predicateMatchingAllPredicates:v18];

  v20 = [v6 anyInDatabase:v5 predicate:v19 error:a3];

  if (!v20)
  {
    if (a3)
    {
      v29 = *(a1 + 48);
      [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:@"Could not find the health service in the database."];
      *a3 = v28 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  if (![v20 deleteFromDatabase:v5 error:a3])
  {
    goto LABEL_8;
  }

  v21 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = *(a1 + 40);
    v23 = [v22 profile];
    v24 = [v23 daemon];
    v25 = [v24 analyticsSubmissionCoordinator];
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
    v27 = [v22 profile];

    [v25 healthService_reportServiceTypeRemoved:v26 profileType:{objc_msgSend(v27, "profileType")}];
  }

  v28 = 1;
LABEL_9:

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (id)allServicesWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__62;
  v29 = __Block_byref_object_dispose__62;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__62;
  v23 = __Block_byref_object_dispose__62;
  v24 = 0;
  v7 = [v6 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__HDServiceEntity_allServicesWithProfile_error___block_invoke;
  v14[3] = &unk_27861C178;
  v16 = &v25;
  v18 = a1;
  v8 = v6;
  v15 = v8;
  v17 = &v19;
  v9 = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v14];

  if (v9)
  {
    if ([v20[5] count])
    {
      v10 = [v8 database];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__HDServiceEntity_allServicesWithProfile_error___block_invoke_2;
      v13[3] = &unk_27861C1A0;
      v13[4] = &v19;
      v13[5] = a1;
      [a1 performWriteTransactionWithHealthDatabase:v10 error:a4 block:v13];
    }

    v11 = v26[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

uint64_t __48__HDServiceEntity_allServicesWithProfile_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = a2;
  v10 = v3;
  v11 = objc_opt_self();
  v12 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v12 setEntityClass:v11];
  [v12 setLimitCount:*MEMORY[0x277D10C08]];
  v13 = objc_alloc(MEMORY[0x277D10B78]);
  v14 = [v9 databaseForEntityClass:v11];
  v15 = [v13 initWithDatabase:v14 descriptor:v12];

  v27 = v10;
  v16 = [v11 entityEncoderForProfile:v10 transaction:v9 purpose:1 encodingOptions:0 authorizationFilter:0];
  v17 = [MEMORY[0x277CBEB18] array];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__62;
  v36 = __Block_byref_object_dispose__62;
  v37 = 0;
  v18 = [v16 orderedProperties];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HDServiceEntity__servicesWithDatabaseTransaction_profile_removals___block_invoke;
  v28[3] = &unk_27861C1E8;
  v19 = v16;
  v29 = v19;
  v31 = &v32;
  v20 = v17;
  v30 = v20;
  [v15 enumeratePersistentIDsAndProperties:v18 error:0 enumerationHandler:v28];

  v21 = v33[5];
  if (v21)
  {
    v7 = v21;
  }

  v22 = v30;
  v23 = v20;

  _Block_object_dispose(&v32, 8);
  objc_storeStrong(v6, v7);
  v24 = *(a1[5] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  return 1;
}

uint64_t __48__HDServiceEntity_allServicesWithProfile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [a2 databaseForEntityClass:*(a1 + 40)];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [*(a1 + 40) entityWithPersistentID:{v10, v17}];
        v18 = 0;
        v12 = [v11 deleteFromDatabase:v3 error:&v18];
        v13 = v18;
        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = *MEMORY[0x277CCC318];
          if (os_log_type_enabled(*MEMORY[0x277CCC318], OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v24 = v10;
            v25 = 2114;
            v26 = v13;
            _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "Failed to delete expired service with id %@: %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)healthUpdatesEnabledForDevice:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v9 = MEMORY[0x277D10B18];
    v10 = _HDSQLiteValueForUUID();
    v11 = [v9 predicateWithProperty:@"device_uuid" equalToValue:v10];

    v12 = objc_opt_class();
    v26[0] = @"device_enabled";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__HDServiceEntity_healthUpdatesEnabledForDevice_inDatabase_error___block_invoke;
    v17[3] = &unk_278619EE8;
    v17[4] = &v22;
    v17[5] = &v18;
    LOBYTE(v12) = [v12 enumerateProperties:v13 withPredicate:v11 healthDatabase:v8 error:a5 enumerationHandler:v17];

    if (v12)
    {
      if ((v19[3] & 1) == 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a5 code:313 description:@"device not found"];
      }

      v14 = *(v23 + 24);
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t __66__HDServiceEntity_healthUpdatesEnabledForDevice_inDatabase_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = MEMORY[0x22AAC6C10](a4, 0);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 0;
}

+ (BOOL)setHealthUpdatesEnabled:(BOOL)a3 forDevice:(id)a4 inDatabase:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D10B18];
  v10 = a5;
  v11 = _HDSQLiteValueForUUID();
  v12 = [v9 predicateWithProperty:@"device_uuid" equalToValue:v11];

  v18[0] = @"device_enabled";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HDServiceEntity_setHealthUpdatesEnabled_forDevice_inDatabase_error___block_invoke;
  v16[3] = &__block_descriptor_33_e34_v16__0__HDSQLiteStatementBinder__8l;
  v17 = a3;
  LOBYTE(a6) = [a1 updateProperties:v13 predicate:v12 healthDatabase:v10 error:a6 bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return a6;
}

uint64_t __69__HDServiceEntity__servicesWithDatabaseTransaction_profile_removals___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v18 = 0;
  v7 = [v6 objectForPersistentID:a2 row:a4 error:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else if (v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to instantiate non-deprecated service: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (!v11)
    {
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(*(a1 + 48) + 8) + 40);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [v11 addObject:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDServiceEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end