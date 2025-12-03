@interface LACEnvironmentState
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentState)initWithBiometry:(id)biometry userPassword:(id)password companions:(id)companions;
- (LACEnvironmentState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentState

- (LACEnvironmentState)initWithBiometry:(id)biometry userPassword:(id)password companions:(id)companions
{
  biometryCopy = biometry;
  passwordCopy = password;
  companionsCopy = companions;
  v15.receiver = self;
  v15.super_class = LACEnvironmentState;
  v12 = [(LACEnvironmentState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_biometry, biometry);
    objc_storeStrong(&v13->_userPassword, password);
    objc_storeStrong(&v13->_companions, companions);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  biometry = [(LACEnvironmentState *)self biometry];
  v6 = NSStringFromSelector(sel_biometry);
  [coderCopy encodeObject:biometry forKey:v6];

  userPassword = [(LACEnvironmentState *)self userPassword];
  v8 = NSStringFromSelector(sel_userPassword);
  [coderCopy encodeObject:userPassword forKey:v8];

  companions = [(LACEnvironmentState *)self companions];
  v9 = NSStringFromSelector(sel_companions);
  [coderCopy encodeObject:companions forKey:v9];
}

- (LACEnvironmentState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_biometry);
  v6 = [coderCopy decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_userPassword);
  v8 = [coderCopy decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_companions);
  v10 = [coderCopy decodeObjectForKey:v9];

  v11 = [(LACEnvironmentState *)self initWithBiometry:v6 userPassword:v8 companions:v10];
  return v11;
}

- (id)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  biometry = [(LACEnvironmentState *)self biometry];
  v6 = [v4 stringWithFormat:@"biometry: %@", biometry];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  userPassword = [(LACEnvironmentState *)self userPassword];
  v9 = [v7 stringWithFormat:@"userPassword: %@", userPassword];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  companions = [(LACEnvironmentState *)self companions];
  v12 = [v10 stringWithFormat:@"companions: %@", companions];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      biometry = [(LACEnvironmentState *)self biometry];
      biometry2 = [(LACEnvironmentState *)v5 biometry];
      v8 = biometry2;
      if (biometry == biometry2)
      {
      }

      else
      {
        biometry3 = [(LACEnvironmentState *)self biometry];
        biometry4 = [(LACEnvironmentState *)v5 biometry];
        v11 = [biometry3 isEqual:biometry4];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      userPassword = [(LACEnvironmentState *)self userPassword];
      userPassword2 = [(LACEnvironmentState *)v5 userPassword];
      v15 = userPassword2;
      if (userPassword == userPassword2)
      {
      }

      else
      {
        userPassword3 = [(LACEnvironmentState *)self userPassword];
        userPassword4 = [(LACEnvironmentState *)v5 userPassword];
        v18 = [userPassword3 isEqual:userPassword4];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      companions = [(LACEnvironmentState *)self companions];
      companions2 = [(LACEnvironmentState *)v5 companions];
      if (companions == companions2)
      {
        v12 = 1;
      }

      else
      {
        companions3 = [(LACEnvironmentState *)self companions];
        companions4 = [(LACEnvironmentState *)v5 companions];
        v12 = [companions3 isEqualToArray:companions4];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end