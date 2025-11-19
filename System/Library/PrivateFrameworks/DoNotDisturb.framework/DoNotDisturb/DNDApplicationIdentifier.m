@interface DNDApplicationIdentifier
- (BOOL)isEqual:(id)a3;
- (DNDApplicationIdentifier)initWithBundleID:(id)a3;
- (DNDApplicationIdentifier)initWithBundleID:(id)a3 platform:(unint64_t)a4;
- (DNDApplicationIdentifier)initWithCoder:(id)a3;
- (NSString)description;
- (id)diffDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDApplicationIdentifier

- (DNDApplicationIdentifier)initWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(DNDApplicationIdentifier *)self initWithBundleID:v4 platform:DNDPlatformForCurrentDevice()];

  return v5;
}

- (DNDApplicationIdentifier)initWithBundleID:(id)a3 platform:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DNDApplicationIdentifier;
  v7 = [(DNDApplicationIdentifier *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleID = v7->_bundleID;
    v7->_bundleID = v8;

    v7->_platform = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(DNDApplicationIdentifier *)self bundleID];
  v4 = [v3 hash];
  v5 = [(DNDApplicationIdentifier *)self platform];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DNDApplicationIdentifier *)self bundleID];
      v11 = [(DNDApplicationIdentifier *)v9 bundleID];
      if (v10 != v11)
      {
        v12 = [(DNDApplicationIdentifier *)self bundleID];
        if (!v12)
        {
          v14 = 0;
          goto LABEL_15;
        }

        v3 = v12;
        v13 = [(DNDApplicationIdentifier *)v9 bundleID];
        if (!v13)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v4 = v13;
        v5 = [(DNDApplicationIdentifier *)self bundleID];
        v6 = [(DNDApplicationIdentifier *)v9 bundleID];
        if (![v5 isEqual:v6])
        {
          v14 = 0;
LABEL_11:

LABEL_14:
          goto LABEL_15;
        }
      }

      v15 = [(DNDApplicationIdentifier *)self platform];
      v14 = v15 == [(DNDApplicationIdentifier *)v9 platform];
      if (v10 != v11)
      {
        goto LABEL_11;
      }

LABEL_15:

      goto LABEL_16;
    }

    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDApplicationIdentifier *)self bundleID];
  v6 = NSStringFromDNDPlatform(self->_platform);
  v7 = [v3 stringWithFormat:@"<%@: %p bundleID: %@; platform: %@>", v4, self, v5, v6];;

  return v7;
}

- (id)diffDescription
{
  v2 = MEMORY[0x277CCACA8];
  bundleID = self->_bundleID;
  v4 = NSStringFromDNDPlatform(self->_platform);
  v5 = [v2 stringWithFormat:@"bundleID:%@platform:%@", bundleID, v4];;

  return v5;
}

- (DNDApplicationIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [v4 decodeIntegerForKey:@"platform"];

  v7 = [(DNDApplicationIdentifier *)self initWithBundleID:v5 platform:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeInteger:self->_platform forKey:@"platform"];
}

@end