@interface DNDApplicationIdentifier
- (BOOL)isEqual:(id)equal;
- (DNDApplicationIdentifier)initWithBundleID:(id)d;
- (DNDApplicationIdentifier)initWithBundleID:(id)d platform:(unint64_t)platform;
- (DNDApplicationIdentifier)initWithCoder:(id)coder;
- (NSString)description;
- (id)diffDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDApplicationIdentifier

- (DNDApplicationIdentifier)initWithBundleID:(id)d
{
  dCopy = d;
  v5 = [(DNDApplicationIdentifier *)self initWithBundleID:dCopy platform:DNDPlatformForCurrentDevice()];

  return v5;
}

- (DNDApplicationIdentifier)initWithBundleID:(id)d platform:(unint64_t)platform
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = DNDApplicationIdentifier;
  v7 = [(DNDApplicationIdentifier *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    bundleID = v7->_bundleID;
    v7->_bundleID = v8;

    v7->_platform = platform;
  }

  return v7;
}

- (unint64_t)hash
{
  bundleID = [(DNDApplicationIdentifier *)self bundleID];
  v4 = [bundleID hash];
  platform = [(DNDApplicationIdentifier *)self platform];

  return platform ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      bundleID = [(DNDApplicationIdentifier *)self bundleID];
      bundleID2 = [(DNDApplicationIdentifier *)v9 bundleID];
      if (bundleID != bundleID2)
      {
        bundleID3 = [(DNDApplicationIdentifier *)self bundleID];
        if (!bundleID3)
        {
          v14 = 0;
          goto LABEL_15;
        }

        v3 = bundleID3;
        bundleID4 = [(DNDApplicationIdentifier *)v9 bundleID];
        if (!bundleID4)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v4 = bundleID4;
        bundleID5 = [(DNDApplicationIdentifier *)self bundleID];
        bundleID6 = [(DNDApplicationIdentifier *)v9 bundleID];
        if (![bundleID5 isEqual:bundleID6])
        {
          v14 = 0;
LABEL_11:

LABEL_14:
          goto LABEL_15;
        }
      }

      platform = [(DNDApplicationIdentifier *)self platform];
      v14 = platform == [(DNDApplicationIdentifier *)v9 platform];
      if (bundleID != bundleID2)
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
  bundleID = [(DNDApplicationIdentifier *)self bundleID];
  v6 = NSStringFromDNDPlatform(self->_platform);
  v7 = [v3 stringWithFormat:@"<%@: %p bundleID: %@; platform: %@>", v4, self, bundleID, v6];;

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

- (DNDApplicationIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [coderCopy decodeIntegerForKey:@"platform"];

  v7 = [(DNDApplicationIdentifier *)self initWithBundleID:v5 platform:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeInteger:self->_platform forKey:@"platform"];
}

@end