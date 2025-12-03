@interface HMBLocalSQLContextRowItem
- (HMBLocalSQLContextRowItem)initWithItemRow:(unint64_t)row externalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData;
- (HMBLocalSQLContextRowItem)initWithStatement:(sqlite3_stmt *)statement returning:(unint64_t)returning;
- (id)description;
@end

@implementation HMBLocalSQLContextRowItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  itemRow = [(HMBLocalSQLContextRowItem *)self itemRow];
  externalID = [(HMBLocalSQLContextRowItem *)self externalID];
  hmbDescription = [externalID hmbDescription];
  externalData = [(HMBLocalSQLContextRowItem *)self externalData];
  hmbDescription2 = [externalData hmbDescription];
  modelEncoding = [(HMBLocalSQLContextRowItem *)self modelEncoding];
  modelData = [(HMBLocalSQLContextRowItem *)self modelData];
  hmbDescription3 = [modelData hmbDescription];
  v12 = [v3 stringWithFormat:@"<RowItem: %lu  eid: %@  ed: %@  encoding: %lu data: %@>", itemRow, hmbDescription, hmbDescription2, modelEncoding, hmbDescription3];

  return v12;
}

- (HMBLocalSQLContextRowItem)initWithStatement:(sqlite3_stmt *)statement returning:(unint64_t)returning
{
  returningCopy = returning;
  v7 = sqlite3_column_int64(statement, 0);
  if (returningCopy)
  {
    v9 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:1];
    v8 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:2];
    if ((returningCopy & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  if ((returningCopy & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sqlite3_column_int64(statement, 3);
  v11 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:4];
LABEL_6:
  v12 = [(HMBLocalSQLContextRowItem *)self initWithItemRow:v7 externalID:v9 externalData:v8 modelEncoding:v10 modelData:v11];

  return v12;
}

- (HMBLocalSQLContextRowItem)initWithItemRow:(unint64_t)row externalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData
{
  dCopy = d;
  dataCopy = data;
  modelDataCopy = modelData;
  v19.receiver = self;
  v19.super_class = HMBLocalSQLContextRowItem;
  v16 = [(HMBLocalSQLContextRowItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_itemRow = row;
    objc_storeStrong(&v16->_modelData, modelData);
    v17->_modelEncoding = encoding;
    objc_storeStrong(&v17->_externalID, d);
    objc_storeStrong(&v17->_externalData, data);
  }

  return v17;
}

@end