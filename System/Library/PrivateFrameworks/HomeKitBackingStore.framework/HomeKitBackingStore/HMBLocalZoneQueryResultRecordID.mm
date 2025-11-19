@interface HMBLocalZoneQueryResultRecordID
- (id)fetchRow:(id)a3 error:(id *)a4;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
@end

@implementation HMBLocalZoneQueryResultRecordID

- (id)fetchRow:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMBLocalZoneQueryResult *)self localZone];
  v8 = [v6 unsignedIntegerValue];

  v9 = [v7 fetchModelWithRecordRow:v8 error:a4];

  return v9;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v7 = sqlite3_column_int64(a3, 0);
  *a5 = v7;
  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithUnsignedInteger:v7];
}

@end