@interface HDCDASampleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
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

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCDASampleEntity.m" lineNumber:74 description:{@"Subclasses must override %s", "+[HDCDASampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  if (![objectCopy prepareForSaving:error])
  {
    v19 = 0;
    goto LABEL_15;
  }

  document = [objectCopy document];
  _compressedDocumentData = [document _compressedDocumentData];
  v18 = _compressedDocumentData;
  if (_compressedDocumentData)
  {
    if ([_compressedDocumentData length] <= 0x300000)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __83__HDCDASampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
      v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v28[4] = self;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __83__HDCDASampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
      v24[3] = &unk_278613528;
      v20 = dCopy;
      v25 = v20;
      v26 = v18;
      v27 = document;
      if ([databaseCopy executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_5 error:error SQLGenerator:v28 bindingHandler:v24 enumerationHandler:0])
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

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Unable to save CDA sample with document data length (%ld) which is greater than maximum allowed data length (%ld)", objc_msgSend(v18, "length"), 3145728}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Unable to save CDA samples without document data."];
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

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addCdaDocumentSamples:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDCDASampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end