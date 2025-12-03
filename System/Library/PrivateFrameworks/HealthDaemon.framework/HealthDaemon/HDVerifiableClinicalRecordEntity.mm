@interface HDVerifiableClinicalRecordEntity
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDVerifiableClinicalRecordEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[11] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDVerifiableClinicalRecordEntity.m" lineNumber:67 description:{@"Subclasses must override %s", "+[HDVerifiableClinicalRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"record_types";
  v28[2] = @"issued_date";
  v28[3] = @"relevant_date";
  v28[4] = @"expiration_date";
  v28[5] = @"issuer_identifier";
  v28[6] = @"subject";
  v28[7] = @"item_names";
  v28[8] = @"jws_representation";
  v28[9] = @"origin_identifier";
  v28[10] = @"source_type";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__HDVerifiableClinicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __98__HDVerifiableClinicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) recordTypes];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) issuedDate];
  MEMORY[0x22AAC6B50](a2, @"issued_date", v5);

  v6 = [*(a1 + 40) relevantDate];
  MEMORY[0x22AAC6B50](a2, @"relevant_date", v6);

  v7 = [*(a1 + 40) expirationDate];
  MEMORY[0x22AAC6B50](a2, @"expiration_date", v7);

  v8 = [*(a1 + 40) issuerIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"issuer_identifier", v8);

  v9 = [*(a1 + 40) subject];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) itemNames];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) dataRepresentation];
  MEMORY[0x22AAC6B40](a2, @"jws_representation", v11);

  v12 = [*(a1 + 40) originIdentifier];
  MEMORY[0x22AAC6C00](a2, @"origin_identifier", v12);

  v13 = MEMORY[0x277CCDBA8];
  v14 = [*(a1 + 40) sourceType];
  MEMORY[0x22AAC6B90](a2, @"source_type", [v13 _privateSourceTypeForExternalType:v14]);
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDVerifiableClinicalRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end