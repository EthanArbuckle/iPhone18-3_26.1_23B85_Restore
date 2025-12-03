@interface LNEntityUpdatingSystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNEntityUpdatingSystemProtocolMetadata)initWithCoder:(id)coder;
- (LNEntityUpdatingSystemProtocolMetadata)initWithEntityIdentifier:(id)identifier;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntityUpdatingSystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      entityIdentifier = [(LNEntityUpdatingSystemProtocolMetadata *)self entityIdentifier];
      entityIdentifier2 = [(LNEntityUpdatingSystemProtocolMetadata *)v6 entityIdentifier];
      v9 = [entityIdentifier isEqualToString:entityIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  entityIdentifier = [(LNEntityUpdatingSystemProtocolMetadata *)self entityIdentifier];
  v3 = [entityIdentifier hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entityIdentifier = [(LNEntityUpdatingSystemProtocolMetadata *)self entityIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, entity: %@>", v5, self, entityIdentifier];

  return v7;
}

- (LNEntityUpdatingSystemProtocolMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];

  v6 = [(LNEntityUpdatingSystemProtocolMetadata *)self initWithEntityIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityIdentifier = [(LNEntityUpdatingSystemProtocolMetadata *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"entityIdentifier"];
}

- (LNEntityUpdatingSystemProtocolMetadata)initWithEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = LNEntityUpdatingSystemProtocolMetadata;
  v6 = [(LNEntityUpdatingSystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

@end