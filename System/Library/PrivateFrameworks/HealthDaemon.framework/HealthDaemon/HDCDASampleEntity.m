@interface HDCDASampleEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDCDASampleEntity

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

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"HDCDASampleEntity.m" lineNumber:74 description:{@"Subclasses must override %s", "+[HDCDASampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  if (![v12 prepareForSaving:a7])
  {
    v19 = 0;
    goto LABEL_15;
  }

  v16 = [v12 document];
  v17 = [v16 _compressedDocumentData];
  v18 = v17;
  if (v17)
  {
    if ([v17 length] <= 0x300000)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __83__HDCDASampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
      v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v28[4] = a1;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __83__HDCDASampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
      v24[3] = &unk_278613528;
      v20 = v14;
      v25 = v20;
      v26 = v18;
      v27 = v16;
      if ([v13 executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_5 error:a7 SQLGenerator:v28 bindingHandler:v24 enumerationHandler:0])
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v19 = v21;

      goto LABEL_14;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:3 format:{@"Unable to save CDA sample with document data length (%ld) which is greater than maximum allowed data length (%ld)", objc_msgSend(v18, "length"), 3145728}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:3 description:@"Unable to save CDA samples without document data."];
  }

  v19 = 0;
LABEL_14:

LABEL_15:

  return v19;
}

id __83__HDCDASampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?)", v2, @"data_id", @"document_data", @"title", @"patient_name", @"author_name", @"custodian_name", 0];

  return v3;
}

void __83__HDCDASampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  v3 = *(a1 + 40);
  v4 = _HDSQLiteValueForData();
  HDSQLiteBindFoundationValueToStatement();

  v5 = [*(a1 + 48) title];
  v6 = _HDSQLiteValueForString();
  HDSQLiteBindFoundationValueToStatement();

  v7 = [*(a1 + 48) patientName];
  v8 = _HDSQLiteValueForString();
  HDSQLiteBindFoundationValueToStatement();

  v9 = [*(a1 + 48) authorName];
  v10 = _HDSQLiteValueForString();
  HDSQLiteBindFoundationValueToStatement();

  v12 = [*(a1 + 48) custodianName];
  v11 = _HDSQLiteValueForString();
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addCdaDocumentSamples:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDCDASampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end