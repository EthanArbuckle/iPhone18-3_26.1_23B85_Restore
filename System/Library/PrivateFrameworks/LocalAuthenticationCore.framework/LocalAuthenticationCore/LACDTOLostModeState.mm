@interface LACDTOLostModeState
+ (id)nullInstance;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id)a3;
- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)a3 confirmed:(BOOL)a4 createdAt:(id)a5;
- (id)description;
@end

@implementation LACDTOLostModeState

- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)a3 confirmed:(BOOL)a4 createdAt:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = LACDTOLostModeState;
  v10 = [(LACDTOLostModeState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isInLostMode = a3;
    objc_storeStrong(&v10->_createdAt, a5);
    v11->_confirmed = a4;
  }

  return v11;
}

+ (id)nullInstance
{
  v2 = [[LACDTOLostModeState alloc] initWithIsInLostMode:1];

  return v2;
}

- (BOOL)isValid:(id)a3
{
  v4 = a3;
  if (self->_confirmed && [(NSDate *)self->_createdAt compare:v4]!= NSOrderedDescending)
  {
    v6 = [v4 timeIntervalSinceDate:self->_createdAt];
    v5 = v7 <= LACDTOLostModeStateMaxAgeSeconds(v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 isInLostMode];
    if (v6 == -[LACDTOLostModeState isInLostMode](self, "isInLostMode") && (v7 = [v5 confirmed], v7 == -[LACDTOLostModeState confirmed](self, "confirmed")))
    {
      v9 = [v5 createdAt];
      v10 = [(LACDTOLostModeState *)self createdAt];
      v8 = v9 == v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v30[6] = *MEMORY[0x1E69E9840];
  v3 = os_variant_allows_internal_security_policies();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = MEMORY[0x1E696AEC0];
    if ([(LACDTOLostModeState *)self isInLostMode])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v29 = [v7 stringWithFormat:@"isInLostMode: %@", v8];
    v30[0] = v29;
    v9 = MEMORY[0x1E696AEC0];
    if ([(LACDTOLostModeState *)self confirmed])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v28 = [v9 stringWithFormat:@"confirmed: %@", v10];
    v30[1] = v28;
    v11 = MEMORY[0x1E696AEC0];
    v27 = [(LACDTOLostModeState *)self createdAt];
    v26 = [v11 stringWithFormat:@"createdAt: %@", v27];
    v30[2] = v26;
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(LACDTOLostModeState *)self createdAt];
    [v13 timeIntervalSince1970];
    v15 = [v12 stringWithFormat:@"createdAtTimestamp: %.2f", v14];
    v30[3] = v15;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E695DF00] now];
    if ([(LACDTOLostModeState *)self isValid:v17])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [v16 stringWithFormat:@"isValid: %@", v18];
    v30[4] = v19;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"maxAge: %.2f", LACDTOLostModeStateMaxAgeSeconds(v19)];
    v30[5] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];
    v22 = [v21 componentsJoinedByString:@" "];;
    v23 = [v4 stringWithFormat:@"<%@ %p %@>", v6, self, v22];;
  }

  else
  {
    v23 = [v4 stringWithFormat:@"<%@ %p>", v5, self];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end