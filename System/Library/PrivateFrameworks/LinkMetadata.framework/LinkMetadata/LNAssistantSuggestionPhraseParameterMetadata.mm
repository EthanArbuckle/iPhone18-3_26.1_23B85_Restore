@interface LNAssistantSuggestionPhraseParameterMetadata
- (BOOL)isEqual:(id)equal;
- (LNAssistantSuggestionPhraseParameterMetadata)initWithCoder:(id)coder;
- (LNAssistantSuggestionPhraseParameterMetadata)initWithParameterName:(id)name parameterValueToSet:(id)set hasToBeOnScreenParameter:(id)parameter;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantSuggestionPhraseParameterMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  parameterName = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
  parameterValueToSet = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
  hasToBeOnScreenParameter = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
  v7 = [v3 stringWithFormat:@"paramName:%@, parameterValueToSet:%@, hasToBeOnScreenParameter:%@", parameterName, parameterValueToSet, hasToBeOnScreenParameter];

  return v7;
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
LABEL_27:

      goto LABEL_28;
    }

    parameterName = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
    parameterName2 = [(LNAssistantSuggestionPhraseParameterMetadata *)v6 parameterName];
    v9 = parameterName;
    v10 = parameterName2;
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

    parameterValueToSet = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
    parameterValueToSet2 = [(LNAssistantSuggestionPhraseParameterMetadata *)v6 parameterValueToSet];
    v14 = parameterValueToSet;
    v18 = parameterValueToSet2;
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

    hasToBeOnScreenParameter = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
    hasToBeOnScreenParameter2 = [(LNAssistantSuggestionPhraseParameterMetadata *)v6 hasToBeOnScreenParameter];
    v20 = hasToBeOnScreenParameter;
    v23 = hasToBeOnScreenParameter2;
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
  parameterName = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
  v4 = [parameterName hash];
  parameterValueToSet = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
  v6 = [parameterValueToSet hash] ^ v4;
  hasToBeOnScreenParameter = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
  v8 = [hasToBeOnScreenParameter hash];

  return v6 ^ v8;
}

- (LNAssistantSuggestionPhraseParameterMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterValueToSet"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasToBeOnScreenParameter"];

  v8 = [(LNAssistantSuggestionPhraseParameterMetadata *)self initWithParameterName:v5 parameterValueToSet:v6 hasToBeOnScreenParameter:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterName = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterName];
  [coderCopy encodeObject:parameterName forKey:@"parameterName"];

  parameterValueToSet = [(LNAssistantSuggestionPhraseParameterMetadata *)self parameterValueToSet];
  [coderCopy encodeObject:parameterValueToSet forKey:@"parameterValueToSet"];

  hasToBeOnScreenParameter = [(LNAssistantSuggestionPhraseParameterMetadata *)self hasToBeOnScreenParameter];
  [coderCopy encodeObject:hasToBeOnScreenParameter forKey:@"hasToBeOnScreenParameter"];
}

- (LNAssistantSuggestionPhraseParameterMetadata)initWithParameterName:(id)name parameterValueToSet:(id)set hasToBeOnScreenParameter:(id)parameter
{
  nameCopy = name;
  setCopy = set;
  parameterCopy = parameter;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseParameterMetadata.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"parameterName"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    v12 = [nameCopy copy];
    parameterName = self->_parameterName;
    self->_parameterName = v12;

    v14 = [setCopy copy];
    parameterValueToSet = self->_parameterValueToSet;
    self->_parameterValueToSet = v14;

    v16 = [parameterCopy copy];
    hasToBeOnScreenParameter = self->_hasToBeOnScreenParameter;
    self->_hasToBeOnScreenParameter = v16;

    selfCopy = self;
  }

LABEL_4:

  return self;
}

@end