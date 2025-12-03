@interface HDAuthorizationEntity
+ (BOOL)_shouldSkipAuthorizationInsertionForBloodPressureMismatch:(id)mismatch sourceEntity:(id)entity;
+ (BOOL)resetAuthorizationStatusesForBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)setAuthorizationStatuses:(id)statuses authorizationRequests:(id)requests authorizationModes:(id)modes sourceEntity:(id)entity options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (id)_maxObjectPersistentIDForProfile:(void *)profile error:;
+ (id)_predicateForBundleIdentifier:(void *)identifier profile:(uint64_t)profile error:;
+ (id)_predicateForSourceEntities:(uint64_t)entities;
+ (id)_predicateForTypes:(uint64_t)types;
+ (id)allSourcesRequestingTypes:(id)types profile:(id)profile error:(id *)error;
+ (id)authorizationRecordsBySourceForType:(id)type profile:(id)profile error:(id *)error;
+ (id)authorizationRecordsByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)authorizationRequestsForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)authorizationStatusesForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)modificationDateForSourceEntity:(id)entity type:(id)type profile:(id)profile error:(id *)error;
+ (id)readAuthorizationStatusesByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (uint64_t)_insertAuthorizationWithSourceIdentifier:(uint64_t)identifier dataTypeCode:(uint64_t)code authorizationStatus:(uint64_t)status authorizationRequest:(uint64_t)request authorizationMode:(void *)mode modificationDate:(void *)date currentDate:(uint64_t)currentDate syncProvenance:(uint64_t)self0 syncIdentity:(uint64_t)self1 objectAnchor:(void *)self2 modificationEpoch:(char)self3 options:(void *)self4 profile:(void *)self5 database:(uint64_t)self6 error:;
+ (uint64_t)_insertCodableSourceAuthorizations:(char)authorizations overwriteExisting:(void *)existing syncStore:(void *)store profile:(uint64_t)profile error:;
+ (uint64_t)_resetAuthorizationStatusesWithPredicate:(void *)predicate profile:(uint64_t)profile error:;
@end

@implementation HDAuthorizationEntity

+ (id)authorizationStatusesForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [self authorizationRecordsByTypeForBundleIdentifier:identifier types:types profile:profile error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:{v13, v18}];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "status")}];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)authorizationRequestsForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [self authorizationRecordsByTypeForBundleIdentifier:identifier types:types profile:profile error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:{v13, v18}];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "request")}];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)authorizationRecordsByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v6 = [self readAuthorizationStatusesByTypeForBundleIdentifier:identifier types:types profile:profile error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__HDAuthorizationEntity_authorizationRecordsByTypeForBundleIdentifier_types_profile_error___block_invoke;
    v11[3] = &unk_27862FDB8;
    v12 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __91__HDAuthorizationEntity_authorizationRecordsByTypeForBundleIdentifier_types_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 authorizationRecord];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)readAuthorizationStatusesByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typesCopy = types;
  profileCopy = profile;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
  }

  sourceManager = [profileCopy sourceManager];
  v15 = [sourceManager allSourcesForBundleIdentifier:identifierCopy error:error];

  if (v15)
  {
    if ([v15 count])
    {
      v57 = profileCopy;
      v58 = identifierCopy;
      v56 = typesCopy;
      v16 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:typesCopy];
      allObjects = [v15 allObjects];
      v18 = [allObjects hk_map:&__block_literal_global_245];
      v19 = [v18 componentsJoinedByString:{@", "}];

      v55 = v19;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ in (%@)", @"source_id", v19];
      if ([v16 count])
      {
        allObjects2 = [v16 allObjects];
        v22 = [allObjects2 hk_map:&__block_literal_global_354_0];
        v23 = [v22 componentsJoinedByString:{@", "}];

        v24 = [v20 stringByAppendingFormat:@" AND %@ in (%@)", @"object_type", v23];

        v20 = v24;
      }

      v25 = MEMORY[0x277CCACA8];
      disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
      v54 = v20;
      v27 = [v25 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ ORDER BY %@ ASC, %@ DESC, %@ DESC, %@ DESC", @"object_type", @"status", @"request", @"mode", @"deleted_object_anchor", @"object_limit_anchor", @"object_limit_modified", disambiguatedDatabaseTable, v20, @"object_type", @"modification_epoch", @"date_modified", @"status"];

      v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      database = [profileCopy database];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_3;
      v63[3] = &unk_278625F78;
      selfCopy = self;
      v53 = v27;
      v64 = v53;
      v65 = v15;
      v52 = v16;
      v66 = v52;
      v30 = v28;
      v67 = v30;
      v68 = v58;
      v51 = [self performReadTransactionWithHealthDatabase:database error:error block:v63];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      allKeys = [v30 allKeys];
      v32 = [allKeys countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v60;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v60 != v34)
            {
              objc_enumerationMutation(allKeys);
            }

            v36 = *(*(&v59 + 1) + 8 * i);
            parentType = [v36 parentType];

            if (parentType)
            {
              v38 = [v30 objectForKeyedSubscript:v36];
              parentType2 = [v36 parentType];
              v40 = [v30 objectForKeyedSubscript:parentType2];

              if (v40 && ([v40 authorizationRequest] == 203 || (v41 = objc_msgSend(v38, "authorizationRequest"), v41 == objc_msgSend(v40, "authorizationRequest"))))
              {
                authorizationRecord = [v40 authorizationRecord];
                readingEnabled = [authorizationRecord readingEnabled];

                if ((readingEnabled & 1) == 0)
                {
                  [v38 disableReading];
                }

                authorizationRecord2 = [v40 authorizationRecord];
                sharingEnabled = [authorizationRecord2 sharingEnabled];

                if ((sharingEnabled & 1) == 0)
                {
                  [v38 disableSharing];
                }
              }

              else
              {
                [v30 removeObjectForKey:v36];
              }
            }
          }

          v33 = [allKeys countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v33);
      }

      if (v51)
      {
        v46 = v30;
      }

      else
      {
        v46 = 0;
      }

      v47 = v46;

      profileCopy = v57;
      identifierCopy = v58;
      typesCopy = v56;
    }

    else
    {
      v47 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v47 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

uint64_t __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_4;
  v13[3] = &unk_278613038;
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_5;
  v9[3] = &unk_27861A5B8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 40);
  v7 = [v5 executeSQL:v6 error:a3 bindingHandler:v13 enumerationHandler:v9];

  return v7;
}

void __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        sqlite3_bind_int64(a2, v10++, [*(*(&v22 + 1) + 8 * v9++) persistentID]);
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      v16 = v8;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v8 = v16 + 1;
        sqlite3_bind_int64(a2, v16++, [*(*(&v18 + 1) + 8 * v15++) code]);
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

BOOL __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = [MEMORY[0x277CCD720] dataTypeWithCode:v6];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];

    if (!v8)
    {
      v9 = HDSQLiteColumnAsInt64();
      v10 = HDSQLiteColumnAsInt64();
      v11 = [HDAuthorizationStatusRecord alloc];
      v12 = HDSQLiteColumnAsInt64();
      if (v9 == 102)
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v15 = MEMORY[0x22AAC6C80](a2, 4);
      if (v10 == 1)
      {
        v16 = MEMORY[0x22AAC6C80](a2, 5);
        v17 = MEMORY[0x22AAC6C40](a2, 6);
        v18 = v11;
        v19 = v17;
        v20 = [(HDAuthorizationStatusRecord *)v18 initWithReadAuthorizationStatus:v9 authorizationRequest:v12 authorizationMode:1 restrictedBundleIdentifier:v13 restrictedSourceEntities:v14 deletedObjectBaselineAnchor:v15 objectLimitAnchor:v16 objectLimitModifiedDate:v17];
      }

      else
      {
        v20 = [(HDAuthorizationStatusRecord *)v11 initWithReadAuthorizationStatus:v9 authorizationRequest:v12 authorizationMode:v10 restrictedBundleIdentifier:v13 restrictedSourceEntities:v14 deletedObjectBaselineAnchor:v15 objectLimitAnchor:0 objectLimitModifiedDate:0];
      }

      [*(a1 + 32) setObject:v20 forKeyedSubscript:v7];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Unable to instantiate object type for code: %ld", v6}];
  }

  return v7 != 0;
}

+ (id)modificationDateForSourceEntity:(id)entity type:(id)type profile:(id)profile error:(id *)error
{
  entityCopy = entity;
  typeCopy = type;
  profileCopy = profile;
  if (typeCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];

    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

LABEL_3:
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__208;
  v30 = __Block_byref_object_dispose__208;
  v31 = 0;
  database = [profileCopy database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__HDAuthorizationEntity_modificationDateForSourceEntity_type_profile_error___block_invoke;
  v21[3] = &unk_278626C38;
  selfCopy = self;
  v15 = entityCopy;
  v22 = v15;
  v16 = typeCopy;
  v23 = v16;
  v24 = &v26;
  [self performReadTransactionWithHealthDatabase:database error:error block:v21];

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

uint64_t __76__HDAuthorizationEntity_modificationDateForSourceEntity_type_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = *(a1 + 56);
  v7 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v8 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v9 = v7;
  v10 = objc_opt_self();
  v11 = [(HDAuthorizationEntity *)v10 _predicateForSourceEntities:v9];

  v12 = [(HDAuthorizationEntity *)v10 _predicateForTypes:v8];

  v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v11];

  v14 = [*(a1 + 56) anyInDatabase:v5 predicate:v13 error:a3];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 dateForProperty:@"date_modified" database:v5];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  return 1;
}

+ (id)_maxObjectPersistentIDForProfile:(void *)profile error:
{
  v4 = a2;
  objc_opt_self();
  v11 = 0;
  v5 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity numberForKey:@"HDMaxObjectPersistentID" domain:&stru_283BF39C8 category:0 profile:v4 entity:0 error:&v11];

  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else if (v6)
  {
    if (profile)
    {
      v10 = v6;
      v8 = 0;
      *profile = v7;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else
  {
    v8 = &unk_283CB42A8;
  }

  return v8;
}

+ (BOOL)setAuthorizationStatuses:(id)statuses authorizationRequests:(id)requests authorizationModes:(id)modes sourceEntity:(id)entity options:(unint64_t)options profile:(id)profile error:(id *)error
{
  statusesCopy = statuses;
  requestsCopy = requests;
  modesCopy = modes;
  entityCopy = entity;
  profileCopy = profile;
  if (!statusesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"authorizationStatuses != nil"}];
  }

  if (!entityCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

    if (profileCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"profile !=nil"}];

    goto LABEL_5;
  }

  if (!profileCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  date = [MEMORY[0x277CBEAA8] date];
  database = [profileCopy database];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __126__HDAuthorizationEntity_setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_options_profile_error___block_invoke;
  v34[3] = &unk_278614530;
  v35 = entityCopy;
  v36 = profileCopy;
  v37 = statusesCopy;
  v38 = requestsCopy;
  v39 = modesCopy;
  v40 = date;
  selfCopy = self;
  optionsCopy = options;
  v23 = date;
  v24 = modesCopy;
  v25 = requestsCopy;
  v26 = statusesCopy;
  v27 = profileCopy;
  v28 = entityCopy;
  v29 = [self performWriteTransactionWithHealthDatabase:database error:error block:v34];

  return v29;
}

uint64_t __126__HDAuthorizationEntity_setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_options_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v80 = a2;
  v79 = [v80 databaseForEntityClass:*(a1 + 80)];
  if (![*(a1 + 32) existsInDatabase:?])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Source %lld does not exist", objc_msgSend(*(a1 + 32), "persistentID")}];
    goto LABEL_66;
  }

  v5 = [(HDAuthorizationEntity *)*(a1 + 80) _maxObjectPersistentIDForProfile:a3 error:?];
  if (!v5)
  {
LABEL_66:
    v62 = 0;
    goto LABEL_85;
  }

  v77 = v5;
  v78 = a3;
  v6 = *(a1 + 80);
  v7 = a1;
  v8 = *(a1 + 48);
  v9 = v7[7];
  v10 = v7[8];
  v11 = v7[4];
  v12 = v7[9];
  v13 = [v5 longLongValue];
  v89 = v7[11];
  v90 = v13;
  v75 = v7;
  v14 = v7[5];
  v15 = v8;
  v94 = v9;
  v100 = v10;
  v16 = v11;
  v93 = v12;
  v17 = v14;
  v92 = v79;
  v76 = v80;
  v91 = objc_opt_self();
  if (!v16)
  {
    v70 = [MEMORY[0x277CCA890] currentHandler];
    [v70 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v91 file:@"HDAuthorizationEntity.m" lineNumber:874 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

    if (v15)
    {
      goto LABEL_5;
    }

LABEL_87:
    v71 = [MEMORY[0x277CCA890] currentHandler];
    [v71 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v91 file:@"HDAuthorizationEntity.m" lineNumber:875 description:{@"Invalid parameter not satisfying: %@", @"authorizationStatuses != nil"}];

    goto LABEL_5;
  }

  if (!v15)
  {
    goto LABEL_87;
  }

LABEL_5:
  v18 = v94;
  if (!v94)
  {
    v72 = [MEMORY[0x277CCA890] currentHandler];
    [v72 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v91 file:@"HDAuthorizationEntity.m" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"authorizationRequests != nil"}];
  }

  if (!v100)
  {
    v73 = [MEMORY[0x277CCA890] currentHandler];
    [v73 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v91 file:@"HDAuthorizationEntity.m" lineNumber:877 description:{@"Invalid parameter not satisfying: %@", @"authorizationModes != nil"}];
  }

  v19 = [MEMORY[0x277CBEB58] set];
  v20 = [v15 allKeys];
  [v19 addObjectsFromArray:v20];

  v21 = [v94 allKeys];
  [v19 addObjectsFromArray:v21];

  v22 = [v100 allKeys];
  [v19 addObjectsFromArray:v22];

  v23 = [v17 sourceManager];
  v24 = [v23 clientSourceForSourceEntity:v16 error:v78];

  v25 = v24;
  if (v24)
  {
    v74 = v24;
    v26 = [v24 bundleIdentifier];
    v99 = [v91 readAuthorizationStatusesByTypeForBundleIdentifier:v26 types:v19 profile:v17 error:v78];

    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = [v19 copy];
    v87 = v16;
    v88 = v15;
    v105 = v17;
    v82 = v19;
    v97 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
    if (v97)
    {
      v95 = *v115;
LABEL_12:
      v27 = 0;
      while (1)
      {
        if (*v115 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v114 + 1) + 8 * v27);
        v29 = [v99 objectForKeyedSubscript:v28];
        if (v29)
        {
          break;
        }

LABEL_37:
        if (v97 == ++v27)
        {
          v45 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
          v97 = v45;
          if (v45)
          {
            goto LABEL_12;
          }

          goto LABEL_42;
        }
      }

      v30 = v29;
      v31 = [v15 objectForKeyedSubscript:v28];
      if (v31 || ([v18 objectForKeyedSubscript:v28], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v44 = [v100 objectForKeyedSubscript:v28];

        if (!v44)
        {
          v33 = 0;
          goto LABEL_20;
        }
      }

      v32 = [v17 syncIdentityManager];
      v33 = [v32 currentSyncIdentity];

LABEL_20:
      v106 = v33;
      v103 = [v16 persistentID];
      v101 = [v28 code];
      v34 = [v15 objectForKeyedSubscript:v28];
      if (v34)
      {
        v86 = [v15 objectForKeyedSubscript:v28];
        v35 = [v86 intValue];
      }

      else
      {
        v35 = 100;
      }

      v36 = [v18 objectForKeyedSubscript:v28];
      if (v36)
      {
        v85 = [v18 objectForKeyedSubscript:v28];
        v37 = [v85 intValue];
      }

      else
      {
        v37 = [v30 authorizationRequest];
      }

      v38 = [v100 objectForKeyedSubscript:v28];
      if (v38)
      {
        v83 = [v100 objectForKeyedSubscript:v28];
        v39 = [v83 intValue];
      }

      else
      {
        v39 = [v30 authorizationMode];
      }

      v40 = [v106 entity];
      v41 = [v40 persistentID];
      v113 = 0;
      v42 = [(HDAuthorizationEntity *)v91 _insertAuthorizationWithSourceIdentifier:v103 dataTypeCode:v101 authorizationStatus:v35 authorizationRequest:v37 authorizationMode:v39 modificationDate:v93 currentDate:v93 syncProvenance:0 syncIdentity:v41 objectAnchor:v90 modificationEpoch:0 options:v89 profile:v105 database:v92 error:&v113];
      v43 = v113;

      if (v38)
      {
      }

      v15 = v88;
      v18 = v94;
      if (v36)
      {
      }

      if (v34)
      {
      }

      v16 = v87;
      if ((v42 & 1) == 0)
      {
        v63 = v43;
        v48 = v63;
        v17 = v105;
        v19 = v82;
        if (v63)
        {
          if (v78)
          {
            v64 = v63;
            *v78 = v48;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v84 = obj;
        v65 = v106;
LABEL_80:

        v62 = 0;
        goto LABEL_81;
      }

      v19 = v82;
      [v82 removeObject:v28];

      v17 = v105;
      goto LABEL_37;
    }

LABEL_42:

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v84 = v19;
    v98 = [v84 countByEnumeratingWithState:&v109 objects:v120 count:16];
    if (v98)
    {
      v96 = *v110;
      while (2)
      {
        for (i = 0; i != v98; ++i)
        {
          if (*v110 != v96)
          {
            objc_enumerationMutation(v84);
          }

          v47 = *(*(&v109 + 1) + 8 * i);
          v48 = [v18 objectForKeyedSubscript:v47];
          if (v48)
          {
            v107 = [v16 persistentID];
            v104 = [v47 code];
            v49 = [v15 objectForKeyedSubscript:v47];
            if (v49)
            {
              v86 = [v15 objectForKeyedSubscript:v47];
              v50 = [v86 intValue];
            }

            else
            {
              v50 = 100;
            }

            v102 = v50;
            v53 = [v48 intValue];
            v54 = [v100 objectForKeyedSubscript:v47];
            if (v54)
            {
              v85 = [v100 objectForKeyedSubscript:v47];
              v55 = [v85 intValue];
            }

            else
            {
              v55 = 0;
            }

            v56 = v53;
            v57 = [v105 syncIdentityManager];
            v58 = [v57 currentSyncIdentity];
            v59 = [v58 entity];
            v60 = [v59 persistentID];
            v108 = 0;
            v61 = [(HDAuthorizationEntity *)v91 _insertAuthorizationWithSourceIdentifier:v107 dataTypeCode:v104 authorizationStatus:v102 authorizationRequest:v56 authorizationMode:v55 modificationDate:v93 currentDate:v93 syncProvenance:0 syncIdentity:v60 objectAnchor:v90 modificationEpoch:0 options:v89 profile:v105 database:v92 error:&v108];
            v52 = v108;

            if (v54)
            {
            }

            v18 = v94;
            v16 = v87;
            if (v49)
            {
            }

            v15 = v88;
            if ((v61 & 1) == 0)
            {
              v65 = v52;
              if (v65)
              {
                v17 = v105;
                v19 = v82;
                if (v78)
                {
                  v66 = v65;
                  *v78 = v65;
                }

                else
                {
                  _HKLogDroppedError();
                }

                v30 = v65;
              }

              else
              {
                v30 = 0;
                v17 = v105;
                v19 = v82;
              }

              goto LABEL_80;
            }
          }

          else
          {
            _HKInitializeLogging();
            v51 = HKLogAuthorization();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v119 = v47;
              _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "Not creating an auth row for %{public}@ since an authorization request was not passed", buf, 0xCu);
            }

            v52 = 0;
          }
        }

        v62 = 1;
        v98 = [v84 countByEnumeratingWithState:&v109 objects:v120 count:16];
        if (v98)
        {
          continue;
        }

        break;
      }

      v17 = v105;
      v19 = v82;
    }

    else
    {
      v62 = 1;
    }

LABEL_81:

    v25 = v74;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:v78 code:100 format:{@"Unable to find client source for entity: %@", v16}];
    v62 = 0;
  }

  if (v62)
  {
    v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"Authorization status changed for source %lld", objc_msgSend(v75[4], "persistentID")];
    HDSetHealthInUseDefaultWithReason(v67);
  }

LABEL_85:
  v68 = *MEMORY[0x277D85DE8];
  return v62;
}

+ (id)authorizationRecordsBySourceForType:(id)type profile:(id)profile error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  profileCopy = profile;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  sourceManager = [profileCopy sourceManager];
  v11 = [sourceManager allSourcesWithError:error];

  if (v11)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v11;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          bundleIdentifier = [v16 bundleIdentifier];
          v18 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
          v19 = [self authorizationRecordsByTypeForBundleIdentifier:bundleIdentifier types:v18 profile:profileCopy error:error];

          if (!v19)
          {

            v22 = 0;
            v21 = v28;
            goto LABEL_16;
          }

          v20 = [v19 objectForKeyedSubscript:typeCopy];
          if (v20)
          {
            [v28 setObject:v20 forKeyedSubscript:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v21 = v28;
    v22 = v28;
LABEL_16:

    v11 = v26;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)allSourcesRequestingTypes:(id)types profile:(id)profile error:(id *)error
{
  typesCopy = types;
  profileCopy = profile;
  v9 = objc_opt_self();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__208;
  v26 = __Block_byref_object_dispose__208;
  v27 = 0;
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke;
  v16[3] = &unk_27861DAA8;
  v21 = v9;
  v11 = typesCopy;
  v17 = v11;
  v18 = 0;
  v12 = profileCopy;
  v19 = v12;
  v20 = &v22;
  LODWORD(error) = [v9 performReadTransactionWithHealthDatabase:database error:error block:v16];

  if (error)
  {
    v13 = v23[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v22, 8);

  return v14;
}

BOOL __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = [(HDAuthorizationEntity *)*(a1 + 64) _predicateForTypes:?];
  v6 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:*(a1 + 40)];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = *(a1 + 64);
  v22[0] = @"source_id";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v10 = [*(a1 + 48) database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke_2;
  v20[3] = &unk_278615128;
  v11 = v7;
  v21 = v11;
  LODWORD(v8) = [v8 enumerateProperties:v9 withPredicate:v6 healthDatabase:v10 error:a3 enumerationHandler:v20];

  if (v8)
  {
    v12 = [*(a1 + 48) sourceManager];
    v13 = [v11 allObjects];
    v14 = [v12 clientSourcesForSourceIDs:v13 error:a3];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 56) + 8) + 40) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)_predicateForTypes:(uint64_t)types
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "code", v13)}];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"object_type" values:v3];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  [*(a1 + 32) addObject:v2];

  return 1;
}

+ (BOOL)resetAuthorizationStatusesForBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
  }

  v11 = [(HDAuthorizationEntity *)self _predicateForBundleIdentifier:identifierCopy profile:profileCopy error:error];
  if (v11)
  {
    v12 = [(HDAuthorizationEntity *)self _resetAuthorizationStatusesWithPredicate:v11 profile:profileCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_predicateForBundleIdentifier:(void *)identifier profile:(uint64_t)profile error:
{
  identifierCopy = identifier;
  v7 = a2;
  v8 = objc_opt_self();
  sourceManager = [identifierCopy sourceManager];

  v10 = [sourceManager allSourcesForBundleIdentifier:v7 error:profile];

  if (v10)
  {
    v11 = [(HDAuthorizationEntity *)v8 _predicateForSourceEntities:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)_resetAuthorizationStatusesWithPredicate:(void *)predicate profile:(uint64_t)profile error:
{
  v6 = a2;
  predicateCopy = predicate;
  v8 = objc_opt_self();
  database = [predicateCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v16 = predicateCopy;
  v17 = v8;
  v15 = v6;
  v10 = predicateCopy;
  v11 = v6;
  v12 = [v8 performWriteTransactionWithHealthDatabase:database error:profile block:v14];

  return v12;
}

+ (uint64_t)_insertCodableSourceAuthorizations:(char)authorizations overwriteExisting:(void *)existing syncStore:(void *)store profile:(uint64_t)profile error:
{
  v10 = a2;
  existingCopy = existing;
  storeCopy = store;
  v13 = objc_opt_self();
  database = [storeCopy database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__HDAuthorizationEntity__insertCodableSourceAuthorizations_overwriteExisting_syncStore_profile_error___block_invoke;
  v20[3] = &unk_27862FE08;
  v21 = storeCopy;
  v22 = v10;
  v23 = existingCopy;
  v24 = v13;
  authorizationsCopy = authorizations;
  v15 = existingCopy;
  v16 = v10;
  v17 = storeCopy;
  v18 = [v13 performWriteTransactionWithHealthDatabase:database error:profile block:v20];

  return v18;
}

uint64_t __102__HDAuthorizationEntity__insertCodableSourceAuthorizations_overwriteExisting_syncStore_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = [v5 databaseForEntityClass:*(a1 + 56)];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [(HDAuthorizationEntity *)*(a1 + 56) _maxObjectPersistentIDForProfile:a3 error:?];
  if (v7)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v25 = *(a1 + 56);
          v19 = *(a1 + 48);
          v20 = *(a1 + 32);
          v21 = v17;
          v26 = *(a1 + 64);
          v22 = v7;
          v23 = v6;
          v24 = v5;
          v12 = HKWithAutoreleasePool();

          if (!v12)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __102__HDAuthorizationEntity__insertCodableSourceAuthorizations_overwriteExisting_syncStore_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v144 = *MEMORY[0x277D85DE8];
  v117 = [*(a1 + 32) decodedSourceUUID];
  v3 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v130 = 0;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  objc_opt_self();
  v12 = [v8 decodedSourceUUID];
  v13 = v12;
  if (!v12)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v130 code:100 description:@"Missing source UUID on codable source authorization"];
    v15 = 0;
    goto LABEL_13;
  }

  v14 = HDSourceEntityPredicateForSourceWithUUID(v12, 0);
  *v139 = 0;
  v15 = [HDSourceEntity firstSourceWithPredicate:v14 database:v11 error:v139];
  v16 = *v139;
  v17 = v16;
  if (!v15)
  {
    if (v16)
    {
      v18 = v16;
      v15 = 0;
      v130 = v17;
    }

    else
    {
      if ([v8 hasSource])
      {
        LOBYTE(v133) = 0;
        v125 = [v10 sourceManager];
        v19 = [v8 source];
        v15 = [v125 sourceForCodableSource:v19 provenance:objc_msgSend(v9 createIfNecessary:"syncProvenance") isDeleted:1 error:{&v133, &v130}];

        if (!v15 || v133 != 1)
        {
          goto LABEL_12;
        }

        v122 = v15;
        v20 = MEMORY[0x277CCA9B8];
        v21 = [v13 UUIDString];
        [v20 hk_assignError:&v130 code:100 format:{@"Source %@ is deleted", v21}];
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = [v13 UUIDString];
        [v22 hk_assignError:&v130 code:100 format:{@"Failed to find source for UUID %@", v23}];
      }

      v15 = 0;
    }
  }

LABEL_12:

LABEL_13:
  v24 = v130;
  v25 = v24;
  v123 = v15;
  if (!v15)
  {
    _HKInitializeLogging();
    v67 = *MEMORY[0x277CCC2A0];
    v68 = v117;
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
LABEL_61:
      v66 = 1;
      goto LABEL_79;
    }

    v91 = *(a1 + 88);
    v92 = v67;
    v93 = objc_opt_class();
    v94 = v93;
    v95 = [v117 UUIDString];
    *v139 = 138543874;
    *&v139[4] = v93;
    v140 = 2114;
    v141 = v95;
    v142 = 2114;
    v143 = v25;
    v96 = "%{public}@: Failed to find source for UUID %{public}@: %{public}@";
LABEL_81:
    _os_log_error_impl(&dword_228986000, v92, OS_LOG_TYPE_ERROR, v96, v139, 0x20u);

    goto LABEL_61;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v69 = *(a1 + 56);
    v129 = v24;
    v70 = [v15 sourceBundleIdentifierInDatabase:v69 error:&v129];
    v71 = v129;
    v72 = v25;
    v25 = v71;

    if (v70)
    {
      v73 = *(a1 + 88);
      v74 = *(a1 + 48);
      v128 = v25;
      v75 = [(HDAuthorizationEntity *)v73 _predicateForBundleIdentifier:v70 profile:v74 error:&v128];
      v76 = v128;

      if (v75)
      {
        v77 = MEMORY[0x277D10B18];
        v78 = [*(a1 + 88) propertyForSyncProvenance];
        v79 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "syncProvenance")}];
        v80 = [v77 predicateWithProperty:v78 notEqualToValue:v79];

        v81 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v75 otherPredicate:v80];
        v82 = *(a1 + 88);
        v83 = *(a1 + 56);
        v127 = v76;
        v84 = [v82 anyInDatabase:v83 predicate:v81 error:&v127];
        v85 = v127;

        if (!v84)
        {
          if (!v85)
          {

            v108 = 0;
            goto LABEL_16;
          }

          _HKInitializeLogging();
          v86 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v103 = *(a1 + 88);
            v104 = v86;
            v105 = objc_opt_class();
            *v139 = 138543874;
            *&v139[4] = v105;
            v140 = 2114;
            v141 = v70;
            v142 = 2114;
            v143 = v85;
            v106 = v105;
            _os_log_error_impl(&dword_228986000, v104, OS_LOG_TYPE_ERROR, "%{public}@: Failed to look up existing authorizations for %{public}@: %{public}@", v139, 0x20u);
          }
        }

        v66 = 1;
        v68 = v117;
        v25 = v85;
        goto LABEL_79;
      }

      _HKInitializeLogging();
      v88 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v99 = *(a1 + 88);
        v100 = v88;
        v101 = objc_opt_class();
        *v139 = 138543874;
        *&v139[4] = v101;
        v140 = 2114;
        v141 = v70;
        v142 = 2114;
        v143 = v76;
        v102 = v101;
        _os_log_error_impl(&dword_228986000, v100, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create source authorization predicate for %{public}@: %{public}@", v139, 0x20u);
      }

      v66 = 1;
      v25 = v76;
LABEL_78:
      v68 = v117;
      goto LABEL_79;
    }

    _HKInitializeLogging();
    v87 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v66 = 1;
      goto LABEL_78;
    }

    v97 = *(a1 + 88);
    v92 = v87;
    v98 = objc_opt_class();
    v94 = v98;
    v68 = v117;
    v95 = [v117 UUIDString];
    *v139 = 138543874;
    *&v139[4] = v98;
    v140 = 2114;
    v141 = v95;
    v142 = 2114;
    v143 = v25;
    v96 = "%{public}@: Failed to get source bundle identifier for UUID %{public}@: %{public}@";
    goto LABEL_81;
  }

  v108 = v24;
LABEL_16:
  v26 = *(a1 + 88);
  v27 = [*(a1 + 32) authorizations];
  v115 = [*(a1 + 40) syncProvenance];
  v114 = [*(a1 + 64) longLongValue];
  v28 = *(a1 + 48);
  v29 = *(a1 + 56);
  v30 = *(a1 + 72);
  v31 = *(a1 + 80);
  v32 = v27;
  v33 = v123;
  v120 = v30;
  v126 = v28;
  v119 = v29;
  v110 = v31;
  v34 = objc_opt_self();
  v112 = [v33 persistentID];
  v113 = v34;
  v107 = v33;
  v35 = [v34 _shouldSkipAuthorizationInsertionForBloodPressureMismatch:v32 sourceEntity:v33];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v36 = v32;
  v37 = [v36 countByEnumeratingWithState:&v133 objects:v139 count:16];
  if (!v37)
  {
    v66 = 1;
    goto LABEL_72;
  }

  v38 = v37;
  v39 = *v134;
  v111 = v36;
  v116 = v35;
  v121 = *v134;
  while (2)
  {
    v40 = 0;
    v118 = v38;
    do
    {
      if (*v134 != v39)
      {
        objc_enumerationMutation(v36);
      }

      v41 = *(*(&v133 + 1) + 8 * v40);
      if (((([v41 _dataTypeCode] & 0xFFFFFFFFFFFFFFFELL) == 16) & v35) == 0)
      {
        v42 = v41;
        v43 = [v42 hasObjectType] && (objc_msgSend(v42, "_dataTypeCode"), _HKValidDataTypeCode()) && objc_msgSend(v42, "hasAuthorizationStatus") && objc_msgSend(v42, "_authorizationStatus") >= 100 && objc_msgSend(v42, "_authorizationStatus") <= 104 && objc_msgSend(v42, "hasAuthorizationRequest") && objc_msgSend(v42, "_authorizationRequest") >= 201 && objc_msgSend(v42, "_authorizationRequest") < 204;
        if ([v42 hasAuthorizationMode])
        {
          if (!v43 || [v42 _authorizationMode] < 0 || objc_msgSend(v42, "_authorizationMode") >= 2)
          {
LABEL_69:
            [MEMORY[0x277CCA9B8] hk_assignError:a2 code:3 format:{@"Invalid codable authorization %@", v42}];
            v46 = v42;
LABEL_70:

            v66 = 0;
            goto LABEL_72;
          }
        }

        else if (!v43)
        {
          goto LABEL_69;
        }

        if (([v42 hasModificationDate] & 1) == 0)
        {
          goto LABEL_69;
        }

        if ([v42 hasAuthorizationMode])
        {
          v44 = [v42 _authorizationMode];
        }

        else
        {
          v44 = 0;
        }

        v45 = [v126 syncIdentityManager];
        v46 = [v45 legacySyncIdentity];

        if (![v42 hasSyncIdentity])
        {
          goto LABEL_45;
        }

        v47 = [v42 syncIdentity];
        v132 = 0;
        v48 = [HDSyncIdentity syncIdentityWithCodable:v47 error:&v132];
        v49 = v132;

        if (v48)
        {
          v50 = [v126 syncIdentityManager];
          v131 = v49;
          v51 = [v50 concreteIdentityForIdentity:v48 shouldCreate:1 transaction:v110 error:&v131];
          v52 = v131;

          if (v51)
          {

            v46 = v51;
LABEL_45:
            v53 = [v42 _dataTypeCode];
            v54 = [v42 _authorizationStatus];
            v55 = [v42 _authorizationRequest];
            [v42 modificationDate];
            v56 = HDDecodeDateForValue();
            v57 = [v46 entity];
            v58 = [v57 persistentID];
            if ([v42 hasModificationEpoch])
            {
              v109 = v46;
              v59 = v44;
              v60 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v42, "modificationEpoch")}];
              v61 = v59;
              v46 = v109;
              v62 = [(HDAuthorizationEntity *)v113 _insertAuthorizationWithSourceIdentifier:v112 dataTypeCode:v53 authorizationStatus:v54 authorizationRequest:v55 authorizationMode:v61 modificationDate:v56 currentDate:v120 syncProvenance:v115 syncIdentity:v58 objectAnchor:v114 modificationEpoch:v60 options:0 profile:v126 database:v119 error:a2];

              v36 = v111;
              v35 = v116;
              v38 = v118;
              if ((v62 & 1) == 0)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v63 = [(HDAuthorizationEntity *)v113 _insertAuthorizationWithSourceIdentifier:v112 dataTypeCode:v53 authorizationStatus:v54 authorizationRequest:v55 authorizationMode:v44 modificationDate:v56 currentDate:v120 syncProvenance:v115 syncIdentity:v58 objectAnchor:v114 modificationEpoch:0 options:0 profile:v126 database:v119 error:a2];

              v36 = v111;
              v35 = v116;
              v38 = v118;
              if (!v63)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_56;
          }

          _HKInitializeLogging();
          v65 = *MEMORY[0x277CCC2A0];
          v38 = v118;
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v138 = v52;
            _os_log_fault_impl(&dword_228986000, v65, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v46 = 0;
          v49 = v52;
          v35 = v116;
        }

        else
        {
          _HKInitializeLogging();
          v64 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v138 = v49;
            _os_log_fault_impl(&dword_228986000, v64, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }
        }

LABEL_56:
        v39 = v121;
      }

      ++v40;
    }

    while (v38 != v40);
    v38 = [v36 countByEnumeratingWithState:&v133 objects:v139 count:16];
    v66 = 1;
    if (v38)
    {
      continue;
    }

    break;
  }

LABEL_72:

  v68 = v117;
  v25 = v108;
LABEL_79:

  v89 = *MEMORY[0x277D85DE8];
  return v66;
}

+ (BOOL)_shouldSkipAuthorizationInsertionForBloodPressureMismatch:(id)mismatch sourceEntity:(id)entity
{
  v35 = *MEMORY[0x277D85DE8];
  mismatchCopy = mismatch;
  entityCopy = entity;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [mismatchCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v25;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(mismatchCopy);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        _dataTypeCode = [v13 _dataTypeCode];
        if (_dataTypeCode == 16)
        {
          v15 = v10;
          v10 = v13;
        }

        else
        {
          if (_dataTypeCode != 17)
          {
            continue;
          }

          v15 = v9;
          v9 = v13;
        }

        v16 = v13;
      }

      v8 = [mismatchCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_15:
  if (v10 | v9 && (v17 = [v10 _authorizationStatus], v18 = objc_msgSend(v9, "_authorizationStatus"), v17 != v18))
  {
    v20 = v18;
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v29 = v17;
      v30 = 2048;
      v31 = v20;
      v32 = 2112;
      v33 = entityCopy;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Skipping authorization insertion: systolic (%ld) and diastolic (%ld) authorization statuses don't match for source %@", buf, 0x20u);
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (uint64_t)_insertAuthorizationWithSourceIdentifier:(uint64_t)identifier dataTypeCode:(uint64_t)code authorizationStatus:(uint64_t)status authorizationRequest:(uint64_t)request authorizationMode:(void *)mode modificationDate:(void *)date currentDate:(uint64_t)currentDate syncProvenance:(uint64_t)self0 syncIdentity:(uint64_t)self1 objectAnchor:(void *)self2 modificationEpoch:(char)self3 options:(void *)self4 profile:(void *)self5 database:(uint64_t)self6 error:
{
  modeCopy = mode;
  obj = date;
  dateCopy = date;
  anchorCopy = anchor;
  optionsCopy = options;
  profileCopy = profile;
  v23 = objc_opt_self();
  v24 = v23;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__208;
  v72 = __Block_byref_object_dispose__208;
  v73 = 0;
  requestCopy = request;
  if (request == 1)
  {
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke;
    v67[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v67[4] = v23;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_2;
    v66[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
    v66[4] = a2;
    v66[5] = identifier;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_3;
    v65[3] = &unk_278615C30;
    v65[4] = &v74;
    v65[5] = &v68;
    if (![profileCopy executeCachedStatementForKey:&_insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error__lookupKey error:database SQLGenerator:v67 bindingHandler:v66 enumerationHandler:v65])
    {
      goto LABEL_19;
    }
  }

  v25 = anchorCopy;
  if (!v25)
  {
    v41 = optionsCopy;
    v43 = profileCopy;
    v26 = objc_opt_self();
    v42 = [(HDSQLiteEntity *)[HDSourceEntity alloc] initWithPersistentID:a2];
    v44 = [(HDSourceEntity *)v42 sourceBundleIdentifierInDatabase:v43 error:database];
    if (v44)
    {
      sourceManager = [v41 sourceManager];
      v40 = [sourceManager allSourcesForBundleIdentifier:v44 error:database];

      v28 = v40;
      if (v40)
      {
        allObjects = [v40 allObjects];
        v30 = [allObjects hk_map:&__block_literal_global_417_2];
        v39 = [v30 componentsJoinedByString:{@", "}];

        v31 = MEMORY[0x277CCACA8];
        disambiguatedDatabaseTable = [v26 disambiguatedDatabaseTable];
        v33 = [v31 stringWithFormat:@"SELECT COALESCE(MAX(%@ + 1), 0) FROM %@ WHERE %@ in (%@) AND %@ = ?", @"modification_epoch", disambiguatedDatabaseTable, @"source_id", v39, @"object_type"];

        v82 = 0;
        v83 = &v82;
        v84 = 0x3032000000;
        v85 = __Block_byref_object_copy__208;
        v86 = __Block_byref_object_dispose__208;
        v87 = 0;
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_2;
        v79[3] = &unk_278613B58;
        v80 = v40;
        identifierCopy = identifier;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_3;
        v78[3] = &unk_278614620;
        v78[4] = &v82;
        v34 = [v43 executeSQL:v33 error:database bindingHandler:v79 enumerationHandler:v78] ? v83[5] : 0;
        v28 = v40;
        v25 = v34;

        _Block_object_dispose(&v82, 8);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    if (!v25)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:database code:3 format:@"finalModificationEpoch cannot be nil"];
LABEL_19:
      v37 = 0;
      goto LABEL_20;
    }
  }

  v35 = requestCopy;
  if (requestCopy == 1 && (epoch & 1) != 0)
  {
    v75[3] = identity;
    objc_storeStrong(v69 + 5, obj);
    v35 = 1;
  }

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_4;
  v64[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v64[4] = v24;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_5;
  v51[3] = &unk_27862FE30;
  v56 = a2;
  identifierCopy2 = identifier;
  codeCopy = code;
  statusCopy = status;
  v60 = v35;
  provenanceCopy = provenance;
  identityCopy = identity;
  v52 = modeCopy;
  v54 = &v74;
  currentDateCopy = currentDate;
  v55 = &v68;
  v36 = v25;
  v53 = v36;
  v37 = [profileCopy executeCachedStatementForKey:&_insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error__insertKey error:database SQLGenerator:v64 bindingHandler:v51 enumerationHandler:0];

LABEL_20:
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  return v37;
}

id __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", @"object_limit_anchor", @"object_limit_modified", v2, @"source_id", @"object_type", 0];

  return v3;
}

uint64_t __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C40](a2, 1);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

id __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_4(uint64_t a1)
{
  v6[12] = *MEMORY[0x277D85DE8];
  v6[0] = @"source_id";
  v6[1] = @"object_type";
  v6[2] = @"status";
  v6[3] = @"request";
  v6[4] = @"mode";
  v6[5] = @"date_modified";
  v6[6] = @"provenance";
  v6[7] = @"sync_identity";
  v6[8] = @"deleted_object_anchor";
  v6[9] = @"object_limit_anchor";
  v6[10] = @"object_limit_modified";
  v6[11] = @"modification_epoch";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:12];
  v3 = [*(a1 + 32) insertSQLForProperties:v2 shouldReplace:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 64));
  sqlite3_bind_int64(a2, 2, *(a1 + 72));
  sqlite3_bind_int64(a2, 3, *(a1 + 80));
  sqlite3_bind_int64(a2, 4, *(a1 + 88));
  sqlite3_bind_int64(a2, 5, *(a1 + 96));
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 6, v4);
  sqlite3_bind_int64(a2, 7, *(a1 + 104));
  sqlite3_bind_int64(a2, 8, *(a1 + 112));
  sqlite3_bind_int64(a2, 9, *(a1 + 120));
  sqlite3_bind_int64(a2, 10, *(*(*(a1 + 48) + 8) + 24));
  v5 = *(*(*(a1 + 56) + 8) + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = [*(a1 + 40) longLongValue];

  return sqlite3_bind_int64(a2, 12, v6);
}

uint64_t __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        sqlite3_bind_int64(a2, v10++, [*(*(&v13 + 1) + 8 * v9++) persistentID]);
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  result = sqlite3_bind_int64(a2, v8, *(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [MEMORY[0x277CBEAA8] date];
  v25[0] = @"source_id";
  v25[1] = @"object_type";
  v25[2] = @"request";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v8 = *(a1 + 48);
  v24 = 0;
  v9 = [v8 maxPersistentIDWithPredicate:0 database:v5 error:&v24];
  v10 = v24;
  v11 = v10;
  if (v9)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    v9 = &unk_283CB42A8;
LABEL_2:
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10A40] lessThanOrEqualToValue:v9];
    v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:*(a1 + 32)];
    v14 = [*(a1 + 48) queryWithDatabase:v5 predicate:v13];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke_2;
    v19[3] = &unk_27862FE58;
    v23 = *(a1 + 48);
    v20 = v6;
    v21 = *(a1 + 40);
    v22 = v5;
    v15 = [v14 enumeratePersistentIDsAndProperties:v7 error:a3 enumerationHandler:v19];

    goto LABEL_3;
  }

  if (a3)
  {
    v18 = v10;
    v15 = 0;
    *a3 = v11;
  }

  else
  {
    _HKLogDroppedError();
    v15 = 0;
  }

LABEL_3:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HDSQLiteColumnAsInt64();
  v8 = HDSQLiteColumnAsInt64();
  v9 = HDSQLiteColumnAsInt64();
  return +[HDAuthorizationEntity _insertAuthorizationWithSourceIdentifier:dataTypeCode:authorizationStatus:authorizationRequest:authorizationMode:modificationDate:currentDate:syncProvenance:syncIdentity:objectAnchor:modificationEpoch:options:profile:database:error:](*(a1 + 56), v7, v8, 100, v9, 0, *(a1 + 32), *(a1 + 32), 0, [*(a1 + 40) currentSyncIdentityPersistentID], 0, 0, 0, *(a1 + 40), *(a1 + 48), a5);
}

+ (id)_predicateForSourceEntities:(uint64_t)entities
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_434_0];

  v4 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"source_id" values:v3];

  return v4;
}

uint64_t __53__HDAuthorizationEntity__predicateForSourceEntities___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"source_id";
  v2 = +[(HDHealthEntity *)HDSourceEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"source_id";
  v5[1] = @"object_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end