@interface PKPaymentRemoteCredentialFIDOProfile
- (BOOL)isEqual:(id)equal;
- (PKPaymentRemoteCredentialFIDOProfile)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPaymentRemoteCredentialFIDOProfile

- (PKPaymentRemoteCredentialFIDOProfile)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v18.receiver = self;
    v18.super_class = PKPaymentRemoteCredentialFIDOProfile;
    v5 = [(PKPaymentRemoteCredentialFIDOProfile *)&v18 init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"relyingPartyIdentifier"];
      v7 = [v6 copy];
      relyingPartyIdentifier = v5->_relyingPartyIdentifier;
      v5->_relyingPartyIdentifier = v7;

      v9 = [dictionaryCopy objectForKeyedSubscript:@"accountHash"];
      v10 = [v9 copy];
      accountHash = v5->_accountHash;
      v5->_accountHash = v10;

      v12 = MEMORY[0x1E695DEF0];
      v13 = [dictionaryCopy objectForKeyedSubscript:@"keyHash"];
      v14 = [v12 dataWithHexEncodedString:v13];
      keyHash = v5->_keyHash;
      v5->_keyHash = v14;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v18.receiver = self;
      v18.super_class = PKPaymentRemoteCredentialFIDOProfile;
      if (![(PKPaymentRemoteCredentialFIDOProfile *)&v18 isEqual:v5])
      {
        goto LABEL_18;
      }

      relyingPartyIdentifier = v5->_relyingPartyIdentifier;
      v7 = self->_relyingPartyIdentifier;
      v8 = relyingPartyIdentifier;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {
          goto LABEL_17;
        }

        v10 = [(NSString *)v7 isEqualToString:v8];

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      accountHash = v5->_accountHash;
      v7 = self->_accountHash;
      v13 = accountHash;
      v9 = v13;
      if (v7 == v13)
      {

LABEL_22:
        keyHash = self->_keyHash;
        v17 = v5->_keyHash;
        if (keyHash && v17)
        {
          v11 = [(NSData *)keyHash isEqual:?];
        }

        else
        {
          v11 = keyHash == v17;
        }

        goto LABEL_19;
      }

      if (v7 && v13)
      {
        v14 = [(NSString *)v7 isEqualToString:v13];

        if (v14)
        {
          goto LABEL_22;
        }

LABEL_18:
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
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

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"relyingPartyIdentifier: '%@'; ", self->_relyingPartyIdentifier];
  [v3 appendFormat:@"accountHash: '%@'; ", self->_accountHash];
  [v3 appendFormat:@"keyHash: '%@'; ", self->_keyHash];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end