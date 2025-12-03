@interface LNAssistantSuggestionPhraseMetadata
- (BOOL)isEqual:(id)equal;
- (LNAssistantSuggestionPhraseMetadata)initWithActionIdentifier:(id)identifier templateKey:(id)key parametersMetadata:(id)metadata;
- (LNAssistantSuggestionPhraseMetadata)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantSuggestionPhraseMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  actionIdentifier = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
  templateKey = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
  parametersMetadata = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
  v7 = [parametersMetadata valueForKeyPath:@"description"];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"actionIdentifier:%@, templateKey:%@, parametersMetadata:[%@]", actionIdentifier, templateKey, v8];

  return v9;
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
      LOBYTE(parametersMetadata3) = 0;
LABEL_27:

      goto LABEL_28;
    }

    actionIdentifier = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
    actionIdentifier2 = [(LNAssistantSuggestionPhraseMetadata *)v6 actionIdentifier];
    v9 = actionIdentifier;
    v10 = actionIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(parametersMetadata3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(parametersMetadata3) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    templateKey = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
    templateKey2 = [(LNAssistantSuggestionPhraseMetadata *)v6 templateKey];
    v14 = templateKey;
    v18 = templateKey2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(parametersMetadata3) = 0;
      v19 = v18;
      parametersMetadata5 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_22;
      }

      LODWORD(parametersMetadata3) = [v14 isEqualToString:v18];

      if (!parametersMetadata3)
      {
        goto LABEL_25;
      }
    }

    parametersMetadata = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
    parametersMetadata2 = [(LNAssistantSuggestionPhraseMetadata *)v6 parametersMetadata];

    if (parametersMetadata == parametersMetadata2)
    {
      LOBYTE(parametersMetadata3) = 1;
      goto LABEL_25;
    }

    parametersMetadata3 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
    if (!parametersMetadata3)
    {
LABEL_25:

      goto LABEL_26;
    }

    parametersMetadata4 = [(LNAssistantSuggestionPhraseMetadata *)v6 parametersMetadata];

    if (!parametersMetadata4)
    {
      LOBYTE(parametersMetadata3) = 0;
      goto LABEL_25;
    }

    v24 = MEMORY[0x1E695DFD8];
    parametersMetadata5 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
    v19 = [v24 setWithArray:parametersMetadata5];
    parametersMetadata3 = MEMORY[0x1E695DFD8];
    parametersMetadata6 = [(LNAssistantSuggestionPhraseMetadata *)v6 parametersMetadata];
    v25 = [parametersMetadata3 setWithArray:parametersMetadata6];
    LOBYTE(parametersMetadata3) = [v19 isEqualToSet:v25];

LABEL_22:
    goto LABEL_25;
  }

  LOBYTE(parametersMetadata3) = 1;
LABEL_28:

  return parametersMetadata3;
}

- (unint64_t)hash
{
  actionIdentifier = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
  v4 = [actionIdentifier hash];
  templateKey = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
  v6 = [templateKey hash] ^ v4;
  parametersMetadata = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
  v8 = [parametersMetadata hash];

  return v6 ^ v8;
}

- (LNAssistantSuggestionPhraseMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateKey"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"parametersMetadata"];

  v11 = [(LNAssistantSuggestionPhraseMetadata *)self initWithActionIdentifier:v5 templateKey:v6 parametersMetadata:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  templateKey = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
  [coderCopy encodeObject:templateKey forKey:@"templateKey"];

  parametersMetadata = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
  [coderCopy encodeObject:parametersMetadata forKey:@"parametersMetadata"];
}

- (LNAssistantSuggestionPhraseMetadata)initWithActionIdentifier:(id)identifier templateKey:(id)key parametersMetadata:(id)metadata
{
  identifierCopy = identifier;
  keyCopy = key;
  metadataCopy = metadata;
  if (identifierCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (keyCopy)
    {
LABEL_3:
      if (metadataCopy)
      {
        goto LABEL_4;
      }

LABEL_9:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parametersMetadata"}];

      if (!self)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseMetadata.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"templateKey"}];

  if (!metadataCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (self)
  {
LABEL_5:
    v12 = [identifierCopy copy];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = v12;

    v14 = [keyCopy copy];
    templateKey = self->_templateKey;
    self->_templateKey = v14;

    v16 = [metadataCopy copy];
    parametersMetadata = self->_parametersMetadata;
    self->_parametersMetadata = v16;

    selfCopy = self;
  }

LABEL_6:

  return self;
}

@end