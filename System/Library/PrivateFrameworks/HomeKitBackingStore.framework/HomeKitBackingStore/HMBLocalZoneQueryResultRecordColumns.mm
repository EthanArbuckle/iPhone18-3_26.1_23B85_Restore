@interface HMBLocalZoneQueryResultRecordColumns
- (id)fetchRow:(id)row error:(id *)error;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error;
@end

@implementation HMBLocalZoneQueryResultRecordColumns

- (id)fetchRow:(id)row error:(id *)error
{
  rowCopy = row;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = rowCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  localZone = [(HMBLocalZoneQueryResult *)self localZone];
  v10 = [localZone modelFromRecord:v8 storageLocation:2 error:error];

  return v10;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error
{
  v7 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:statement returning:2];
  *sequence = [(HMBLocalSQLContextRowRecord *)v7 recordRow];

  return v7;
}

@end