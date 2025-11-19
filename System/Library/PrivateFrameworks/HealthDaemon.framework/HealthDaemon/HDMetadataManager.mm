@interface HDMetadataManager
+ (id)_metadataPredicateClassForKey:(uint64_t)a1;
- (BOOL)insertMetadata:(id)a3 forObjectID:(id)a4 sourceID:(id)a5 externalSyncObjectCode:(int64_t)a6 objectDeleted:(BOOL)a7 error:(id *)a8;
- (BOOL)insertMetadata:(id)a3 forObjectID:(id)a4 sourceID:(id)a5 externalSyncObjectCode:(int64_t)a6 objectDeleted:(BOOL)a7 transaction:(id)a8 error:(id *)a9;
- (BOOL)updateMetadataValue:(id)a3 forKey:(id)a4 object:(id)a5 error:(id *)a6;
- (HDMetadataManager)initWithProfile:(id)a3;
- (id)_keyEntityForKey:(char)a3 createIfNecessary:(uint64_t)a4 transaction:(uint64_t)a5 error:;
- (id)metadataForObjectID:(int64_t)a3 baseMetadata:(id)a4 keyFilter:(id)a5 statement:(id)a6 error:(id *)a7;
- (id)predicateWithMetadataKey:(id)a3 allowedValues:(id)a4;
- (id)predicateWithMetadataKey:(id)a3 value:(id)a4 operatorType:(unint64_t)a5;
- (id)unitTest_metadataForObjectID:(int64_t)a3 keyFilter:(id)a4 error:(id *)a5;
- (id)unitTest_rawMetadataForObject:(id)a3 error:(id *)a4;
@end

@implementation HDMetadataManager

- (HDMetadataManager)initWithProfile:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDMetadataManager;
  v5 = [(HDMetadataManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [HDDatabaseValueCache alloc];
    v8 = [(HDMetadataManager *)v6 hk_classNameWithTag:@"entities"];
    v9 = [(HDDatabaseValueCache *)v7 initWithName:v8];
    keyEntityCache = v6->_keyEntityCache;
    v6->_keyEntityCache = v9;

    v11 = [HDDatabaseValueCache alloc];
    v12 = [(HDMetadataManager *)v6 hk_classNameWithTag:@"keys"];
    v13 = [(HDDatabaseValueCache *)v11 initWithName:v12];
    keyCache = v6->_keyCache;
    v6->_keyCache = v13;
  }

  return v6;
}

- (id)metadataForObjectID:(int64_t)a3 baseMetadata:(id)a4 keyFilter:(id)a5 statement:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  v42 = 0;
  v14 = a4;
  v15 = v12;
  v16 = v13;
  if (self)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__124;
    v53 = __Block_byref_object_dispose__124;
    v54 = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__HDMetadataManager__metadataForObjectID_baseMetadata_keyFilter_statement_error___block_invoke;
    aBlock[3] = &unk_278624A88;
    v47 = v15;
    v48 = &v49;
    v17 = _Block_copy(aBlock);
    v18 = [v16 transaction];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __81__HDMetadataManager__metadataForObjectID_baseMetadata_keyFilter_statement_error___block_invoke_2;
    v43[3] = &unk_278624AB0;
    v43[4] = self;
    v19 = v18;
    v44 = v19;
    v20 = v17;
    v45 = v20;
    if ([v16 enumerateResultsForObjectID:a3 error:&v42 block:v43])
    {
      v21 = v50[5];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = v42;
  v24 = v23;
  if (v22 || !v23)
  {
    v40 = a7;
    v27 = [v16 database];
    v41 = v24;
    v28 = v22;
    v29 = v15;
    v30 = v27;
    if (self && (!v29 || v29[2](v29, *MEMORY[0x277CCC520]) && v29[2](v29, *MEMORY[0x277CCC528])))
    {
      v43[0] = 0;
      v49 = 0;
      v31 = [HDDataExternalSyncIdentifierEntity populateSyncInfoForObjectID:a3 database:v30 localSourceIDOut:0 externalSyncObjectCodeOut:0 syncIdentifierOut:v43 syncVersionOut:&v49 deletedOut:0 errorOut:&v41];
      v32 = v43[0];
      v33 = v49;
      v34 = 0;
      if (v31)
      {
        v35 = v33;
        v34 = v28;
        if (v32)
        {
          if (!v22)
          {
            v34 = objc_opt_new();
          }

          [v34 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCC520]];
          [v34 setObject:v35 forKeyedSubscript:*MEMORY[0x277CCC528]];
        }

        v33 = v35;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = v41;
    if (v34 || !v36)
    {
      v38 = MEMORY[0x277CBEC10];
      if (v34)
      {
        v38 = v34;
      }

      v26 = v38;
    }

    else if (v40)
    {
      v37 = v36;
      v26 = 0;
      *v40 = v36;
    }

    else
    {
      _HKLogDroppedError();
      v26 = 0;
    }
  }

  else
  {
    if (a7)
    {
      v25 = v23;
      v26 = 0;
      *a7 = v24;
    }

    else
    {
      _HKLogDroppedError();
      v26 = 0;
    }

    v36 = v24;
  }

  return v26;
}

void __81__HDMetadataManager__metadataForObjectID_baseMetadata_keyFilter_statement_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v6 || (*(v6 + 16))(v6, v11))
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 setObject:v5 forKeyedSubscript:v11];
  }
}

BOOL __81__HDMetadataManager__metadataForObjectID_baseMetadata_keyFilter_statement_error___block_invoke_2(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1[4];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v10 = a1[5];
  v11 = v9;
  v12 = v11;
  if (v8)
  {
    v13 = *(v8 + 24);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __52__HDMetadataManager__keyForKeyID_transaction_error___block_invoke;
    v26[3] = &unk_278624B78;
    v27 = v11;
    v14 = [v13 fetchObjectForKey:v27 transaction:v10 error:a4 faultHandler:v26];
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    (*(a1[6] + 16))();
    v15 = a1[4];
    v16 = a1[6];
    v17 = v14;
    v18 = v7;
    v19 = v16;
    if (!v15)
    {
LABEL_9:

      goto LABEL_10;
    }

    if ([v17 isEqualToString:*MEMORY[0x277CCE048]] || objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277CCE038]))
    {
      v20 = MEMORY[0x277CCC4B0];
LABEL_8:
      (*(v19 + 2))(v19, *v20, v18);
      goto LABEL_9;
    }

    if ([v17 isEqualToString:*MEMORY[0x277CCE030]])
    {
      [v18 integerValue];
      v22 = HKHeartRateMotionContextForPrivateHeartRateContext();
      v23 = MEMORY[0x277CCC4B8];
    }

    else
    {
      if ([v17 isEqualToString:*MEMORY[0x277CCDFA0]])
      {
        v20 = MEMORY[0x277CCC428];
        goto LABEL_8;
      }

      if (![v17 isEqualToString:*MEMORY[0x277CCDFB8]])
      {
        goto LABEL_9;
      }

      v22 = HKAppleIrregularRhythmNotificationsAlgorithmVersionForPrivateVersionString();
      v23 = MEMORY[0x277CCC428];
    }

    v24 = *v23;
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
    (*(v19 + 2))(v19, v24, v25);

    goto LABEL_9;
  }

LABEL_10:

  return v14 != 0;
}

- (id)unitTest_metadataForObjectID:(int64_t)a3 keyFilter:(id)a4 error:(id *)a5
{
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__124;
  v22 = __Block_byref_object_dispose__124;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDMetadataManager_unitTest_metadataForObjectID_keyFilter_error___block_invoke;
  v14[3] = &unk_278624AD8;
  v16 = &v18;
  v17 = a3;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  [(HDHealthEntity *)HDMetadataValueEntity performReadTransactionWithHealthDatabase:v10 error:a5 block:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __66__HDMetadataManager_unitTest_metadataForObjectID_keyFilter_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [HDMetadataValueStatement metadataValueStatementWithTransaction:a2];
  v6 = [*(a1 + 32) metadataForObjectID:*(a1 + 56) baseMetadata:0 keyFilter:*(a1 + 40) statement:v5 error:a3];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v5 finish];
  return 1;
}

- (id)unitTest_rawMetadataForObject:(id)a3 error:(id *)a4
{
  v21 = a3;
  v19 = MEMORY[0x277CCACA8];
  v4 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v5 = +[(HDSQLiteSchemaEntity *)HDMetadataValueEntity];
  v6 = +[(HDSQLiteSchemaEntity *)HDMetadataKeyEntity];
  v7 = +[(HDSQLiteSchemaEntity *)HDMetadataKeyEntity];
  v8 = [v19 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ INNER JOIN %@ ON %@ = %@ INNER JOIN %@ ON %@ = %@.%@ WHERE %@ = ?", @"key", @"value_type", @"string_value", @"numerical_value", @"date_value", @"data_value", v4, v5, @"data_id", @"object_id", v6, @"key_id", v7, *MEMORY[0x277D10A40], @"uuid"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__HDMetadataManager_unitTest_rawMetadataForObject_error___block_invoke;
  v23[3] = &unk_278615D40;
  v24 = v8;
  v25 = v21;
  v26 = v9;
  v12 = v9;
  v13 = v21;
  v14 = v8;
  v15 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v11 error:a4 block:v23];

  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

uint64_t __57__HDMetadataManager_unitTest_rawMetadataForObject_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HDMetadataManager_unitTest_rawMetadataForObject_error___block_invoke_2;
  v11[3] = &unk_278614860;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HDMetadataManager_unitTest_rawMetadataForObject_error___block_invoke_3;
  v9[3] = &unk_278614098;
  v10 = *(a1 + 48);
  v7 = [v5 executeSQL:v6 error:a3 bindingHandler:v11 enumerationHandler:v9];

  return v7;
}

void __57__HDMetadataManager_unitTest_rawMetadataForObject_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __57__HDMetadataManager_unitTest_rawMetadataForObject_error___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsInt64();
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_18;
      }

      v5 = HDSQLiteColumnWithNameAsNumber();
    }

    else
    {
      v5 = HDSQLiteColumnWithNameAsString();
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v5 = HDSQLiteColumnWithNameAsDate();
LABEL_12:
    v4 = v5;
    goto LABEL_13;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      goto LABEL_18;
    }

    v5 = HDSQLiteColumnWithNameAsData();
    goto LABEL_12;
  }

  v6 = MEMORY[0x277CCD7E8];
  v7 = MEMORY[0x277CCDAB0];
  v8 = HDSQLiteColumnWithNameAsString();
  v9 = [v7 unitFromString:v8];
  HDSQLiteColumnWithNameAsDouble();
  v4 = [v6 quantityWithUnit:v9 doubleValue:?];

LABEL_13:
  if (v2)
  {
    v10 = v4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v2];
  }

LABEL_18:

  return 1;
}

- (BOOL)insertMetadata:(id)a3 forObjectID:(id)a4 sourceID:(id)a5 externalSyncObjectCode:(int64_t)a6 objectDeleted:(BOOL)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if ([v14 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v18 = [WeakRetained database];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__HDMetadataManager_insertMetadata_forObjectID_sourceID_externalSyncObjectCode_objectDeleted_error___block_invoke;
    v21[3] = &unk_278624B00;
    v21[4] = self;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = a6;
    v26 = a7;
    v19 = [(HDHealthEntity *)HDMetadataValueEntity performWriteTransactionWithHealthDatabase:v18 error:a8 block:v21];
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)insertMetadata:(id)a3 forObjectID:(id)a4 sourceID:(id)a5 externalSyncObjectCode:(int64_t)a6 objectDeleted:(BOOL)a7 transaction:(id)a8 error:(id *)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = v13;
  v18 = v14;
  v19 = v16;
  v20 = v19;
  if (self)
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 1;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__124;
    v60 = __Block_byref_object_dispose__124;
    v61 = 0;
    v21 = [v18 longLongValue];
    v22 = [v20 databaseForEntityClass:objc_opt_class()];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __67__HDMetadataManager__insertMetadata_forObjectID_transaction_error___block_invoke;
    v49[3] = &unk_278624B28;
    v49[4] = self;
    v23 = v17;
    v50 = v23;
    v24 = v20;
    v51 = v24;
    v53 = &v56;
    v54 = &v62;
    v55 = v21;
    v25 = v22;
    v52 = v25;
    [v23 enumerateKeysAndObjectsUsingBlock:v49];
    v48 = v17;
    if (v63[3])
    {
      v26 = 1;
    }

    else
    {
      v27 = v57[5];
      v28 = v27;
      if (v27)
      {
        if (a9)
        {
          v29 = v27;
          *a9 = v28;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v26 = *(v63 + 24);
    }

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v62, 8);

    if (v26)
    {
      v44 = v15;
      v45 = v18;
      v30 = v15;
      v31 = v24;
      v32 = *MEMORY[0x277CCC520];
      v33 = v23;
      v34 = [v33 objectForKeyedSubscript:v32];
      v35 = [v33 objectForKeyedSubscript:*MEMORY[0x277CCC528]];

      if (v34)
      {
        v43 = v31;
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v37 = [WeakRetained sourceManager];
        v38 = [v37 localSourceForSourceID:v30 copyIfNecessary:1 error:a9];

        if (v38)
        {
          v39 = objc_loadWeakRetained(&self->_profile);
          v40 = [v43 databaseForEntityClass:objc_opt_class()];
          LOBYTE(v42) = a7;
          LOBYTE(self) = +[HDDataExternalSyncIdentifierEntity insertSyncIdentifierWithProfile:database:objectID:localSourceID:externalSyncObjectCode:syncIdentifier:syncVersion:deleted:errorOut:](HDDataExternalSyncIdentifierEntity, "insertSyncIdentifierWithProfile:database:objectID:localSourceID:externalSyncObjectCode:syncIdentifier:syncVersion:deleted:errorOut:", v39, v40, [v45 longLongValue], objc_msgSend(v38, "persistentID"), a6, v34, v35, v42, a9);
        }

        else
        {
          LOBYTE(self) = 0;
        }

        v17 = v48;

        v31 = v43;
      }

      else
      {
        LOBYTE(self) = 1;
        v17 = v48;
      }

      v15 = v44;
    }

    else
    {
      LOBYTE(self) = 0;
      v17 = v48;
    }
  }

  else
  {
  }

  return self;
}

void __67__HDMetadataManager__insertMetadata_forObjectID_transaction_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a1[4];
  v9 = a1[5];
  v11 = v7;
  v12 = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

  if (qword_280D67D38 != -1)
  {
    dispatch_once(&qword_280D67D38, &__block_literal_global_151);
  }

  v13 = _MergedGlobals_211;
  v14 = [v13 containsObject:v11];

  if ((v14 & 1) != 0 || [v11 isEqualToString:*MEMORY[0x277CCC4B8]] && (objc_msgSend(v12, "objectForKeyedSubscript:", *MEMORY[0x277CCE030]), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
  }

  else
  {
LABEL_8:

    v16 = a1[4];
    v17 = a1[6];
    v18 = *(a1[8] + 8);
    obj = *(v18 + 40);
    v19 = [(HDMetadataManager *)v16 _keyEntityForKey:v11 createIfNecessary:1 transaction:v17 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    if (!v19 || (v20 = [v19 persistentID], v21 = a1[10], v22 = a1[7], v23 = *(a1[8] + 8), v25 = *(v23 + 40), v24 = +[HDMetadataValueEntity _insertMetadataValueWithKeyID:objectID:value:database:error:](HDMetadataValueEntity, "_insertMetadataValueWithKeyID:objectID:value:database:error:", v20, v21, v8, v22, &v25), objc_storeStrong((v23 + 40), v25), !v24))
    {
      *a4 = 1;
      *(*(a1[9] + 8) + 24) = 0;
    }
  }
}

- (id)_keyEntityForKey:(char)a3 createIfNecessary:(uint64_t)a4 transaction:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = v9;
  if (a1)
  {
    v11 = *(a1 + 16);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__HDMetadataManager__keyEntityForKey_createIfNecessary_transaction_error___block_invoke;
    v14[3] = &unk_278624B50;
    v15 = v9;
    v16 = a3;
    v12 = [v11 fetchObjectForKey:v15 transaction:a4 error:a5 faultHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __49__HDMetadataManager__ignoredInsertedMetadataKeys__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCC520], *MEMORY[0x277CCC528], 0}];
  v1 = _MergedGlobals_211;
  _MergedGlobals_211 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)updateMetadataValue:(id)a3 forKey:(id)a4 object:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HDMetadataManager.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__HDMetadataManager_updateMetadataValue_forKey_object_error___block_invoke;
  v22[3] = &unk_27861B120;
  v23 = v13;
  v24 = self;
  v25 = v12;
  v26 = v11;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = [(HDHealthEntity *)HDMetadataValueEntity performWriteTransactionWithHealthDatabase:v15 error:a6 block:v22];

  return v19;
}

BOOL __61__HDMetadataManager_updateMetadataValue_forKey_object_error___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a1[4];
  v25 = 0;
  v8 = [HDDataEntity dataEntityForObject:v7 transaction:v6 error:&v25];
  v9 = v25;
  v10 = v9;
  if (v8)
  {

    v11 = a1[5];
    v12 = a1[6];
    v24 = 0;
    v3 = [(HDMetadataManager *)v11 _keyEntityForKey:v12 createIfNecessary:0 transaction:v6 error:&v24];
    v13 = v24;
    v10 = v13;
    if (v3)
    {
      v14 = [v3 persistentID];
      v15 = [v8 persistentID];
      v16 = a1[7];
      v17 = [v6 databaseForEntityClass:objc_opt_class()];
      v18 = [HDMetadataValueEntity _updateMetadataValueForKeyID:v14 objectID:v15 value:v16 database:v17 error:a3];
      v19 = v10;
LABEL_22:

      v10 = v19;
LABEL_23:

      goto LABEL_24;
    }

    if (v13)
    {
      v17 = v13;
      goto LABEL_15;
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Metadata key %@ not found", a1[6]}];
    if (v17)
    {
LABEL_15:
      if (a3)
      {
        v22 = v17;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }

      v3 = 0;
      v19 = 0;
      v18 = 0;
      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v3 = 0;
LABEL_21:
    v19 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v3 = [a1[4] UUID];
    v17 = [v20 hk_error:118 format:{@"Object with UUID %@ not found", v3}];
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  if (a3)
  {
    v21 = v17;
    *a3 = v17;
  }

  else
  {
    _HKLogDroppedError();
  }

  v18 = 0;
  if (!v10)
  {
    v19 = 0;
    goto LABEL_22;
  }

LABEL_24:

  return v18;
}

- (id)predicateWithMetadataKey:(id)a3 allowedValues:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [+[HDMetadataManager _metadataPredicateClassForKey:](HDMetadataManager v6)];

  return v7;
}

+ (id)_metadataPredicateClassForKey:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = off_27860E7F0;
  if (([v2 isEqualToString:*MEMORY[0x277CCC520]] & 1) == 0 && !objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277CCC528]))
  {
    v3 = off_27860EF20;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (id)predicateWithMetadataKey:(id)a3 value:(id)a4 operatorType:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [+[HDMetadataManager _metadataPredicateClassForKey:](HDMetadataManager v8)];

  return v9;
}

id __74__HDMetadataManager__keyEntityForKey_createIfNecessary_transaction_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = *(a1 + 32);
  v15 = 0;
  v8 = [HDMetadataKeyEntity _entityForKey:v7 database:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8)
  {
    if (*(a1 + 40) != 1 || v9 || (v11 = *(a1 + 32), v14 = 0, [HDMetadataKeyEntity _insertEntityWithKey:v11 database:v6 error:&v14], v8 = objc_claimAutoreleasedReturnValue(), v10 = v14, !v8))
    {
      v10 = v10;
      if (v10)
      {
        if (a3)
        {
          v12 = v10;
          *a3 = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v8 = 0;
    }
  }

  return v8;
}

id __52__HDMetadataManager__keyForKeyID_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 databaseForEntityClass:objc_opt_class()];

  v5 = [HDMetadataKeyEntity _keyForPersistentID:*(a1 + 32) database:v4];

  return v5;
}

@end