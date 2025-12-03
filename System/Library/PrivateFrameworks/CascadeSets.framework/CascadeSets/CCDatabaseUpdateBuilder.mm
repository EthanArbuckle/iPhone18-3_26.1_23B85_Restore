@interface CCDatabaseUpdateBuilder
- (CCDatabaseUpdateBuilder)initWithTableName:(id)name;
- (id)build;
- (void)setCommandCriterion:(id)criterion;
- (void)setReturningColumns:(id)columns;
- (void)setValue:(id)value forColumn:(id)column;
@end

@implementation CCDatabaseUpdateBuilder

- (CCDatabaseUpdateBuilder)initWithTableName:(id)name
{
  v9.receiver = self;
  v9.super_class = CCDatabaseUpdateBuilder;
  v3 = [(CCDatabaseCommandBuilder *)&v9 initWithTableName:name];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    columnNames = v3->_columnNames;
    v3->_columnNames = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    columnValues = v3->_columnValues;
    v3->_columnValues = v6;
  }

  return v3;
}

- (id)build
{
  tableName = [(CCDatabaseCommandBuilder *)self tableName];
  columnNames = self->_columnNames;
  columnValues = self->_columnValues;
  criterion = [(CCDatabaseCommandBuilder *)self criterion];
  v7 = [CCSQLCommandGenerator updateWithTableName:tableName columnNames:columnNames columnValues:columnValues criterion:criterion returningColumns:self->_returningColumns];

  return v7;
}

- (void)setCommandCriterion:(id)criterion
{
  v3.receiver = self;
  v3.super_class = CCDatabaseUpdateBuilder;
  [(CCDatabaseCommandBuilder *)&v3 setCommandCriterion:criterion];
}

- (void)setValue:(id)value forColumn:(id)column
{
  columnNames = self->_columnNames;
  valueCopy = value;
  [(NSMutableArray *)columnNames addObject:column];
  [(NSMutableArray *)self->_columnValues addObject:valueCopy];
}

- (void)setReturningColumns:(id)columns
{
  v4 = [columns copy];
  returningColumns = self->_returningColumns;
  self->_returningColumns = v4;

  MEMORY[0x1EEE66BB8]();
}

@end