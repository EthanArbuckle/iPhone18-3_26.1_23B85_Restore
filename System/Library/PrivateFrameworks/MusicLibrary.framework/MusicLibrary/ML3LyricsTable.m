@interface ML3LyricsTable
- (id)columns;
@end

@implementation ML3LyricsTable

- (id)columns
{
  v13[6] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v4 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v13[0] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"checksum" datatype:2 constraints:16 defaultValue:&unk_2840CA1D8];
    v13[1] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"pending_checksum" datatype:2 constraints:16 defaultValue:&unk_2840CA1D8];
    v13[2] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"lyrics" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v13[3] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"store_lyrics_available" datatype:2 constraints:16 defaultValue:&unk_2840CA1D8];
    v13[4] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"time_synced_lyrics_available" datatype:2 constraints:16 defaultValue:&unk_2840CA1D8];
    v13[5] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
    v11 = self->_columns;
    self->_columns = v10;

    columns = self->_columns;
  }

  return columns;
}

@end