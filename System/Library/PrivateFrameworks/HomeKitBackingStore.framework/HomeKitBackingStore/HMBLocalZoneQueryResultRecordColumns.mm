@interface HMBLocalZoneQueryResultRecordColumns
- (id)fetchRow:(id)a3 error:(id *)a4;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
@end

@implementation HMBLocalZoneQueryResultRecordColumns

- (id)fetchRow:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(HMBLocalZoneQueryResult *)self localZone];
  v10 = [v9 modelFromRecord:v8 storageLocation:2 error:a4];

  return v10;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v7 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a3 returning:2];
  *a5 = [(HMBLocalSQLContextRowRecord *)v7 recordRow];

  return v7;
}

@end