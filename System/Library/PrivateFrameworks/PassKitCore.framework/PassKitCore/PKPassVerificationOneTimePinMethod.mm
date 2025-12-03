@interface PKPassVerificationOneTimePinMethod
- (PKPassVerificationOneTimePinMethod)initWithCoder:(id)coder;
- (PKPassVerificationOneTimePinMethod)initWithDictionary:(id)dictionary;
- (id)_initWithChannel:(id)channel;
- (id)legacyChannelRepresentation;
- (id)supplementalTypeDescription;
- (id)typeDescription;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationOneTimePinMethod

- (PKPassVerificationOneTimePinMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"channel"];
  v6 = PKPassVerificationOneTimePinChannelFromString(v5);

  if (v6)
  {
    v14.receiver = self;
    v14.super_class = PKPassVerificationOneTimePinMethod;
    v7 = [(PKPassVerificationMethod *)&v14 _initWithType:1 dictionary:dictionaryCopy];
    v8 = v7;
    if (v7)
    {
      v7->_channel = v6;
      v9 = [dictionaryCopy PKStringForKey:@"sourceAddress"];
      sourceAddress = v8->_sourceAddress;
      v8->_sourceAddress = v9;

      v11 = [dictionaryCopy PKStringForKey:@"destinationAddress"];
      destinationAddress = v8->_destinationAddress;
      v8->_destinationAddress = v11;
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)_initWithChannel:(id)channel
{
  channelCopy = channel;
  v13.receiver = self;
  v13.super_class = PKPassVerificationOneTimePinMethod;
  v5 = [(PKPassVerificationMethod *)&v13 _initWithType:1 channel:channelCopy];
  if (v5)
  {
    type = [channelCopy type];
    v7 = 1;
    if (type != 2)
    {
      v7 = 2;
    }

    v5[5] = v7;
    sourceAddress = [channelCopy sourceAddress];
    v9 = v5[6];
    v5[6] = sourceAddress;

    contactPoint = [channelCopy contactPoint];
    v11 = v5[7];
    v5[7] = contactPoint;
  }

  return v5;
}

- (id)legacyChannelRepresentation
{
  _legacyChannelRepresentation = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  v4 = _legacyChannelRepresentation;
  channel = self->_channel;
  if (channel)
  {
    if (channel == 1)
    {
      v6 = 2;
    }

    else
    {
      if (channel != 2)
      {
LABEL_7:
        [v4 setSourceAddress:self->_sourceAddress];
        [v4 setContactPoint:self->_destinationAddress];
        v7 = v4;
        goto LABEL_9;
      }

      v6 = 1;
    }

    [_legacyChannelRepresentation setType:v6];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)typeDescription
{
  channel = self->_channel;
  if (channel == 2)
  {
    v3 = @"VERIFICATION_CHANNEL_EMAIL";
  }

  else
  {
    if (channel != 1)
    {
      if (channel)
      {
        [(PKPassVerificationMethod *)&v6 typeDescription:self];
      }

      else
      {
        [(PKPassVerificationMethod *)&v7 typeDescription:v6.receiver];
      }
      v4 = ;
      goto LABEL_10;
    }

    v3 = @"VERIFICATION_CHANNEL_SMS";
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);
LABEL_10:

  return v4;
}

- (id)supplementalTypeDescription
{
  channel = self->_channel;
  if (channel == 1)
  {
    destinationAddress = self->_destinationAddress;
    if (destinationAddress)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = destinationAddress;
      v7 = [[v5 alloc] initWithFormat:@"⁦%@⁩", v6];
    }

    goto LABEL_6;
  }

  if (channel == 2)
  {
LABEL_6:
    v8 = self->_destinationAddress;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (PKPassVerificationOneTimePinMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPassVerificationOneTimePinMethod;
  v5 = [(PKPassVerificationMethod *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channel"];
    v5->_channel = PKPassVerificationOneTimePinChannelFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAddress"];
    sourceAddress = v5->_sourceAddress;
    v5->_sourceAddress = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationOneTimePinMethod;
  coderCopy = coder;
  [(PKPassVerificationMethod *)&v7 encodeWithCoder:coderCopy];
  channel = self->_channel;
  if (channel > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88B8[channel];
  }

  [coderCopy encodeObject:v6 forKey:{@"channel", v7.receiver, v7.super_class}];
  [coderCopy encodeObject:self->_sourceAddress forKey:@"sourceAddress"];
  [coderCopy encodeObject:self->_destinationAddress forKey:@"destinationAddress"];
}

- (void)_appendDescription:(id)description
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationOneTimePinMethod;
  descriptionCopy = description;
  [(PKPassVerificationMethod *)&v7 _appendDescription:descriptionCopy];
  channel = self->_channel;
  if (channel > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88B8[channel];
  }

  [descriptionCopy appendFormat:@"channel: '%@'; ", v6];
  [descriptionCopy appendFormat:@"sourceAddress: '%@'; ", self->_sourceAddress];
  [descriptionCopy appendFormat:@"destinationAddress: '%@'; ", self->_destinationAddress];
}

@end