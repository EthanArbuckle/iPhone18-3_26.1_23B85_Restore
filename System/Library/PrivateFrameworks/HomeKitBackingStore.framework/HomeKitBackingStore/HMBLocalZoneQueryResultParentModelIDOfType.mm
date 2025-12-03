@interface HMBLocalZoneQueryResultParentModelIDOfType
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error;
- (HMBLocalZoneQueryResultParentModelIDOfType)initWithLocalZone:(id)zone parentModelID:(id)d modelClassName:(id)name;
@end

@implementation HMBLocalZoneQueryResultParentModelIDOfType

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error
{
  zoneRowBindOffset = [(HMBLocalZoneQueryResult *)self zoneRowBindOffset];
  localZone = [(HMBLocalZoneQueryResult *)self localZone];
  hmbBindIntSQLite3(statement, zoneRowBindOffset, [localZone zoneRow], error);

  parentModelIDOffset = [(HMBLocalZoneQueryResultParentModelIDOfType *)self parentModelIDOffset];
  parentModelID = [(HMBLocalZoneQueryResultParentModelIDOfType *)self parentModelID];
  hmbBindUUIDSQLite3(statement, parentModelIDOffset, parentModelID, error);

  modelClassNameOffset = [(HMBLocalZoneQueryResultParentModelIDOfType *)self modelClassNameOffset];
  modelClassName = [(HMBLocalZoneQueryResultParentModelIDOfType *)self modelClassName];
  hmbBindStringSQLite3(statement, modelClassNameOffset, modelClassName, error);

  return 1;
}

- (HMBLocalZoneQueryResultParentModelIDOfType)initWithLocalZone:(id)zone parentModelID:(id)d modelClassName:(id)name
{
  zoneCopy = zone;
  dCopy = d;
  nameCopy = name;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3999;
  v31 = __Block_byref_object_dispose__4000;
  v32 = 0;
  v11 = [zoneCopy sql];
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
  v15 = [(HMBLocalZoneQueryResult *)&v25 initWithLocalZone:zoneCopy statement:v13 initialSequence:&unk_283EB9DF8 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v14];
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = [dCopy copy];
  parentModelID = v15->_parentModelID;
  v15->_parentModelID = v16;

  arguments = [v28[5] arguments];
  v19 = [arguments hmf_numberForKey:@"_parent_uuid"];

  if (v19)
  {
    v15->_parentModelIDOffset = [v19 intValue];
    v20 = [nameCopy copy];
    modelClassName = v15->_modelClassName;
    v15->_modelClassName = v20;

    arguments2 = [v28[5] arguments];
    v23 = [arguments2 hmf_numberForKey:@"_type"];

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