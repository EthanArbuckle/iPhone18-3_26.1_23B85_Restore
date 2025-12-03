@interface MSVLyricsAgent
- (id)description;
@end

@implementation MSVLyricsAgent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = [(MSVLyricsAgent *)self type];
  name = [(MSVLyricsAgent *)self name];
  identifier = [(MSVLyricsXMLElement *)self identifier];
  artistID = [(MSVLyricsAgent *)self artistID];
  v9 = [v3 stringWithFormat:@"<%@ %p> type: %@, name: %@, identifier: %@, artistID: %@", v4, self, type, name, identifier, artistID];

  return v9;
}

@end