@interface DCCredentialRevocationInfo
- (DCCredentialRevocationInfo)initWithCoder:(id)coder;
- (DCCredentialRevocationInfo)initWithIdentifier:(id)identifier certificate:(id)certificate URL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialRevocationInfo

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:0x28586CDC0];
  [coderCopy encodeObject:self->_certificate forKey:0x28586D0E0];
  [coderCopy encodeObject:self->_URL forKey:0x28586D100];
}

- (DCCredentialRevocationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CDC0];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D0E0];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D100];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DCCredentialRevocationInfo *)self initWithIdentifier:v5 certificate:v6 URL:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (DCCredentialRevocationInfo)initWithIdentifier:(id)identifier certificate:(id)certificate URL:(id)l
{
  identifierCopy = identifier;
  certificateCopy = certificate;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = DCCredentialRevocationInfo;
  v11 = [(DCCredentialRevocationInfo *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [certificateCopy copy];
    certificate = v11->_certificate;
    v11->_certificate = v14;

    v16 = [lCopy copy];
    URL = v11->_URL;
    v11->_URL = v16;
  }

  return v11;
}

@end