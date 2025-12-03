@interface HDSQLiteEntityColumnDefinitionObject
- (HDSQLiteEntityColumnDefinitionObject)initWithName:(id)name columnType:(id)type keyPathType:(unsigned __int8)pathType;
@end

@implementation HDSQLiteEntityColumnDefinitionObject

- (HDSQLiteEntityColumnDefinitionObject)initWithName:(id)name columnType:(id)type keyPathType:(unsigned __int8)pathType
{
  nameCopy = name;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = HDSQLiteEntityColumnDefinitionObject;
  v10 = [(HDSQLiteEntityColumnDefinitionObject *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [typeCopy copy];
    columnType = v10->_columnType;
    v10->_columnType = v13;

    v10->_keyPathType = pathType;
  }

  return v10;
}

@end