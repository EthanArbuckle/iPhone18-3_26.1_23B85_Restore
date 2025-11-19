@interface HMBLocalSQLContextQueryIndex
- (HMBLocalSQLContextQueryIndex)initWithColumns:(id)a3;
- (id)description;
@end

@implementation HMBLocalSQLContextQueryIndex

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMBLocalSQLContextQueryIndex *)self columns];
  v4 = [v2 stringWithFormat:@"[%@]", v3];

  return v4;
}

- (HMBLocalSQLContextQueryIndex)initWithColumns:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMBLocalSQLContextQueryIndex;
  v6 = [(HMBLocalSQLContextQueryIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_columns, a3);
  }

  return v7;
}

@end