@interface PKSEConsistencyCheckDeviceCredentialISO18013Properties
- (id)description;
@end

@implementation PKSEConsistencyCheckDeviceCredentialISO18013Properties

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_hasKeyMeterial)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  [v3 appendFormat:@"hasKeyMaterial: '%@'; ", v5];
  [v4 appendFormat:@"isoIdentifier: '%@'; ", self->_isoIdentifier];
  if (self->_requireKeySync)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  [v4 appendFormat:@"requireKeySync: '%@'; ", v6];
  [v4 appendFormat:@">"];

  return v4;
}

@end