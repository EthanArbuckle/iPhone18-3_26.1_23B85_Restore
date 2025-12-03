@interface PKCarShareAcceptanceResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCarShareAcceptanceResponse:(id)response;
- (PKCarShareAcceptanceResponse)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCarShareAcceptanceResponse

- (PKCarShareAcceptanceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKCarShareAcceptanceResponse;
  v5 = [(PKCarShareAcceptanceResponse *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subcredential"];
    subcredential = v5->_subcredential;
    v5->_subcredential = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  subcredential = self->_subcredential;
  coderCopy = coder;
  [coderCopy encodeObject:subcredential forKey:@"subcredential"];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_subcredential];
  [array safelyAddObject:self->_passUniqueIdentifier];
  v4 = PKCombinedHash(17, array);

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCarShareAcceptanceResponse *)self isEqualToCarShareAcceptanceResponse:v5];
  }

  return v6;
}

- (BOOL)isEqualToCarShareAcceptanceResponse:(id)response
{
  responseCopy = response;
  if (!responseCopy)
  {
    goto LABEL_8;
  }

  subcredential = self->_subcredential;
  v6 = responseCopy[1];
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
  v11 = responseCopy[2];
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