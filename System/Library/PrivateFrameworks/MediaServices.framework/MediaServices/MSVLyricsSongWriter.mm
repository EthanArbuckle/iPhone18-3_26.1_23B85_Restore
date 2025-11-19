@interface MSVLyricsSongWriter
- (MSVLyricsSongWriter)init;
- (id)description;
@end

@implementation MSVLyricsSongWriter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MSVLyricsSongWriter *)self name];
  v6 = [(MSVLyricsSongWriter *)self artistID];
  v7 = [v3 stringWithFormat:@"<%@ %p> name: %@, artistID: %@", v4, self, v5, v6];

  return v7;
}

- (MSVLyricsSongWriter)init
{
  v5.receiver = self;
  v5.super_class = MSVLyricsSongWriter;
  v2 = [(MSVLyricsSongWriter *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD60] string];
    [(MSVLyricsXMLElement *)v2 setMutableText:v3];
  }

  return v2;
}

@end