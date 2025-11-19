@interface ML3MutableDatabaseTable
- (void)setColumns:(id)a3;
- (void)setForeignKeyConstraints:(id)a3;
- (void)setName:(id)a3;
@end

@implementation ML3MutableDatabaseTable

- (void)setForeignKeyConstraints:(id)a3
{
  self->super._foreignKeyConstraints = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setColumns:(id)a3
{
  self->super._columns = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setName:(id)a3
{
  self->super._name = [a3 copy];

  MEMORY[0x2821F96F8]();
}

@end