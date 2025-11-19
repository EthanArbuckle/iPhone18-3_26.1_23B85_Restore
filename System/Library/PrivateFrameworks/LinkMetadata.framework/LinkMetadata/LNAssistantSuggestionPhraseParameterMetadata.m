@interface LNAssistantSuggestionPhraseParameterMetadata
- (BOOL)isEqual:(id)a3;
- (LNAssistantSuggestionPhraseParameterMetadata)initWithCoder:(id)a3;
- (LNAssistantSuggestionPhraseParameterMetadata)initWithParameterName:(id)a3 parameterValueToSet:(id)a4 hasToBeOnScreenParameter:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantSuggestionPhraseParameterMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
  v5 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
  v6 = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
  v7 = [v3 stringWithFormat:@"paramName:%@, parameterValueToSet:%@, hasToBeOnScreenParameter:%@", v4, v5, v6];

  return v7;
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
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
    v8 = [(LNAssistantSuggestionPhraseParameterMetadata *)v6 parameterName];
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
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
    v17 = [(LNAssistantSuggestionPhraseParameterMetadata *)v6 parameterValueToSet];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
    v22 = [(LNAssistantSuggestionPhraseParameterMetadata *)v6 hasToBeOnScreenParameter];
    v20 = v21;
    v23 = v22;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
  v4 = [v3 hash];
  v5 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (LNAssistantSuggestionPhraseParameterMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterValueToSet"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasToBeOnScreenParameter"];

  v8 = [(LNAssistantSuggestionPhraseParameterMetadata *)self initWithParameterName:v5 parameterValueToSet:v6 hasToBeOnScreenParameter:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
  [v4 encodeObject:v5 forKey:@"parameterName"];

  v6 = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
  [v4 encodeObject:v6 forKey:@"parameterValueToSet"];

  v7 = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
  [v4 encodeObject:v7 forKey:@"hasToBeOnScreenParameter"];
}

- (LNAssistantSuggestionPhraseParameterMetadata)initWithParameterName:(id)a3 parameterValueToSet:(id)a4 hasToBeOnScreenParameter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseParameterMetadata.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    v12 = [v9 copy];
    parameterName = self->_parameterName;
    self->_parameterName = v12;

    v14 = [v10 copy];
    parameterValueToSet = self->_parameterValueToSet;
    self->_parameterValueToSet = v14;

    v16 = [v11 copy];
    hasToBeOnScreenParameter = self->_hasToBeOnScreenParameter;
    self->_hasToBeOnScreenParameter = v16;

    v18 = self;
  }

LABEL_4:

  return self;
}

@end