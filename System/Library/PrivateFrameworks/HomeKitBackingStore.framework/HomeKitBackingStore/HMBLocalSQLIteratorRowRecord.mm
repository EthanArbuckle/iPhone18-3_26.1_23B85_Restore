@interface HMBLocalSQLIteratorRowRecord
- (HMBLocalSQLIteratorRowRecord)initWithSQLContext:(id)a3 zoneRow:(unint64_t)a4 returning:(unint64_t)a5;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
@end

@implementation HMBLocalSQLIteratorRowRecord

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v7 = [[HMBLocalSQLContextRowRecord alloc] initWithStatement:a3 returning:[(HMBLocalSQLIteratorRowRecord *)self returning]];
  *a5 = [(HMBLocalSQLContextRowRecord *)v7 recordRow];

  return v7;
}

- (HMBLocalSQLIteratorRowRecord)initWithSQLContext:(id)a3 zoneRow:(unint64_t)a4 returning:(unint64_t)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5419;
  v21 = __Block_byref_object_dispose__5420;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HMBLocalSQLIteratorRowRecord_initWithSQLContext_zoneRow_returning___block_invoke;
  v16[3] = &unk_2786E1A10;
  v16[4] = &v17;
  v9 = [v8 sqlBlockWithActivity:0 block:v16];
  v10 = v18[5];
  v15.receiver = self;
  v15.super_class = HMBLocalSQLIteratorRowRecord;
  v11 = [(HMBSQLQueryIterator *)&v15 initWithStatement:v10 initialSequence:&unk_283EB9E58 maximumRowsPerSelect:+[HMBSQLQueryIterator error:"maximumRowsPerSelect"], 0];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = [v18[5] arguments];
  v13 = [v12 hmf_numberForKey:@"_store_id"];

  if (v13)
  {
    v11->_zoneRowBindOffset = [v13 intValue];
    v11->_zoneRow = a4;
    v11->_returning = a5;

LABEL_4:
    _Block_object_dispose(&v17, 8);

    return v11;
  }

  result = _HMFPreconditionFailure();
  __break(1u);
  return result;
}

uint64_t __69__HMBLocalSQLIteratorRowRecord_initWithSQLContext_zoneRow_returning___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end