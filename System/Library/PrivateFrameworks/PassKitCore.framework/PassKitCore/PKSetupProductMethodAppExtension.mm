@interface PKSetupProductMethodAppExtension
- (PKSetupProductMethodAppExtension)initWithCoder:(id)coder;
- (PKSetupProductMethodAppExtension)initWithExtension:(id)extension status:(BOOL)status partnerIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCode:(id)code;
@end

@implementation PKSetupProductMethodAppExtension

- (PKSetupProductMethodAppExtension)initWithExtension:(id)extension status:(BOOL)status partnerIdentifier:(id)identifier
{
  extensionCopy = extension;
  v13.receiver = self;
  v13.super_class = PKSetupProductMethodAppExtension;
  v10 = [(PKSetupProductMethod *)&v13 initWithType:4 partnerIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_provisioningExtension, extension);
    v11->_requiresAuthorization = status;
  }

  return v11;
}

- (void)_decorateDescription:(id)description
{
  v6.receiver = self;
  v6.super_class = PKSetupProductMethodAppExtension;
  descriptionCopy = description;
  [(PKSetupProductMethod *)&v6 _decorateDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"provisioningExtension: '%@'; ", self->_provisioningExtension];
  if (self->_requiresAuthorization)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [descriptionCopy appendFormat:@"requiresAuthorization: '%@'; ", v5];
}

- (PKSetupProductMethodAppExtension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSetupProductMethodAppExtension;
  v5 = [(PKSetupProductMethod *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningExtension"];
    provisioningExtension = v5->_provisioningExtension;
    v5->_provisioningExtension = v6;

    v5->_requiresAuthorization = [coderCopy decodeBoolForKey:@"requiresAuthorization"];
  }

  return v5;
}

- (void)encodeWithCode:(id)code
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodAppExtension;
  codeCopy = code;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:codeCopy];
  [codeCopy encodeObject:self->_provisioningExtension forKey:{@"provisioningExtension", v5.receiver, v5.super_class}];
  [codeCopy encodeBool:self->_requiresAuthorization forKey:@"requiresAuthorization"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKSetupProductMethodAppExtension);
  [(PKSetupProductMethod *)self _copyInto:v4];
  objc_storeStrong(&v4->_provisioningExtension, self->_provisioningExtension);
  v4->_requiresAuthorization = self->_requiresAuthorization;
  return v4;
}

@end