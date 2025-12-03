@interface HMBLocalZoneQueryResultRecordID
- (id)fetchRow:(id)row error:(id *)error;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error;
@end

@implementation HMBLocalZoneQueryResultRecordID

- (id)fetchRow:(id)row error:(id *)error
{
  rowCopy = row;
  localZone = [(HMBLocalZoneQueryResult *)self localZone];
  unsignedIntegerValue = [rowCopy unsignedIntegerValue];

  v9 = [localZone fetchModelWithRecordRow:unsignedIntegerValue error:error];

  return v9;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error
{
  v7 = sqlite3_column_int64(statement, 0);
  *sequence = v7;
  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithUnsignedInteger:v7];
}

@end