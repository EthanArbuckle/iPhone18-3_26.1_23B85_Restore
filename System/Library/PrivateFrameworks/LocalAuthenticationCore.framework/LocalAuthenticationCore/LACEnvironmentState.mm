@interface LACEnvironmentState
- (BOOL)isEqual:(id)a3;
- (LACEnvironmentState)initWithBiometry:(id)a3 userPassword:(id)a4 companions:(id)a5;
- (LACEnvironmentState)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACEnvironmentState

- (LACEnvironmentState)initWithBiometry:(id)a3 userPassword:(id)a4 companions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACEnvironmentState;
  v12 = [(LACEnvironmentState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_biometry, a3);
    objc_storeStrong(&v13->_userPassword, a4);
    objc_storeStrong(&v13->_companions, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACEnvironmentState *)self biometry];
  v6 = NSStringFromSelector(sel_biometry);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(LACEnvironmentState *)self userPassword];
  v8 = NSStringFromSelector(sel_userPassword);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(LACEnvironmentState *)self companions];
  v9 = NSStringFromSelector(sel_companions);
  [v4 encodeObject:v10 forKey:v9];
}

- (LACEnvironmentState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_biometry);
  v6 = [v4 decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_userPassword);
  v8 = [v4 decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_companions);
  v10 = [v4 decodeObjectForKey:v9];

  v11 = [(LACEnvironmentState *)self initWithBiometry:v6 userPassword:v8 companions:v10];
  return v11;
}

- (id)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LACEnvironmentState *)self biometry];
  v6 = [v4 stringWithFormat:@"biometry: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LACEnvironmentState *)self userPassword];
  v9 = [v7 stringWithFormat:@"userPassword: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(LACEnvironmentState *)self companions];
  v12 = [v10 stringWithFormat:@"companions: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(LACEnvironmentState *)self biometry];
      v7 = [(LACEnvironmentState *)v5 biometry];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(LACEnvironmentState *)self biometry];
        v10 = [(LACEnvironmentState *)v5 biometry];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v13 = [(LACEnvironmentState *)self userPassword];
      v14 = [(LACEnvironmentState *)v5 userPassword];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(LACEnvironmentState *)self userPassword];
        v17 = [(LACEnvironmentState *)v5 userPassword];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      v19 = [(LACEnvironmentState *)self companions];
      v20 = [(LACEnvironmentState *)v5 companions];
      if (v19 == v20)
      {
        v12 = 1;
      }

      else
      {
        v21 = [(LACEnvironmentState *)self companions];
        v22 = [(LACEnvironmentState *)v5 companions];
        v12 = [v21 isEqualToArray:v22];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end