@interface PKPassVerificationURLMethod
- (PKPassVerificationURLMethod)initWithCoder:(id)a3;
- (PKPassVerificationURLMethod)initWithDictionary:(id)a3;
- (id)_initWithChannel:(id)a3;
- (id)legacyChannelRepresentation;
- (id)supplementalTypeDescription;
- (id)typeDescription;
- (void)_appendDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationURLMethod

- (PKPassVerificationURLMethod)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKURLForKey:@"url"];
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = PKPassVerificationURLMethod;
    v6 = [(PKPassVerificationMethod *)&v12 _initWithType:5 dictionary:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 5, v5);
      v8 = [v4 PKStringForKey:@"websiteName"];
      websiteName = v7->_websiteName;
      v7->_websiteName = v8;

      v10 = [v4 PKStringForKey:@"strategy"];
      v7->_strategy = PKPassVerificationURLStrategyFromString(v10);
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
    v16.super_class = PKPassVerificationURLMethod;
    v8 = [(PKPassVerificationMethod *)&v16 _initWithType:5 channel:v4];
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

      v8[7] = 1;
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

  [v3 setContactPoint:self->_websiteName];

  return v3;
}

- (id)typeDescription
{
  v3 = [(PKPassVerificationMethod *)self organizationName];
  if (v3)
  {
    v4 = [(PKPassVerificationMethod *)self organizationName];
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_5.isa, &stru_1F2281668.isa, v4);
  }

  else
  {
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_9.isa, 0);
  }

  return v5;
}

- (id)supplementalTypeDescription
{
  websiteName = self->_websiteName;
  if (websiteName)
  {
    v3 = websiteName;
  }

  else
  {
    v3 = [(NSURL *)self->_url host];
  }

  return v3;
}

- (PKPassVerificationURLMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassVerificationURLMethod;
  v5 = [(PKPassVerificationMethod *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"websiteName"];
    websiteName = v5->_websiteName;
    v5->_websiteName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strategy"];
    v5->_strategy = PKPassVerificationURLStrategyFromString(v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationURLMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"url", v7.receiver, v7.super_class}];
  [v4 encodeObject:self->_websiteName forKey:@"websiteName"];
  v5 = self->_strategy - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88E8[v5];
  }

  [v4 encodeObject:v6 forKey:@"strategy"];
}

- (void)_appendDescription:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationURLMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v7 _appendDescription:v4];
  [v4 appendFormat:@"url: '%@'; ", self->_url];
  [v4 appendFormat:@"websiteName: '%@'; ", self->_websiteName];
  v5 = self->_strategy - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88E8[v5];
  }

  [v4 appendFormat:@"strategy: '%@'; ", v6];
}

@end