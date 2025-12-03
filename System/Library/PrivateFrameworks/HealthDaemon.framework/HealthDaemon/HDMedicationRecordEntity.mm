@interface HDMedicationRecordEntity
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDMedicationRecordEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[13] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDMedicationRecordEntity.m" lineNumber:73 description:{@"Subclasses must override %s", "+[HDMedicationRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"medication_coding_collection";
  v28[2] = @"assertion_type";
  v28[3] = @"asserter";
  v28[4] = @"assertion_date";
  v28[5] = @"status_coding";
  v28[6] = @"dosages";
  v28[7] = @"earliest_dosage_date";
  v28[8] = @"reason_for_use_coding_collections";
  v28[9] = @"not_taken";
  v28[10] = @"reasons_not_taken_coding_collections";
  v28[11] = @"effective_start_date";
  v28[12] = @"effective_end_date";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:13];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __90__HDMedicationRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __90__HDMedicationRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) medicationCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x22AAC6B90](a2, @"assertion_type", [*(a1 + 40) assertionType]);
  v5 = [*(a1 + 40) asserter];
  MEMORY[0x22AAC6BD0](a2, @"asserter", v5);

  v6 = [*(a1 + 40) assertionDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v7 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v8 = [*(a1 + 40) dosages];
  HDSQLiteBindSecureCodingObjectToProperty();

  v9 = [*(a1 + 40) earliestDosageDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) reasonForUseCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x22AAC6B30](a2, @"not_taken", [*(a1 + 40) notTaken]);
  v11 = [*(a1 + 40) reasonsNotTakenCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) effectiveStartDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) effectiveEndDate];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDMedicationRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end