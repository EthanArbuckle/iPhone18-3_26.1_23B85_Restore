@interface HMBLocalZoneQueryResultAllOfTypeRaw
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4;
- (HMBLocalZoneQueryResultAllOfTypeRaw)initWithLocalZone:(id)a3 zoneRow:(unint64_t)a4 modelType:(id)a5 returning:(unint64_t)a6;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
@end

@implementation HMBLocalZoneQueryResultAllOfTypeRaw

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v7 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a3 returning:[(HMBLocalZoneQueryResultAllOfTypeRaw *)self returning]];
  *a5 = [(HMBLocalSQLContextRowRecord *)v7 recordRow];

  return v7;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  hmbBindIntSQLite3(a3, [(HMBLocalZoneQueryResultAllOfTypeRaw *)self zoneRowBindOffset], [(HMBLocalZoneQueryResultAllOfTypeRaw *)self zoneRow], a4);
  v7 = [(HMBLocalZoneQueryResultAllOfTypeRaw *)self modelTypeBindOffset];
  v8 = [(HMBLocalZoneQueryResultAllOfTypeRaw *)self modelType];
  hmbBindStringSQLite3(a3, v7, v8, a4);

  return 1;
}

- (HMBLocalZoneQueryResultAllOfTypeRaw)initWithLocalZone:(id)a3 zoneRow:(unint64_t)a4 modelType:(id)a5 returning:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1743;
  v27 = __Block_byref_object_dispose__1744;
  v28 = 0;
  v12 = [v10 sql];
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

  v16 = [v24[5] arguments];
  v17 = [v16 hmf_numberForKey:@"_store_id"];

  if (v17)
  {
    v18 = [v24[5] arguments];
    v19 = [v18 hmf_numberForKey:@"_model_type"];

    if (v19)
    {
      v15->_zoneRowBindOffset = [v17 intValue];
      v15->_modelTypeBindOffset = [v19 intValue];
      objc_storeStrong(&v15->_modelType, a5);
      v15->_zoneRow = a4;
      v15->_returning = a6;

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