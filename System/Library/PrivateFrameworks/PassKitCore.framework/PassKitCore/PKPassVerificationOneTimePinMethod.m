@interface PKPassVerificationOneTimePinMethod
- (PKPassVerificationOneTimePinMethod)initWithCoder:(id)a3;
- (PKPassVerificationOneTimePinMethod)initWithDictionary:(id)a3;
- (id)_initWithChannel:(id)a3;
- (id)legacyChannelRepresentation;
- (id)supplementalTypeDescription;
- (id)typeDescription;
- (void)_appendDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationOneTimePinMethod

- (PKPassVerificationOneTimePinMethod)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"channel"];
  v6 = PKPassVerificationOneTimePinChannelFromString(v5);

  if (v6)
  {
    v14.receiver = self;
    v14.super_class = PKPassVerificationOneTimePinMethod;
    v7 = [(PKPassVerificationMethod *)&v14 _initWithType:1 dictionary:v4];
    v8 = v7;
    if (v7)
    {
      v7->_channel = v6;
      v9 = [v4 PKStringForKey:@"sourceAddress"];
      sourceAddress = v8->_sourceAddress;
      v8->_sourceAddress = v9;

      v11 = [v4 PKStringForKey:@"destinationAddress"];
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

- (id)_initWithChannel:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPassVerificationOneTimePinMethod;
  v5 = [(PKPassVerificationMethod *)&v13 _initWithType:1 channel:v4];
  if (v5)
  {
    v6 = [v4 type];
    v7 = 1;
    if (v6 != 2)
    {
      v7 = 2;
    }

    v5[5] = v7;
    v8 = [v4 sourceAddress];
    v9 = v5[6];
    v5[6] = v8;

    v10 = [v4 contactPoint];
    v11 = v5[7];
    v5[7] = v10;
  }

  return v5;
}

- (id)legacyChannelRepresentation
{
  v3 = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  v4 = v3;
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

    [v3 setType:v6];
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

- (PKPassVerificationOneTimePinMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassVerificationOneTimePinMethod;
  v5 = [(PKPassVerificationMethod *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channel"];
    v5->_channel = PKPassVerificationOneTimePinChannelFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAddress"];
    sourceAddress = v5->_sourceAddress;
    v5->_sourceAddress = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationOneTimePinMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v7 encodeWithCoder:v4];
  channel = self->_channel;
  if (channel > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88B8[channel];
  }

  [v4 encodeObject:v6 forKey:{@"channel", v7.receiver, v7.super_class}];
  [v4 encodeObject:self->_sourceAddress forKey:@"sourceAddress"];
  [v4 encodeObject:self->_destinationAddress forKey:@"destinationAddress"];
}

- (void)_appendDescription:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationOneTimePinMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v7 _appendDescription:v4];
  channel = self->_channel;
  if (channel > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88B8[channel];
  }

  [v4 appendFormat:@"channel: '%@'; ", v6];
  [v4 appendFormat:@"sourceAddress: '%@'; ", self->_sourceAddress];
  [v4 appendFormat:@"destinationAddress: '%@'; ", self->_destinationAddress];
}

@end