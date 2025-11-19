@interface LNEntityUpdatingTrait
- (BOOL)isEqual:(id)a3;
- (LNEntityUpdatingTrait)initWithCoder:(id)a3;
- (LNEntityUpdatingTrait)initWithEntityIdentifier:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEntityUpdatingTrait

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNEntityUpdatingTrait *)self entityIdentifier];
      v8 = [(LNEntityUpdatingTrait *)v6 entityIdentifier];
      v9 = [v7 isEqualToString:v8];
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
  v2 = [(LNEntityUpdatingTrait *)self entityIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNEntityUpdatingTrait *)self entityIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, entity: %@>", v5, self, v6];

  return v7;
}

- (LNEntityUpdatingTrait)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];

  v6 = [(LNEntityUpdatingTrait *)self initWithEntityIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNEntityUpdatingTrait *)self entityIdentifier];
  [v4 encodeObject:v5 forKey:@"entityIdentifier"];
}

- (LNEntityUpdatingTrait)initWithEntityIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LNEntityUpdatingTrait;
  v5 = [(LNEntityUpdatingTrait *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

@end