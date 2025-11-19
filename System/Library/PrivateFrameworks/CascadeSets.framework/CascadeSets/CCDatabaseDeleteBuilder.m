@interface CCDatabaseDeleteBuilder
- (id)build;
- (void)setCommandCriterion:(id)a3;
- (void)setReturningColumns:(id)a3;
@end

@implementation CCDatabaseDeleteBuilder

- (id)build
{
  v3 = [(CCDatabaseCommandBuilder *)self tableName];
  v4 = [(CCDatabaseCommandBuilder *)self criterion];
  v5 = [CCSQLCommandGenerator deleteFromTableWithName:v3 criterion:v4 returningColumns:self->_returningColumns];

  return v5;
}

- (void)setCommandCriterion:(id)a3
{
  v3.receiver = self;
  v3.super_class = CCDatabaseDeleteBuilder;
  [(CCDatabaseCommandBuilder *)&v3 setCommandCriterion:a3];
}

- (void)setReturningColumns:(id)a3
{
  v4 = [a3 copy];
  returningColumns = self->_returningColumns;
  self->_returningColumns = v4;

  MEMORY[0x1EEE66BB8]();
}

@end