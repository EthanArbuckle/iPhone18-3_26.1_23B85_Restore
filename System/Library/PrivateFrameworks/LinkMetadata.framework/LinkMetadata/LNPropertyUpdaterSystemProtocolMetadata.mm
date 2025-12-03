@interface LNPropertyUpdaterSystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNPropertyUpdaterSystemProtocolMetadata)initWithCoder:(id)coder;
- (LNPropertyUpdaterSystemProtocolMetadata)initWithEntityIdentifier:(id)identifier entityProperty:(id)property;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPropertyUpdaterSystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      entityIdentifier = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
      entityIdentifier2 = [(LNPropertyUpdaterSystemProtocolMetadata *)v6 entityIdentifier];
      if ([entityIdentifier isEqualToString:entityIdentifier2])
      {
        entityProperty = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
        entityProperty2 = [(LNPropertyUpdaterSystemProtocolMetadata *)v6 entityProperty];
        v11 = [entityProperty isEqualToString:entityProperty2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  entityIdentifier = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
  v4 = [entityIdentifier hash];
  entityProperty = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
  v6 = [entityProperty hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entityIdentifier = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
  entityProperty = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
  v8 = [v3 stringWithFormat:@"<%@: %p, entity: %@, property: %@>", v5, self, entityIdentifier, entityProperty];

  return v8;
}

- (LNPropertyUpdaterSystemProtocolMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityProperty"];

  v7 = [(LNPropertyUpdaterSystemProtocolMetadata *)self initWithEntityIdentifier:v5 entityProperty:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityIdentifier = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"entityIdentifier"];

  entityProperty = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
  [coderCopy encodeObject:entityProperty forKey:@"entityProperty"];
}

- (LNPropertyUpdaterSystemProtocolMetadata)initWithEntityIdentifier:(id)identifier entityProperty:(id)property
{
  identifierCopy = identifier;
  propertyCopy = property;
  v13.receiver = self;
  v13.super_class = LNPropertyUpdaterSystemProtocolMetadata;
  v9 = [(LNPropertyUpdaterSystemProtocolMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentifier, identifier);
    objc_storeStrong(&v10->_entityProperty, property);
    v11 = v10;
  }

  return v10;
}

@end