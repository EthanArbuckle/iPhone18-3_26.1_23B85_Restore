@interface MSVLyricsTranslation
+ (int64_t)_translationTypeForText:(id)a3;
- (id)description;
- (id)translationForLine:(id)a3;
- (void)setTypeText:(id)a3;
@end

@implementation MSVLyricsTranslation

- (id)translationForLine:(id)a3
{
  v4 = a3;
  v5 = [(MSVLyricsTranslation *)self linesMap];
  v6 = [v4 translationKey];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MSVLyricsTranslation *)self language];
  v6 = [v3 stringWithFormat:@"<%@ %p> language: %@", v4, self, v5];

  return v6;
}

- (void)setTypeText:(id)a3
{
  objc_storeStrong(&self->_typeText, a3);
  v5 = a3;
  v6 = [MSVLyricsTranslation _translationTypeForText:v5];

  [(MSVLyricsTranslation *)self setType:v6];
}

+ (int64_t)_translationTypeForText:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"subtitle"])
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