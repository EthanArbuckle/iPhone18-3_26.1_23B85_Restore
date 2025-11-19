@interface PKSetupProductMethodAppExtension
- (PKSetupProductMethodAppExtension)initWithCoder:(id)a3;
- (PKSetupProductMethodAppExtension)initWithExtension:(id)a3 status:(BOOL)a4 partnerIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCode:(id)a3;
@end

@implementation PKSetupProductMethodAppExtension

- (PKSetupProductMethodAppExtension)initWithExtension:(id)a3 status:(BOOL)a4 partnerIdentifier:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PKSetupProductMethodAppExtension;
  v10 = [(PKSetupProductMethod *)&v13 initWithType:4 partnerIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_provisioningExtension, a3);
    v11->_requiresAuthorization = a4;
  }

  return v11;
}

- (void)_decorateDescription:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKSetupProductMethodAppExtension;
  v4 = a3;
  [(PKSetupProductMethod *)&v6 _decorateDescription:v4];
  [v4 appendFormat:@"provisioningExtension: '%@'; ", self->_provisioningExtension];
  if (self->_requiresAuthorization)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 appendFormat:@"requiresAuthorization: '%@'; ", v5];
}

- (PKSetupProductMethodAppExtension)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSetupProductMethodAppExtension;
  v5 = [(PKSetupProductMethod *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningExtension"];
    provisioningExtension = v5->_provisioningExtension;
    v5->_provisioningExtension = v6;

    v5->_requiresAuthorization = [v4 decodeBoolForKey:@"requiresAuthorization"];
  }

  return v5;
}

- (void)encodeWithCode:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodAppExtension;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_provisioningExtension forKey:{@"provisioningExtension", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_requiresAuthorization forKey:@"requiresAuthorization"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKSetupProductMethodAppExtension);
  [(PKSetupProductMethod *)self _copyInto:v4];
  objc_storeStrong(&v4->_provisioningExtension, self->_provisioningExtension);
  v4->_requiresAuthorization = self->_requiresAuthorization;
  return v4;
}

@end