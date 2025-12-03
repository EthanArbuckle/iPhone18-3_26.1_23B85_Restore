@interface LNActionDeprecationMetadata
- (BOOL)isEqual:(id)equal;
- (LNActionDeprecationMetadata)initWithCoder:(id)coder;
- (LNActionDeprecationMetadata)initWithMessageText:(id)text replacedByIntentIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionDeprecationMetadata

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

    messageText = [(LNActionDeprecationMetadata *)self messageText];
    messageText2 = [(LNActionDeprecationMetadata *)v6 messageText];
    v9 = messageText;
    v10 = messageText2;
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

    replacedByIntentIdentifier = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
    replacedByIntentIdentifier2 = [(LNActionDeprecationMetadata *)v6 replacedByIntentIdentifier];
    v14 = replacedByIntentIdentifier;
    v17 = replacedByIntentIdentifier2;
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
  messageText = [(LNActionDeprecationMetadata *)self messageText];
  v4 = [messageText hash];
  replacedByIntentIdentifier = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  v6 = [replacedByIntentIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  messageText = [(LNActionDeprecationMetadata *)self messageText];
  replacedByIntentIdentifier = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, message: %@, replacedByIntentIdentifier: %@>", v5, self, messageText, replacedByIntentIdentifier];

  return v8;
}

- (LNActionDeprecationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageText"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacedByIntentIdentifier"];
    self = [(LNActionDeprecationMetadata *)self initWithMessageText:v5 replacedByIntentIdentifier:v6];

    selfCopy = self;
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
  messageText = [(LNActionDeprecationMetadata *)self messageText];
  [coderCopy encodeObject:messageText forKey:@"messageText"];

  replacedByIntentIdentifier = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  [coderCopy encodeObject:replacedByIntentIdentifier forKey:@"replacedByIntentIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  messageText = [(LNActionDeprecationMetadata *)self messageText];
  replacedByIntentIdentifier = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  v7 = [v4 initWithMessageText:messageText replacedByIntentIdentifier:replacedByIntentIdentifier];

  return v7;
}

- (LNActionDeprecationMetadata)initWithMessageText:(id)text replacedByIntentIdentifier:(id)identifier
{
  textCopy = text;
  identifierCopy = identifier;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionDeprecationMetadata.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"messageText"}];
  }

  v17.receiver = self;
  v17.super_class = LNActionDeprecationMetadata;
  v9 = [(LNActionDeprecationMetadata *)&v17 init];
  if (v9)
  {
    v10 = [textCopy copy];
    messageText = v9->_messageText;
    v9->_messageText = v10;

    v12 = [identifierCopy copy];
    replacedByIntentIdentifier = v9->_replacedByIntentIdentifier;
    v9->_replacedByIntentIdentifier = v12;

    v14 = v9;
  }

  return v9;
}

@end