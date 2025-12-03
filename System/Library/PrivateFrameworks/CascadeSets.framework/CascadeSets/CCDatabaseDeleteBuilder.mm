@interface CCDatabaseDeleteBuilder
- (id)build;
- (void)setCommandCriterion:(id)criterion;
- (void)setReturningColumns:(id)columns;
@end

@implementation CCDatabaseDeleteBuilder

- (id)build
{
  tableName = [(CCDatabaseCommandBuilder *)self tableName];
  criterion = [(CCDatabaseCommandBuilder *)self criterion];
  v5 = [CCSQLCommandGenerator deleteFromTableWithName:tableName criterion:criterion returningColumns:self->_returningColumns];

  return v5;
}

- (void)setCommandCriterion:(id)criterion
{
  v3.receiver = self;
  v3.super_class = CCDatabaseDeleteBuilder;
  [(CCDatabaseCommandBuilder *)&v3 setCommandCriterion:criterion];
}

- (void)setReturningColumns:(id)columns
{
  v4 = [columns copy];
  returningColumns = self->_returningColumns;
  self->_returningColumns = v4;

  MEMORY[0x1EEE66BB8]();
}

@end