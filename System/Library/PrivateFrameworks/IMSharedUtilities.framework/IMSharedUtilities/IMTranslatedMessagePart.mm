@interface IMTranslatedMessagePart
- (BOOL)languagePairsAreIdenticalTo:(id)a3;
- (IMTranslatedMessagePart)initWithCoder:(id)a3;
- (IMTranslatedMessagePart)initWithDictionaryRepresentation:(id)a3;
- (IMTranslatedMessagePart)initWithSourceLanguage:(id)a3 translationLanguage:(id)a4 translatedText:(id)a5;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMTranslatedMessagePart

- (IMTranslatedMessagePart)initWithSourceLanguage:(id)a3 translationLanguage:(id)a4 translatedText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = IMTranslatedMessagePart;
  v11 = [(IMTranslatedMessagePart *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    sourceLanguage = v11->_sourceLanguage;
    v11->_sourceLanguage = v12;

    v14 = [v9 copy];
    translationLanguage = v11->_translationLanguage;
    v11->_translationLanguage = v14;

    v16 = [v10 copy];
    translatedText = v11->_translatedText;
    v11->_translatedText = v16;
  }

  return v11;
}

- (IMTranslatedMessagePart)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IMTranslatedMessagePart;
  v5 = [(IMTranslatedMessagePart *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sourceLanguage"];
    sourceLanguage = v5->_sourceLanguage;
    v5->_sourceLanguage = v6;

    v8 = [v4 objectForKeyedSubscript:@"translationLanguage"];
    translationLanguage = v5->_translationLanguage;
    v5->_translationLanguage = v8;

    v10 = [v4 objectForKeyedSubscript:@"translatedText"];
    translatedText = v5->_translatedText;
    v5->_translatedText = v10;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_sourceLanguage forKeyedSubscript:@"sourceLanguage"];
  [v3 setObject:self->_translationLanguage forKeyedSubscript:@"translationLanguage"];
  [v3 setObject:self->_translatedText forKeyedSubscript:@"translatedText"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)languagePairsAreIdenticalTo:(id)a3
{
  v4 = a3;
  v5 = [(IMTranslatedMessagePart *)self sourceLanguage];
  v6 = [v4 sourceLanguage];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(IMTranslatedMessagePart *)self translationLanguage];
    v8 = [v4 translationLanguage];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  sourceLanguage = self->_sourceLanguage;
  v5 = a3;
  [v5 encodeObject:sourceLanguage forKey:@"sourceLanguage"];
  [v5 encodeObject:self->_translationLanguage forKey:@"translationLanguage"];
  [v5 encodeObject:self->_translatedText forKey:@"translatedText"];
}

- (IMTranslatedMessagePart)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IMTranslatedMessagePart;
  v5 = [(IMTranslatedMessagePart *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceLanguage"];
    sourceLanguage = v5->_sourceLanguage;
    v5->_sourceLanguage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translationLanguage"];
    translationLanguage = v5->_translationLanguage;
    v5->_translationLanguage = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translatedText"];
    translatedText = v5->_translatedText;
    v5->_translatedText = v10;
  }

  return v5;
}

@end