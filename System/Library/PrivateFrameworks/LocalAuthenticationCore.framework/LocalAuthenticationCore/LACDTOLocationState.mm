@interface LACDTOLocationState
+ (id)nullInstance;
+ (id)strictLocationState;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id)a3;
- (LACDTOLocationState)initWithRawValue:(int64_t)a3 confirmed:(BOOL)a4 createdAt:(id)a5;
- (id)description;
@end

@implementation LACDTOLocationState

- (LACDTOLocationState)initWithRawValue:(int64_t)a3 confirmed:(BOOL)a4 createdAt:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = LACDTOLocationState;
  v10 = [(LACDTOLocationState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_rawValue = a3;
    v10->_confirmed = a4;
    objc_storeStrong(&v10->_createdAt, a5);
  }

  return v11;
}

+ (id)nullInstance
{
  v2 = [[a1 alloc] initWithRawValue:0 confirmed:0];

  return v2;
}

+ (id)strictLocationState
{
  v2 = [[a1 alloc] initWithRawValue:0 confirmed:0];

  return v2;
}

- (BOOL)isValid:(id)a3
{
  v4 = a3;
  if ([(NSDate *)self->_createdAt compare:v4]== NSOrderedDescending)
  {
    v5 = 0;
  }

  else
  {
    [v4 timeIntervalSinceDate:self->_createdAt];
    v5 = v6 <= 5.0;
  }

  return v5;
}

- (id)description
{
  v29[5] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E696AEC0];
  v25 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v28 = NSStringFromLACDTOLocationStateRawValue([(LACDTOLocationState *)self rawValue]);
  v27 = [v3 stringWithFormat:@"DSLMode: %@", v28];
  v29[0] = v27;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LACDTOLocationState *)self confirmed];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v4 stringWithFormat:@"confirmed: %@", v6];
  v29[1] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACDTOLocationState *)self createdAt];
  v10 = [v8 stringWithFormat:@"createdAt: %@", v9];
  v29[2] = v10;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [(LACDTOLocationState *)self createdAt];
  [v12 timeIntervalSince1970];
  v14 = [v11 stringWithFormat:@"createdAtTimestamp: %.2f", v13];
  v29[3] = v14;
  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E695DF00] now];
  v17 = [(LACDTOLocationState *)self isValid:v16];
  v18 = @"NO";
  if (v17)
  {
    v18 = @"YES";
  }

  v19 = [v15 stringWithFormat:@"isValid: %@", v18];
  v29[4] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
  v21 = [v20 componentsJoinedByString:@" "];;
  v22 = [v26 stringWithFormat:@"<%@ %p %@>", v25, self, v21];;

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACDTOLocationState *)self rawValue];
    if (v6 == [v5 rawValue] && (v7 = -[LACDTOLocationState confirmed](self, "confirmed"), v7 == objc_msgSend(v5, "confirmed")))
    {
      v9 = [(LACDTOLocationState *)self createdAt];
      v10 = [v5 createdAt];
      if (v9 == v10)
      {
        v8 = 1;
      }

      else
      {
        v11 = [(LACDTOLocationState *)self createdAt];
        v12 = [v5 createdAt];
        v8 = [v11 isEqual:v12];
      }
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

  return v8 & 1;
}

@end