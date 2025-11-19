@interface EFSQLObjectPropertyMapper
- (EFSQLObjectPropertyMapper)initWithTable:(id)a3 keyPathMappers:(id)a4 tableRelationships:(id)a5 additionalColumns:(id)a6 additionalSelectExpressions:(id)a7;
@end

@implementation EFSQLObjectPropertyMapper

- (EFSQLObjectPropertyMapper)initWithTable:(id)a3 keyPathMappers:(id)a4 tableRelationships:(id)a5 additionalColumns:(id)a6 additionalSelectExpressions:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = EFSQLObjectPropertyMapper;
  v17 = [(EFSQLObjectPropertyMapper *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mainTable, a3);
    objc_storeStrong(&v18->_keyPathMappers, a4);
    objc_storeStrong(&v18->_tableRelationships, a5);
    objc_storeStrong(&v18->_additionalColumns, a6);
    objc_storeStrong(&v18->_additionalSelectExpressions, a7);
  }

  return v18;
}

@end