@interface ML3ContainerItemReactionTable
- (id)columns;
@end

@implementation ML3ContainerItemReactionTable

- (id)columns
{
  v12[5] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v4 = [ML3DatabaseColumn columnWithName:@"container_item_reaction_pid" datatype:2 constraints:1 defaultValue:0];
    v5 = [ML3DatabaseColumn columnWithName:@"container_item_pid" datatype:2 constraints:16 defaultValue:&unk_2840CA3B8, v4];
    v12[1] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"person_pid" datatype:2 constraints:16 defaultValue:&unk_2840CA3B8];
    v12[2] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"reaction" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v12[3] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"date" datatype:2 constraints:16 defaultValue:&unk_2840CA3B8];
    v12[4] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];
    v10 = self->_columns;
    self->_columns = v9;

    columns = self->_columns;
  }

  return columns;
}

@end