@interface MSVLyricsAgent
- (id)description;
@end

@implementation MSVLyricsAgent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MSVLyricsAgent *)self type];
  v6 = [(MSVLyricsAgent *)self name];
  v7 = [(MSVLyricsXMLElement *)self identifier];
  v8 = [(MSVLyricsAgent *)self artistID];
  v9 = [v3 stringWithFormat:@"<%@ %p> type: %@, name: %@, identifier: %@, artistID: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

@end