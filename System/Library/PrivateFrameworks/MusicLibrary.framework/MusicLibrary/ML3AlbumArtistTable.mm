@interface ML3AlbumArtistTable
- (id)columns;
@end

@implementation ML3AlbumArtistTable

- (id)columns
{
  v27[20] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v26 = [ML3DatabaseColumn columnWithName:@"album_artist_pid" datatype:2 constraints:1 defaultValue:0];
    v27[0] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"album_artist" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v27[1] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"sort_album_artist" datatype:4 constraints:0 defaultValue:0];
    v27[2] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"grouping_key" datatype:5 constraints:0 defaultValue:0];
    v27[3] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"cloud_status" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[4] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"store_id" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[5] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"representative_item_pid" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[6] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"keep_local" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[7] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"keep_local_status" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[8] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"keep_local_status_reason" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[9] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"keep_local_constraints" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[10] = v16;
    v15 = [ML3DatabaseColumn columnWithName:@"app_data" datatype:5 constraints:0 defaultValue:0];
    v27[11] = v15;
    v14 = [ML3DatabaseColumn columnWithName:@"sync_id" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[12] = v14;
    v4 = [ML3DatabaseColumn columnWithName:@"cloud_universal_library_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v27[13] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"classical_experience_available" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[14] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"liked_state" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[15] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"liked_state_changed_date" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[16] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"sort_order" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[17] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"sort_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[18] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"name_order" datatype:2 constraints:16 defaultValue:&unk_2840C88A0];
    v27[19] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:20];
    v12 = self->_columns;
    self->_columns = v11;

    columns = self->_columns;
  }

  return columns;
}

@end