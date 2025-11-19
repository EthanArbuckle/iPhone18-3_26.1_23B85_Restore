@interface PKProvisioningContinuityDiscoveryResponseMessage
- (BOOL)configureWithContent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKProvisioningContinuityDiscoveryResponseMessage)initWithProximityVerification:(id)a3;
- (id)description;
@end

@implementation PKProvisioningContinuityDiscoveryResponseMessage

- (PKProvisioningContinuityDiscoveryResponseMessage)initWithProximityVerification:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 dictionaryRepresentation];

  [v6 setObject:v7 forKeyedSubscript:@"proximityVerification"];
  v10.receiver = self;
  v10.super_class = PKProvisioningContinuityDiscoveryResponseMessage;
  v8 = [(PKSharingGenericMessage *)&v10 initWithFormat:3 type:2002 genericSharingDict:MEMORY[0x1E695E0F8] appleSharingDict:v6];

  return v8;
}

- (BOOL)configureWithContent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKProvisioningContinuityDiscoveryResponseMessage;
  v5 = [(PKSharingGenericMessage *)&v11 configureWithContent:v4];
  if (v5)
  {
    v6 = [v4 PKDictionaryForKey:@"apple"];
    v7 = [v6 PKDictionaryForKey:@"proximityVerification"];
    if (v7)
    {
      v8 = [PKContinuityProximityVerification verificationWithDictionary:v7];
      proximityVerification = self->_proximityVerification;
      self->_proximityVerification = v8;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  [v3 appendFormat:@"proximityVerification: '%@'; ", self->_proximityVerification];
  v5 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self)
    {
      v7.receiver = self;
      v7.super_class = PKProvisioningContinuityDiscoveryResponseMessage;
      LOBYTE(self) = [(PKSharingGenericMessage *)&v7 isEqual:v5];
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end