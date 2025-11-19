@interface LNAssistantIntentNegativePhrases
- (BOOL)isEqual:(id)a3;
- (LNAssistantIntentNegativePhrases)initWithCoder:(id)a3;
- (LNAssistantIntentNegativePhrases)initWithIntentIdentifier:(id)a3 phrases:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantIntentNegativePhrases

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

    v7 = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
    v8 = [(LNAssistantIntentNegativePhrases *)v6 intentIdentifier];
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

    v15 = [(LNAssistantIntentNegativePhrases *)self phrases];
    v16 = [(LNAssistantIntentNegativePhrases *)v6 phrases];
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
  v3 = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAssistantIntentNegativePhrases *)self phrases];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
  v7 = [(LNAssistantIntentNegativePhrases *)self phrases];
  v8 = [v3 stringWithFormat:@"<%@: %p, intentIdentifier: %@, phrase: %@>", v5, self, v6, v7];

  return v8;
}

- (LNAssistantIntentNegativePhrases)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"phrases"];

    if (v9)
    {
      self = [(LNAssistantIntentNegativePhrases *)self initWithIntentIdentifier:v5 phrases:v9];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantIntentNegativePhrases *)self intentIdentifier];
  [v4 encodeObject:v5 forKey:@"intentIdentifier"];

  v6 = [(LNAssistantIntentNegativePhrases *)self phrases];
  [v4 encodeObject:v6 forKey:@"phrases"];
}

- (LNAssistantIntentNegativePhrases)initWithIntentIdentifier:(id)a3 phrases:(id)a4
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
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNAssistantIntentNegativePhrases.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"intentIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNAssistantIntentNegativePhrases.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"phrases"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNAssistantIntentNegativePhrases;
  v10 = [(LNAssistantIntentNegativePhrases *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
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