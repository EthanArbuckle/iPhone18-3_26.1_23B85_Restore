@interface IDSSigningOptions
- (BOOL)isEqual:(id)equal;
- (IDSSigningOptions)initWithCoder:(id)coder;
- (IDSSigningOptions)initWithKeyType:(unsigned int)type diversifier:(id)diversifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSSigningOptions

- (IDSSigningOptions)initWithKeyType:(unsigned int)type diversifier:(id)diversifier
{
  diversifierCopy = diversifier;
  if (IDSIsValidSigningKeyType(type))
  {
    v12.receiver = self;
    v12.super_class = IDSSigningOptions;
    v8 = [(IDSSigningOptions *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_keyType = type;
      objc_storeStrong(&v8->_keyDiversifier, diversifier);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSSigningOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"kT"];
  if (IDSIsValidSigningKeyType(v5))
  {
    v12.receiver = self;
    v12.super_class = IDSSigningOptions;
    v6 = [(IDSSigningOptions *)&v12 init];
    v7 = v6;
    if (v6)
    {
      v6->_keyType = v5;
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kD"];
      keyDiversifier = v7->_keyDiversifier;
      v7->_keyDiversifier = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IDSSigningOptions keyType](self forKey:{"keyType"), @"kT"}];
  keyDiversifier = [(IDSSigningOptions *)self keyDiversifier];
  [coderCopy encodeObject:keyDiversifier forKey:@"kD"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  keyType = [(IDSSigningOptions *)selfCopy keyType];
  keyDiversifier = [(IDSSigningOptions *)selfCopy keyDiversifier];
  v6 = [(IDSSigningOptions *)selfCopy initWithKeyType:keyType diversifier:keyDiversifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyType = [(IDSSigningOptions *)v5 keyType];
      if (keyType == [(IDSSigningOptions *)self keyType])
      {
        keyDiversifier = [(IDSSigningOptions *)v5 keyDiversifier];
        keyDiversifier2 = [(IDSSigningOptions *)self keyDiversifier];
        v9 = [keyDiversifier isEqual:keyDiversifier2];
      }

      else
      {
        v9 = 0;
      }
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
  keyType = [(IDSSigningOptions *)self keyType];
  keyDiversifier = [(IDSSigningOptions *)self keyDiversifier];
  v5 = [keyDiversifier hash];

  return v5 ^ keyType;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  keyType = [(IDSSigningOptions *)self keyType];
  keyDiversifier = [(IDSSigningOptions *)self keyDiversifier];
  v7 = [v3 stringWithFormat:@"<%@: %p keyType: %ld, diversifier: %@>", v4, self, keyType, keyDiversifier];

  return v7;
}

@end