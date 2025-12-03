@interface HMBLocalSQLContextQueryTable
- (HMBLocalSQLContextQueryTable)initWithColumnNames:(id)names;
- (NSDictionary)indexes;
- (id)description;
@end

@implementation HMBLocalSQLContextQueryTable

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  columnNames = [(HMBLocalSQLContextQueryTable *)self columnNames];
  allObjects = [columnNames allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];
  mutableIndexes = [(HMBLocalSQLContextQueryTable *)self mutableIndexes];
  v8 = [v3 stringWithFormat:@"<%@, %@>", v6, mutableIndexes];

  return v8;
}

- (NSDictionary)indexes
{
  mutableIndexes = [(HMBLocalSQLContextQueryTable *)self mutableIndexes];
  v3 = [mutableIndexes copy];

  return v3;
}

- (HMBLocalSQLContextQueryTable)initWithColumnNames:(id)names
{
  namesCopy = names;
  v11.receiver = self;
  v11.super_class = HMBLocalSQLContextQueryTable;
  v6 = [(HMBLocalSQLContextQueryTable *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_columnNames, names);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mutableIndexes = v7->_mutableIndexes;
    v7->_mutableIndexes = dictionary;
  }

  return v7;
}

@end