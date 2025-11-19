@interface LNPropertyUpdaterSystemProtocolMetadata
- (BOOL)isEqual:(id)a3;
- (LNPropertyUpdaterSystemProtocolMetadata)initWithCoder:(id)a3;
- (LNPropertyUpdaterSystemProtocolMetadata)initWithEntityIdentifier:(id)a3 entityProperty:(id)a4;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPropertyUpdaterSystemProtocolMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
      v8 = [(LNPropertyUpdaterSystemProtocolMetadata *)v6 entityIdentifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
        v10 = [(LNPropertyUpdaterSystemProtocolMetadata *)v6 entityProperty];
        v11 = [v9 isEqualToString:v10];
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
  v3 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
  v4 = [v3 hash];
  v5 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
  v7 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
  v8 = [v3 stringWithFormat:@"<%@: %p, entity: %@, property: %@>", v5, self, v6, v7];

  return v8;
}

- (LNPropertyUpdaterSystemProtocolMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityProperty"];

  v7 = [(LNPropertyUpdaterSystemProtocolMetadata *)self initWithEntityIdentifier:v5 entityProperty:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityIdentifier];
  [v4 encodeObject:v5 forKey:@"entityIdentifier"];

  v6 = [(LNPropertyUpdaterSystemProtocolMetadata *)self entityProperty];
  [v4 encodeObject:v6 forKey:@"entityProperty"];
}

- (LNPropertyUpdaterSystemProtocolMetadata)initWithEntityIdentifier:(id)a3 entityProperty:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNPropertyUpdaterSystemProtocolMetadata;
  v9 = [(LNPropertyUpdaterSystemProtocolMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentifier, a3);
    objc_storeStrong(&v10->_entityProperty, a4);
    v11 = v10;
  }

  return v10;
}

@end