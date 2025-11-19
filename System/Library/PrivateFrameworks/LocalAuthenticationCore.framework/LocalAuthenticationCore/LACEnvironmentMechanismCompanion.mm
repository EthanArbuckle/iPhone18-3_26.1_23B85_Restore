@interface LACEnvironmentMechanismCompanion
+ (id)companionForUser:(unsigned int)a3 type:(int64_t)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (LACEnvironmentMechanismCompanion)initWithAvailabilityError:(id)a3 companionType:(int64_t)a4 stateHash:(id)a5;
- (LACEnvironmentMechanismCompanion)initWithCoder:(id)a3;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACEnvironmentMechanismCompanion

- (LACEnvironmentMechanismCompanion)initWithAvailabilityError:(id)a3 companionType:(int64_t)a4 stateHash:(id)a5
{
  v9 = a5;
  v10 = a3;
  v11 = NSStringFromLACCompanionType(a4);
  switch(a4)
  {
    case 1:
      v12 = @"applewatch";
      break;
    case 2:
      v12 = @"macbook";
      break;
    case 4:
      v12 = @"visionpro";
      break;
    default:
      v12 = @"questionmark";
      break;
  }

  v15.receiver = self;
  v15.super_class = LACEnvironmentMechanismCompanion;
  v13 = [(LACEnvironmentMechanism *)&v15 initWithAvailabilityError:v10 localizedName:v11 iconSystemName:v12];

  if (v13)
  {
    v13->_companionType = a4;
    objc_storeStrong(&v13->_stateHash, a5);
  }

  return v13;
}

+ (id)companionForUser:(unsigned int)a3 type:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = [LACError errorWithCode:-1000 debugDescription:@"companions not supported"];
  v9 = LACLogEnvironment();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13[0] = 67109634;
    v13[1] = a3;
    v14 = 1024;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B0233000, v9, OS_LOG_TYPE_ERROR, "companionForUser:%u type:%d -> %{public}@", v13, 0x18u);
  }

  if (a5)
  {
    v10 = v8;
    *a5 = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = LACEnvironmentMechanismCompanion;
  v4 = a3;
  [(LACEnvironmentMechanism *)&v9 encodeWithCoder:v4];
  v5 = [(LACEnvironmentMechanismCompanion *)self companionType:v9.receiver];
  v6 = NSStringFromSelector(sel_companionType);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(LACEnvironmentMechanismCompanion *)self stateHash];
  v8 = NSStringFromSelector(sel_stateHash);
  [v4 encodeObject:v7 forKey:v8];
}

- (LACEnvironmentMechanismCompanion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_availabilityError);
  v6 = [v4 decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_companionType);
  v8 = [v4 decodeIntegerForKey:v7];
  v9 = NSStringFromSelector(sel_stateHash);
  v10 = [v4 decodeObjectForKey:v9];

  v11 = [(LACEnvironmentMechanismCompanion *)self initWithAvailabilityError:v6 companionType:v8 stateHash:v10];
  return v11;
}

- (id)descriptionDetails
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"companionType: %d", -[LACEnvironmentMechanismCompanion companionType](self, "companionType")];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v6 = [v3 arrayWithArray:v5];

  v7 = [(LACEnvironmentMechanismCompanion *)self stateHash];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(LACEnvironmentMechanismCompanion *)self stateHash];
    v10 = [v8 stringWithFormat:@"stateHash: %@", v9];
    [v6 addObject:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = LACEnvironmentMechanismCompanion;
    if ([(LACEnvironmentMechanism *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(LACEnvironmentMechanismCompanion *)self companionType];
      if (v6 == [(LACEnvironmentMechanismCompanion *)v5 companionType])
      {
        v7 = [(LACEnvironmentMechanismCompanion *)self stateHash];
        v8 = [(LACEnvironmentMechanismCompanion *)v5 stateHash];
        if (v7 == v8)
        {
          v11 = 1;
        }

        else
        {
          v9 = [(LACEnvironmentMechanismCompanion *)self stateHash];
          v10 = [(LACEnvironmentMechanismCompanion *)v5 stateHash];
          v11 = [v9 isEqualToData:v10];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

@end