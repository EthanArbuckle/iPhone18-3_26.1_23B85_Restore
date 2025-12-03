@interface HMBLocalSQLContextQueryIndex
- (HMBLocalSQLContextQueryIndex)initWithColumns:(id)columns;
- (id)description;
@end

@implementation HMBLocalSQLContextQueryIndex

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  columns = [(HMBLocalSQLContextQueryIndex *)self columns];
  v4 = [v2 stringWithFormat:@"[%@]", columns];

  return v4;
}

- (HMBLocalSQLContextQueryIndex)initWithColumns:(id)columns
{
  columnsCopy = columns;
  v9.receiver = self;
  v9.super_class = HMBLocalSQLContextQueryIndex;
  v6 = [(HMBLocalSQLContextQueryIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_columns, columns);
  }

  return v7;
}

@end