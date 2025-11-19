@interface PKPassVerificationAppClipMethod
- (PKPassVerificationAppClipMethod)initWithCoder:(id)a3;
- (PKPassVerificationAppClipMethod)initWithDictionary:(id)a3;
- (id)_initWithChannel:(id)a3;
- (id)legacyChannelRepresentation;
- (id)typeDescription;
- (void)_appendDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationAppClipMethod

- (PKPassVerificationAppClipMethod)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKURLForKey:@"url"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = PKPassVerificationAppClipMethod;
    v6 = [(PKPassVerificationMethod *)&v11 _initWithType:5 dictionary:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 5, v5);
      v8 = [v4 PKStringForKey:@"appName"];
      appName = v7->_appName;
      v7->_appName = v8;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)_initWithChannel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  v6 = [v4 sourceAddress];
  v7 = [v5 initWithString:v6];

  if (v7)
  {
    v16.receiver = self;
    v16.super_class = PKPassVerificationAppClipMethod;
    v8 = [(PKPassVerificationMethod *)&v16 _initWithType:4 channel:v4];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E695DFF8]);
      v10 = [v4 sourceAddress];
      v11 = [v9 initWithString:v10];
      v12 = v8[5];
      v8[5] = v11;

      v13 = [v4 contactPoint];
      v14 = v8[6];
      v8[6] = v13;
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)legacyChannelRepresentation
{
  v3 = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  [v3 setType:8];
  v4 = [(NSURL *)self->_url absoluteString];
  [v3 setSourceAddress:v4];

  [v3 setContactPoint:self->_appName];

  return v3;
}

- (id)typeDescription
{
  v2 = [(PKPassVerificationMethod *)self organizationName];
  v3 = PKLocalizedPaymentString(&cfstr_VerificationCh_5.isa, &stru_1F2281668.isa, v2);

  return v3;
}

- (PKPassVerificationAppClipMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassVerificationAppClipMethod;
  v5 = [(PKPassVerificationMethod *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationAppClipMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_appName forKey:@"appName"];
}

- (void)_appendDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationAppClipMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v5 _appendDescription:v4];
  [v4 appendFormat:@"url: '%@'; ", self->_url];
  [v4 appendFormat:@"appName: '%@'; ", self->_appName];
}

@end