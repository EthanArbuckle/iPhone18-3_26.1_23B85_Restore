@interface HDECGSampleEntity
+ (BOOL)_insertECGWithCodableBinarySample:(id)sample syncStore:(id)store profile:(id)profile provenance:(id)provenance error:(id *)error;
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDECGSampleEntity

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDECGSampleEntity.m" lineNumber:70 description:{@"Subclasses must override %s", "+[HDECGSampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__HDECGSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v25[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__HDECGSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v22[3] = &unk_278613038;
  v23 = dCopy;
  v24 = objectCopy;
  v16 = objectCopy;
  v17 = dCopy;
  if ([databaseCopy executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_6 error:error SQLGenerator:v25 bindingHandler:v22 enumerationHandler:0])
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

id __83__HDECGSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?)", v2, @"data_id", @"private_classification", @"average_heart_rate", @"voltage_payload", @"symptoms_status", 0];

  return v3;
}

uint64_t __83__HDECGSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) privateClassification]);
  v4 = [*(a1 + 40) averageHeartRate];
  if (v4)
  {
    v5 = [*(a1 + 40) averageHeartRate];
    v6 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    [v5 doubleValueForUnit:v6];
    sqlite3_bind_double(a2, 3, v7);
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v8 = [*(a1 + 40) payload];
  v9 = _HDSQLiteValueForData();
  HDSQLiteBindFoundationValueToStatement();

  v10 = [*(a1 + 40) symptomsStatus];

  return sqlite3_bind_int64(a2, 5, v10);
}

+ (BOOL)_insertECGWithCodableBinarySample:(id)sample syncStore:(id)store profile:(id)profile provenance:(id)provenance error:(id *)error
{
  v55[2] = *MEMORY[0x277D85DE8];
  provenanceCopy = provenance;
  profileCopy = profile;
  sampleCopy = sample;
  objc_opt_self();
  v10 = [MEMORY[0x277CCD8A8] createWithCodable:sampleCopy];

  metadata = [v10 metadata];
  v12 = *MEMORY[0x277CCDFD8];
  v13 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCDFD8]];
  [v10 _setPrivateClassification:{objc_msgSend(v13, "integerValue")}];

  metadata2 = [v10 metadata];
  v15 = *MEMORY[0x277CCDFE8];
  v16 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277CCDFE8]];
  [v16 integerValue];

  [v10 _setSymptomsStatus:HKElectrocardiogramSymptomsStatusFromPrivateElectrocardiogramSymptoms()];
  metadata3 = [v10 metadata];
  v18 = *MEMORY[0x277CCDFE0];
  v19 = [metadata3 objectForKeyedSubscript:*MEMORY[0x277CCDFE0]];

  if (v19)
  {
    [v10 _setAverageHeartRate:v19];
  }

  v20 = v10;
  objc_opt_self();
  metadata4 = [v20 metadata];
  v22 = [metadata4 objectForKeyedSubscript:v15];
  if (v22)
  {
    v23 = v22;
    metadata5 = [v20 metadata];
    v25 = [metadata5 objectForKeyedSubscript:v15];
    integerValue = [v25 integerValue];

    if (!integerValue)
    {
      v32 = 0;
      goto LABEL_9;
    }

    metadata6 = [v20 metadata];
    v28 = [metadata6 objectForKeyedSubscript:v15];
    [v28 integerValue];

    v29 = _HKCategoryTypesForSymptomsBitmask();
    v30 = v20;
    metadata4 = v29;
    objc_opt_self();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __66__HDECGSampleEntity__symptomSamplesForSymptomTypes_withValue_ecg___block_invoke;
    v51[3] = &unk_27862F408;
    v52 = v30;
    v53 = 0;
    v31 = v30;
    v32 = [metadata4 hk_map:v51];
  }

  else
  {
    v32 = 0;
  }

LABEL_9:
  v33 = objc_alloc(MEMORY[0x277CBEB38]);
  metadata7 = [v20 metadata];
  v35 = [v33 initWithDictionary:metadata7];

  v55[0] = v12;
  v55[1] = v18;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  [v35 removeObjectsForKeys:v36];

  [v20 _setMetadata:v35];
  v46 = [v32 hk_map:&__block_literal_global_241];
  uUID = [v20 UUID];
  v50 = 0;
  v45 = [HDAssociationEntity associateSampleUUIDs:v46 withSampleUUID:uUID type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v50 profile:profileCopy error:error];
  v38 = v50;

  dataManager = [profileCopy dataManager];

  v54 = v20;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v41 = [v40 arrayByAddingObjectsFromArray:v32];
  _creationDate = [v20 _creationDate];

  [_creationDate timeIntervalSinceReferenceDate];
  LOBYTE(v38) = [dataManager insertDataObjects:v41 withProvenance:provenanceCopy creationDate:error error:?];

  v43 = *MEMORY[0x277D85DE8];
  return v45 & v38;
}

id __66__HDECGSampleEntity__symptomSamplesForSymptomTypes_withValue_ecg___block_invoke(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD0B0];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 startDate];
  v8 = [*(a1 + 32) endDate];
  v9 = [*(a1 + 32) device];
  v10 = [*(a1 + 32) metadata];
  v11 = [v3 categorySampleWithType:v6 value:v4 startDate:v7 endDate:v8 device:v9 metadata:v10];

  v12 = [*(a1 + 32) _creationDate];
  [v11 _setCreationDate:v12];

  v13 = [*(a1 + 32) sourceRevision];
  [v11 _setSourceRevision:v13];

  v21[0] = 0;
  v21[1] = 0;
  v14 = [*(a1 + 32) UUID];
  [v14 getUUIDBytes:v21];

  v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v21 length:16];
  LOBYTE(v13) = [v6 code];

  v20 = v13;
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v20 length:1];
  v17 = [MEMORY[0x277CCAD78] hk_v3UUIDWithNameSpace:v15 name:v16];
  [v11 _setUUID:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addEcgSamples:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDECGSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end