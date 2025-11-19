@interface PKSEConsistencyCheckDeviceCredentialAppletProperties
- (id)description;
@end

@implementation PKSEConsistencyCheckDeviceCredentialAppletProperties

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_locked)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  [v3 appendFormat:@"isLocked: '%@'; ", v5];
  if (self->_container)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  [v4 appendFormat:@"isContainer: '%@'; ", v6];
  [v4 appendFormat:@">"];

  return v4;
}

@end