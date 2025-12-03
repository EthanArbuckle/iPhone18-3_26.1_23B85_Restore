@interface ML3ItemTable
- (id)columns;
@end

@implementation ML3ItemTable

- (id)columns
{
  v46[38] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    selfCopy = self;
    v45 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v46[0] = v45;
    v44 = [ML3DatabaseColumn columnWithName:@"media_type" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[1] = v44;
    v43 = [ML3DatabaseColumn columnWithName:@"title_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[2] = v43;
    v42 = [ML3DatabaseColumn columnWithName:@"title_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[3] = v42;
    v41 = [ML3DatabaseColumn columnWithName:@"item_artist_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[4] = v41;
    v40 = [ML3DatabaseColumn columnWithName:@"item_artist_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[5] = v40;
    v39 = [ML3DatabaseColumn columnWithName:@"item_artist_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[6] = v39;
    v38 = [ML3DatabaseColumn columnWithName:@"series_name_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[7] = v38;
    v37 = [ML3DatabaseColumn columnWithName:@"series_name_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[8] = v37;
    v36 = [ML3DatabaseColumn columnWithName:@"album_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[9] = v36;
    v34 = [ML3DatabaseColumn columnWithName:@"album_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[10] = v34;
    v33 = [ML3DatabaseColumn columnWithName:@"album_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[11] = v33;
    v32 = [ML3DatabaseColumn columnWithName:@"album_artist_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[12] = v32;
    v31 = [ML3DatabaseColumn columnWithName:@"album_artist_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[13] = v31;
    v30 = [ML3DatabaseColumn columnWithName:@"album_artist_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[14] = v30;
    v29 = [ML3DatabaseColumn columnWithName:@"composer_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[15] = v29;
    v28 = [ML3DatabaseColumn columnWithName:@"composer_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[16] = v28;
    v27 = [ML3DatabaseColumn columnWithName:@"composer_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[17] = v27;
    v26 = [ML3DatabaseColumn columnWithName:@"genre_id" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[18] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"genre_order" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[19] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"genre_order_section" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[20] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"disc_number" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[21] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"track_number" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[22] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"episode_sort_id" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[23] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"base_location_id" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[24] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"remote_location_id" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[25] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"exclude_from_shuffle" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[26] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"keep_local" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[27] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"keep_local_status" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[28] = v16;
    v4 = [ML3DatabaseColumn columnWithName:@"keep_local_status_reason" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[29] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"keep_local_constraints" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[30] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"in_my_library" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[31] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"is_compilation" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[32] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"date_added" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[33] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"show_composer" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[34] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"is_music_show" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[35] = v10;
    v11 = [ML3DatabaseColumn columnWithName:@"date_downloaded" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[36] = v11;
    v12 = [ML3DatabaseColumn columnWithName:@"download_source_container_pid" datatype:2 constraints:16 defaultValue:&unk_2840C9410];
    v46[37] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:38];
    v14 = selfCopy->_columns;
    selfCopy->_columns = v13;

    columns = selfCopy->_columns;
  }

  return columns;
}

@end