@interface HMBLocalSQLContextRowItem
- (HMBLocalSQLContextRowItem)initWithItemRow:(unint64_t)a3 externalID:(id)a4 externalData:(id)a5 modelEncoding:(unint64_t)a6 modelData:(id)a7;
- (HMBLocalSQLContextRowItem)initWithStatement:(sqlite3_stmt *)a3 returning:(unint64_t)a4;
- (id)description;
@end

@implementation HMBLocalSQLContextRowItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBLocalSQLContextRowItem *)self itemRow];
  v5 = [(HMBLocalSQLContextRowItem *)self externalID];
  v6 = [v5 hmbDescription];
  v7 = [(HMBLocalSQLContextRowItem *)self externalData];
  v8 = [v7 hmbDescription];
  v9 = [(HMBLocalSQLContextRowItem *)self modelEncoding];
  v10 = [(HMBLocalSQLContextRowItem *)self modelData];
  v11 = [v10 hmbDescription];
  v12 = [v3 stringWithFormat:@"<RowItem: %lu  eid: %@  ed: %@  encoding: %lu data: %@>", v4, v6, v8, v9, v11];

  return v12;
}

- (HMBLocalSQLContextRowItem)initWithStatement:(sqlite3_stmt *)a3 returning:(unint64_t)a4
{
  v4 = a4;
  v7 = sqlite3_column_int64(a3, 0);
  if (v4)
  {
    v9 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:1];
    v8 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:2];
    if ((v4 & 2) != 0)
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
  if ((v4 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sqlite3_column_int64(a3, 3);
  v11 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:4];
LABEL_6:
  v12 = [(HMBLocalSQLContextRowItem *)self initWithItemRow:v7 externalID:v9 externalData:v8 modelEncoding:v10 modelData:v11];

  return v12;
}

- (HMBLocalSQLContextRowItem)initWithItemRow:(unint64_t)a3 externalID:(id)a4 externalData:(id)a5 modelEncoding:(unint64_t)a6 modelData:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = HMBLocalSQLContextRowItem;
  v16 = [(HMBLocalSQLContextRowItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_itemRow = a3;
    objc_storeStrong(&v16->_modelData, a7);
    v17->_modelEncoding = a6;
    objc_storeStrong(&v17->_externalID, a4);
    objc_storeStrong(&v17->_externalData, a5);
  }

  return v17;
}

@end