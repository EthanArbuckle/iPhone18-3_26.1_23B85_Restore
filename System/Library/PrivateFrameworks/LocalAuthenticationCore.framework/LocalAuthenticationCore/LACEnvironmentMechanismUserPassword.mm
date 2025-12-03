@interface LACEnvironmentMechanismUserPassword
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentMechanismUserPassword)initWithAvailabilityError:(id)error set:(BOOL)set;
- (LACEnvironmentMechanismUserPassword)initWithCoder:(id)coder;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentMechanismUserPassword

- (LACEnvironmentMechanismUserPassword)initWithAvailabilityError:(id)error set:(BOOL)set
{
  v6.receiver = self;
  v6.super_class = LACEnvironmentMechanismUserPassword;
  result = [(LACEnvironmentMechanism *)&v6 initWithAvailabilityError:error localizedName:@"Passcode" iconSystemName:@"lock.shield"];
  if (result)
  {
    result->_set = set;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LACEnvironmentMechanismUserPassword;
  coderCopy = coder;
  [(LACEnvironmentMechanism *)&v7 encodeWithCoder:coderCopy];
  v5 = [(LACEnvironmentMechanismUserPassword *)self set:v7.receiver];
  v6 = NSStringFromSelector("set");
  [coderCopy encodeBool:v5 forKey:v6];
}

- (LACEnvironmentMechanismUserPassword)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_availabilityError);
  v6 = [coderCopy decodeObjectForKey:v5];
  v7 = NSStringFromSelector("set");
  v8 = [coderCopy decodeBoolForKey:v7];

  v9 = [(LACEnvironmentMechanismUserPassword *)self initWithAvailabilityError:v6 set:v8];
  return v9;
}

- (id)descriptionDetails
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(LACEnvironmentMechanismUserPassword *)self set];
  v3 = @"not set";
  if (v2)
  {
    v3 = @"set";
  }

  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LACEnvironmentMechanismUserPassword;
    if ([(LACEnvironmentMechanism *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v6 = [(LACEnvironmentMechanismUserPassword *)self set];
      v7 = [(LACEnvironmentMechanismUserPassword *)v5 set];

      v8 = v6 ^ v7 ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end