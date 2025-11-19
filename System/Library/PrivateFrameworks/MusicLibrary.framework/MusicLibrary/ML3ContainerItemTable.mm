@interface ML3ContainerItemTable
- (id)columns;
@end

@implementation ML3ContainerItemTable

- (id)columns
{
  v14[7] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v4 = [ML3DatabaseColumn columnWithName:@"container_item_pid" datatype:2 constraints:1 defaultValue:0];
    v5 = [ML3DatabaseColumn columnWithName:@"container_pid" datatype:2 constraints:16 defaultValue:&unk_2840CA4C0, v4];
    v14[1] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:16 defaultValue:&unk_2840CA4C0];
    v14[2] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"position" datatype:2 constraints:16 defaultValue:&unk_2840CA4C0];
    v14[3] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"uuid" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v14[4] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"position_uuid" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v14[5] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"occurrence_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v14[6] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
    v12 = self->_columns;
    self->_columns = v11;

    columns = self->_columns;
  }

  return columns;
}

@end