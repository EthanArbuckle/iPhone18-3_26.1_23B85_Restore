@interface LACEnvironmentMechanismUserPassword
- (BOOL)isEqual:(id)a3;
- (LACEnvironmentMechanismUserPassword)initWithAvailabilityError:(id)a3 set:(BOOL)a4;
- (LACEnvironmentMechanismUserPassword)initWithCoder:(id)a3;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACEnvironmentMechanismUserPassword

- (LACEnvironmentMechanismUserPassword)initWithAvailabilityError:(id)a3 set:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = LACEnvironmentMechanismUserPassword;
  result = [(LACEnvironmentMechanism *)&v6 initWithAvailabilityError:a3 localizedName:@"Passcode" iconSystemName:@"lock.shield"];
  if (result)
  {
    result->_set = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = LACEnvironmentMechanismUserPassword;
  v4 = a3;
  [(LACEnvironmentMechanism *)&v7 encodeWithCoder:v4];
  v5 = [(LACEnvironmentMechanismUserPassword *)self set:v7.receiver];
  v6 = NSStringFromSelector("set");
  [v4 encodeBool:v5 forKey:v6];
}

- (LACEnvironmentMechanismUserPassword)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_availabilityError);
  v6 = [v4 decodeObjectForKey:v5];
  v7 = NSStringFromSelector("set");
  v8 = [v4 decodeBoolForKey:v7];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LACEnvironmentMechanismUserPassword;
    if ([(LACEnvironmentMechanism *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
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