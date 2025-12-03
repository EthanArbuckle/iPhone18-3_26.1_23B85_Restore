@interface LACDTOMutableFeatureState
+ (id)nullInstance;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation LACDTOMutableFeatureState

+ (id)nullInstance
{
  v2 = objc_alloc_init(LACDTOMutableFeatureState);
  [(LACDTOMutableFeatureState *)v2 setIsSupported:0];
  [(LACDTOMutableFeatureState *)v2 setIsAvailable:0];
  [(LACDTOMutableFeatureState *)v2 setIsEnabled:0];
  [(LACDTOMutableFeatureState *)v2 setIsStrictModeEnabled:0];
  v3 = +[LACDTOMutableFeatureRequirements nullInstance];
  [(LACDTOMutableFeatureState *)v2 setRequirements:v3];

  return v2;
}

- (NSString)description
{
  v25[5] = *MEMORY[0x1E69E9840];
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableFeatureState *)self isSupported])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v4 stringWithFormat:@"isSupported: %@", v5];
  v25[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableFeatureState *)self isAvailable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v7 stringWithFormat:@"isAvailable: %@", v8];
  v25[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableFeatureState *)self isEnabled])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v10 stringWithFormat:@"isEnabled: %@", v11];
  v25[2] = v12;
  v13 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableFeatureState *)self isStrictModeEnabled])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v13 stringWithFormat:@"isStrictModeEnabled: %@", v14];
  v25[3] = v15;
  v16 = MEMORY[0x1E696AEC0];
  requirements = [(LACDTOMutableFeatureState *)self requirements];
  v18 = [v16 stringWithFormat:@"requirements: %@", requirements];
  v25[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v20 = [v19 componentsJoinedByString:@" "];;
  v21 = [v24 stringWithFormat:@"<%@ %p %@>", v3, self, v20];;

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isSupported = [(LACDTOMutableFeatureState *)self isSupported];
    if (isSupported == [v5 isSupported] && (v7 = -[LACDTOMutableFeatureState isAvailable](self, "isAvailable"), v7 == objc_msgSend(v5, "isAvailable")) && (v8 = -[LACDTOMutableFeatureState isEnabled](self, "isEnabled"), v8 == objc_msgSend(v5, "isEnabled")) && (v9 = -[LACDTOMutableFeatureState isStrictModeEnabled](self, "isStrictModeEnabled"), v9 == objc_msgSend(v5, "isStrictModeEnabled")))
    {
      requirements = [(LACDTOMutableFeatureState *)self requirements];
      requirements2 = [v5 requirements];
      if (requirements == requirements2)
      {
        v10 = 1;
      }

      else
      {
        requirements3 = [(LACDTOMutableFeatureState *)self requirements];
        requirements4 = [v5 requirements];
        v10 = [requirements3 isEqual:requirements4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

@end