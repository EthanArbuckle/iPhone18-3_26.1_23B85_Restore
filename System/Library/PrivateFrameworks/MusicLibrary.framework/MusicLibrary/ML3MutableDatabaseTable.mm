@interface ML3MutableDatabaseTable
- (void)setColumns:(id)columns;
- (void)setForeignKeyConstraints:(id)constraints;
- (void)setName:(id)name;
@end

@implementation ML3MutableDatabaseTable

- (void)setForeignKeyConstraints:(id)constraints
{
  self->super._foreignKeyConstraints = [constraints copy];

  MEMORY[0x2821F96F8]();
}

- (void)setColumns:(id)columns
{
  self->super._columns = [columns copy];

  MEMORY[0x2821F96F8]();
}

- (void)setName:(id)name
{
  self->super._name = [name copy];

  MEMORY[0x2821F96F8]();
}

@end