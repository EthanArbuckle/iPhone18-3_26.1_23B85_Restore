@interface CCDatabaseUpdateBuilder
- (CCDatabaseUpdateBuilder)initWithTableName:(id)a3;
- (id)build;
- (void)setCommandCriterion:(id)a3;
- (void)setReturningColumns:(id)a3;
- (void)setValue:(id)a3 forColumn:(id)a4;
@end

@implementation CCDatabaseUpdateBuilder

- (CCDatabaseUpdateBuilder)initWithTableName:(id)a3
{
  v9.receiver = self;
  v9.super_class = CCDatabaseUpdateBuilder;
  v3 = [(CCDatabaseCommandBuilder *)&v9 initWithTableName:a3];
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
  v3 = [(CCDatabaseCommandBuilder *)self tableName];
  columnNames = self->_columnNames;
  columnValues = self->_columnValues;
  v6 = [(CCDatabaseCommandBuilder *)self criterion];
  v7 = [CCSQLCommandGenerator updateWithTableName:v3 columnNames:columnNames columnValues:columnValues criterion:v6 returningColumns:self->_returningColumns];

  return v7;
}

- (void)setCommandCriterion:(id)a3
{
  v3.receiver = self;
  v3.super_class = CCDatabaseUpdateBuilder;
  [(CCDatabaseCommandBuilder *)&v3 setCommandCriterion:a3];
}

- (void)setValue:(id)a3 forColumn:(id)a4
{
  columnNames = self->_columnNames;
  v7 = a3;
  [(NSMutableArray *)columnNames addObject:a4];
  [(NSMutableArray *)self->_columnValues addObject:v7];
}

- (void)setReturningColumns:(id)a3
{
  v4 = [a3 copy];
  returningColumns = self->_returningColumns;
  self->_returningColumns = v4;

  MEMORY[0x1EEE66BB8]();
}

@end