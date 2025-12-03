@interface LNAssistantSuggestionPhrase
- (BOOL)isEqual:(id)equal;
- (LNAssistantSuggestionPhrase)initWithCoder:(id)coder;
- (LNAssistantSuggestionPhrase)initWithPhrase:(id)phrase phraseMetadata:(id)metadata;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantSuggestionPhrase

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  phrase = [(LNAssistantSuggestionPhrase *)self phrase];
  phraseMetadata = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
  v6 = [v3 stringWithFormat:@"phrase:%@ phraseMetadata:%@", phrase, phraseMetadata];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    phrase = [(LNAssistantSuggestionPhrase *)self phrase];
    phrase2 = [(LNAssistantSuggestionPhrase *)v6 phrase];
    v9 = phrase;
    v10 = phrase2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    phraseMetadata = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
    phraseMetadata2 = [(LNAssistantSuggestionPhrase *)v6 phraseMetadata];
    v14 = phraseMetadata;
    v17 = phraseMetadata2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  phrase = [(LNAssistantSuggestionPhrase *)self phrase];
  v4 = [phrase hash];
  phraseMetadata = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
  v6 = [phraseMetadata hash];

  return v6 ^ v4;
}

- (LNAssistantSuggestionPhrase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phraseMetadata"];

  v7 = [(LNAssistantSuggestionPhrase *)self initWithPhrase:v5 phraseMetadata:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phrase = [(LNAssistantSuggestionPhrase *)self phrase];
  [coderCopy encodeObject:phrase forKey:@"phrase"];

  phraseMetadata = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
  [coderCopy encodeObject:phraseMetadata forKey:@"phraseMetadata"];
}

- (LNAssistantSuggestionPhrase)initWithPhrase:(id)phrase phraseMetadata:(id)metadata
{
  phraseCopy = phrase;
  metadataCopy = metadata;
  if (!phraseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhrase.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    v9 = [phraseCopy copy];
    phrase = self->_phrase;
    self->_phrase = v9;

    v11 = [metadataCopy copy];
    phraseMetadata = self->_phraseMetadata;
    self->_phraseMetadata = v11;

    selfCopy = self;
  }

LABEL_4:

  return self;
}

@end