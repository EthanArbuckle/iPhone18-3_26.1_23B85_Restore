@interface HDSeriesSampleEntity
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)freezeSeriesWithIdentifier:(id)a3 metadata:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)objectInsertionFilterForProfile:(id)a3;
+ (id)seriesSampleWithID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (uint64_t)_insertionEra;
- (BOOL)canAddDatumInDatabase:(id)a3 error:(id *)a4;
- (BOOL)updateSampleCount:(int64_t)a3 withDatabase:(id)a4 error:(id *)a5;
- (id)HFDKeyWithDatabase:(id)a3 error:(id *)a4;
- (id)freezeWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5;
@end

@implementation HDSeriesSampleEntity

+ (uint64_t)_insertionEra
{
  objc_opt_self();
  if (_MergedGlobals_200 != -1)
  {
    dispatch_once(&_MergedGlobals_200, &__block_literal_global_90);
  }

  return qword_280D67BE8;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  {
    v5 = a3;
    a3 = v5;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_0, 0, &dword_228986000);
      a3 = v5;
    }
  }

  *a3 = 6;
  return +[HDSeriesSampleEntity columnDefinitionsWithCount:]::columnDefinitions;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)freezeSeriesWithIdentifier:(id)a3 metadata:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__85;
  v36 = __Block_byref_object_dispose__85;
  v13 = v10;
  v37 = v13;
  v14 = [v12 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke;
  v26[3] = &unk_27861FF40;
  v31 = a1;
  v27 = v13;
  v28 = v12;
  v29 = v11;
  v30 = &v32;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke_330;
  v21[3] = &unk_27861FF68;
  v15 = v27;
  v22 = v15;
  v16 = v29;
  v23 = v16;
  v25 = a1;
  v17 = v28;
  v24 = v17;
  LODWORD(a6) = [a1 performWriteTransactionWithHealthDatabase:v14 error:a6 block:v26 inaccessibilityHandler:v21];

  if (a6)
  {
    v18 = v33[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(&v32, 8);

  return v19;
}

uint64_t __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 64)];
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = HDDataEntityPredicateForDataUUID();
  v10 = [v7 anyInDatabase:v6 predicate:v9 error:a3];

  if (v10)
  {
    v11 = [v10 freezeWithTransaction:v5 profile:*(a1 + 40) error:a3];

    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
      v13 = *(a1 + 48);
      if (!v13 || ![v13 count])
      {
        v23 = 0;
        goto LABEL_11;
      }

      v14 = [*(a1 + 64) seriesSampleWithID:v12 profile:*(a1 + 40) error:a3];
      v15 = v14;
      if (!v14)
      {
        v23 = 0;
        goto LABEL_24;
      }

      [v14 _setMetadata:*(a1 + 48)];
      v16 = [v15 sourceRevision];
      v17 = [v16 source];
      v18 = [v17 _sourceID];

      v19 = *(a1 + 64);
      v20 = *(a1 + 40);
      v44 = 0;
      v45 = 0;
      v42 = v18;
      v21 = [v19 shouldInsertObject:v15 sourceID:v18 profile:v20 transaction:v5 objectToReplace:&v45 objectID:&v44 error:a3];
      v22 = v45;
      v40 = v22;
      v41 = v44;
      if (v21 == 1)
      {
        if ([*(a1 + 64) deleteSeriesWithID:v12 deleteSeriesData:1 insertDeletedObject:0 profile:*(a1 + 40) transaction:v5 error:a3])
        {
          v35 = [v22 UUID];
          v24 = 0;
          v23 = 0;
          v36 = *(*(a1 + 56) + 8);
          v26 = *(v36 + 40);
          *(v36 + 40) = v35;
          v25 = 1;
          goto LABEL_19;
        }
      }

      else if (v21 != 2)
      {
        v23 = v41;
        v39 = [*(a1 + 40) metadataManager];
        v24 = [v39 insertMetadata:*(a1 + 48) forObjectID:v12 sourceID:v18 externalSyncObjectCode:objc_msgSend(v15 objectDeleted:"_externalSyncObjectCode") error:{0, a3}];
        v25 = 0;
        v26 = v39;
LABEL_19:

        goto LABEL_21;
      }

      v24 = 0;
      v23 = 0;
      v25 = 0;
LABEL_21:

      if ((v24 & 1) == 0)
      {
LABEL_25:

        goto LABEL_26;
      }

      if (v23 && ([*(a1 + 64) replaceObjectID:v23 replacementObjectID:v12 deleteOriginalSeriesData:1 insertDeletedObject:1 profile:*(a1 + 40) transaction:v5 error:a3] & 1) == 0)
      {
LABEL_24:
        v25 = 0;
        goto LABEL_25;
      }

LABEL_11:
      v27 = *(a1 + 64);
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v43 = 0;
      v30 = [v27 objectWithUUID:v28 encodingOptions:0 profile:v29 error:&v43];
      v31 = v43;
      if (v30)
      {
        v32 = [*(a1 + 40) dataManager];
        v48[0] = v30;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
        [v32 shouldNotifyForDataObjects:v33 provenance:0 database:v6 anchor:v12];
      }

      else
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v47 = v31;
          _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "Failed to look up series after freezing: %{public}@", buf, 0xCu);
        }
      }

      v25 = 1;
      goto LABEL_25;
    }
  }

  v25 = 0;
LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke_330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [_HDSeriesFreezeJournalEntry alloc];
  v6 = *(a1 + 56);
  v7 = [(_HDSeriesFreezeJournalEntry *)v5 initWithSeriesUUID:*(a1 + 32) metadata:*(a1 + 40) class:objc_opt_class()];
  v8 = [*(a1 + 48) database];
  v9 = [v8 addJournalEntry:v7 error:a3];

  return v9;
}

+ (id)seriesSampleWithID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [a1 objectWithID:v8 encodingOptions:0 profile:a4 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v10;
    goto LABEL_6;
  }

  v11 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find series with ID %@", v8}];
  if (v11)
  {
LABEL_6:
    if (a5)
    {
      v13 = v11;
      *a5 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_10:

  return v9;
}

- (id)freezeWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)canAddDatumInDatabase:(id)a3 error:(id *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[4] = &v8;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke;
  v7[3] = &unk_278615580;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke_2;
  v6[3] = &unk_278615530;
  [a3 executeSQL:@"SELECT frozen FROM data_series WHERE data_id = ?" error:a4 bindingHandler:v7 enumerationHandler:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x22AAC6C10](a2, 0) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

- (BOOL)updateSampleCount:(int64_t)a3 withDatabase:(id)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v13[0] = @"count";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDSeriesSampleEntity_updateSampleCount_withDatabase_error___block_invoke;
  v12[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v12[4] = a3;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v9 database:v8 error:a5 bindingHandler:v12];

  v10 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (id)objectInsertionFilterForProfile:(id)a3
{
  v4 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDSeriesSampleEntity;
  v5 = objc_msgSendSuper2(&v11, sel_objectInsertionFilterForProfile_, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HDSeriesSampleEntity_objectInsertionFilterForProfile___block_invoke;
  aBlock[3] = &unk_27861FFB8;
  v10 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

uint64_t __56__HDSeriesSampleEntity_objectInsertionFilterForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 _isFrozen])
    {
      v5 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__HDSeriesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v18[3] = &unk_27861FFE0;
  v19 = v12;
  v20 = v11;
  v21 = a1;
  v13 = v11;
  v14 = v12;
  if ([a5 executeSQL:@"INSERT INTO data_series (data_id error:frozen bindingHandler:count enumerationHandler:{insertion_era, hfd_key, series_location) VALUES (?, ?, ?, ?, (COALESCE((SELECT MAX(hfd_key) + 1 FROM data_series), 1)), 2)", a7, v18, 0}])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __86__HDSeriesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int(a2, 2, [*(a1 + 40) _isFrozen]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 40) count]);
  v4 = *(a1 + 48);
  v5 = +[HDSeriesSampleEntity _insertionEra];

  return sqlite3_bind_int64(a2, 4, v5);
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)HFDKeyWithDatabase:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = @"hfd_key";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HDSeriesSampleEntity_HFDKeyWithDatabase_error___block_invoke;
  v12[3] = &unk_278620008;
  v12[4] = &v13;
  v8 = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v6 error:a4 handler:v12];

  if (v8)
  {
    if (v14[3])
    {
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      goto LABEL_6;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"hfd_key", objc_opt_class(), -[HDSQLiteEntity persistentID](self, "persistentID")}];
  }

  v9 = 0;
LABEL_6:
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __49__HDSeriesSampleEntity_HFDKeyWithDatabase_error___block_invoke(uint64_t a1)
{
  result = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end