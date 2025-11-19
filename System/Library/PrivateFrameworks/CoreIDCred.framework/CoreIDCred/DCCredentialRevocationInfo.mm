@interface DCCredentialRevocationInfo
- (DCCredentialRevocationInfo)initWithCoder:(id)a3;
- (DCCredentialRevocationInfo)initWithIdentifier:(id)a3 certificate:(id)a4 URL:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCCredentialRevocationInfo

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:0x28586CDC0];
  [v5 encodeObject:self->_certificate forKey:0x28586D0E0];
  [v5 encodeObject:self->_URL forKey:0x28586D100];
}

- (DCCredentialRevocationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CDC0];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D0E0];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D100];

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
    v9 = 0;
  }

  else
  {
    self = [(DCCredentialRevocationInfo *)self initWithIdentifier:v5 certificate:v6 URL:v7];
    v9 = self;
  }

  return v9;
}

- (DCCredentialRevocationInfo)initWithIdentifier:(id)a3 certificate:(id)a4 URL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DCCredentialRevocationInfo;
  v11 = [(DCCredentialRevocationInfo *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    certificate = v11->_certificate;
    v11->_certificate = v14;

    v16 = [v10 copy];
    URL = v11->_URL;
    v11->_URL = v16;
  }

  return v11;
}

@end