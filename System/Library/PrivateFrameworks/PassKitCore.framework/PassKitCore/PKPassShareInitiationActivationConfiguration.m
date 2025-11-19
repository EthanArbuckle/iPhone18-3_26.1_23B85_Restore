@interface PKPassShareInitiationActivationConfiguration
- (id)description;
@end

@implementation PKPassShareInitiationActivationConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"defaultOptions: '%@'; ", self->_defaultOptions];
  [v6 appendFormat:@"availableOptions: '%@'; ", self->_availableOptions];
  if (self->_allowUserEdit)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v6 appendFormat:@"allowUserEdit: '%@'; ", v7];
  if (self->_isBlocked)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v6 appendFormat:@"isBlocked: '%@'; ", v8];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end