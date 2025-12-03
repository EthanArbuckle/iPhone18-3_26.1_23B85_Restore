@interface LNUpdatableEntitySystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNUpdatableEntitySystemProtocolMetadata)initWithActionIdentifier:(id)identifier;
- (LNUpdatableEntitySystemProtocolMetadata)initWithCoder:(id)coder;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNUpdatableEntitySystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      actionIdentifier = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
      actionIdentifier2 = [(LNUpdatableEntitySystemProtocolMetadata *)v6 actionIdentifier];
      v9 = actionIdentifier;
      v10 = actionIdentifier2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  actionIdentifier = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
  v3 = [actionIdentifier hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actionIdentifier = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, entity: %@>", v5, self, actionIdentifier];

  return v7;
}

- (LNUpdatableEntitySystemProtocolMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];

  v6 = [(LNUpdatableEntitySystemProtocolMetadata *)self initWithActionIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];
}

- (LNUpdatableEntitySystemProtocolMetadata)initWithActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = LNUpdatableEntitySystemProtocolMetadata;
  v6 = [(LNUpdatableEntitySystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

@end