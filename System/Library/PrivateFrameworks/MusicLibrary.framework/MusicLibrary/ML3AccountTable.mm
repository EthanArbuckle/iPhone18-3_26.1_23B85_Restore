@interface ML3AccountTable
- (id)columns;
@end

@implementation ML3AccountTable

- (id)columns
{
  v10[3] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v4 = [ML3DatabaseColumn columnWithName:@"dsid" datatype:2 constraints:1 defaultValue:0];
    v5 = [ML3DatabaseColumn columnWithName:@"apple_id" datatype:4 constraints:16 defaultValue:&stru_28408B690, v4];
    v10[1] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"alt_dsid" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v10[2] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v8 = self->_columns;
    self->_columns = v7;

    columns = self->_columns;
  }

  return columns;
}

@end