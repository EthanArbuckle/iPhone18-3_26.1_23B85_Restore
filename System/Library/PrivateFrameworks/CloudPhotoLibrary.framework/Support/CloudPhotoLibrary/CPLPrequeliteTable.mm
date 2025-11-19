@interface CPLPrequeliteTable
+ (CPLPrequeliteTable)tableWithName:(id)a3;
- (CPLPrequeliteTable)initWithName:(id)a3;
- (NSString)injectedTableName;
@end

@implementation CPLPrequeliteTable

+ (CPLPrequeliteTable)tableWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

- (CPLPrequeliteTable)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLPrequeliteTable;
  v5 = [(CPLPrequeliteTable *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v8 = [PQLNameInjection nameWithString:v4];
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