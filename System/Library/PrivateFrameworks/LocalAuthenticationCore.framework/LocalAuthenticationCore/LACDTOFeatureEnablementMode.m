@interface LACDTOFeatureEnablementMode
+ (id)disabled;
+ (id)enabled;
+ (id)enabledWithGracePeriod;
+ (id)enabledWithGracePeriodUnlimited;
- (BOOL)isEqual:(id)a3;
- (LACDTOFeatureEnablementMode)initWithIsEnabled:(BOOL)a3 isGracePeriodEnabled:(BOOL)a4 rawValue:(unsigned __int8)a5;
- (NSString)description;
@end

@implementation LACDTOFeatureEnablementMode

+ (id)disabled
{
  v2 = [[LACDTOFeatureEnablementMode alloc] initWithIsEnabled:0 isGracePeriodEnabled:0 rawValue:0];

  return v2;
}

- (LACDTOFeatureEnablementMode)initWithIsEnabled:(BOOL)a3 isGracePeriodEnabled:(BOOL)a4 rawValue:(unsigned __int8)a5
{
  v9.receiver = self;
  v9.super_class = LACDTOFeatureEnablementMode;
  result = [(LACDTOFeatureEnablementMode *)&v9 init];
  if (result)
  {
    result->_isEnabled = a3;
    result->_isGracePeriodEnabled = a4;
    result->_rawValue = a5;
  }

  return result;
}

+ (id)enabled
{
  v2 = [[LACDTOFeatureEnablementMode alloc] initWithIsEnabled:1 isGracePeriodEnabled:0 rawValue:1];

  return v2;
}

+ (id)enabledWithGracePeriod
{
  v2 = [[LACDTOFeatureEnablementMode alloc] initWithIsEnabled:1 isGracePeriodEnabled:1 rawValue:2];

  return v2;
}

+ (id)enabledWithGracePeriodUnlimited
{
  v2 = [[LACDTOFeatureEnablementMode alloc] initWithIsEnabled:1 isGracePeriodEnabled:1 rawValue:3];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACDTOFeatureEnablementMode *)self isEnabled];
    if (v6 == [v5 isEnabled] && (v7 = -[LACDTOFeatureEnablementMode isGracePeriodEnabled](self, "isGracePeriodEnabled"), v7 == objc_msgSend(v5, "isGracePeriodEnabled")))
    {
      v9 = [(LACDTOFeatureEnablementMode *)self rawValue];
      v8 = v9 == [v5 rawValue];
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

- (NSString)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOFeatureEnablementMode isEnabled](self, "isEnabled")}];
  v6 = [v4 stringWithFormat:@"isEnabled: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOFeatureEnablementMode isGracePeriodEnabled](self, "isGracePeriodEnabled")}];
  v9 = [v7 stringWithFormat:@"isGracePeriodEnabled: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[LACDTOFeatureEnablementMode rawValue](self, "rawValue")}];
  v12 = [v10 stringWithFormat:@"rawValue: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end