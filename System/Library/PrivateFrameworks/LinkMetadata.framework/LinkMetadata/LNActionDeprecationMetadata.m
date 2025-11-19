@interface LNActionDeprecationMetadata
- (BOOL)isEqual:(id)a3;
- (LNActionDeprecationMetadata)initWithCoder:(id)a3;
- (LNActionDeprecationMetadata)initWithMessageText:(id)a3 replacedByIntentIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionDeprecationMetadata

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

    v7 = [(LNActionDeprecationMetadata *)self messageText];
    v8 = [(LNActionDeprecationMetadata *)v6 messageText];
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

    v15 = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
    v16 = [(LNActionDeprecationMetadata *)v6 replacedByIntentIdentifier];
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
  v3 = [(LNActionDeprecationMetadata *)self messageText];
  v4 = [v3 hash];
  v5 = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionDeprecationMetadata *)self messageText];
  v7 = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, message: %@, replacedByIntentIdentifier: %@>", v5, self, v6, v7];

  return v8;
}

- (LNActionDeprecationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageText"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replacedByIntentIdentifier"];
    self = [(LNActionDeprecationMetadata *)self initWithMessageText:v5 replacedByIntentIdentifier:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionDeprecationMetadata *)self messageText];
  [v4 encodeObject:v5 forKey:@"messageText"];

  v6 = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  [v4 encodeObject:v6 forKey:@"replacedByIntentIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LNActionDeprecationMetadata *)self messageText];
  v6 = [(LNActionDeprecationMetadata *)self replacedByIntentIdentifier];
  v7 = [v4 initWithMessageText:v5 replacedByIntentIdentifier:v6];

  return v7;
}

- (LNActionDeprecationMetadata)initWithMessageText:(id)a3 replacedByIntentIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNActionDeprecationMetadata.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"messageText"}];
  }

  v17.receiver = self;
  v17.super_class = LNActionDeprecationMetadata;
  v9 = [(LNActionDeprecationMetadata *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    messageText = v9->_messageText;
    v9->_messageText = v10;

    v12 = [v8 copy];
    replacedByIntentIdentifier = v9->_replacedByIntentIdentifier;
    v9->_replacedByIntentIdentifier = v12;

    v14 = v9;
  }

  return v9;
}

@end