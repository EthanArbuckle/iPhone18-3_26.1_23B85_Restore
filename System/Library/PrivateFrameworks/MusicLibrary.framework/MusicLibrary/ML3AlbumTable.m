@interface ML3AlbumTable
- (id)columns;
@end

@implementation ML3AlbumTable

- (id)columns
{
  v33[26] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v32 = [ML3DatabaseColumn columnWithName:@"album_pid" datatype:2 constraints:1 defaultValue:0];
    v33[0] = v32;
    v31 = [ML3DatabaseColumn columnWithName:@"album" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v33[1] = v31;
    v30 = [ML3DatabaseColumn columnWithName:@"sort_album" datatype:4 constraints:0 defaultValue:0];
    v33[2] = v30;
    v29 = [ML3DatabaseColumn columnWithName:@"album_artist_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[3] = v29;
    v28 = [ML3DatabaseColumn columnWithName:@"representative_item_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[4] = v28;
    v27 = [ML3DatabaseColumn columnWithName:@"grouping_key" datatype:5 constraints:0 defaultValue:0];
    v33[5] = v27;
    v26 = [ML3DatabaseColumn columnWithName:@"cloud_status" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[6] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"user_rating" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[7] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"liked_state" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[8] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"all_compilations" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[9] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"feed_url" datatype:4 constraints:0 defaultValue:0];
    v33[10] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"season_number" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[11] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"album_year" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[12] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"keep_local" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[13] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"keep_local_status" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[14] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"keep_local_status_reason" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[15] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"keep_local_constraints" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[16] = v16;
    v15 = [ML3DatabaseColumn columnWithName:@"app_data" datatype:5 constraints:0 defaultValue:0];
    v33[17] = v15;
    v4 = [ML3DatabaseColumn columnWithName:@"contains_classical_work" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[18] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"date_played_local" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[19] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"user_rating_is_derived" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[20] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"sync_id" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[21] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"classical_experience_available" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[22] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"store_id" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[23] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"cloud_library_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v33[24] = v10;
    v11 = [ML3DatabaseColumn columnWithName:@"liked_state_changed_date" datatype:2 constraints:16 defaultValue:&unk_2840C9740];
    v33[25] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:26];
    v13 = self->_columns;
    self->_columns = v12;

    columns = self->_columns;
  }

  return columns;
}

@end