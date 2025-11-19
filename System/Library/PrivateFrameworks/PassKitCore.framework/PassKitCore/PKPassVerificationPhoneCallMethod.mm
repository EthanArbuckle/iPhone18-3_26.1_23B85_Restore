@interface PKPassVerificationPhoneCallMethod
- (PKPassVerificationPhoneCallMethod)initWithCoder:(id)a3;
- (PKPassVerificationPhoneCallMethod)initWithDictionary:(id)a3;
- (id)_initWithChannel:(id)a3;
- (id)legacyChannelRepresentation;
- (id)supplementalTypeDescription;
- (id)typeDescription;
- (void)_appendDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationPhoneCallMethod

- (PKPassVerificationPhoneCallMethod)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"direction"];
  v6 = PKPassVerificationPhoneCallDirectionFromString(v5);

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = PKPassVerificationPhoneCallMethod;
    v7 = [(PKPassVerificationMethod *)&v11 _initWithType:2 dictionary:v4];
    v8 = v7;
    if (v7)
    {
      v7->_direction = v6;
      v9 = [v4 PKStringForKey:@"phoneNumber"];
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

- (id)_initWithChannel:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassVerificationPhoneCallMethod;
  v5 = [(PKPassVerificationMethod *)&v11 _initWithType:2 channel:v4];
  if (v5)
  {
    v6 = [v4 type];
    v7 = 1;
    if (v6 != 4)
    {
      v7 = 2;
    }

    v5[5] = v7;
    v8 = [v4 contactPoint];
    v9 = v5[6];
    v5[6] = v8;
  }

  return v5;
}

- (id)legacyChannelRepresentation
{
  v3 = [(PKPassVerificationMethod *)self _legacyChannelRepresentation];
  v4 = v3;
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

    [v3 setType:v6];
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
      v4 = [(PKPassVerificationMethod *)self organizationName];
      if (v4)
      {
        v5 = [(PKPassVerificationMethod *)self organizationName];
        v6 = PKLocalizedPaymentString(&cfstr_VerificationCh_3.isa, &stru_1F2281668.isa, v5);
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

- (PKPassVerificationPhoneCallMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassVerificationPhoneCallMethod;
  v5 = [(PKPassVerificationMethod *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"direction"];
    v5->_direction = PKPassVerificationPhoneCallDirectionFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationPhoneCallMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v7 encodeWithCoder:v4];
  direction = self->_direction;
  if (direction > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88D0[direction];
  }

  [v4 encodeObject:v6 forKey:{@"direction", v7.receiver, v7.super_class}];
  [v4 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
}

- (void)_appendDescription:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassVerificationPhoneCallMethod;
  v4 = a3;
  [(PKPassVerificationMethod *)&v7 _appendDescription:v4];
  direction = self->_direction;
  if (direction > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D88D0[direction];
  }

  [v4 appendFormat:@"direction: '%@'; ", v6];
  [v4 appendFormat:@"phoneNumber: '%@'; ", self->_phoneNumber];
}

@end