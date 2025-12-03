@interface CPLPrequeliteTable
+ (CPLPrequeliteTable)tableWithName:(id)name;
- (CPLPrequeliteTable)initWithName:(id)name;
- (NSString)injectedTableName;
@end

@implementation CPLPrequeliteTable

+ (CPLPrequeliteTable)tableWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithName:nameCopy];

  return v5;
}

- (CPLPrequeliteTable)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CPLPrequeliteTable;
  v5 = [(CPLPrequeliteTable *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v8 = [PQLNameInjection nameWithString:nameCopy];
    injection = v5->_injection;
    v5->_injection = v8;
  }

  return v5;
}

- (NSString)injectedTableName
{
  injectedTableName = self->_injectedTableName;
  if (!injectedTableName)
  {
    v4 = [NSString alloc];
    v5 = [(PQLNameInjection *)self->_injection sql];
    v6 = [v4 initWithData:v5 encoding:4];
    v7 = self->_injectedTableName;
    self->_injectedTableName = v6;

    injectedTableName = self->_injectedTableName;
  }

  return injectedTableName;
}

@end