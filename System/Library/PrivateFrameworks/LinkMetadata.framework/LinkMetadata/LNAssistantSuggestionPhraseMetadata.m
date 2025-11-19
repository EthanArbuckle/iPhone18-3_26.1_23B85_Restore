@interface LNAssistantSuggestionPhraseMetadata
- (BOOL)isEqual:(id)a3;
- (LNAssistantSuggestionPhraseMetadata)initWithActionIdentifier:(id)a3 templateKey:(id)a4 parametersMetadata:(id)a5;
- (LNAssistantSuggestionPhraseMetadata)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantSuggestionPhraseMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
  v5 = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
  v6 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
  v7 = [v6 valueForKeyPath:@"description"];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"actionIdentifier:%@, templateKey:%@, parametersMetadata:[%@]", v4, v5, v8];

  return v9;
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

    v7 = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
    v8 = [(LNAssistantSuggestionPhraseMetadata *)v6 actionIdentifier];
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

    v16 = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
    v17 = [(LNAssistantSuggestionPhraseMetadata *)v6 templateKey];
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
        goto LABEL_22;
      }

      LODWORD(v12) = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
    v22 = [(LNAssistantSuggestionPhraseMetadata *)v6 parametersMetadata];

    if (v21 == v22)
    {
      LOBYTE(v12) = 1;
      goto LABEL_25;
    }

    v12 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
    if (!v12)
    {
LABEL_25:

      goto LABEL_26;
    }

    v23 = [(LNAssistantSuggestionPhraseMetadata *)v6 parametersMetadata];

    if (!v23)
    {
      LOBYTE(v12) = 0;
      goto LABEL_25;
    }

    v24 = MEMORY[0x1E695DFD8];
    v20 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
    v19 = [v24 setWithArray:v20];
    v12 = MEMORY[0x1E695DFD8];
    v27 = [(LNAssistantSuggestionPhraseMetadata *)v6 parametersMetadata];
    v25 = [v12 setWithArray:v27];
    LOBYTE(v12) = [v19 isEqualToSet:v25];

LABEL_22:
    goto LABEL_25;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (LNAssistantSuggestionPhraseMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templateKey"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"parametersMetadata"];

  v11 = [(LNAssistantSuggestionPhraseMetadata *)self initWithActionIdentifier:v5 templateKey:v6 parametersMetadata:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantSuggestionPhraseMetadata *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(LNAssistantSuggestionPhraseMetadata *)self templateKey];
  [v4 encodeObject:v6 forKey:@"templateKey"];

  v7 = [(LNAssistantSuggestionPhraseMetadata *)self parametersMetadata];
  [v4 encodeObject:v7 forKey:@"parametersMetadata"];
}

- (LNAssistantSuggestionPhraseMetadata)initWithActionIdentifier:(id)a3 templateKey:(id)a4 parametersMetadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_9:
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parametersMetadata"}];

      if (!self)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseMetadata.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"templateKey"}];

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (self)
  {
LABEL_5:
    v12 = [v9 copy];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = v12;

    v14 = [v10 copy];
    templateKey = self->_templateKey;
    self->_templateKey = v14;

    v16 = [v11 copy];
    parametersMetadata = self->_parametersMetadata;
    self->_parametersMetadata = v16;

    v18 = self;
  }

LABEL_6:

  return self;
}

@end