@interface MSVLyricsTransliteration
- (id)description;
- (id)transliterationForLine:(id)line;
@end

@implementation MSVLyricsTransliteration

- (id)transliterationForLine:(id)line
{
  lineCopy = line;
  linesMap = [(MSVLyricsTransliteration *)self linesMap];
  translationKey = [lineCopy translationKey];

  v7 = [linesMap objectForKeyedSubscript:translationKey];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  language = [(MSVLyricsTransliteration *)self language];
  v6 = [v3 stringWithFormat:@"<%@ %p> language: %@", v4, self, language];

  return v6;
}

@end