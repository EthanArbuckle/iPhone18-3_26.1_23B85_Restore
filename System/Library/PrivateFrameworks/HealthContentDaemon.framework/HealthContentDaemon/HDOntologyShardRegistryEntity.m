@interface HDOntologyShardRegistryEntity
+ (BOOL)enumerateEntriesWithPredicate:(id)a3 orderingTerms:(id)a4 database:(id)a5 error:(id *)a6 enumerationHandler:(id)a7;
+ (BOOL)insertEntry:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)nextAvailableSlotInAllowedRange:(_NSRange)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)uniquedColumns;
- (HDOntologyShardRegistryEntity)init;
@end

@implementation HDOntologyShardRegistryEntity

- (HDOntologyShardRegistryEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)insertEntry:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (([v10 isWriter] & 1) == 0)
  {
    [HDOntologyShardRegistryEntity insertEntry:a2 database:a1 error:?];
  }

  objc_opt_self();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HDOntologyShardRegistryEntity_insertEntry_database_error___block_invoke;
  v14[3] = &unk_2796B9DF8;
  v15 = v9;
  v11 = v9;
  v12 = [a1 insertOrReplaceEntity:1 database:v10 properties:&unk_286374910 error:a5 bindingHandler:v14];

  return v12 != 0;
}

void __60__HDOntologyShardRegistryEntity_insertEntry_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x253077AE0](a2, @"identifier", v4);

  v5 = [*(a1 + 32) schemaType];
  MEMORY[0x253077AE0](a2, @"schema_type", v5);

  MEMORY[0x253077AD0](a2, @"schema_version", [*(a1 + 32) schemaVersion]);
  MEMORY[0x253077AD0](a2, @"settings", [*(a1 + 32) settings]);
  MEMORY[0x253077AD0](a2, @"slot", [*(a1 + 32) slot]);
  MEMORY[0x253077AD0](a2, @"desired_state", [*(a1 + 32) desiredState]);
  v6 = [*(a1 + 32) desiredStateDate];
  MEMORY[0x253077AA0](a2, @"desired_state_date", v6);

  MEMORY[0x253077AD0](a2, @"current_version", [*(a1 + 32) currentVersion]);
  v7 = [*(a1 + 32) currentVersionDate];
  MEMORY[0x253077AA0](a2, @"current_version_date", v7);

  v8 = [*(a1 + 32) currentRegion];
  MEMORY[0x253077AE0](a2, @"current_region", v8);

  v9 = [*(a1 + 32) currentRegionDate];
  MEMORY[0x253077AA0](a2, @"current_region_date", v9);

  v10 = [*(a1 + 32) currentLocale];
  MEMORY[0x253077AE0](a2, @"current_locale", v10);

  v11 = [*(a1 + 32) currentLocaleDate];
  MEMORY[0x253077AA0](a2, @"current_locale_date", v11);

  MEMORY[0x253077AD0](a2, @"available_version", [*(a1 + 32) availableVersion]);
  v12 = [*(a1 + 32) availableVersionDate];
  MEMORY[0x253077AA0](a2, @"available_version_date", v12);

  v13 = [*(a1 + 32) availableRegion];
  MEMORY[0x253077AE0](a2, @"available_region", v13);

  v14 = [*(a1 + 32) availableRegionDate];
  MEMORY[0x253077AA0](a2, @"available_region_date", v14);

  v15 = [*(a1 + 32) availableLocale];
  MEMORY[0x253077AE0](a2, @"available_locale", v15);

  v16 = [*(a1 + 32) availableLocaleDate];
  MEMORY[0x253077AA0](a2, @"available_locale_date", v16);

  v17 = [*(a1 + 32) availableURL];
  v18 = [v17 absoluteString];
  MEMORY[0x253077AE0](a2, @"available_url", v18);

  v19 = [*(a1 + 32) availableURLDate];
  MEMORY[0x253077AA0](a2, @"available_url_date", v19);

  v20 = [*(a1 + 32) availableChecksum];
  MEMORY[0x253077AE0](a2, @"available_checksum", v20);

  v21 = [*(a1 + 32) availableChecksumDate];
  MEMORY[0x253077AA0](a2, @"available_checksum_date", v21);

  MEMORY[0x253077AD0](a2, @"available_size", [*(a1 + 32) availableSize]);
  v22 = [*(a1 + 32) availableSizeDate];
  MEMORY[0x253077AA0](a2, @"available_size_date", v22);

  MEMORY[0x253077AD0](a2, @"available_state", [*(a1 + 32) availableState]);
  v23 = [*(a1 + 32) availableStateDate];
  MEMORY[0x253077AA0](a2, @"available_state_date", v23);
}

+ (BOOL)enumerateEntriesWithPredicate:(id)a3 orderingTerms:(id)a4 database:(id)a5 error:(id *)a6 enumerationHandler:(id)a7
{
  v11 = a7;
  v12 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity queryWithDatabase:a5 predicate:a3 limit:0 orderingTerms:a4 groupBy:0];
  objc_opt_self();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__HDOntologyShardRegistryEntity_enumerateEntriesWithPredicate_orderingTerms_database_error_enumerationHandler___block_invoke;
  v15[3] = &unk_2796B9E20;
  v16 = v11;
  v13 = v11;
  LOBYTE(a6) = [v12 enumeratePersistentIDsAndProperties:&unk_286374910 error:a6 enumerationHandler:v15];

  return a6;
}

uint64_t __111__HDOntologyShardRegistryEntity_enumerateEntriesWithPredicate_orderingTerms_database_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v1 = HDSQLiteColumnWithNameAsString();
  v27 = v1;
  if (v1)
  {
    v34 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v1];
  }

  else
  {
    v34 = 0;
  }

  v25 = objc_alloc(MEMORY[0x277CCD760]);
  v33 = HDSQLiteColumnWithNameAsString();
  v24 = HDSQLiteColumnWithNameAsString();
  v23 = HDSQLiteColumnWithNameAsInt64();
  v22 = HDSQLiteColumnWithNameAsInt64();
  v21 = HDSQLiteColumnWithNameAsInt64();
  v20 = HDSQLiteColumnWithNameAsInt64();
  v32 = HDSQLiteColumnWithNameAsDate();
  v19 = HDSQLiteColumnWithNameAsInt64();
  v31 = HDSQLiteColumnWithNameAsDate();
  v18 = HDSQLiteColumnWithNameAsString();
  v17 = HDSQLiteColumnWithNameAsDate();
  v30 = HDSQLiteColumnWithNameAsString();
  v16 = HDSQLiteColumnWithNameAsDate();
  v15 = HDSQLiteColumnWithNameAsInt64();
  v29 = HDSQLiteColumnWithNameAsDate();
  v13 = HDSQLiteColumnWithNameAsString();
  v14 = HDSQLiteColumnWithNameAsDate();
  v12 = HDSQLiteColumnWithNameAsString();
  v11 = HDSQLiteColumnWithNameAsDate();
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsDate();
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsDate();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsDate();
  v26 = [v25 initWithIdentifier:v33 schemaType:v24 schemaVersion:v23 settings:v22 slot:v21 desiredState:v20 desiredStateDate:v32 currentVersion:v19 currentVersionDate:v31 currentRegion:v18 currentRegionDate:v17 currentLocale:v30 currentLocaleDate:v16 availableVersion:v15 availableVersionDate:v29 availableRegion:v13 availableRegionDate:v14 availableLocale:v12 availableLocaleDate:v11 availableURL:v34 availableURLDate:v2 availableChecksum:v3 availableChecksumDate:v4 availableSize:v5 availableSizeDate:v6 availableState:v7 availableStateDate:v8];

  v9 = (*(*(a1 + 32) + 16))();
  return v9;
}

+ (id)nextAvailableSlotInAllowedRange:(_NSRange)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
{
  length = a3.length;
  location = a3.location;
  v34[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v13 setEntityClass:a1];
  [v13 setPredicate:v11];
  v34[0] = @"slot";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v15 = [v13 selectSQLForProperties:v14];

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ SELECT MIN(value) FROM generate_series WHERE value NOT IN (%@)", @"WITH RECURSIVE generate_series(value) AS (SELECT ? UNION ALL SELECT value+1 FROM generate_series WHERE value+1<=?)", v15];
  v17 = length + location - 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke;
  v24[3] = &unk_2796B9E48;
  v26 = location;
  v27 = v17;
  v18 = v13;
  v25 = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke_2;
  v23[3] = &unk_2796B90A8;
  v23[4] = &v28;
  if ([v12 executeSQL:v16 error:a6 bindingHandler:v24 enumerationHandler:v23])
  {
    v19 = v29[5];
    if (v19)
    {
      v20 = v19;
      goto LABEL_6;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:118 format:{@"No slot is available in range (%ld, %ld) matching predicate %@", location, v17, v11}];
  }

  v20 = 0;
LABEL_6:

  _Block_object_dispose(&v28, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v5 = 3;
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  return [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v5];
}

uint64_t __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x253077B10](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"identifier";
  v5[1] = @"schema_type";
  v5[2] = @"schema_version";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)insertEntry:(uint64_t)a1 database:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOntologyShardRegistryEntity.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"database.isWriter"}];
}

@end