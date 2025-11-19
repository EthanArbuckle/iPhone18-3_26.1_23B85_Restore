@interface LACSharedMode
+ (id)defaultSharedMode;
- (BOOL)isEqual:(id)a3;
- (LACSharedMode)initWithActive:(BOOL)a3 confirmed:(BOOL)a4;
- (id)description;
@end

@implementation LACSharedMode

- (id)description
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v11[0] = @"isActive";
  if ([(LACSharedMode *)self isActive])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v11[1] = @"isConfirmed";
  v12[0] = v5;
  if ([(LACSharedMode *)self isConfirmed])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v7];;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (LACSharedMode)initWithActive:(BOOL)a3 confirmed:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = LACSharedMode;
  result = [(LACSharedMode *)&v7 init];
  if (result)
  {
    result->_active = a3;
    result->_confirmed = a4;
  }

  return result;
}

+ (id)defaultSharedMode
{
  v2 = [[LACSharedMode alloc] initWithActive:0 confirmed:0];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACSharedMode *)self isActive];
    if (v6 == [v5 isActive])
    {
      v8 = [(LACSharedMode *)self isConfirmed];
      v7 = v8 ^ [v5 isConfirmed] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end