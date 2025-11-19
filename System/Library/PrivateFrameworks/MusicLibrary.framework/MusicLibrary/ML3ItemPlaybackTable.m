@interface ML3ItemPlaybackTable
- (id)columns;
@end

@implementation ML3ItemPlaybackTable

- (id)columns
{
  v28[21] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v27 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v28[0] = v27;
    v26 = [ML3DatabaseColumn columnWithName:@"audio_format" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[1] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"bit_rate" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[2] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"codec_type" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[3] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"codec_subtype" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[4] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"data_kind" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[5] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"data_url" datatype:4 constraints:0 defaultValue:0];
    v28[6] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"duration" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[7] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"eq_preset" datatype:4 constraints:0 defaultValue:0];
    v28[8] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"format" datatype:4 constraints:0 defaultValue:0];
    v28[9] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"gapless_heuristic_info" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[10] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"gapless_encoding_delay" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[11] = v16;
    v15 = [ML3DatabaseColumn columnWithName:@"gapless_encoding_drain" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[12] = v15;
    v14 = [ML3DatabaseColumn columnWithName:@"gapless_last_frame_resynch" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[13] = v14;
    v4 = [ML3DatabaseColumn columnWithName:@"has_video" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[14] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"relative_volume" datatype:2 constraints:0 defaultValue:0];
    v28[15] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"sample_rate" datatype:3 constraints:16 defaultValue:&unk_2840CA478];
    v28[16] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"start_time_ms" datatype:3 constraints:16 defaultValue:&unk_2840CA478];
    v28[17] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"stop_time_ms" datatype:3 constraints:16 defaultValue:&unk_2840CA478];
    v28[18] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"volume_normalization_energy" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[19] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"progression_direction" datatype:2 constraints:16 defaultValue:&unk_2840CA478];
    v28[20] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:21];
    v12 = self->_columns;
    self->_columns = v11;

    columns = self->_columns;
  }

  return columns;
}

@end