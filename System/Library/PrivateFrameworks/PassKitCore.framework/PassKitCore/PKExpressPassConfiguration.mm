@interface PKExpressPassConfiguration
- (BOOL)isEqual:(id)equal;
- (PKExpressPassConfiguration)initWithCoder:(id)coder;
- (PKExpressPassConfiguration)initWithPassInformation:(id)information forPaymentApplications:(id)applications;
- (PKExpressPassConfiguration)initWithPassInformation:(id)information forSecureElementPass:(id)pass;
- (PKExpressPassConfiguration)initWithPassInformation:(id)information isNFCExpressEnabled:(BOOL)enabled isUWBExpressEnabled:(BOOL)expressEnabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForPaymentPass:(id)pass isNFCExpressEnabled:(BOOL)enabled isUWBExpressEnabled:(BOOL)expressEnabled withTechologyTest:(id)test;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExpressPassConfiguration

- (PKExpressPassConfiguration)initWithPassInformation:(id)information isNFCExpressEnabled:(BOOL)enabled isUWBExpressEnabled:(BOOL)expressEnabled
{
  result = information;
  if (result)
  {
    v10 = result;
    v14.receiver = self;
    v14.super_class = PKExpressPassConfiguration;
    v11 = [(PKExpressPassConfiguration *)&v14 init];
    if (v11)
    {
      passUniqueIdentifier = [(PKExpressPassConfiguration *)v10 passUniqueIdentifier];
      passUniqueIdentifier = v11->_passUniqueIdentifier;
      v11->_passUniqueIdentifier = passUniqueIdentifier;

      objc_storeStrong(&v11->_passInformation, information);
      v11->_isNFCExpressEnabled = enabled;
      v11->_isUWBExpressEnabled = expressEnabled;
      if (!enabled && !expressEnabled)
      {

        v11 = 0;
      }
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)initForPaymentPass:(id)pass isNFCExpressEnabled:(BOOL)enabled isUWBExpressEnabled:(BOOL)expressEnabled withTechologyTest:(id)test
{
  expressEnabledCopy = expressEnabled;
  enabledCopy = enabled;
  testCopy = test;
  passCopy = pass;
  v12 = [[PKExpressPassInformation alloc] initForPaymentPass:passCopy withTechologyTest:testCopy];

  if (v12)
  {
    v13 = [(PKExpressPassConfiguration *)self initWithPassInformation:v12 isNFCExpressEnabled:enabledCopy isUWBExpressEnabled:expressEnabledCopy];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (PKExpressPassConfiguration)initWithPassInformation:(id)information forSecureElementPass:(id)pass
{
  informationCopy = information;
  devicePaymentApplications = [pass devicePaymentApplications];
  v8 = [(PKExpressPassConfiguration *)self initWithPassInformation:informationCopy forPaymentApplications:devicePaymentApplications];

  return v8;
}

- (PKExpressPassConfiguration)initWithPassInformation:(id)information forPaymentApplications:(id)applications
{
  v27 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  applicationsCopy = applications;
  if (informationCopy)
  {
    selfCopy = self;
    paymentApplicationIdentifiers = [informationCopy paymentApplicationIdentifiers];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = applicationsCopy;
    v9 = applicationsCopy;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          applicationIdentifier = [v15 applicationIdentifier];
          v17 = [paymentApplicationIdentifiers containsObject:applicationIdentifier];

          if (v17)
          {
            v12 |= [v15 supportedRadioTechnologies];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    self = [(PKExpressPassConfiguration *)selfCopy initWithPassInformation:informationCopy isNFCExpressEnabled:v12 & 1 isUWBExpressEnabled:(v12 >> 1) & 1];
    selfCopy2 = self;
    applicationsCopy = v20;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = equalCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = (isKindOfClass & 1) != 0 && [(NSString *)self->_passUniqueIdentifier isEqualToString:equalCopy->_passUniqueIdentifier]&& [(PKExpressPassInformation *)self->_passInformation isEqual:equalCopy->_passInformation]&& self->_isNFCExpressEnabled == equalCopy->_isNFCExpressEnabled && self->_isUWBExpressEnabled == equalCopy->_isUWBExpressEnabled;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passUniqueIdentifier hash];
  v4 = [(PKExpressPassInformation *)self->_passInformation hash];
  v5 = self->_isNFCExpressEnabled - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return self->_isUWBExpressEnabled - v5 + 32 * v5 + 15699857;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = @"NO";
  if (self->_isNFCExpressEnabled)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_isUWBExpressEnabled)
  {
    v4 = @"YES";
  }

  v6 = [v3 initWithFormat:@"<PKExpressPassConfiguration: %p; Pass %@; NFC Express Enabled: %@; UWB Express Enabled: %@; Information: %@>", self, self->_passUniqueIdentifier, v5, v4, self->_passInformation];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_passInformation forKey:@"passInformation"];
  [coderCopy encodeBool:self->_isNFCExpressEnabled forKey:@"isNFCExpressEnabled"];
  [coderCopy encodeBool:self->_isUWBExpressEnabled forKey:@"isUWBExpressEnabled"];
}

- (PKExpressPassConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passInformation"];
  if (v5)
  {
    self = -[PKExpressPassConfiguration initWithPassInformation:isNFCExpressEnabled:isUWBExpressEnabled:](self, "initWithPassInformation:isNFCExpressEnabled:isUWBExpressEnabled:", v5, [coderCopy decodeBoolForKey:@"isNFCExpressEnabled"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"isUWBExpressEnabled"));
    selfCopy = self;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressPassConfiguration" code:0 userInfo:0];
    [coderCopy failWithError:v7];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKExpressPassInformation allocWithZone:](PKExpressPassInformation initWithExpressPassInformation:"initWithExpressPassInformation:", self->_passInformation];
  v6 = [[PKExpressPassConfiguration allocWithZone:?]isNFCExpressEnabled:"initWithPassInformation:isNFCExpressEnabled:isUWBExpressEnabled:" isUWBExpressEnabled:v5, self->_isNFCExpressEnabled, self->_isUWBExpressEnabled];

  return v6;
}

@end