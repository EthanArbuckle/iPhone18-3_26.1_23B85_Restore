@interface MSVLyricsTransliteration
- (id)description;
- (id)transliterationForLine:(id)a3;
@end

@implementation MSVLyricsTransliteration

- (id)transliterationForLine:(id)a3
{
  v4 = a3;
  v5 = [(MSVLyricsTransliteration *)self linesMap];
  v6 = [v4 translationKey];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MSVLyricsTransliteration *)self language];
  v6 = [v3 stringWithFormat:@"<%@ %p> language: %@", v4, self, v5];

  return v6;
}

@end