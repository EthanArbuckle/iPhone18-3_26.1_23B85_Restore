@interface EFSQLTableRelationship
- (EFSQLTableRelationship)initWithSourceColumn:(id)a3 destinationColumn:(id)a4 useLeftOuterJoin:(BOOL)a5 tableAlias:(id)a6 isProtectedTable:(BOOL)a7;
- (NSString)ef_publicDescription;
@end

@implementation EFSQLTableRelationship

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v16 = [(EFSQLTableRelationship *)self sourceColumn];
  v15 = [v16 table];
  v14 = [v15 name];
  v13 = [(EFSQLTableRelationship *)self sourceColumn];
  v5 = [v13 name];
  v6 = [(EFSQLTableRelationship *)self destinationColumn];
  v7 = [v6 table];
  v8 = [v7 name];
  v9 = [(EFSQLTableRelationship *)self destinationColumn];
  v10 = [v9 name];
  v11 = [v3 stringWithFormat:@"%@ <%p>: source: %@[%@] destination: %@[%@]", v4, self, v14, v5, v8, v10];

  return v11;
}

- (EFSQLTableRelationship)initWithSourceColumn:(id)a3 destinationColumn:(id)a4 useLeftOuterJoin:(BOOL)a5 tableAlias:(id)a6 isProtectedTable:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = EFSQLTableRelationship;
  v16 = [(EFSQLTableRelationship *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sourceColumn, a3);
    objc_storeStrong(&v17->_destinationColumn, a4);
    v17->_useLeftOuterJoin = a5;
    objc_storeStrong(&v17->_tableAlias, a6);
    v17->_isProtectedTable = a7;
  }

  return v17;
}

@end