@interface LACEnvironmentMechanismCompanion
+ (id)companionForUser:(unsigned int)user type:(int64_t)type error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentMechanismCompanion)initWithAvailabilityError:(id)error companionType:(int64_t)type stateHash:(id)hash;
- (LACEnvironmentMechanismCompanion)initWithCoder:(id)coder;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentMechanismCompanion

- (LACEnvironmentMechanismCompanion)initWithAvailabilityError:(id)error companionType:(int64_t)type stateHash:(id)hash
{
  hashCopy = hash;
  errorCopy = error;
  v11 = NSStringFromLACCompanionType(type);
  switch(type)
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
  v13 = [(LACEnvironmentMechanism *)&v15 initWithAvailabilityError:errorCopy localizedName:v11 iconSystemName:v12];

  if (v13)
  {
    v13->_companionType = type;
    objc_storeStrong(&v13->_stateHash, hash);
  }

  return v13;
}

+ (id)companionForUser:(unsigned int)user type:(int64_t)type error:(id *)error
{
  typeCopy = type;
  v18 = *MEMORY[0x1E69E9840];
  v8 = [LACError errorWithCode:-1000 debugDescription:@"companions not supported"];
  v9 = LACLogEnvironment();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13[0] = 67109634;
    v13[1] = user;
    v14 = 1024;
    v15 = typeCopy;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B0233000, v9, OS_LOG_TYPE_ERROR, "companionForUser:%u type:%d -> %{public}@", v13, 0x18u);
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = LACEnvironmentMechanismCompanion;
  coderCopy = coder;
  [(LACEnvironmentMechanism *)&v9 encodeWithCoder:coderCopy];
  v5 = [(LACEnvironmentMechanismCompanion *)self companionType:v9.receiver];
  v6 = NSStringFromSelector(sel_companionType);
  [coderCopy encodeInteger:v5 forKey:v6];

  stateHash = [(LACEnvironmentMechanismCompanion *)self stateHash];
  v8 = NSStringFromSelector(sel_stateHash);
  [coderCopy encodeObject:stateHash forKey:v8];
}

- (LACEnvironmentMechanismCompanion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_availabilityError);
  v6 = [coderCopy decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_companionType);
  v8 = [coderCopy decodeIntegerForKey:v7];
  v9 = NSStringFromSelector(sel_stateHash);
  v10 = [coderCopy decodeObjectForKey:v9];

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

  stateHash = [(LACEnvironmentMechanismCompanion *)self stateHash];

  if (stateHash)
  {
    v8 = MEMORY[0x1E696AEC0];
    stateHash2 = [(LACEnvironmentMechanismCompanion *)self stateHash];
    v10 = [v8 stringWithFormat:@"stateHash: %@", stateHash2];
    [v6 addObject:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = LACEnvironmentMechanismCompanion;
    if ([(LACEnvironmentMechanism *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      companionType = [(LACEnvironmentMechanismCompanion *)self companionType];
      if (companionType == [(LACEnvironmentMechanismCompanion *)v5 companionType])
      {
        stateHash = [(LACEnvironmentMechanismCompanion *)self stateHash];
        stateHash2 = [(LACEnvironmentMechanismCompanion *)v5 stateHash];
        if (stateHash == stateHash2)
        {
          v11 = 1;
        }

        else
        {
          stateHash3 = [(LACEnvironmentMechanismCompanion *)self stateHash];
          stateHash4 = [(LACEnvironmentMechanismCompanion *)v5 stateHash];
          v11 = [stateHash3 isEqualToData:stateHash4];
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