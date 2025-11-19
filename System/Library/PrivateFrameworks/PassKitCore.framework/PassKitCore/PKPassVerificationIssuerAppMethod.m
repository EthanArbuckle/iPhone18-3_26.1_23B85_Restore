@interface PKPassVerificationIssuerAppMethod
- (PKPassVerificationIssuerAppMethod)initWithCoder:(id)a3;
- (PKPassVerificationIssuerAppMethod)initWithDictionary:(id)a3;
- (id)_initWithChannel:(id)a3;
- (id)legacyChannelRepresentation;
- (id)typeDescription;
- (void)_appendDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationIssuerAppMethod

- (PKPassVerificationIssuerAppMethod)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKArrayContaining:objc_opt_class() forKey:@"appIdentifiers"];
  v6 = [v4 PKURLForKey:@"appLaunchURL"];
  if (!v5 || ([v5 count] ? (v7 = v6 == 0) : (v7 = 1), v7))
  {

    v8 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKPassVerificationIssuerAppMethod;
    v9 = [(PKPassVerificationMethod *)&v13 _initWithType:3 dictionary:v4];
    v8 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 5, v5);
      objc_storeStrong(&v8->_appLaunchURL, v6);
      v10 = [v4 PKStringForKey:@"appName"];
      appName = v8->_appName;
      v8->_appName = v10;
    }
  }

  return v8;
}

- (id)_initWithChannel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassVerificationIssuerAppMethod;
  v5 = [(PKPassVerificationMethod *)&v9 _initWithType:3 channel:v4];
  if (v5)
  {
    v6 = [v4 contactPoint];
    v7 = v5[7];
    v5[7] = v6;
  }

  return v5;
}

- (id)legacyChannelRepresentation
{
  v3 = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  [v3 setType:5];
  [v3 setContactPoint:self->_appName];
  v4 = [(NSArray *)self->_appIdentifiers firstObject];
  [v3 setSourceAddress:v4];

  return v3;
}

- (id)typeDescription
{
  v3 = [(PKPassVerificationMethod *)self organizationName];
  if (v3)
  {
    v4 = [(PKPassVerificationMethod *)self organizationName];
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_4.isa, &stru_1F2281668.isa, v4);
  }

  else
  {
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_8.isa, 0);
  }

  return v5;
}

- (PKPassVerificationIssuerAppMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassVerificationIssuerAppMethod;
  v5 = [(PKPassVerificationMethod *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"appIdentifiers"];
    appIdentifiers = v5->_appIdentifiers;
    v5->_appIdentifiers = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v5->_appLaunchURL;
    v5->_appLaunchURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationIssuerAppMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appIdentifiers forKey:{@"appIdentifiers", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_appLaunchURL forKey:@"appLaunchURL"];
  [v4 encodeObject:self->_appName forKey:@"appName"];
}

- (void)_appendDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationIssuerAppMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v5 _appendDescription:v4];
  [v4 appendFormat:@"appIdentifiers: '%@'; ", self->_appIdentifiers];
  [v4 appendFormat:@"appLaunchURL: '%@'; ", self->_appLaunchURL];
  [v4 appendFormat:@"appName: '%@'; ", self->_appName];
}

@end