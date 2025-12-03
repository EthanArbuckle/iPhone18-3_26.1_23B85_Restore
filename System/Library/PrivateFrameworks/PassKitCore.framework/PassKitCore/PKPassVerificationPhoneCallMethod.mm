@interface PKPassVerificationPhoneCallMethod
- (PKPassVerificationPhoneCallMethod)initWithCoder:(id)coder;
- (PKPassVerificationPhoneCallMethod)initWithDictionary:(id)dictionary;
- (id)_initWithChannel:(id)channel;
- (id)legacyChannelRepresentation;
- (id)supplementalTypeDescription;
- (id)typeDescription;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationPhoneCallMethod

- (PKPassVerificationPhoneCallMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"direction"];
  v6 = PKPassVerificationPhoneCallDirectionFromString(v5);

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = PKPassVerificationPhoneCallMethod;
    v7 = [(PKPassVerificationMethod *)&v11 _initWithType:2 dictionary:dictionaryCopy];
    v8 = v7;
    if (v7)
    {
      v7->_direction = v6;
      v9 = [dictionaryCopy PKStringForKey:@"phoneNumber"];
      if ([v9 length])
      {
        objc_storeStrong(&v8->_phoneNumber, v9);
      }
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
  v11.receiver = self;
  v11.super_class = PKPassVerificationPhoneCallMethod;
  v5 = [(PKPassVerificationMethod *)&v11 _initWithType:2 channel:channelCopy];
  if (v5)
  {
    type = [channelCopy type];
    v7 = 1;
    if (type != 4)
    {
      v7 = 2;
    }

    v5[5] = v7;
    contactPoint = [channelCopy contactPoint];
    v9 = v5[6];
    v5[6] = contactPoint;
  }

  return v5;
}

- (id)legacyChannelRepresentation
{
  _legacyChannelRepresentation = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  v4 = _legacyChannelRepresentation;
  direction = self->_direction;
  if (direction)
  {
    if (direction == 1)
    {
      v6 = 4;
    }

    else
    {
      if (direction != 2)
      {
LABEL_7:
        [v4 setContactPoint:self->_phoneNumber];
        v7 = v4;
        goto LABEL_9;
      }

      v6 = 3;
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
  direction = self->_direction;
  if (direction == 2)
  {
    v7 = PKLocalizedPaymentString(&cfstr_VerificationCh_2.isa, 0);
  }

  else
  {
    if (direction == 1)
    {
      organizationName = [(PKPassVerificationMethod *)self organizationName];
      if (organizationName)
      {
        organizationName2 = [(PKPassVerificationMethod *)self organizationName];
        v6 = PKLocalizedPaymentString(&cfstr_VerificationCh_3.isa, &stru_1F2281668.isa, organizationName2);
      }

      else
      {
        v6 = PKLocalizedPaymentString(&cfstr_VerificationCh_7.isa, 0);
      }

      goto LABEL_13;
    }

    if (direction)
    {
      v9.receiver = self;
      v9.super_class = PKPassVerificationPhoneCallMethod;
      [(PKPassVerificationMethod *)&v9 typeDescription];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = PKPassVerificationPhoneCallMethod;
      [(PKPassVerificationMethod *)&v10 typeDescription];
    }
    v7 = ;
  }

  v6 = v7;
LABEL_13:

  return v6;
}

- (id)supplementalTypeDescription
{
  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = phoneNumber;
    v5 = [[v3 alloc] initWithFormat:@"⁦%@⁩", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPassVerificationPhoneCallMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassVerificationPhoneCallMethod;
  v5 = [(PKPassVerificationMethod *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"direction"];
    v5->_direction = PKPassVerificationPhoneCallDirectionFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationPhoneCallMethod;
  coderCopy = coder;
  [(PKPassVerificationMethod *)&v7 encodeWithCoder:coderCopy];
  direction = self->_direction;
  if (direction > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88D0[direction];
  }

  [coderCopy encodeObject:v6 forKey:{@"direction", v7.receiver, v7.super_class}];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
}

- (void)_appendDescription:(id)description
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationPhoneCallMethod;
  descriptionCopy = description;
  [(PKPassVerificationMethod *)&v7 _appendDescription:descriptionCopy];
  direction = self->_direction;
  if (direction > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88D0[direction];
  }

  [descriptionCopy appendFormat:@"direction: '%@'; ", v6];
  [descriptionCopy appendFormat:@"phoneNumber: '%@'; ", self->_phoneNumber];
}

@end