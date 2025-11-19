@interface HMBLocalSQLContextQueryTable
- (HMBLocalSQLContextQueryTable)initWithColumnNames:(id)a3;
- (NSDictionary)indexes;
- (id)description;
@end

@implementation HMBLocalSQLContextQueryTable

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBLocalSQLContextQueryTable *)self columnNames];
  v5 = [v4 allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [(HMBLocalSQLContextQueryTable *)self mutableIndexes];
  v8 = [v3 stringWithFormat:@"<%@, %@>", v6, v7];

  return v8;
}

- (NSDictionary)indexes
{
  v2 = [(HMBLocalSQLContextQueryTable *)self mutableIndexes];
  v3 = [v2 copy];

  return v3;
}

- (HMBLocalSQLContextQueryTable)initWithColumnNames:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMBLocalSQLContextQueryTable;
  v6 = [(HMBLocalSQLContextQueryTable *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_columnNames, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    mutableIndexes = v7->_mutableIndexes;
    v7->_mutableIndexes = v8;
  }

  return v7;
}

@end