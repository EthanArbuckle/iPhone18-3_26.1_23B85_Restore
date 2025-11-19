@interface PKFidoProfile
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProfile:(id)a3;
- (PKFidoProfile)initWithCoder:(id)a3;
- (PKFidoProfile)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFidoProfile

- (PKFidoProfile)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = PKFidoProfile;
    v5 = [(PKFidoProfile *)&v14 init];
    if (v5)
    {
      v6 = [v4 PKStringForKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = v5->_relyingPartyIdentifier;
      v5->_relyingPartyIdentifier = v6;

      v8 = [v4 PKStringForKey:@"accountHash"];
      accountHash = v5->_accountHash;
      v5->_accountHash = v8;

      v10 = [v4 PKStringForKey:@"keyHash"];
      keyHash = v5->_keyHash;
      v5->_keyHash = v10;
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PKFidoProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKFidoProfile;
  v5 = [(PKFidoProfile *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
    relyingPartyIdentifier = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountHash"];
    accountHash = v5->_accountHash;
    v5->_accountHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyHash"];
    keyHash = v5->_keyHash;
    v5->_keyHash = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  v5 = a3;
  [v5 encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_accountHash forKey:@"accountHash"];
  [v5 encodeObject:self->_keyHash forKey:@"keyHash"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFidoProfile *)self isEqualToProfile:v5];
  }

  return v6;
}

- (BOOL)isEqualToProfile:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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
    v11 = v4[2];
    v6 = self->_accountHash;
    v12 = v11;
    v8 = v12;
    if (v6 == v12)
    {

LABEL_16:
      v13 = v4[3];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_relyingPartyIdentifier];
  [v3 safelyAddObject:self->_accountHash];
  [v3 safelyAddObject:self->_keyHash];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKFidoProfile allocWithZone:](PKFidoProfile init];
  v6 = [(NSString *)self->_relyingPartyIdentifier copyWithZone:a3];
  relyingPartyIdentifier = v5->_relyingPartyIdentifier;
  v5->_relyingPartyIdentifier = v6;

  v8 = [(NSString *)self->_accountHash copyWithZone:a3];
  accountHash = v5->_accountHash;
  v5->_accountHash = v8;

  v10 = [(NSString *)self->_keyHash copyWithZone:a3];
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