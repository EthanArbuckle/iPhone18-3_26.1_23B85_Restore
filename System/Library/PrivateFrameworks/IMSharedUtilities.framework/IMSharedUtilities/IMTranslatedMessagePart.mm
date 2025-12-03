@interface IMTranslatedMessagePart
- (BOOL)languagePairsAreIdenticalTo:(id)to;
- (IMTranslatedMessagePart)initWithCoder:(id)coder;
- (IMTranslatedMessagePart)initWithDictionaryRepresentation:(id)representation;
- (IMTranslatedMessagePart)initWithSourceLanguage:(id)language translationLanguage:(id)translationLanguage translatedText:(id)text;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMTranslatedMessagePart

- (IMTranslatedMessagePart)initWithSourceLanguage:(id)language translationLanguage:(id)translationLanguage translatedText:(id)text
{
  languageCopy = language;
  translationLanguageCopy = translationLanguage;
  textCopy = text;
  v19.receiver = self;
  v19.super_class = IMTranslatedMessagePart;
  v11 = [(IMTranslatedMessagePart *)&v19 init];
  if (v11)
  {
    v12 = [languageCopy copy];
    sourceLanguage = v11->_sourceLanguage;
    v11->_sourceLanguage = v12;

    v14 = [translationLanguageCopy copy];
    translationLanguage = v11->_translationLanguage;
    v11->_translationLanguage = v14;

    v16 = [textCopy copy];
    translatedText = v11->_translatedText;
    v11->_translatedText = v16;
  }

  return v11;
}

- (IMTranslatedMessagePart)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = IMTranslatedMessagePart;
  v5 = [(IMTranslatedMessagePart *)&v13 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"sourceLanguage"];
    sourceLanguage = v5->_sourceLanguage;
    v5->_sourceLanguage = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"translationLanguage"];
    translationLanguage = v5->_translationLanguage;
    v5->_translationLanguage = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"translatedText"];
    translatedText = v5->_translatedText;
    v5->_translatedText = v10;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_sourceLanguage forKeyedSubscript:@"sourceLanguage"];
  [dictionary setObject:self->_translationLanguage forKeyedSubscript:@"translationLanguage"];
  [dictionary setObject:self->_translatedText forKeyedSubscript:@"translatedText"];
  v4 = [dictionary copy];

  return v4;
}

- (BOOL)languagePairsAreIdenticalTo:(id)to
{
  toCopy = to;
  sourceLanguage = [(IMTranslatedMessagePart *)self sourceLanguage];
  sourceLanguage2 = [toCopy sourceLanguage];
  if ([sourceLanguage isEqualToString:sourceLanguage2])
  {
    translationLanguage = [(IMTranslatedMessagePart *)self translationLanguage];
    translationLanguage2 = [toCopy translationLanguage];
    v9 = [translationLanguage isEqualToString:translationLanguage2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  sourceLanguage = self->_sourceLanguage;
  coderCopy = coder;
  [coderCopy encodeObject:sourceLanguage forKey:@"sourceLanguage"];
  [coderCopy encodeObject:self->_translationLanguage forKey:@"translationLanguage"];
  [coderCopy encodeObject:self->_translatedText forKey:@"translatedText"];
}

- (IMTranslatedMessagePart)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IMTranslatedMessagePart;
  v5 = [(IMTranslatedMessagePart *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceLanguage"];
    sourceLanguage = v5->_sourceLanguage;
    v5->_sourceLanguage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translationLanguage"];
    translationLanguage = v5->_translationLanguage;
    v5->_translationLanguage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translatedText"];
    translatedText = v5->_translatedText;
    v5->_translatedText = v10;
  }

  return v5;
}

@end