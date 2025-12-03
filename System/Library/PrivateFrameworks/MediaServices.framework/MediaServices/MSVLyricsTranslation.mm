@interface MSVLyricsTranslation
+ (int64_t)_translationTypeForText:(id)text;
- (id)description;
- (id)translationForLine:(id)line;
- (void)setTypeText:(id)text;
@end

@implementation MSVLyricsTranslation

- (id)translationForLine:(id)line
{
  lineCopy = line;
  linesMap = [(MSVLyricsTranslation *)self linesMap];
  translationKey = [lineCopy translationKey];

  v7 = [linesMap objectForKeyedSubscript:translationKey];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  language = [(MSVLyricsTranslation *)self language];
  v6 = [v3 stringWithFormat:@"<%@ %p> language: %@", v4, self, language];

  return v6;
}

- (void)setTypeText:(id)text
{
  objc_storeStrong(&self->_typeText, text);
  textCopy = text;
  v6 = [MSVLyricsTranslation _translationTypeForText:textCopy];

  [(MSVLyricsTranslation *)self setType:v6];
}

+ (int64_t)_translationTypeForText:(id)text
{
  textCopy = text;
  v4 = textCopy;
  if (textCopy)
  {
    if (![textCopy caseInsensitiveCompare:@"subtitle"])
    {
      v5 = 1;
      goto LABEL_6;
    }

    [v4 caseInsensitiveCompare:@"replacement"];
  }

  v5 = 0;
LABEL_6:

  return v5;
}

@end