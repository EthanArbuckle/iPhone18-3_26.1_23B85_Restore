@interface HDDataProvenanceEntity
+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler;
+ (id)deviceIDsForSourceIDs:(id)ds profile:(id)profile error:(id *)error;
+ (id)insertOrLookupDataProvenanceForSyncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity originProductType:(id)type originSystemBuild:(id)build originOSVersion:(id *)version localProductType:(id)productType localSystemBuild:(id)systemBuild sourceVersion:(id)self0 timeZoneName:(id)self1 sourceID:(id)self2 deviceID:(id)self3 contributorID:(id)self4 transaction:(id)self5 error:(id *)self6;
+ (id)originProvenanceForPersistentID:(int64_t)d database:(id)database error:(id *)error;
+ (id)sourceIDsWithProvenanceFromSourceIDs:(id)ds profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDDataProvenanceEntity

+ (id)uniquedColumns
{
  v5[14] = *MEMORY[0x277D85DE8];
  v5[0] = @"sync_provenance";
  v5[1] = @"origin_product_type";
  v5[2] = @"origin_build";
  v5[3] = @"local_product_type";
  v5[4] = @"local_build";
  v5[5] = @"source_id";
  v5[6] = @"device_id";
  v5[7] = @"contributor_id";
  v5[8] = @"source_version";
  v5[9] = @"tz_name";
  v5[10] = @"origin_major_version";
  v5[11] = @"origin_minor_version";
  v5[12] = @"origin_patch_version";
  v5[13] = @"sync_identity";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:14];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertOrLookupDataProvenanceForSyncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity originProductType:(id)type originSystemBuild:(id)build originOSVersion:(id *)version localProductType:(id)productType localSystemBuild:(id)systemBuild sourceVersion:(id)self0 timeZoneName:(id)self1 sourceID:(id)self2 deviceID:(id)self3 contributorID:(id)self4 transaction:(id)self5 error:(id *)self6
{
  v110 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  buildCopy = build;
  productTypeCopy = productType;
  systemBuildCopy = systemBuild;
  sourceVersionCopy = sourceVersion;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  contributorIDCopy = contributorID;
  transactionCopy = transaction;
  if (typeCopy)
  {
    if (buildCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"originProductType != nil"}];

    if (buildCopy)
    {
LABEL_3:
      if (productTypeCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"originSystemBuild != nil"}];

  if (productTypeCopy)
  {
LABEL_4:
    if (systemBuildCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"localProductType != nil"}];

  if (systemBuildCopy)
  {
LABEL_5:
    if (sourceVersionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"localSystemBuild != nil"}];

  if (sourceVersionCopy)
  {
LABEL_6:
    if (nameCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"sourceVersion != nil"}];

  if (nameCopy)
  {
LABEL_7:
    if (dCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"timeZoneName != nil"}];

  if (dCopy)
  {
LABEL_8:
    if (iDCopy)
    {
      goto LABEL_9;
    }

LABEL_47:
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"deviceID != nil"}];

    if (contributorIDCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_46:
  currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler8 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"sourceID != nil"}];

  if (!iDCopy)
  {
    goto LABEL_47;
  }

LABEL_9:
  if (contributorIDCopy)
  {
    goto LABEL_10;
  }

LABEL_48:
  currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler9 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"contributorID != nil"}];

LABEL_10:
  if (!transactionCopy)
  {
    currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler10 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceEntity.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];
  }

  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__11;
  v99 = __Block_byref_object_dispose__11;
  v100 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke;
  aBlock[3] = &unk_2786150B0;
  provenanceCopy = provenance;
  v67 = typeCopy;
  v82 = v67;
  v69 = buildCopy;
  v83 = v69;
  v71 = productTypeCopy;
  v84 = v71;
  v27 = nameCopy;
  v28 = systemBuildCopy;
  v85 = v28;
  v29 = dCopy;
  v86 = v29;
  v30 = iDCopy;
  v87 = v30;
  v31 = contributorIDCopy;
  v88 = v31;
  v32 = sourceVersionCopy;
  v89 = v32;
  v33 = v27;
  v90 = v33;
  v92 = *&version->var0;
  var2 = version->var2;
  identityCopy = identity;
  v34 = _Block_copy(aBlock);
  protectedDatabase = [transactionCopy protectedDatabase];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke_2;
  v79[3] = &unk_2786150D8;
  v36 = v34;
  v80 = v36;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke_3;
  v78[3] = &unk_278614620;
  v78[4] = &v95;
  v37 = [protectedDatabase executeSQL:@"SELECT ROWID FROM data_provenances WHERE sync_provenance = ? AND origin_product_type = ? AND origin_build = ? AND local_product_type = ? AND local_build = ? AND source_id = ? AND device_id = ? AND contributor_id = ? AND source_version = ? AND tz_name = ? AND origin_major_version = ? AND origin_minor_version = ? AND origin_patch_version = ? AND sync_identity = ?" error:error bindingHandler:v79 enumerationHandler:v78];

  if (v37)
  {
    v38 = v96[5];
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      longLongValue = [v29 longLongValue];
      unprotectedDatabase = [transactionCopy unprotectedDatabase];
      objc_opt_self();
      v102 = 0;
      v103 = &v102;
      v104 = 0x2020000000;
      v105 = 0;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v107 = __66__HDDataProvenanceEntity__derivedFlagsForSourceID_database_error___block_invoke_2;
      v108 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
      v109 = longLongValue;
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __66__HDDataProvenanceEntity__derivedFlagsForSourceID_database_error___block_invoke_3;
      v101[3] = &unk_278614620;
      v101[4] = &v102;
      if ([unprotectedDatabase executeCachedStatementForKey:&_derivedFlagsForSourceID_database_error__lookupKey error:error SQLGenerator:&__block_literal_global_13 bindingHandler:&buf enumerationHandler:v101])
      {
        v44 = [MEMORY[0x277CCABB0] numberWithLongLong:v103[3]];
      }

      else
      {
        v44 = 0;
      }

      _Block_object_dispose(&v102, 8);

      if (v44)
      {
        protectedDatabase2 = [transactionCopy protectedDatabase];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke_397;
        v75[3] = &unk_278615100;
        v77 = v36;
        v76 = v44;
        v46 = [protectedDatabase2 executeSQL:@"INSERT INTO data_provenances (sync_provenance error:origin_product_type bindingHandler:origin_build enumerationHandler:{local_product_type, local_build, source_id, device_id, contributor_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version, sync_identity, derived_flags) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", error, v75, 0}];

        if (v46)
        {
          protectedDatabase3 = [transactionCopy protectedDatabase];
          lastInsertRowID = [protectedDatabase3 lastInsertRowID];
          v49 = v96[5];
          v96[5] = lastInsertRowID;
        }

        else
        {
          _HKInitializeLogging();
          v52 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            errorCopy = error;
            if (error)
            {
              errorCopy = *error;
            }

            LODWORD(buf) = 138543362;
            *(&buf + 4) = errorCopy;
            _os_log_impl(&dword_228986000, v52, OS_LOG_TYPE_INFO, "Unable to insert data provenance : %{public}@", &buf, 0xCu);
          }
        }

        v39 = v96[5];
      }

      else
      {
        _HKInitializeLogging();
        v50 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
        {
          errorCopy2 = error;
          if (error)
          {
            errorCopy2 = *error;
          }

          LODWORD(buf) = 138543362;
          *(&buf + 4) = errorCopy2;
          _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_INFO, "Unable to look up derived flags: %{public}@", &buf, 0xCu);
        }

        v39 = 0;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      errorCopy3 = error;
      if (error)
      {
        errorCopy3 = *error;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = errorCopy3;
      _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_INFO, "Unable to look up data provenance: %{public}@", &buf, 0xCu);
    }

    v39 = 0;
  }

  _Block_object_dispose(&v95, 8);
  v54 = *MEMORY[0x277D85DE8];

  return v39;
}

uint64_t __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 104));
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindStringToStatement();
  v6 = *(a1 + 48);
  HDSQLiteBindStringToStatement();
  v7 = *(a1 + 56);
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 6, [*(a1 + 64) longLongValue]);
  sqlite3_bind_int64(a2, 7, [*(a1 + 72) longLongValue]);
  sqlite3_bind_int64(a2, 8, [*(a1 + 80) longLongValue]);
  v8 = *(a1 + 88);
  HDSQLiteBindStringToStatement();
  v9 = *(a1 + 96);
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 11, *(a1 + 112));
  sqlite3_bind_int64(a2, 12, *(a1 + 120));
  sqlite3_bind_int64(a2, 13, *(a1 + 128));
  v10 = *(a1 + 136);

  return sqlite3_bind_int64(a2, 14, v10);
}

uint64_t __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t __248__HDDataProvenanceEntity_insertOrLookupDataProvenanceForSyncProvenance_syncIdentity_originProductType_originSystemBuild_originOSVersion_localProductType_localSystemBuild_sourceVersion_timeZoneName_sourceID_deviceID_contributorID_transaction_error___block_invoke_397(uint64_t a1, sqlite3_stmt *a2)
{
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 15, v4);
}

+ (id)originProvenanceForPersistentID:(int64_t)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  v10[4] = &v12;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDDataProvenanceEntity_originProvenanceForPersistentID_database_error___block_invoke;
  v11[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = d;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDDataProvenanceEntity_originProvenanceForPersistentID_database_error___block_invoke_2;
  v10[3] = &unk_278614620;
  [databaseCopy executeSQL:@"SELECT sync_provenance error:origin_product_type bindingHandler:origin_build enumerationHandler:{source_version, tz_name, source_id, device_id, contributor_id, origin_major_version, origin_minor_version, origin_patch_version, sync_identity FROM data_provenances WHERE ROWID = ?", error, v11, v10}];
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

BOOL __73__HDDataProvenanceEntity_originProvenanceForPersistentID_database_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6C90](a2, 1);
  v7 = MEMORY[0x22AAC6C90](a2, 2);
  v8 = MEMORY[0x22AAC6C90](a2, 3);
  v29 = MEMORY[0x22AAC6C90](a2, 4);
  v28 = MEMORY[0x22AAC6C80](a2, 5);
  v27 = MEMORY[0x22AAC6C80](a2, 6);
  v9 = MEMORY[0x22AAC6C80](a2, 7);
  v10 = HDSQLiteColumnAsInt64();
  v11 = HDSQLiteColumnAsInt64();
  v12 = HDSQLiteColumnAsInt64();
  v13 = HDSQLiteColumnAsInt64();
  if (v9)
  {
    v14 = v13;
    v15 = [HDContributorReference contributorReferenceForPersistentID:v9];
    v16 = v5;
    v17 = a1;
    v18 = v15;
    v30[0] = v10;
    v30[1] = v11;
    v30[2] = v12;
    v19 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:v16 syncIdentity:v14 productType:v6 systemBuild:v7 operatingSystemVersion:v30 sourceVersion:v8 timeZoneName:v29 sourceID:v28 deviceID:v27 contributorReference:v15];
    v20 = *(*(v17 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = v8;
    v23 = v29;
    v24 = v28;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Failure retrieving contributor identifier"];
    v22 = v8;
    v24 = v28;
    v23 = v29;
  }

  return v9 != 0;
}

+ (id)deviceIDsForSourceIDs:(id)ds profile:(id)profile error:(id *)error
{
  dsCopy = ds;
  v9 = MEMORY[0x277CBEB58];
  profileCopy = profile;
  v11 = objc_alloc_init(v9);
  database = [profileCopy database];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__HDDataProvenanceEntity_deviceIDsForSourceIDs_profile_error___block_invoke;
  v17[3] = &unk_278614698;
  v18 = dsCopy;
  selfCopy = self;
  v13 = v11;
  v19 = v13;
  v14 = dsCopy;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v15 = [v13 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __62__HDDataProvenanceEntity_deviceIDsForSourceIDs_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B28];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v5 containsPredicateWithProperty:@"source_id" values:v6];
  v9 = *(a1 + 48);
  v10 = [v7 protectedDatabase];

  v11 = [v9 queryWithDatabase:v10 predicate:v8];

  v18[0] = @"device_id";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDDataProvenanceEntity_deviceIDsForSourceIDs_profile_error___block_invoke_2;
  v16[3] = &unk_278615128;
  v17 = *(a1 + 40);
  v13 = [v11 enumeratePersistentIDsAndProperties:v12 error:a3 enumerationHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __62__HDDataProvenanceEntity_deviceIDsForSourceIDs_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDSQLiteColumnWithNameAsNumber();
  [v1 addObject:v2];

  return 1;
}

uint64_t __93__HDDataProvenanceEntity__validateUnprotectedDatabaseReferencesOnProfile_error_errorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__HDDataProvenanceEntity__validateUnprotectedDatabaseReferencesOnProfile_error_errorHandler___block_invoke_2;
  v12[3] = &unk_278615150;
  v15 = *(a1 + 48);
  v13 = v5;
  v11 = *(a1 + 32);
  v7 = v11;
  v14 = v11;
  v8 = v5;
  v9 = [v6 executeSQL:@"SELECT ROWID error:sync_provenance bindingHandler:source_id enumerationHandler:{device_id FROM data_provenances", a3, 0, v12}];

  return v9;
}

uint64_t __93__HDDataProvenanceEntity__validateUnprotectedDatabaseReferencesOnProfile_error_errorHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x22AAC6C80](a2, 0);
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6C80](a2, 2);
  v7 = MEMORY[0x22AAC6C80](a2, 3);
  if (!v4)
  {
    v59 = [MEMORY[0x277CCA890] currentHandler];
    [v59 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"HDDataProvenanceEntity.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"rowID != nil"}];

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_21:
    v60 = [MEMORY[0x277CCA890] currentHandler];
    [v60 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"HDDataProvenanceEntity.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"sourceID != nil"}];

    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_3:
  v63 = [MEMORY[0x277CCA9B8] hk_error:120 description:@"Record in data_provenances points to non existent record in another table"];
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v9 = [(HDSQLiteEntity *)HDSyncStoreEntity entityWithPersistentID:v8];

  v10 = [*(a1 + 32) unprotectedDatabase];
  v62 = v9;
  v11 = [v9 existsInDatabase:v10];

  if ((v11 & 1) == 0 && v5)
  {
    v68[0] = *MEMORY[0x277CCBD78];
    v12 = [*(a1 + 56) databaseTable];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"No database table name found";
    }

    v15 = *MEMORY[0x277CCA7E8];
    v69[0] = v14;
    v69[1] = v63;
    v16 = *MEMORY[0x277CCBD88];
    v68[1] = v15;
    v68[2] = v16;
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    +[HDSyncStoreEntity databaseTable];
    v20 = v19 = v7;
    v21 = [*(a1 + 56) databaseTable];
    v22 = [v17 stringWithFormat:@"Cannot find rowid:%@ in table:%@ for rowid:%@ in table:%@", v18, v20, v4, v21];
    v68[3] = *MEMORY[0x277CCBD70];
    v69[2] = v22;
    v69[3] = v4;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:4];

    v7 = v19;
    v24 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v23];
    (*(*(a1 + 40) + 16))();
  }

  v25 = [(HDSQLiteEntity *)HDSourceEntity entityWithPersistentID:v6];
  v26 = [*(a1 + 32) unprotectedDatabase];
  v27 = [v25 existsInDatabase:v26];

  if ((v27 & 1) == 0)
  {
    v66[0] = *MEMORY[0x277CCBD78];
    v28 = [*(a1 + 56) databaseTable];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = @"No database table name found";
    }

    v31 = *MEMORY[0x277CCA7E8];
    v67[0] = v30;
    v67[1] = v63;
    v32 = *MEMORY[0x277CCBD88];
    v66[1] = v31;
    v66[2] = v32;
    v33 = MEMORY[0x277CCACA8];
    v34 = +[HDSourceEntity databaseTable];
    v35 = [*(a1 + 56) databaseTable];
    v36 = [v33 stringWithFormat:@"Cannot find rowid:%@ in table:%@ for rowid:%@ in table:%@", v6, v34, v4, v35];
    v66[3] = *MEMORY[0x277CCBD70];
    v67[2] = v36;
    v67[3] = v4;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:4];
    v38 = v37 = v7;

    v39 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v38];
    (*(*(a1 + 40) + 16))();

    v7 = v37;
  }

  v40 = [(HDSQLiteEntity *)HDDeviceEntity entityWithPersistentID:v7];
  v41 = [*(a1 + 32) unprotectedDatabase];
  v42 = [v40 existsInDatabase:v41];

  if ((v42 & 1) == 0)
  {
    v64[0] = *MEMORY[0x277CCBD78];
    v43 = [*(a1 + 56) databaseTable];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = @"No database table name found";
    }

    v46 = *MEMORY[0x277CCA7E8];
    v65[0] = v45;
    v65[1] = v63;
    v47 = *MEMORY[0x277CCBD88];
    v64[1] = v46;
    v64[2] = v47;
    v48 = MEMORY[0x277CCACA8];
    v49 = +[HDDeviceEntity databaseTable];
    [*(a1 + 56) databaseTable];
    v61 = a1;
    v50 = v25;
    v51 = v6;
    v53 = v52 = v7;
    v54 = [v48 stringWithFormat:@"Cannot find rowid:%@ in table:%@ for rowid:%@ in table:%@", v52, v49, v4, v53];
    v64[3] = *MEMORY[0x277CCBD70];
    v65[2] = v54;
    v65[3] = v4;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];

    v7 = v52;
    v6 = v51;
    v25 = v50;

    v56 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v55];
    (*(*(v61 + 40) + 16))();
  }

  v57 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)sourceIDsWithProvenanceFromSourceIDs:(id)ds profile:(id)profile error:(id *)error
{
  dsCopy = ds;
  v9 = MEMORY[0x277CBEB58];
  profileCopy = profile;
  v11 = objc_alloc_init(v9);
  database = [profileCopy database];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__HDDataProvenanceEntity_sourceIDsWithProvenanceFromSourceIDs_profile_error___block_invoke;
  v17[3] = &unk_278614698;
  v18 = dsCopy;
  selfCopy = self;
  v13 = v11;
  v19 = v13;
  v14 = dsCopy;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v15 = [v13 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __77__HDDataProvenanceEntity_sourceIDsWithProvenanceFromSourceIDs_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B28];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v5 containsPredicateWithProperty:@"source_id" values:v6];
  v9 = *(a1 + 48);
  v10 = [v7 protectedDatabase];

  v11 = [v9 queryWithDatabase:v10 predicate:v8];

  v18[0] = @"source_id";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HDDataProvenanceEntity_sourceIDsWithProvenanceFromSourceIDs_profile_error___block_invoke_2;
  v16[3] = &unk_278615128;
  v17 = *(a1 + 40);
  v13 = [v11 enumeratePersistentIDsAndProperties:v12 error:a3 enumerationHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __77__HDDataProvenanceEntity_sourceIDsWithProvenanceFromSourceIDs_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDSQLiteColumnWithNameAsNumber();
  [v1 addObject:v2];

  return 1;
}

id __66__HDDataProvenanceEntity__derivedFlagsForSourceID_database_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v2 = [v0 stringWithFormat:@"SELECT (%@ LIKE 'Watch%%') FROM %@ WHERE %@=? LIMIT 1", @"product_type", v1, *MEMORY[0x277D10A40], 0];

  return v2;
}

uint64_t __66__HDDataProvenanceEntity__derivedFlagsForSourceID_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x22AAC6C10](a2, 0))
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1uLL;
  }

  return 1;
}

+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler
{
  handlerCopy = handler;
  profileCopy = profile;
  v9 = objc_opt_self();
  database = [profileCopy database];

  v11 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HDDataProvenanceEntity__validateUnprotectedDatabaseReferencesOnProfile_error_errorHandler___block_invoke;
  v14[3] = &unk_278615178;
  v16 = sel__validateUnprotectedDatabaseReferencesOnProfile_error_errorHandler_;
  v17 = v9;
  v15 = handlerCopy;
  v12 = handlerCopy;
  LOBYTE(error) = [database performTransactionWithContext:v11 error:error block:v14 inaccessibilityHandler:0];

  return error;
}

@end