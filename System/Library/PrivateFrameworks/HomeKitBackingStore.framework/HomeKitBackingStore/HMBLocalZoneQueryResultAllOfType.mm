@interface HMBLocalZoneQueryResultAllOfType
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4;
- (HMBLocalZoneQueryResultAllOfType)initWithLocalZone:(id)a3 modelClassName:(id)a4;
@end

@implementation HMBLocalZoneQueryResultAllOfType

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  v7 = [(HMBLocalZoneQueryResult *)self zoneRowBindOffset];
  v8 = [(HMBLocalZoneQueryResult *)self localZone];
  hmbBindIntSQLite3(a3, v7, [v8 zoneRow], a4);

  v9 = [(HMBLocalZoneQueryResultAllOfType *)self modelClassNameOffset];
  v10 = [(HMBLocalZoneQueryResultAllOfType *)self modelClassName];
  hmbBindStringSQLite3(a3, v9, v10, a4);

  return 1;
}

- (HMBLocalZoneQueryResultAllOfType)initWithLocalZone:(id)a3 modelClassName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3999;
  v23 = __Block_byref_object_dispose__4000;
  v24 = 0;
  v8 = [v6 sql];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HMBLocalZoneQueryResultAllOfType_initWithLocalZone_modelClassName___block_invoke;
  v18[3] = &unk_2786E1A10;
  v18[4] = &v19;
  v9 = [v8 sqlBlockWithActivity:0 block:v18];

  v10 = v20[5];
  v11 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v17.receiver = self;
  v17.super_class = HMBLocalZoneQueryResultAllOfType;
  v12 = [(HMBLocalZoneQueryResult *)&v17 initWithLocalZone:v6 statement:v10 initialSequence:&unk_283EB9DF8 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v11];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v12->_modelClassName, a4);
  v14 = [v20[5] arguments];
  v15 = [v14 hmf_numberForKey:@"_model_type"];

  if (v15)
  {
    v13->_modelClassNameOffset = [v15 intValue];

LABEL_4:
    _Block_object_dispose(&v19, 8);

    return v13;
  }

  result = _HMFPreconditionFailure();
  __break(1u);
  return result;
}

uint64_t __69__HMBLocalZoneQueryResultAllOfType_initWithLocalZone_modelClassName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordTypeRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end