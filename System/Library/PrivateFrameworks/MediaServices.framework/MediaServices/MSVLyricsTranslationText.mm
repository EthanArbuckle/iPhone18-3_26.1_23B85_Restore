@interface MSVLyricsTranslationText
- (MSVLyricsTranslationText)init;
- (id)description;
@end

@implementation MSVLyricsTranslationText

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  lyricsLineKey = [(MSVLyricsTranslationText *)self lyricsLineKey];
  v9.receiver = self;
  v9.super_class = MSVLyricsTranslationText;
  v6 = [(MSVLyricsLine *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@ %p> key: %@, lyrics line: %@", v4, self, lyricsLineKey, v6];

  return v7;
}

- (MSVLyricsTranslationText)init
{
  v5.receiver = self;
  v5.super_class = MSVLyricsTranslationText;
  v2 = [(MSVLyricsLine *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSVLyricsElement *)v2 setType:3];
  }

  return v3;
}

@end