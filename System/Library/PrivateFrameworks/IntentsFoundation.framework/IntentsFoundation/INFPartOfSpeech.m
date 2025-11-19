@interface INFPartOfSpeech
+ (id)adjectiveWithIdentifier:(id)a3 language:(id)a4;
+ (id)nounWithGender:(unint64_t)a3 identifier:(id)a4 language:(id)a5;
+ (id)nounWithIdentifier:(id)a3 language:(id)a4;
- (INFPartOfSpeech)init;
- (INFPartOfSpeech)initWithDictionary:(id)a3 identifier:(id)a4;
- (INFPartOfSpeech)initWithPartOfSpeechType:(unint64_t)a3 identifier:(id)a4 language:(id)a5;
- (id)contributingSentenceContext;
- (id)dictionaryRepresentation;
- (id)stringForContext:(id)a3;
- (id)stringForVariants:(unint64_t)a3;
- (id)stringForVariantsDescriptor:(id)a3;
- (void)setString:(id)a3 forVariants:(unint64_t)a4;
- (void)setString:(id)a3 forVariantsDescriptor:(id)a4;
- (void)validateSelf;
@end

@implementation INFPartOfSpeech

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
    [v3 setObject:v7 forKeyedSubscript:@"LOCPartOfSpeechType"];
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
    [v3 setObject:v11 forKeyedSubscript:@"LOCGender"];
  }

  [v3 setObject:self->_variants forKeyedSubscript:@"LOCVariants"];
  [v3 setObject:self->_language forKeyedSubscript:@"LOCLanguageIdentifier"];

  return v3;
}

- (id)stringForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 number];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = +[INFVariantsDescriptor variant];
  [v8 setPlurality:v7];
  [v8 setGender:{objc_msgSend(v4, "gender")}];
  v9 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    do
    {
      v13 = [v8 variantByRemovingOneAttribute];
      v14 = [v8 isEqual:v13];

      if (v14)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v11 = [v8 variantByRemovingOneAttribute];

      v12 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:v11];
      v8 = v11;
    }

    while (!v12);
    v10 = v12;
    v8 = v11;
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

- (id)stringForVariantsDescriptor:(id)a3
{
  variants = self->_variants;
  v4 = [a3 dictionaryKey];
  v5 = [(NSMutableDictionary *)variants objectForKeyedSubscript:v4];

  return v5;
}

- (void)setString:(id)a3 forVariantsDescriptor:(id)a4
{
  variants = self->_variants;
  v6 = a3;
  v7 = [a4 dictionaryKey];
  [(NSMutableDictionary *)variants setObject:v6 forKeyedSubscript:v7];
}

- (id)stringForVariants:(unint64_t)a3
{
  v4 = [INFVariantsDescriptor variantWithVariants:a3];
  v5 = [(INFPartOfSpeech *)self stringForVariantsDescriptor:v4];

  return v5;
}

- (void)setString:(id)a3 forVariants:(unint64_t)a4
{
  v6 = a3;
  v7 = [INFVariantsDescriptor variantWithVariants:a4];
  [(INFPartOfSpeech *)self setString:v6 forVariantsDescriptor:v7];
}

- (void)validateSelf
{
  if (self->_partOfSpeechType == 2)
  {
    self->_gender = 0;
  }
}

- (INFPartOfSpeech)initWithDictionary:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INFPartOfSpeech *)self init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"LOCLanguageIdentifier"];
    v10 = [v9 copy];
    language = v8->_language;
    v8->_language = v10;

    v12 = [v6 objectForKeyedSubscript:@"LOCVariants"];
    variants = v8->_variants;
    v8->_variants = v12;

    objc_storeStrong(&v8->_identifier, a4);
    v14 = [v6 objectForKeyedSubscript:@"LOCPartOfSpeechType"];
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
    v16 = [v6 objectForKeyedSubscript:@"LOCGender"];
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

- (INFPartOfSpeech)initWithPartOfSpeechType:(unint64_t)a3 identifier:(id)a4 language:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(INFPartOfSpeech *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_partOfSpeechType = a3;
    objc_storeStrong(&v11->_identifier, a4);
    v13 = [v10 copy];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    variants = v2->_variants;
    v2->_variants = v3;

    identifier = v2->_identifier;
    v2->_identifier = &stru_28676DA60;

    v2->_partOfSpeechType = 0;
    v2->_gender = 0;
    language = v2->_language;
    v2->_language = &stru_28676DA60;
  }

  return v2;
}

+ (id)adjectiveWithIdentifier:(id)a3 language:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPartOfSpeechType:2 identifier:v7 language:v6];

  return v8;
}

+ (id)nounWithGender:(unint64_t)a3 identifier:(id)a4 language:(id)a5
{
  v6 = [a1 nounWithIdentifier:a4 language:a5];
  [v6 setGender:a3];

  return v6;
}

+ (id)nounWithIdentifier:(id)a3 language:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPartOfSpeechType:1 identifier:v7 language:v6];

  return v8;
}

@end