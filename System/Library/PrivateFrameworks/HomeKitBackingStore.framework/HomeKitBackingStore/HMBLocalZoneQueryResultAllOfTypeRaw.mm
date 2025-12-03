@interface HMBLocalZoneQueryResultAllOfTypeRaw
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error;
- (HMBLocalZoneQueryResultAllOfTypeRaw)initWithLocalZone:(id)zone zoneRow:(unint64_t)row modelType:(id)type returning:(unint64_t)returning;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error;
@end

@implementation HMBLocalZoneQueryResultAllOfTypeRaw

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error
{
  v7 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:statement returning:[(HMBLocalZoneQueryResultAllOfTypeRaw *)self returning]];
  *sequence = [(HMBLocalSQLContextRowRecord *)v7 recordRow];

  return v7;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error
{
  hmbBindIntSQLite3(statement, [(HMBLocalZoneQueryResultAllOfTypeRaw *)self zoneRowBindOffset], [(HMBLocalZoneQueryResultAllOfTypeRaw *)self zoneRow], error);
  modelTypeBindOffset = [(HMBLocalZoneQueryResultAllOfTypeRaw *)self modelTypeBindOffset];
  modelType = [(HMBLocalZoneQueryResultAllOfTypeRaw *)self modelType];
  hmbBindStringSQLite3(statement, modelTypeBindOffset, modelType, error);

  return 1;
}

- (HMBLocalZoneQueryResultAllOfTypeRaw)initWithLocalZone:(id)zone zoneRow:(unint64_t)row modelType:(id)type returning:(unint64_t)returning
{
  zoneCopy = zone;
  typeCopy = type;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1743;
  v27 = __Block_byref_object_dispose__1744;
  v28 = 0;
  v12 = [zoneCopy sql];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__HMBLocalZoneQueryResultAllOfTypeRaw_initWithLocalZone_zoneRow_modelType_returning___block_invoke;
  v22[3] = &unk_2786E1A10;
  v22[4] = &v23;
  v13 = [v12 sqlBlockWithActivity:0 block:v22];

  v14 = v24[5];
  v21.receiver = self;
  v21.super_class = HMBLocalZoneQueryResultAllOfTypeRaw;
  v15 = [(HMBSQLQueryIterator *)&v21 initWithStatement:v14 initialSequence:&unk_283EB9D98 maximumRowsPerSelect:+[HMBSQLQueryIterator error:"maximumRowsPerSelect"], 0];
  if (!v15)
  {
    goto LABEL_5;
  }

  arguments = [v24[5] arguments];
  v17 = [arguments hmf_numberForKey:@"_store_id"];

  if (v17)
  {
    arguments2 = [v24[5] arguments];
    v19 = [arguments2 hmf_numberForKey:@"_model_type"];

    if (v19)
    {
      v15->_zoneRowBindOffset = [v17 intValue];
      v15->_modelTypeBindOffset = [v19 intValue];
      objc_storeStrong(&v15->_modelType, type);
      v15->_zoneRow = row;
      v15->_returning = returning;

LABEL_5:
      _Block_object_dispose(&v23, 8);

      return v15;
    }
  }

  result = _HMFPreconditionFailure();
  __break(1u);
  return result;
}

uint64_t __85__HMBLocalZoneQueryResultAllOfTypeRaw_initWithLocalZone_zoneRow_modelType_returning___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordTypeRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end