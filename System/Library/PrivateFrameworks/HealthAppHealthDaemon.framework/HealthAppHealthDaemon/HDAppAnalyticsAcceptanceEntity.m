@interface HDAppAnalyticsAcceptanceEntity
+ (BOOL)deleteAcceptanceForAgreement:(id)a3 version:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)deleteAcceptancesForAgreement:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)setAcceptance:(BOOL)a3 agreement:(id)a4 version:(int64_t)a5 modificationDate:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)acceptanceForAgreement:(id)a3 version:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (id)acceptancesForAgreement:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)allAcceptancesInTransaction:(id)a3 error:(id *)a4;
+ (id)uniquedColumns;
@end

@implementation HDAppAnalyticsAcceptanceEntity

+ (id)acceptanceForAgreement:(id)a3 version:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v12 = [v11 databaseForEntityClass:a1];
  v13 = MEMORY[0x277CCACA8];
  v14 = [a1 disambiguatedDatabaseTable];
  v15 = [v13 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ == ? AND %@ == ?", @"accepted", @"modification_date", v14, @"agreement", @"version"];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__HDAppAnalyticsAcceptanceEntity_acceptanceForAgreement_version_transaction_error___block_invoke;
  v24[3] = &unk_278658250;
  v25 = v10;
  v26 = a4;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__HDAppAnalyticsAcceptanceEntity_acceptanceForAgreement_version_transaction_error___block_invoke_2;
  v20[3] = &unk_278658278;
  v22 = &v27;
  v16 = v25;
  v21 = v16;
  v23 = a4;
  if ([v12 executeSQL:v15 error:a6 bindingHandler:v24 enumerationHandler:v20])
  {
    v17 = v28[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v27, 8);

  return v18;
}

uint64_t __83__HDAppAnalyticsAcceptanceEntity_acceptanceForAgreement_version_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __83__HDAppAnalyticsAcceptanceEntity_acceptanceForAgreement_version_transaction_error___block_invoke_2(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x22AACA570](a2, 0);
  v5 = MEMORY[0x22AACA580](a2, 1);
  v6 = objc_alloc(MEMORY[0x277D0FD50]);
  v7 = a1[4];
  v8 = a1[6];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
  v10 = [v6 initForAgreement:v7 version:v8 accepted:v4 modificationDate:v9];
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return 1;
}

+ (id)acceptancesForAgreement:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB18];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [v10 databaseForEntityClass:a1];

  v13 = MEMORY[0x277CCACA8];
  v14 = [a1 disambiguatedDatabaseTable];
  v15 = [v13 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ == ? ORDER BY %@ ASC", @"accepted", @"version", @"modification_date", v14, @"agreement", @"version"];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__HDAppAnalyticsAcceptanceEntity_acceptancesForAgreement_transaction_error___block_invoke;
  v24[3] = &unk_2786582A0;
  v25 = v8;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__HDAppAnalyticsAcceptanceEntity_acceptancesForAgreement_transaction_error___block_invoke_2;
  v21[3] = &unk_2786582C8;
  v22 = v11;
  v23 = v25;
  v16 = v25;
  v17 = v11;
  if ([v12 executeSQL:v15 error:a5 bindingHandler:v24 enumerationHandler:v21])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

uint64_t __76__HDAppAnalyticsAcceptanceEntity_acceptancesForAgreement_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AACA570](a2, 0);
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AACA580](a2, 2);
  v7 = *(a1 + 32);
  v8 = objc_alloc(MEMORY[0x277D0FD50]);
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  v11 = [v8 initForAgreement:v9 version:v5 accepted:v4 modificationDate:v10];
  [v7 addObject:v11];

  return 1;
}

+ (id)allAcceptancesInTransaction:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 databaseForEntityClass:a1];

  v10 = MEMORY[0x277CCACA8];
  v11 = [a1 disambiguatedDatabaseTable];
  v12 = [v10 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ ORDER BY %@ ASC, %@ ASC", @"agreement", @"accepted", @"version", @"modification_date", v11, @"agreement", @"version"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDAppAnalyticsAcceptanceEntity_allAcceptancesInTransaction_error___block_invoke;
  v17[3] = &unk_2786582F0;
  v18 = v8;
  v13 = v8;
  if ([v9 executeSQL:v12 error:a4 bindingHandler:0 enumerationHandler:v17])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

uint64_t __68__HDAppAnalyticsAcceptanceEntity_allAcceptancesInTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AACA5A0](a2, 0);
  v5 = MEMORY[0x22AACA570](a2, 1);
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AACA580](a2, 3);
  v8 = objc_alloc(MEMORY[0x277D0FD50]);
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
  v10 = [v8 initForAgreement:v4 version:v6 accepted:v5 modificationDate:v9];

  v11 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v4];
  }

  [v11 addObject:v10];

  return 1;
}

+ (BOOL)setAcceptance:(BOOL)a3 agreement:(id)a4 version:(int64_t)a5 modificationDate:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277CCACA8];
  v17 = [a1 disambiguatedDatabaseTable];
  v18 = [v16 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ == ? AND %@ == ?", @"modification_date", v17, @"agreement", @"version"];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v19 = [v15 databaseForEntityClass:a1];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __101__HDAppAnalyticsAcceptanceEntity_setAcceptance_agreement_version_modificationDate_transaction_error___block_invoke;
  v37[3] = &unk_278658250;
  v20 = v13;
  v38 = v20;
  v39 = a5;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __101__HDAppAnalyticsAcceptanceEntity_setAcceptance_agreement_version_modificationDate_transaction_error___block_invoke_2;
  v33[3] = &unk_278658318;
  v35 = v40;
  v21 = v14;
  v34 = v21;
  v36 = &v42;
  if ([v19 executeSQL:v18 error:a8 bindingHandler:v37 enumerationHandler:v33])
  {
    if (v43[3])
    {
      v22 = 1;
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [a1 disambiguatedDatabaseTable];
      v25 = [v23 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@) VALUES (?, ?, ?, ?)", v24, @"agreement", @"version", @"accepted", @"modification_date"];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __101__HDAppAnalyticsAcceptanceEntity_setAcceptance_agreement_version_modificationDate_transaction_error___block_invoke_3;
      v28[3] = &unk_278658340;
      v29 = v20;
      v31 = a5;
      v32 = a3;
      v30 = v21;
      v22 = [v19 executeSQL:v25 error:a8 bindingHandler:v28 enumerationHandler:0];
    }
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);

  return v22;
}

uint64_t __101__HDAppAnalyticsAcceptanceEntity_setAcceptance_agreement_version_modificationDate_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __101__HDAppAnalyticsAcceptanceEntity_setAcceptance_agreement_version_modificationDate_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = MEMORY[0x22AACA580](a2, 0);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v3 > v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t __101__HDAppAnalyticsAcceptanceEntity_setAcceptance_agreement_version_modificationDate_transaction_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  sqlite3_bind_int(a2, 3, *(a1 + 56));
  v5 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)deleteAcceptanceForAgreement:(id)a3 version:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a5 databaseForEntityClass:a1];
  v12 = MEMORY[0x277CCACA8];
  v13 = [a1 disambiguatedDatabaseTable];
  v14 = [v12 stringWithFormat:@"DELETE FROM %@ WHERE %@ == ? AND %@ == ?", v13, @"agreement", @"version"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HDAppAnalyticsAcceptanceEntity_deleteAcceptanceForAgreement_version_transaction_error___block_invoke;
  v17[3] = &unk_278658250;
  v18 = v10;
  v19 = a4;
  v15 = v10;
  LOBYTE(a6) = [v11 executeSQL:v14 error:a6 bindingHandler:v17 enumerationHandler:0];

  return a6;
}

uint64_t __89__HDAppAnalyticsAcceptanceEntity_deleteAcceptanceForAgreement_version_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (BOOL)deleteAcceptancesForAgreement:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = MEMORY[0x277CCACA8];
  v11 = [a1 disambiguatedDatabaseTable];
  v12 = [v10 stringWithFormat:@"DELETE FROM %@ WHERE %@ == ?", v11, @"agreement"];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDAppAnalyticsAcceptanceEntity_deleteAcceptancesForAgreement_transaction_error___block_invoke;
  v15[3] = &unk_2786582A0;
  v16 = v8;
  v13 = v8;
  LOBYTE(a5) = [v9 executeSQL:v12 error:a5 bindingHandler:v15 enumerationHandler:0];

  return a5;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"agreement";
  v5[1] = @"version";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end