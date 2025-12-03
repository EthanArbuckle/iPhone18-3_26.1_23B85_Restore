@interface HMBLocalZoneQueryResultRecursiveModelID
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error;
- (HMBLocalZoneQueryResultRecursiveModelID)initWithLocalZone:(id)zone modelID:(id)d;
- (id)nextObject;
@end

@implementation HMBLocalZoneQueryResultRecursiveModelID

- (id)nextObject
{
  while (1)
  {
    v14.receiver = self;
    v14.super_class = HMBLocalZoneQueryResultRecursiveModelID;
    nextObject = [(HMBSQLQueryIterator *)&v14 nextObject];
    if (nextObject)
    {
      break;
    }

    modelStack = [(HMBLocalZoneQueryResultRecursiveModelID *)self modelStack];
    v4 = [modelStack count];

    if (!v4)
    {
      goto LABEL_8;
    }

    modelStack2 = [(HMBLocalZoneQueryResultRecursiveModelID *)self modelStack];
    hmbModelID = [modelStack2 objectAtIndex:0];

    modelStack3 = [(HMBLocalZoneQueryResultRecursiveModelID *)self modelStack];
    [modelStack3 removeObjectAtIndex:0];

    [(HMBLocalZoneQueryResultRecursiveModelID *)self setParentModelID:hmbModelID];
    [(HMBSQLQueryIterator *)self setCurrentSequence:&unk_283EB9DF8];
    [(HMBSQLQueryIterator *)self setCachedResults:0];
LABEL_6:
  }

  v4 = nextObject;
  hmbModelID = [nextObject hmbModelID];
  returnedModels = [(HMBLocalZoneQueryResultRecursiveModelID *)self returnedModels];
  v7 = [returnedModels containsObject:hmbModelID];

  if (v7)
  {

    goto LABEL_6;
  }

  modelStack4 = [(HMBLocalZoneQueryResultRecursiveModelID *)self modelStack];
  [modelStack4 addObject:hmbModelID];

  returnedModels2 = [(HMBLocalZoneQueryResultRecursiveModelID *)self returnedModels];
  [returnedModels2 addObject:hmbModelID];

LABEL_8:

  return v4;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error
{
  zoneRowBindOffset = [(HMBLocalZoneQueryResult *)self zoneRowBindOffset];
  localZone = [(HMBLocalZoneQueryResult *)self localZone];
  hmbBindIntSQLite3(statement, zoneRowBindOffset, [localZone zoneRow], error);

  parentModelIDOffset = [(HMBLocalZoneQueryResultRecursiveModelID *)self parentModelIDOffset];
  parentModelID = [(HMBLocalZoneQueryResultRecursiveModelID *)self parentModelID];
  hmbBindUUIDSQLite3(statement, parentModelIDOffset, parentModelID, error);

  return 1;
}

- (HMBLocalZoneQueryResultRecursiveModelID)initWithLocalZone:(id)zone modelID:(id)d
{
  zoneCopy = zone;
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3999;
  v33 = __Block_byref_object_dispose__4000;
  v34 = 0;
  v8 = [zoneCopy sql];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HMBLocalZoneQueryResultRecursiveModelID_initWithLocalZone_modelID___block_invoke;
  v28[3] = &unk_2786E1A10;
  v28[4] = &v29;
  v9 = [v8 sqlBlockWithActivity:0 block:v28];

  v10 = v30[5];
  v11 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v27.receiver = self;
  v27.super_class = HMBLocalZoneQueryResultRecursiveModelID;
  v12 = [(HMBLocalZoneQueryResult *)&v27 initWithLocalZone:zoneCopy statement:v10 initialSequence:&unk_283EB9DF8 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v11];
  if (!v12)
  {
    goto LABEL_9;
  }

  v26 = 0;
  v13 = [zoneCopy fetchRecordRowWithModelID:dCopy returning:2 error:&v26];
  v14 = v26;
  array = [MEMORY[0x277CBEB18] array];
  [(HMBSQLQueryIterator *)v12 setCachedResults:array];

  if (v13)
  {
    modelID = [v13 modelID];
    parentModelID = v12->_parentModelID;
    v12->_parentModelID = modelID;

    cachedResults = [(HMBSQLQueryIterator *)v12 cachedResults];
    [cachedResults addObject:v13];
  }

  else if (v14)
  {
    [(HMBSQLQueryIterator *)v12 setError:v14];
    goto LABEL_8;
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  modelStack = v12->_modelStack;
  v12->_modelStack = orderedSet;

  v21 = [MEMORY[0x277CBEB58] set];
  returnedModels = v12->_returnedModels;
  v12->_returnedModels = v21;

  arguments = [v30[5] arguments];
  v24 = [arguments hmf_numberForKey:@"_parent_uuid"];

  if (v24)
  {
    v12->_parentModelIDOffset = [v24 intValue];

LABEL_8:
LABEL_9:
    _Block_object_dispose(&v29, 8);

    return v12;
  }

  result = _HMFPreconditionFailure();
  __break(1u);
  return result;
}

uint64_t __69__HMBLocalZoneQueryResultRecursiveModelID_initWithLocalZone_modelID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordParentModelIDRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end