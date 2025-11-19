@interface ML3ComposerTable
- (id)columns;
@end

@implementation ML3ComposerTable

- (id)columns
{
  v18[11] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v17 = [ML3DatabaseColumn columnWithName:@"composer_pid" datatype:2 constraints:1 defaultValue:0];
    v18[0] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"composer" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v18[1] = v16;
    v15 = [ML3DatabaseColumn columnWithName:@"sort_composer" datatype:4 constraints:0 defaultValue:0];
    v18[2] = v15;
    v14 = [ML3DatabaseColumn columnWithName:@"grouping_key" datatype:5 constraints:0 defaultValue:0];
    v18[3] = v14;
    v4 = [ML3DatabaseColumn columnWithName:@"cloud_status" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[4] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"representative_item_pid" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[5] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"keep_local" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[6] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"keep_local_status" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[7] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"keep_local_status_reason" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[8] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"keep_local_constraints" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[9] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"sync_id" datatype:2 constraints:16 defaultValue:&unk_2840C8DB0];
    v18[10] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:11];
    v12 = self->_columns;
    self->_columns = v11;

    columns = self->_columns;
  }

  return columns;
}

@end