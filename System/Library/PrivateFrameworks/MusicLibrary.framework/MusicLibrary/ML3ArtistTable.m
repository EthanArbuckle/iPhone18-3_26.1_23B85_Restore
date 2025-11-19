@interface ML3ArtistTable
- (id)columns;
@end

@implementation ML3ArtistTable

- (id)columns
{
  v23[16] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v22 = [ML3DatabaseColumn columnWithName:@"item_artist_pid" datatype:2 constraints:1 defaultValue:0];
    v23[0] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"item_artist" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v23[1] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"sort_item_artist" datatype:4 constraints:0 defaultValue:0];
    v23[2] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"series_name" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v23[3] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"sort_series_name" datatype:4 constraints:0 defaultValue:0];
    v23[4] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"grouping_key" datatype:5 constraints:0 defaultValue:0];
    v23[5] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"cloud_status" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[6] = v16;
    v15 = [ML3DatabaseColumn columnWithName:@"store_id" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[7] = v15;
    v14 = [ML3DatabaseColumn columnWithName:@"representative_item_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[8] = v14;
    v4 = [ML3DatabaseColumn columnWithName:@"keep_local" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[9] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"keep_local_status" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[10] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"keep_local_status_reason" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[11] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"keep_local_constraints" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[12] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"app_data" datatype:5 constraints:0 defaultValue:0];
    v23[13] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"sync_id" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[14] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"classical_experience_available" datatype:2 constraints:16 defaultValue:&unk_2840C9788];
    v23[15] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:16];
    v12 = self->_columns;
    self->_columns = v11;

    columns = self->_columns;
  }

  return columns;
}

@end