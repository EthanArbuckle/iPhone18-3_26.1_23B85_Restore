@interface ML3ItemExtraTable
- (id)columns;
@end

@implementation ML3ItemExtraTable

- (id)columns
{
  v42[34] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    selfCopy = self;
    v41 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v42[0] = v41;
    v40 = [ML3DatabaseColumn columnWithName:@"title" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v42[1] = v40;
    v39 = [ML3DatabaseColumn columnWithName:@"sort_title" datatype:4 constraints:0 defaultValue:0];
    v42[2] = v39;
    v38 = [ML3DatabaseColumn columnWithName:@"disc_count" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[3] = v38;
    v37 = [ML3DatabaseColumn columnWithName:@"track_count" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[4] = v37;
    v36 = [ML3DatabaseColumn columnWithName:@"total_time_ms" datatype:3 constraints:16 defaultValue:&unk_2840C8810];
    v42[5] = v36;
    v35 = [ML3DatabaseColumn columnWithName:@"year" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[6] = v35;
    v34 = [ML3DatabaseColumn columnWithName:@"location" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v42[7] = v34;
    v33 = [ML3DatabaseColumn columnWithName:@"file_size" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[8] = v33;
    v31 = [ML3DatabaseColumn columnWithName:@"integrity" datatype:5 constraints:0 defaultValue:0];
    v42[9] = v31;
    v30 = [ML3DatabaseColumn columnWithName:@"is_audible_audio_book" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[10] = v30;
    v29 = [ML3DatabaseColumn columnWithName:@"date_modified" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[11] = v29;
    v28 = [ML3DatabaseColumn columnWithName:@"media_kind" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[12] = v28;
    v27 = [ML3DatabaseColumn columnWithName:@"content_rating" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[13] = v27;
    v26 = [ML3DatabaseColumn columnWithName:@"content_rating_level" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[14] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"is_user_disabled" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[15] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"bpm" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[16] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"genius_id" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[17] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"comment" datatype:4 constraints:0 defaultValue:0];
    v42[18] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"grouping" datatype:4 constraints:0 defaultValue:0];
    v42[19] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"description" datatype:4 constraints:0 defaultValue:0];
    v42[20] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"description_long" datatype:4 constraints:0 defaultValue:0];
    v42[21] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"collection_description" datatype:4 constraints:0 defaultValue:0];
    v42[22] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"copyright" datatype:4 constraints:0 defaultValue:0];
    v42[23] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"pending_genius_checksum" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[24] = v16;
    v4 = [ML3DatabaseColumn columnWithName:@"category_id" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[25] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"location_kind_id" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[26] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"version" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v42[27] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"display_version" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v42[28] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"classical_work" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v42[29] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"classical_movement" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v42[30] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"classical_movement_count" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[31] = v10;
    v11 = [ML3DatabaseColumn columnWithName:@"classical_movement_number" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[32] = v11;
    v12 = [ML3DatabaseColumn columnWithName:@"is_preorder" datatype:2 constraints:16 defaultValue:&unk_2840C8810];
    v42[33] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:34];
    v14 = selfCopy->_columns;
    selfCopy->_columns = v13;

    columns = selfCopy->_columns;
  }

  return columns;
}

@end