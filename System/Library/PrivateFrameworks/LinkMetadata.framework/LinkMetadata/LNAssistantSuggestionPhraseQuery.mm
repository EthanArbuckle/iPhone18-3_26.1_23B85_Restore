@interface LNAssistantSuggestionPhraseQuery
- (BOOL)isEqual:(id)a3;
- (LNAssistantSuggestionPhraseQuery)initWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4;
- (LNAssistantSuggestionPhraseQuery)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantSuggestionPhraseQuery

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
  v5 = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
  v6 = [v3 stringWithFormat:@"bundleIdentifier:%@, actionIdentifier:%@", v4, v5];

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

    v7 = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
    v8 = [(LNAssistantSuggestionPhraseQuery *)v6 bundleIdentifier];
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

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
    v16 = [(LNAssistantSuggestionPhraseQuery *)v6 actionIdentifier];
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
        LOBYTE(v12) = [v14 isEqualToString:v17];
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
  v3 = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (LNAssistantSuggestionPhraseQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];

  v7 = [(LNAssistantSuggestionPhraseQuery *)self initWithBundleIdentifier:v5 actionIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
  [v4 encodeObject:v6 forKey:@"actionIdentifier"];
}

- (LNAssistantSuggestionPhraseQuery)initWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseQuery.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (!self)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseQuery.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    v10 = [v7 copy];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v10;

    v12 = [v9 copy];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = v12;

    v14 = self;
  }

LABEL_5:

  return self;
}

@end