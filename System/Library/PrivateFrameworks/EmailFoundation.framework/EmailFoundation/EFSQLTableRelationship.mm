@interface EFSQLTableRelationship
- (EFSQLTableRelationship)initWithSourceColumn:(id)column destinationColumn:(id)destinationColumn useLeftOuterJoin:(BOOL)join tableAlias:(id)alias isProtectedTable:(BOOL)table;
- (NSString)ef_publicDescription;
@end

@implementation EFSQLTableRelationship

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sourceColumn = [(EFSQLTableRelationship *)self sourceColumn];
  table = [sourceColumn table];
  name = [table name];
  sourceColumn2 = [(EFSQLTableRelationship *)self sourceColumn];
  name2 = [sourceColumn2 name];
  destinationColumn = [(EFSQLTableRelationship *)self destinationColumn];
  table2 = [destinationColumn table];
  name3 = [table2 name];
  destinationColumn2 = [(EFSQLTableRelationship *)self destinationColumn];
  name4 = [destinationColumn2 name];
  v11 = [v3 stringWithFormat:@"%@ <%p>: source: %@[%@] destination: %@[%@]", v4, self, name, name2, name3, name4];

  return v11;
}

- (EFSQLTableRelationship)initWithSourceColumn:(id)column destinationColumn:(id)destinationColumn useLeftOuterJoin:(BOOL)join tableAlias:(id)alias isProtectedTable:(BOOL)table
{
  columnCopy = column;
  destinationColumnCopy = destinationColumn;
  aliasCopy = alias;
  v19.receiver = self;
  v19.super_class = EFSQLTableRelationship;
  v16 = [(EFSQLTableRelationship *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sourceColumn, column);
    objc_storeStrong(&v17->_destinationColumn, destinationColumn);
    v17->_useLeftOuterJoin = join;
    objc_storeStrong(&v17->_tableAlias, alias);
    v17->_isProtectedTable = table;
  }

  return v17;
}

@end