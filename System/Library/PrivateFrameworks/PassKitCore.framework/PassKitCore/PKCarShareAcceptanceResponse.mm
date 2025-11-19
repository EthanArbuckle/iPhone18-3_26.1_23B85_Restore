@interface PKCarShareAcceptanceResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCarShareAcceptanceResponse:(id)a3;
- (PKCarShareAcceptanceResponse)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCarShareAcceptanceResponse

- (PKCarShareAcceptanceResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKCarShareAcceptanceResponse;
  v5 = [(PKCarShareAcceptanceResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcredential"];
    subcredential = v5->_subcredential;
    v5->_subcredential = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  subcredential = self->_subcredential;
  v5 = a3;
  [v5 encodeObject:subcredential forKey:@"subcredential"];
  [v5 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"subcredential: '%@'; ", self->_subcredential];
  [v6 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_subcredential];
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCarShareAcceptanceResponse *)self isEqualToCarShareAcceptanceResponse:v5];
  }

  return v6;
}

- (BOOL)isEqualToCarShareAcceptanceResponse:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  subcredential = self->_subcredential;
  v6 = v4[1];
  if (subcredential)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKAppletSubcredential *)subcredential isEqual:?])
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (subcredential != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  passUniqueIdentifier = self->_passUniqueIdentifier;
  v11 = v4[2];
  if (passUniqueIdentifier && v11)
  {
    v8 = [(NSString *)passUniqueIdentifier isEqual:?];
  }

  else
  {
    v8 = passUniqueIdentifier == v11;
  }

LABEL_9:

  return v8;
}

@end