@interface LNAssistantSuggestionPhrase
- (BOOL)isEqual:(id)a3;
- (LNAssistantSuggestionPhrase)initWithCoder:(id)a3;
- (LNAssistantSuggestionPhrase)initWithPhrase:(id)a3 phraseMetadata:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantSuggestionPhrase

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNAssistantSuggestionPhrase *)self phrase];
  v5 = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
  v6 = [v3 stringWithFormat:@"phrase:%@ phraseMetadata:%@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNAssistantSuggestionPhrase *)self phrase];
    v8 = [(LNAssistantSuggestionPhrase *)v6 phrase];
    v9 = v7;
    v10 = v8;
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

    v15 = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
    v16 = [(LNAssistantSuggestionPhrase *)v6 phraseMetadata];
    v14 = v15;
    v17 = v16;
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
  v3 = [(LNAssistantSuggestionPhrase *)self phrase];
  v4 = [v3 hash];
  v5 = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (LNAssistantSuggestionPhrase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phraseMetadata"];

  v7 = [(LNAssistantSuggestionPhrase *)self initWithPhrase:v5 phraseMetadata:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantSuggestionPhrase *)self phrase];
  [v4 encodeObject:v5 forKey:@"phrase"];

  v6 = [(LNAssistantSuggestionPhrase *)self phraseMetadata];
  [v4 encodeObject:v6 forKey:@"phraseMetadata"];
}

- (LNAssistantSuggestionPhrase)initWithPhrase:(id)a3 phraseMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhrase.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    v9 = [v7 copy];
    phrase = self->_phrase;
    self->_phrase = v9;

    v11 = [v8 copy];
    phraseMetadata = self->_phraseMetadata;
    self->_phraseMetadata = v11;

    v13 = self;
  }

LABEL_4:

  return self;
}

@end