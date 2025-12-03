@interface HMBLocalSQLIteratorRowBlock
- (HMBLocalSQLIteratorRowBlock)initWithSQLContext:(id)context zoneRow:(unint64_t)row statement:(id)statement isAscending:(BOOL)ascending;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error;
@end

@implementation HMBLocalSQLIteratorRowBlock

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error
{
  v9 = [HMBLocalSQLContextRowBlock alloc];
  v10 = sqlite3_column_int64(statement, 0);
  v11 = sqlite3_column_int64(statement, 1);
  v12 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:2];
  v13 = [(HMBLocalSQLContextRowBlock *)v9 initWithBlockRow:v10 type:v11 options:v12];

  LODWORD(v12) = [(HMBLocalSQLIteratorRowBlock *)self isAscending];
  *sequence = [(HMBLocalSQLContextRowBlock *)v13 blockRow]- (v12 ^ 1);

  return v13;
}

- (HMBLocalSQLIteratorRowBlock)initWithSQLContext:(id)context zoneRow:(unint64_t)row statement:(id)statement isAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  contextCopy = context;
  statementCopy = statement;
  v12 = &unk_283EB9D80;
  if (ascendingCopy)
  {
    v12 = &unk_283EB9D68;
  }

  v13 = v12;
  v22.receiver = self;
  v22.super_class = HMBLocalSQLIteratorRowBlock;
  v14 = [(HMBSQLQueryIterator *)&v22 initWithStatement:statementCopy initialSequence:v13 maximumRowsPerSelect:+[HMBSQLQueryIterator error:"maximumRowsPerSelect"], 0];
  if (!v14)
  {
    goto LABEL_6;
  }

  arguments = [statementCopy arguments];
  v16 = [arguments hmf_numberForKey:@"_store_id"];

  if (v16)
  {
    v14->_zoneRowBindOffset = [v16 intValue];
    v14->_zoneRow = row;
    v14->_ascending = ascendingCopy;

LABEL_6:
    return v14;
  }

  v18 = _HMFPreconditionFailure();
  return [(HMBLocalSQLIteratorRowInputBlock *)v18 initWithSQLContext:v19 zoneRow:v20, v21];
}

@end