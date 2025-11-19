@interface HDSQLiteEntityColumnDefinitionObject
- (HDSQLiteEntityColumnDefinitionObject)initWithName:(id)a3 columnType:(id)a4 keyPathType:(unsigned __int8)a5;
@end

@implementation HDSQLiteEntityColumnDefinitionObject

- (HDSQLiteEntityColumnDefinitionObject)initWithName:(id)a3 columnType:(id)a4 keyPathType:(unsigned __int8)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HDSQLiteEntityColumnDefinitionObject;
  v10 = [(HDSQLiteEntityColumnDefinitionObject *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v9 copy];
    columnType = v10->_columnType;
    v10->_columnType = v13;

    v10->_keyPathType = a5;
  }

  return v10;
}

@end