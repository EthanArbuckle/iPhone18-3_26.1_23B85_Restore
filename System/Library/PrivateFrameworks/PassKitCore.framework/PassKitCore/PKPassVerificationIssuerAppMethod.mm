@interface PKPassVerificationIssuerAppMethod
- (PKPassVerificationIssuerAppMethod)initWithCoder:(id)coder;
- (PKPassVerificationIssuerAppMethod)initWithDictionary:(id)dictionary;
- (id)_initWithChannel:(id)channel;
- (id)legacyChannelRepresentation;
- (id)typeDescription;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationIssuerAppMethod

- (PKPassVerificationIssuerAppMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"appIdentifiers"];
  v6 = [dictionaryCopy PKURLForKey:@"appLaunchURL"];
  if (!v5 || ([v5 count] ? (v7 = v6 == 0) : (v7 = 1), v7))
  {

    v8 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKPassVerificationIssuerAppMethod;
    v9 = [(PKPassVerificationMethod *)&v13 _initWithType:3 dictionary:dictionaryCopy];
    v8 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 5, v5);
      objc_storeStrong(&v8->_appLaunchURL, v6);
      v10 = [dictionaryCopy PKStringForKey:@"appName"];
      appName = v8->_appName;
      v8->_appName = v10;
    }
  }

  return v8;
}

- (id)_initWithChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = PKPassVerificationIssuerAppMethod;
  v5 = [(PKPassVerificationMethod *)&v9 _initWithType:3 channel:channelCopy];
  if (v5)
  {
    contactPoint = [channelCopy contactPoint];
    v7 = v5[7];
    v5[7] = contactPoint;
  }

  return v5;
}

- (id)legacyChannelRepresentation
{
  _legacyChannelRepresentation = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  [_legacyChannelRepresentation setType:5];
  [_legacyChannelRepresentation setContactPoint:self->_appName];
  firstObject = [(NSArray *)self->_appIdentifiers firstObject];
  [_legacyChannelRepresentation setSourceAddress:firstObject];

  return _legacyChannelRepresentation;
}

- (id)typeDescription
{
  organizationName = [(PKPassVerificationMethod *)self organizationName];
  if (organizationName)
  {
    organizationName2 = [(PKPassVerificationMethod *)self organizationName];
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_4.isa, &stru_1F2281668.isa, organizationName2);
  }

  else
  {
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_8.isa, 0);
  }

  return v5;
}

- (PKPassVerificationIssuerAppMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPassVerificationIssuerAppMethod;
  v5 = [(PKPassVerificationMethod *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"appIdentifiers"];
    appIdentifiers = v5->_appIdentifiers;
    v5->_appIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v5->_appLaunchURL;
    v5->_appLaunchURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationIssuerAppMethod;
  coderCopy = coder;
  [(PKPassVerificationMethod *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appIdentifiers forKey:{@"appIdentifiers", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_appLaunchURL forKey:@"appLaunchURL"];
  [coderCopy encodeObject:self->_appName forKey:@"appName"];
}

- (void)_appendDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationIssuerAppMethod;
  descriptionCopy = description;
  [(PKPassVerificationMethod *)&v5 _appendDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"appIdentifiers: '%@'; ", self->_appIdentifiers];
  [descriptionCopy appendFormat:@"appLaunchURL: '%@'; ", self->_appLaunchURL];
  [descriptionCopy appendFormat:@"appName: '%@'; ", self->_appName];
}

@end