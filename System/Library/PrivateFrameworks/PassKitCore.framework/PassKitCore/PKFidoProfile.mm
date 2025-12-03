@interface PKFidoProfile
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProfile:(id)profile;
- (PKFidoProfile)initWithCoder:(id)coder;
- (PKFidoProfile)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFidoProfile

- (PKFidoProfile)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v14.receiver = self;
    v14.super_class = PKFidoProfile;
    v5 = [(PKFidoProfile *)&v14 init];
    if (v5)
    {
      v6 = [dictionaryCopy PKStringForKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = v5->_relyingPartyIdentifier;
      v5->_relyingPartyIdentifier = v6;

      v8 = [dictionaryCopy PKStringForKey:@"accountHash"];
      accountHash = v5->_accountHash;
      v5->_accountHash = v8;

      v10 = [dictionaryCopy PKStringForKey:@"keyHash"];
      keyHash = v5->_keyHash;
      v5->_keyHash = v10;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKFidoProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKFidoProfile;
  v5 = [(PKFidoProfile *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
    relyingPartyIdentifier = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountHash"];
    accountHash = v5->_accountHash;
    v5->_accountHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyHash"];
    keyHash = v5->_keyHash;
    v5->_keyHash = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_accountHash forKey:@"accountHash"];
  [coderCopy encodeObject:self->_keyHash forKey:@"keyHash"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"relyingPartyIdentifier: %@; ", self->_relyingPartyIdentifier];
  [v3 appendFormat:@"accountHash: %@; ", self->_accountHash];
  [v3 appendFormat:@"keyHash: %@; ", self->_keyHash];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFidoProfile *)self isEqualToProfile:v5];
  }

  return v6;
}

- (BOOL)isEqualToProfile:(id)profile
{
  profileCopy = profile;
  v5 = profileCopy[1];
  v6 = self->_relyingPartyIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    LOBYTE(v10) = 0;
    goto LABEL_21;
  }

  v10 = [(NSString *)v6 isEqualToString:v7];

  if (v10)
  {
LABEL_10:
    v11 = profileCopy[2];
    v6 = self->_accountHash;
    v12 = v11;
    v8 = v12;
    if (v6 == v12)
    {

LABEL_16:
      v13 = profileCopy[3];
      v6 = self->_keyHash;
      v14 = v13;
      v8 = v14;
      if (v6 == v14)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v6 && v14)
        {
          LOBYTE(v10) = [(NSString *)v6 isEqualToString:v14];
        }
      }

      goto LABEL_21;
    }

    LOBYTE(v10) = 0;
    if (v6 && v12)
    {
      v10 = [(NSString *)v6 isEqualToString:v12];

      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_21:
  }

LABEL_22:

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_relyingPartyIdentifier];
  [array safelyAddObject:self->_accountHash];
  [array safelyAddObject:self->_keyHash];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFidoProfile allocWithZone:](PKFidoProfile init];
  v6 = [(NSString *)self->_relyingPartyIdentifier copyWithZone:zone];
  relyingPartyIdentifier = v5->_relyingPartyIdentifier;
  v5->_relyingPartyIdentifier = v6;

  v8 = [(NSString *)self->_accountHash copyWithZone:zone];
  accountHash = v5->_accountHash;
  v5->_accountHash = v8;

  v10 = [(NSString *)self->_keyHash copyWithZone:zone];
  keyHash = v5->_keyHash;
  v5->_keyHash = v10;

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_relyingPartyIdentifier forKeyedSubscript:@"relyingPartyIdentifier"];
  [v3 setObject:self->_accountHash forKeyedSubscript:@"accountHash"];
  [v3 setObject:self->_keyHash forKeyedSubscript:@"keyHash"];
  v4 = [v3 copy];

  return v4;
}

@end