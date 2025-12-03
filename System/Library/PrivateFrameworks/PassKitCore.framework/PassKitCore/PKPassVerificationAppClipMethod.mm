@interface PKPassVerificationAppClipMethod
- (PKPassVerificationAppClipMethod)initWithCoder:(id)coder;
- (PKPassVerificationAppClipMethod)initWithDictionary:(id)dictionary;
- (id)_initWithChannel:(id)channel;
- (id)legacyChannelRepresentation;
- (id)typeDescription;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationAppClipMethod

- (PKPassVerificationAppClipMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKURLForKey:@"url"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = PKPassVerificationAppClipMethod;
    v6 = [(PKPassVerificationMethod *)&v11 _initWithType:5 dictionary:dictionaryCopy];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 5, v5);
      v8 = [dictionaryCopy PKStringForKey:@"appName"];
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

- (id)_initWithChannel:(id)channel
{
  channelCopy = channel;
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  sourceAddress = [channelCopy sourceAddress];
  v7 = [v5 initWithString:sourceAddress];

  if (v7)
  {
    v16.receiver = self;
    v16.super_class = PKPassVerificationAppClipMethod;
    v8 = [(PKPassVerificationMethod *)&v16 _initWithType:4 channel:channelCopy];
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

  [_legacyChannelRepresentation setContactPoint:self->_appName];

  return _legacyChannelRepresentation;
}

- (id)typeDescription
{
  organizationName = [(PKPassVerificationMethod *)self organizationName];
  v3 = PKLocalizedPaymentString(&cfstr_VerificationCh_5.isa, &stru_1F2281668.isa, organizationName);

  return v3;
}

- (PKPassVerificationAppClipMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassVerificationAppClipMethod;
  v5 = [(PKPassVerificationMethod *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationAppClipMethod;
  coderCopy = coder;
  [(PKPassVerificationMethod *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_appName forKey:@"appName"];
}

- (void)_appendDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationAppClipMethod;
  descriptionCopy = description;
  [(PKPassVerificationMethod *)&v5 _appendDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"url: '%@'; ", self->_url];
  [descriptionCopy appendFormat:@"appName: '%@'; ", self->_appName];
}

@end