@interface LNUpdatableEntitySystemProtocolMetadata
- (BOOL)isEqual:(id)a3;
- (LNUpdatableEntitySystemProtocolMetadata)initWithActionIdentifier:(id)a3;
- (LNUpdatableEntitySystemProtocolMetadata)initWithCoder:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNUpdatableEntitySystemProtocolMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
      v8 = [(LNUpdatableEntitySystemProtocolMetadata *)v6 actionIdentifier];
      v9 = v7;
      v10 = v8;
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
  v2 = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, entity: %@>", v5, self, v6];

  return v7;
}

- (LNUpdatableEntitySystemProtocolMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];

  v6 = [(LNUpdatableEntitySystemProtocolMetadata *)self initWithActionIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNUpdatableEntitySystemProtocolMetadata *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];
}

- (LNUpdatableEntitySystemProtocolMetadata)initWithActionIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNUpdatableEntitySystemProtocolMetadata;
  v6 = [(LNUpdatableEntitySystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

@end