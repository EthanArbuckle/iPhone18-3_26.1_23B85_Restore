@interface HMBLocalSQLIteratorRowBlock
- (HMBLocalSQLIteratorRowBlock)initWithSQLContext:(id)a3 zoneRow:(unint64_t)a4 statement:(id)a5 isAscending:(BOOL)a6;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
@end

@implementation HMBLocalSQLIteratorRowBlock

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v9 = [HMBLocalSQLContextRowBlock alloc];
  v10 = sqlite3_column_int64(a3, 0);
  v11 = sqlite3_column_int64(a3, 1);
  v12 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:2];
  v13 = [(HMBLocalSQLContextRowBlock *)v9 initWithBlockRow:v10 type:v11 options:v12];

  LODWORD(v12) = [(HMBLocalSQLIteratorRowBlock *)self isAscending];
  *a5 = [(HMBLocalSQLContextRowBlock *)v13 blockRow]- (v12 ^ 1);

  return v13;
}

- (HMBLocalSQLIteratorRowBlock)initWithSQLContext:(id)a3 zoneRow:(unint64_t)a4 statement:(id)a5 isAscending:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = &unk_283EB9D80;
  if (v6)
  {
    v12 = &unk_283EB9D68;
  }

  v13 = v12;
  v22.receiver = self;
  v22.super_class = HMBLocalSQLIteratorRowBlock;
  v14 = [(HMBSQLQueryIterator *)&v22 initWithStatement:v11 initialSequence:v13 maximumRowsPerSelect:+[HMBSQLQueryIterator error:"maximumRowsPerSelect"], 0];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [v11 arguments];
  v16 = [v15 hmf_numberForKey:@"_store_id"];

  if (v16)
  {
    v14->_zoneRowBindOffset = [v16 intValue];
    v14->_zoneRow = a4;
    v14->_ascending = v6;

LABEL_6:
    return v14;
  }

  v18 = _HMFPreconditionFailure();
  return [(HMBLocalSQLIteratorRowInputBlock *)v18 initWithSQLContext:v19 zoneRow:v20, v21];
}

@end