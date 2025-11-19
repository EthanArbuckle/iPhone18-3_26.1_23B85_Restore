@interface ML3GenreTable
- (id)columns;
@end

@implementation ML3GenreTable

- (id)columns
{
  v17[10] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v16 = [ML3DatabaseColumn columnWithName:@"genre_id" datatype:2 constraints:1 defaultValue:0];
    v17[0] = v16;
    v15 = [ML3DatabaseColumn columnWithName:@"genre" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v17[1] = v15;
    v14 = [ML3DatabaseColumn columnWithName:@"grouping_key" datatype:5 constraints:0 defaultValue:0];
    v17[2] = v14;
    v4 = [ML3DatabaseColumn columnWithName:@"cloud_status" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[3] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"representative_item_pid" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[4] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"keep_local" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[5] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"keep_local_status" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[6] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"keep_local_status_reason" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[7] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"keep_local_constraints" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[8] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"sync_id" datatype:2 constraints:16 defaultValue:&unk_2840C8CD8];
    v17[9] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:10];
    v12 = self->_columns;
    self->_columns = v11;

    columns = self->_columns;
  }

  return columns;
}

@end