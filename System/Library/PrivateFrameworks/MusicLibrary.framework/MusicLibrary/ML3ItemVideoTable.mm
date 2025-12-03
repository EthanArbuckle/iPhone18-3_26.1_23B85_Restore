@interface ML3ItemVideoTable
- (id)columns;
@end

@implementation ML3ItemVideoTable

- (id)columns
{
  v47[39] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    selfCopy = self;
    v45 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v47[0] = v45;
    v44 = [ML3DatabaseColumn columnWithName:@"video_quality" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[1] = v44;
    v43 = [ML3DatabaseColumn columnWithName:@"is_rental" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[2] = v43;
    v42 = [ML3DatabaseColumn columnWithName:@"has_chapter_data" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[3] = v42;
    v41 = [ML3DatabaseColumn columnWithName:@"season_number" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[4] = v41;
    v40 = [ML3DatabaseColumn columnWithName:@"episode_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[5] = v40;
    v39 = [ML3DatabaseColumn columnWithName:@"network_name" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[6] = v39;
    v38 = [ML3DatabaseColumn columnWithName:@"extended_content_rating" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[7] = v38;
    v37 = [ML3DatabaseColumn columnWithName:@"movie_info" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[8] = v37;
    v36 = [ML3DatabaseColumn columnWithName:@"has_alternate_audio" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[9] = v36;
    v35 = [ML3DatabaseColumn columnWithName:@"has_subtitles" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[10] = v35;
    v34 = [ML3DatabaseColumn columnWithName:@"audio_language" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[11] = v34;
    v33 = [ML3DatabaseColumn columnWithName:@"audio_track_index" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[12] = v33;
    v32 = [ML3DatabaseColumn columnWithName:@"audio_track_id" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[13] = v32;
    v31 = [ML3DatabaseColumn columnWithName:@"subtitle_language" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[14] = v31;
    v30 = [ML3DatabaseColumn columnWithName:@"subtitle_track_index" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[15] = v30;
    v29 = [ML3DatabaseColumn columnWithName:@"rental_duration" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[16] = v29;
    v28 = [ML3DatabaseColumn columnWithName:@"rental_playback_duration" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[17] = v28;
    v27 = [ML3DatabaseColumn columnWithName:@"rental_playback_date_started" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[18] = v27;
    v26 = [ML3DatabaseColumn columnWithName:@"rental_date_started" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[19] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"is_demo" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[20] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"has_hls" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[21] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"audio_track_locale" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[22] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"show_sort_type" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[23] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"episode_type" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[24] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"episode_type_display_name" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[25] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"episode_sub_sort_order" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[26] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"hls_offline_playback_keys" datatype:5 constraints:0 defaultValue:0];
    v47[27] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"is_premium" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[28] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"color_capability" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[29] = v16;
    v4 = [ML3DatabaseColumn columnWithName:@"hls_color_capability" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[30] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"hls_video_quality" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[31] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"hls_playlist_url" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[32] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"audio_capability" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[33] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"hls_audio_capability" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[34] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"hls_asset_traits" datatype:2 constraints:16 defaultValue:&unk_2840C9770];
    v47[35] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"hls_key_server_url" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[36] = v10;
    v11 = [ML3DatabaseColumn columnWithName:@"hls_key_cert_url" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[37] = v11;
    v12 = [ML3DatabaseColumn columnWithName:@"hls_key_server_protocol" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v47[38] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:39];
    v14 = selfCopy->_columns;
    selfCopy->_columns = v13;

    columns = selfCopy->_columns;
  }

  return columns;
}

@end