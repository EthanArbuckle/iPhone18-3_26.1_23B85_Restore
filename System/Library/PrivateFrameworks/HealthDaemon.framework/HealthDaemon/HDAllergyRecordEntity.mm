@interface HDAllergyRecordEntity
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDAllergyRecordEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[12] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAllergyRecordEntity.m" lineNumber:71 description:{@"Subclasses must override %s", "+[HDAllergyRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"allergy_coding_collection";
  v28[2] = @"onset_date";
  v28[3] = @"asserter";
  v28[4] = @"reactions";
  v28[5] = @"criticality_coding";
  v28[6] = @"last_occurrence_date";
  v28[7] = @"recorded_date";
  v28[8] = @"verification_status_coding";
  v28[9] = @"clinical_status_coding";
  v28[10] = @"allergy_type_coding";
  v28[11] = @"category_coding";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__HDAllergyRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &unk_278613DE8;
  v26 = dCopy;
  v27 = objectCopy;
  v17 = objectCopy;
  v18 = dCopy;
  v19 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v25];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __87__HDAllergyRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) allergyCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) onsetDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v6 = [*(a1 + 40) asserter];
  MEMORY[0x22AAC6BD0](a2, @"asserter", v6);

  v7 = [*(a1 + 40) reactions];
  HDSQLiteBindSecureCodingObjectToProperty();

  v8 = [*(a1 + 40) criticalityCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v9 = [*(a1 + 40) lastOccurrenceDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) recordedDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) verificationStatusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) clinicalStatusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) allergyTypeCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v14 = [*(a1 + 40) categoryCoding];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDAllergyRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end