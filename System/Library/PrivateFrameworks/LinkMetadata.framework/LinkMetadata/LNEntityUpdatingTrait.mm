@interface LNEntityUpdatingTrait
- (BOOL)isEqual:(id)equal;
- (LNEntityUpdatingTrait)initWithCoder:(id)coder;
- (LNEntityUpdatingTrait)initWithEntityIdentifier:(id)identifier;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntityUpdatingTrait

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
      entityIdentifier = [(LNEntityUpdatingTrait *)self entityIdentifier];
      entityIdentifier2 = [(LNEntityUpdatingTrait *)v6 entityIdentifier];
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
  entityIdentifier = [(LNEntityUpdatingTrait *)self entityIdentifier];
  v3 = [entityIdentifier hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entityIdentifier = [(LNEntityUpdatingTrait *)self entityIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, entity: %@>", v5, self, entityIdentifier];

  return v7;
}

- (LNEntityUpdatingTrait)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];

  v6 = [(LNEntityUpdatingTrait *)self initWithEntityIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityIdentifier = [(LNEntityUpdatingTrait *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"entityIdentifier"];
}

- (LNEntityUpdatingTrait)initWithEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = LNEntityUpdatingTrait;
  v5 = [(LNEntityUpdatingTrait *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

@end