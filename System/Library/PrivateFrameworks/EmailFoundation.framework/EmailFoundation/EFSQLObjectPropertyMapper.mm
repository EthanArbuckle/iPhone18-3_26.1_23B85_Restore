@interface EFSQLObjectPropertyMapper
- (EFSQLObjectPropertyMapper)initWithTable:(id)table keyPathMappers:(id)mappers tableRelationships:(id)relationships additionalColumns:(id)columns additionalSelectExpressions:(id)expressions;
@end

@implementation EFSQLObjectPropertyMapper

- (EFSQLObjectPropertyMapper)initWithTable:(id)table keyPathMappers:(id)mappers tableRelationships:(id)relationships additionalColumns:(id)columns additionalSelectExpressions:(id)expressions
{
  tableCopy = table;
  mappersCopy = mappers;
  relationshipsCopy = relationships;
  columnsCopy = columns;
  expressionsCopy = expressions;
  v21.receiver = self;
  v21.super_class = EFSQLObjectPropertyMapper;
  v17 = [(EFSQLObjectPropertyMapper *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mainTable, table);
    objc_storeStrong(&v18->_keyPathMappers, mappers);
    objc_storeStrong(&v18->_tableRelationships, relationships);
    objc_storeStrong(&v18->_additionalColumns, columns);
    objc_storeStrong(&v18->_additionalSelectExpressions, expressions);
  }

  return v18;
}

@end