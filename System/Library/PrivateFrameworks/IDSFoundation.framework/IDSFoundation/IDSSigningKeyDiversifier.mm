@interface IDSSigningKeyDiversifier
- (BOOL)isEqual:(id)equal;
- (IDSSigningKeyDiversifier)initWithCoder:(id)coder;
- (IDSSigningKeyDiversifier)initWithDiversifier:(id)diversifier trackingPreventionSecret:(id)secret;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSSigningKeyDiversifier

- (IDSSigningKeyDiversifier)initWithDiversifier:(id)diversifier trackingPreventionSecret:(id)secret
{
  diversifierCopy = diversifier;
  secretCopy = secret;
  v9 = secretCopy;
  selfCopy = 0;
  if (diversifierCopy && secretCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSSigningKeyDiversifier;
    v11 = [(IDSSigningKeyDiversifier *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_diversifier, diversifier);
      objc_storeStrong(p_isa + 2, secret);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (IDSSigningKeyDiversifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dS"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tPS"];

  v7 = [(IDSSigningKeyDiversifier *)self initWithDiversifier:v5 trackingPreventionSecret:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diversifier = [(IDSSigningKeyDiversifier *)self diversifier];
  [coderCopy encodeObject:diversifier forKey:@"dS"];

  trackingPreventionSecret = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
  [coderCopy encodeObject:trackingPreventionSecret forKey:@"tPS"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  diversifier = [(IDSSigningKeyDiversifier *)selfCopy diversifier];
  trackingPreventionSecret = [(IDSSigningKeyDiversifier *)selfCopy trackingPreventionSecret];
  v6 = [(IDSSigningKeyDiversifier *)selfCopy initWithDiversifier:diversifier trackingPreventionSecret:trackingPreventionSecret];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      diversifier = [(IDSSigningKeyDiversifier *)v5 diversifier];
      diversifier2 = [(IDSSigningKeyDiversifier *)self diversifier];
      if ([diversifier isEqual:diversifier2])
      {
        trackingPreventionSecret = [(IDSSigningKeyDiversifier *)v5 trackingPreventionSecret];
        trackingPreventionSecret2 = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
        v10 = [trackingPreventionSecret isEqual:trackingPreventionSecret2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  diversifier = [(IDSSigningKeyDiversifier *)self diversifier];
  v4 = [diversifier hash];
  trackingPreventionSecret = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
  v6 = [trackingPreventionSecret hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  trackingPreventionSecret = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
  diversifier = [(IDSSigningKeyDiversifier *)self diversifier];
  v7 = [v3 stringWithFormat:@"<%@: %p tPS: %@, div: %@>", v4, self, trackingPreventionSecret, diversifier];

  return v7;
}

@end