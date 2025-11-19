@interface ML3ItemSearchTable
- (id)columns;
@end

@implementation ML3ItemSearchTable

- (id)columns
{
  v13[6] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    v4 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v13[0] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"search_title" datatype:2 constraints:16 defaultValue:&unk_2840C9458];
    v13[1] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"search_album" datatype:2 constraints:16 defaultValue:&unk_2840C9458];
    v13[2] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"search_artist" datatype:2 constraints:16 defaultValue:&unk_2840C9458];
    v13[3] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"search_composer" datatype:2 constraints:16 defaultValue:&unk_2840C9458];
    v13[4] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"search_album_artist" datatype:2 constraints:16 defaultValue:&unk_2840C9458];
    v13[5] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
    v11 = self->_columns;
    self->_columns = v10;

    columns = self->_columns;
  }

  return columns;
}

@end