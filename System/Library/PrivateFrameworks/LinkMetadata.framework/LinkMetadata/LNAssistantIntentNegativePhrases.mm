@interface LNAssistantIntentNegativePhrases
- (BOOL)isEqual:(id)equal;
- (LNAssistantIntentNegativePhrases)initWithCoder:(id)coder;
- (LNAssistantIntentNegativePhrases)initWithIntentIdentifier:(id)identifier phrases:(id)phrases;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantIntentNegativePhrases

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

    intentIdentifier = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
    intentIdentifier2 = [(LNAssistantIntentNegativePhrases *)v6 intentIdentifier];
    v9 = intentIdentifier;
    v10 = intentIdentifier2;
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

    phrases = [(LNAssistantIntentNegativePhrases *)self phrases];
    phrases2 = [(LNAssistantIntentNegativePhrases *)v6 phrases];
    v14 = phrases;
    v17 = phrases2;
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
  intentIdentifier = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
  v4 = [intentIdentifier hash];
  phrases = [(LNAssistantIntentNegativePhrases *)self phrases];
  v6 = [phrases hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intentIdentifier = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
  phrases = [(LNAssistantIntentNegativePhrases *)self phrases];
  v8 = [v3 stringWithFormat:@"<%@: %p, intentIdentifier: %@, phrase: %@>", v5, self, intentIdentifier, phrases];

  return v8;
}

- (LNAssistantIntentNegativePhrases)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phrases"];

    if (v9)
    {
      self = [(LNAssistantIntentNegativePhrases *)self initWithIntentIdentifier:v5 phrases:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  intentIdentifier = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
  [coderCopy encodeObject:intentIdentifier forKey:@"intentIdentifier"];

  phrases = [(LNAssistantIntentNegativePhrases *)self phrases];
  [coderCopy encodeObject:phrases forKey:@"phrases"];
}

- (LNAssistantIntentNegativePhrases)initWithIntentIdentifier:(id)identifier phrases:(id)phrases
{
  identifierCopy = identifier;
  phrasesCopy = phrases;
  v9 = phrasesCopy;
  if (identifierCopy)
  {
    if (phrasesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantIntentNegativePhrases.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"intentIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAssistantIntentNegativePhrases.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"phrases"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNAssistantIntentNegativePhrases;
  v10 = [(LNAssistantIntentNegativePhrases *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    intentIdentifier = v10->_intentIdentifier;
    v10->_intentIdentifier = v11;

    v13 = [v9 copy];
    phrases = v10->_phrases;
    v10->_phrases = v13;

    v15 = v10;
  }

  return v10;
}

@end