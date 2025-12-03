@interface PKPassVerificationURLMethod
- (PKPassVerificationURLMethod)initWithCoder:(id)coder;
- (PKPassVerificationURLMethod)initWithDictionary:(id)dictionary;
- (id)_initWithChannel:(id)channel;
- (id)legacyChannelRepresentation;
- (id)supplementalTypeDescription;
- (id)typeDescription;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationURLMethod

- (PKPassVerificationURLMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKURLForKey:@"url"];
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = PKPassVerificationURLMethod;
    v6 = [(PKPassVerificationMethod *)&v12 _initWithType:5 dictionary:dictionaryCopy];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 5, v5);
      v8 = [dictionaryCopy PKStringForKey:@"websiteName"];
      websiteName = v7->_websiteName;
      v7->_websiteName = v8;

      v10 = [dictionaryCopy PKStringForKey:@"strategy"];
      v7->_strategy = PKPassVerificationURLStrategyFromString(v10);
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)_initWithChannel:(id)channel
{
  channelCopy = channel;
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  sourceAddress = [channelCopy sourceAddress];
  v7 = [v5 initWithString:sourceAddress];

  if (v7)
  {
    v16.receiver = self;
    v16.super_class = PKPassVerificationURLMethod;
    v8 = [(PKPassVerificationMethod *)&v16 _initWithType:5 channel:channelCopy];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E695DFF8]);
      sourceAddress2 = [channelCopy sourceAddress];
      v11 = [v9 initWithString:sourceAddress2];
      v12 = v8[5];
      v8[5] = v11;

      contactPoint = [channelCopy contactPoint];
      v14 = v8[6];
      v8[6] = contactPoint;

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
  _legacyChannelRepresentation = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  [_legacyChannelRepresentation setType:8];
  absoluteString = [(NSURL *)self->_url absoluteString];
  [_legacyChannelRepresentation setSourceAddress:absoluteString];

  [_legacyChannelRepresentation setContactPoint:self->_websiteName];

  return _legacyChannelRepresentation;
}

- (id)typeDescription
{
  organizationName = [(PKPassVerificationMethod *)self organizationName];
  if (organizationName)
  {
    organizationName2 = [(PKPassVerificationMethod *)self organizationName];
    v5 = PKLocalizedPaymentString(&cfstr_VerificationCh_5.isa, &stru_1F2281668.isa, organizationName2);
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
    host = websiteName;
  }

  else
  {
    host = [(NSURL *)self->_url host];
  }

  return host;
}

- (PKPassVerificationURLMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPassVerificationURLMethod;
  v5 = [(PKPassVerificationMethod *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"websiteName"];
    websiteName = v5->_websiteName;
    v5->_websiteName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strategy"];
    v5->_strategy = PKPassVerificationURLStrategyFromString(v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationURLMethod;
  coderCopy = coder;
  [(PKPassVerificationMethod *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"url", v7.receiver, v7.super_class}];
  [coderCopy encodeObject:self->_websiteName forKey:@"websiteName"];
  v5 = self->_strategy - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88E8[v5];
  }

  [coderCopy encodeObject:v6 forKey:@"strategy"];
}

- (void)_appendDescription:(id)description
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationURLMethod;
  descriptionCopy = description;
  [(PKPassVerificationMethod *)&v7 _appendDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"url: '%@'; ", self->_url];
  [descriptionCopy appendFormat:@"websiteName: '%@'; ", self->_websiteName];
  v5 = self->_strategy - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88E8[v5];
  }

  [descriptionCopy appendFormat:@"strategy: '%@'; ", v6];
}

@end