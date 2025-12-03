@interface PKSECredentialAddress
- (BOOL)isEqual:(id)equal;
- (NSString)mostSpecificIdentifier;
- (PKSECredentialAddress)initWithType:(unint64_t)type identifier:(id)identifier;
- (id)addressByAppendingType:(unint64_t)type identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)firstIdentifierOfType:(unint64_t)type;
- (id)shortDescription;
- (unint64_t)hash;
- (unint64_t)mostSpecificType;
- (void)_tail;
- (void)appendType:(unint64_t)type identifier:(id)identifier;
@end

@implementation PKSECredentialAddress

- (PKSECredentialAddress)initWithType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKSECredentialAddress;
  v8 = [(PKSECredentialAddress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v9;
}

- (id)addressByAppendingType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(PKSECredentialAddress *)self copy];
  v8 = [[PKSECredentialAddress alloc] initWithType:type identifier:identifierCopy];

  _tail = [(PKSECredentialAddress *)v7 _tail];
  v10 = _tail[1];
  _tail[1] = v8;

  return v7;
}

- (void)_tail
{
  if (self)
  {
    selfCopy = self;
    v2 = selfCopy;
    v3 = *(selfCopy + 1);
    if (v3)
    {
      do
      {
        v4 = v3;

        v3 = v4[1];
        v2 = v4;
      }

      while (v3);
    }

    else
    {
      v4 = selfCopy;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)appendType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [[PKSECredentialAddress alloc] initWithType:type identifier:identifierCopy];

  _tail = [(PKSECredentialAddress *)self _tail];
  v8 = _tail[1];
  _tail[1] = v7;
}

- (id)firstIdentifierOfType:(unint64_t)type
{
  selfCopy = self;
  if (selfCopy)
  {
    v5 = selfCopy;
    while (v5->_type != type)
    {
      v6 = v5->_next;

      v5 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v7 = v5->_identifier;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (NSString)mostSpecificIdentifier
{
  _tail = [(PKSECredentialAddress *)self _tail];
  v3 = _tail[2];
  v4 = v3;

  return v3;
}

- (unint64_t)mostSpecificType
{
  _tail = [(PKSECredentialAddress *)self _tail];
  v3 = _tail[3];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  shortDescription = [(PKSECredentialAddress *)self shortDescription];
  [v3 appendFormat:@"address: '%@'; ", shortDescription];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)shortDescription
{
  type = self->_type;
  v4 = @"Subcredential";
  if (type != 1)
  {
    v4 = 0;
  }

  if (type)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Applet";
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = self->_identifier;
  shortDescription = [(PKSECredentialAddress *)self->_next shortDescription];
  v9 = [v6 initWithFormat:@"(%@: %@) -> %@", v5, identifier, shortDescription];

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  next = self->_next;
  if (next)
  {
    v5 = [(PKSECredentialAddress *)next hash]- v5 + 32 * v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5[2];
      v7 = self->_identifier;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {

          goto LABEL_15;
        }

        v10 = [(NSString *)v7 isEqualToString:v8];

        if (!v10)
        {
          goto LABEL_15;
        }
      }

      if (self->_type == v5[3])
      {
        next = self->_next;
        v13 = v5[1];
        if (next && v13)
        {
          v11 = [(PKSECredentialAddress *)next isEqual:?];
        }

        else
        {
          v11 = next == v13;
        }

        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PKSECredentialAddress allocWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_type = self->_type;
  v8 = [(PKSECredentialAddress *)self->_next copyWithZone:zone];
  next = v5->_next;
  v5->_next = v8;

  return v5;
}

@end