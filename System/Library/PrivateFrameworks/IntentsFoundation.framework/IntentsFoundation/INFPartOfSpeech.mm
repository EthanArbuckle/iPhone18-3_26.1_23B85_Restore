@interface INFPartOfSpeech
+ (id)adjectiveWithIdentifier:(id)identifier language:(id)language;
+ (id)nounWithGender:(unint64_t)gender identifier:(id)identifier language:(id)language;
+ (id)nounWithIdentifier:(id)identifier language:(id)language;
- (INFPartOfSpeech)init;
- (INFPartOfSpeech)initWithDictionary:(id)dictionary identifier:(id)identifier;
- (INFPartOfSpeech)initWithPartOfSpeechType:(unint64_t)type identifier:(id)identifier language:(id)language;
- (id)contributingSentenceContext;
- (id)dictionaryRepresentation;
- (id)stringForContext:(id)context;
- (id)stringForVariants:(unint64_t)variants;
- (id)stringForVariantsDescriptor:(id)descriptor;
- (void)setString:(id)string forVariants:(unint64_t)variants;
- (void)setString:(id)string forVariantsDescriptor:(id)descriptor;
- (void)validateSelf;
@end

@implementation INFPartOfSpeech

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  partOfSpeechType = self->_partOfSpeechType;
  if (partOfSpeechType)
  {
    v5 = @"LOCPartOfSpeechTypeNone";
    if (partOfSpeechType == 1)
    {
      v5 = @"LOCPartOfSpeechTypeNoun";
    }

    if (partOfSpeechType == 2)
    {
      v6 = @"LOCPartOfSpeechTypeAdjective";
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
    [dictionary setObject:v7 forKeyedSubscript:@"LOCPartOfSpeechType"];
  }

  gender = self->_gender;
  if (gender)
  {
    v9 = @"LOCGenderNone";
    if (gender == 1)
    {
      v9 = @"LOCGenderFeminine";
    }

    if (gender == 2)
    {
      v10 = @"LOCGenderMasculine";
    }

    else
    {
      v10 = v9;
    }

    v11 = v10;
    [dictionary setObject:v11 forKeyedSubscript:@"LOCGender"];
  }

  [dictionary setObject:self->_variants forKeyedSubscript:@"LOCVariants"];
  [dictionary setObject:self->_language forKeyedSubscript:@"LOCLanguageIdentifier"];

  return dictionary;
}

- (id)stringForContext:(id)context
{
  contextCopy = context;
  number = [contextCopy number];
  integerValue = [number integerValue];

  if (integerValue == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = +[INFVariantsDescriptor variant];
  [v8 setPlurality:v7];
  [v8 setGender:{objc_msgSend(contextCopy, "gender")}];
  v9 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    do
    {
      variantByRemovingOneAttribute = [v8 variantByRemovingOneAttribute];
      v14 = [v8 isEqual:variantByRemovingOneAttribute];

      if (v14)
      {
        v10 = 0;
        goto LABEL_10;
      }

      variantByRemovingOneAttribute2 = [v8 variantByRemovingOneAttribute];

      v12 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:variantByRemovingOneAttribute2];
      v8 = variantByRemovingOneAttribute2;
    }

    while (!v12);
    v10 = v12;
    v8 = variantByRemovingOneAttribute2;
  }

LABEL_10:
  v15 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:v8];

  return v15;
}

- (id)contributingSentenceContext
{
  v3 = +[INFSentenceContext sentenceContext];
  v4 = v3;
  if (self->_gender)
  {
    [v3 setGender:?];
  }

  return v4;
}

- (id)stringForVariantsDescriptor:(id)descriptor
{
  variants = self->_variants;
  dictionaryKey = [descriptor dictionaryKey];
  v5 = [(NSMutableDictionary *)variants objectForKeyedSubscript:dictionaryKey];

  return v5;
}

- (void)setString:(id)string forVariantsDescriptor:(id)descriptor
{
  variants = self->_variants;
  stringCopy = string;
  dictionaryKey = [descriptor dictionaryKey];
  [(NSMutableDictionary *)variants setObject:stringCopy forKeyedSubscript:dictionaryKey];
}

- (id)stringForVariants:(unint64_t)variants
{
  v4 = [INFVariantsDescriptor variantWithVariants:variants];
  v5 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:v4];

  return v5;
}

- (void)setString:(id)string forVariants:(unint64_t)variants
{
  stringCopy = string;
  v7 = [INFVariantsDescriptor variantWithVariants:variants];
  [(INFPartOfSpeech *)self setString:stringCopy forVariantsDescriptor:v7];
}

- (void)validateSelf
{
  if (self->_partOfSpeechType == 2)
  {
    self->_gender = 0;
  }
}

- (INFPartOfSpeech)initWithDictionary:(id)dictionary identifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v8 = [(INFPartOfSpeech *)self init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"LOCLanguageIdentifier"];
    v10 = [v9 copy];
    language = v8->_language;
    v8->_language = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"LOCVariants"];
    variants = v8->_variants;
    v8->_variants = v12;

    objc_storeStrong(&v8->_identifier, identifier);
    v14 = [dictionaryCopy objectForKeyedSubscript:@"LOCPartOfSpeechType"];
    if ([v14 isEqualToString:@"LOCPartOfSpeechTypeNoun"])
    {
      v15 = 1;
    }

    else if ([v14 isEqualToString:@"LOCPartOfSpeechTypeAdjective"])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v8->_partOfSpeechType = v15;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"LOCGender"];
    if ([v16 isEqualToString:@"LOCGenderFeminine"])
    {
      v17 = 1;
    }

    else if ([v16 isEqualToString:@"LOCGenderMasculine"])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v8->_gender = v17;
  }

  return v8;
}

- (INFPartOfSpeech)initWithPartOfSpeechType:(unint64_t)type identifier:(id)identifier language:(id)language
{
  identifierCopy = identifier;
  languageCopy = language;
  v11 = [(INFPartOfSpeech *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_partOfSpeechType = type;
    objc_storeStrong(&v11->_identifier, identifier);
    v13 = [languageCopy copy];
    language = v12->_language;
    v12->_language = v13;
  }

  return v12;
}

- (INFPartOfSpeech)init
{
  v8.receiver = self;
  v8.super_class = INFPartOfSpeech;
  v2 = [(INFPartOfSpeech *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    variants = v2->_variants;
    v2->_variants = dictionary;

    identifier = v2->_identifier;
    v2->_identifier = &stru_28676DA60;

    v2->_partOfSpeechType = 0;
    v2->_gender = 0;
    language = v2->_language;
    v2->_language = &stru_28676DA60;
  }

  return v2;
}

+ (id)adjectiveWithIdentifier:(id)identifier language:(id)language
{
  languageCopy = language;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithPartOfSpeechType:2 identifier:identifierCopy language:languageCopy];

  return v8;
}

+ (id)nounWithGender:(unint64_t)gender identifier:(id)identifier language:(id)language
{
  v6 = [self nounWithIdentifier:identifier language:language];
  [v6 setGender:gender];

  return v6;
}

+ (id)nounWithIdentifier:(id)identifier language:(id)language
{
  languageCopy = language;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithPartOfSpeechType:1 identifier:identifierCopy language:languageCopy];

  return v8;
}

@end