@interface ML3ItemKVSTable
- (id)columns;
@end

@implementation ML3ItemKVSTable

- (id)columns
{
  v9[2] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v4 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v9[0] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"key" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v9[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v7 = self->_columns;
    self->_columns = v6;

    columns = self->_columns;
  }

  return columns;
}

@end