@interface MSVLyricsTransliterationText
- (MSVLyricsTransliterationText)init;
- (id)description;
@end

@implementation MSVLyricsTransliterationText

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  lyricsLineKey = [(MSVLyricsTransliterationText *)self lyricsLineKey];
  v9.receiver = self;
  v9.super_class = MSVLyricsTransliterationText;
  v6 = [(MSVLyricsLine *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@ %p> key: %@, lyrics line: %@", v4, self, lyricsLineKey, v6];

  return v7;
}

- (MSVLyricsTransliterationText)init
{
  v5.receiver = self;
  v5.super_class = MSVLyricsTransliterationText;
  v2 = [(MSVLyricsLine *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSVLyricsElement *)v2 setType:4];
  }

  return v3;
}

@end