@interface HMBLocalZoneQueryResultParentModelIDOfType
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4;
- (HMBLocalZoneQueryResultParentModelIDOfType)initWithLocalZone:(id)a3 parentModelID:(id)a4 modelClassName:(id)a5;
@end

@implementation HMBLocalZoneQueryResultParentModelIDOfType

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  v7 = [(HMBLocalZoneQueryResult *)self zoneRowBindOffset];
  v8 = [(HMBLocalZoneQueryResult *)self localZone];
  hmbBindIntSQLite3(a3, v7, [v8 zoneRow], a4);

  v9 = [(HMBLocalZoneQueryResultParentModelIDOfType *)self parentModelIDOffset];
  v10 = [(HMBLocalZoneQueryResultParentModelIDOfType *)self parentModelID];
  hmbBindUUIDSQLite3(a3, v9, v10, a4);

  v11 = [(HMBLocalZoneQueryResultParentModelIDOfType *)self modelClassNameOffset];
  v12 = [(HMBLocalZoneQueryResultParentModelIDOfType *)self modelClassName];
  hmbBindStringSQLite3(a3, v11, v12, a4);

  return 1;
}

- (HMBLocalZoneQueryResultParentModelIDOfType)initWithLocalZone:(id)a3 parentModelID:(id)a4 modelClassName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3999;
  v31 = __Block_byref_object_dispose__4000;
  v32 = 0;
  v11 = [v8 sql];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__HMBLocalZoneQueryResultParentModelIDOfType_initWithLocalZone_parentModelID_modelClassName___block_invoke;
  v26[3] = &unk_2786E1A10;
  v26[4] = &v27;
  v12 = [v11 sqlBlockWithActivity:0 block:v26];

  v13 = v28[5];
  v14 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v25.receiver = self;
  v25.super_class = HMBLocalZoneQueryResultParentModelIDOfType;
  v15 = [(HMBLocalZoneQueryResult *)&v25 initWithLocalZone:v8 statement:v13 initialSequence:&unk_283EB9DF8 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v14];
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = [v9 copy];
  parentModelID = v15->_parentModelID;
  v15->_parentModelID = v16;

  v18 = [v28[5] arguments];
  v19 = [v18 hmf_numberForKey:@"_parent_uuid"];

  if (v19)
  {
    v15->_parentModelIDOffset = [v19 intValue];
    v20 = [v10 copy];
    modelClassName = v15->_modelClassName;
    v15->_modelClassName = v20;

    v22 = [v28[5] arguments];
    v23 = [v22 hmf_numberForKey:@"_type"];

    if (v23)
    {
      v15->_modelClassNameOffset = [v23 intValue];

LABEL_5:
      _Block_object_dispose(&v27, 8);

      return v15;
    }
  }

  result = _HMFPreconditionFailure();
  __break(1u);
  return result;
}

uint64_t __93__HMBLocalZoneQueryResultParentModelIDOfType_initWithLocalZone_parentModelID_modelClassName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordParentModelIDTypeRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end