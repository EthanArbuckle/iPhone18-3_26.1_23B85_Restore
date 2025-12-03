@interface LNAssistantSuggestionPhraseQuery
- (BOOL)isEqual:(id)equal;
- (LNAssistantSuggestionPhraseQuery)initWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier;
- (LNAssistantSuggestionPhraseQuery)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantSuggestionPhraseQuery

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
  actionIdentifier = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
  v6 = [v3 stringWithFormat:@"bundleIdentifier:%@, actionIdentifier:%@", bundleIdentifier, actionIdentifier];

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

    bundleIdentifier = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
    bundleIdentifier2 = [(LNAssistantSuggestionPhraseQuery *)v6 bundleIdentifier];
    v9 = bundleIdentifier;
    v10 = bundleIdentifier2;
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

    actionIdentifier = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
    actionIdentifier2 = [(LNAssistantSuggestionPhraseQuery *)v6 actionIdentifier];
    v14 = actionIdentifier;
    v17 = actionIdentifier2;
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
  bundleIdentifier = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  actionIdentifier = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
  v6 = [actionIdentifier hash];

  return v6 ^ v4;
}

- (LNAssistantSuggestionPhraseQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];

  v7 = [(LNAssistantSuggestionPhraseQuery *)self initWithBundleIdentifier:v5 actionIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNAssistantSuggestionPhraseQuery *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  actionIdentifier = [(LNAssistantSuggestionPhraseQuery *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];
}

- (LNAssistantSuggestionPhraseQuery)initWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  v9 = actionIdentifierCopy;
  if (identifierCopy)
  {
    if (actionIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseQuery.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (!self)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAssistantSuggestionPhraseQuery.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    v10 = [identifierCopy copy];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v10;

    v12 = [v9 copy];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = v12;

    selfCopy = self;
  }

LABEL_5:

  return self;
}

@end