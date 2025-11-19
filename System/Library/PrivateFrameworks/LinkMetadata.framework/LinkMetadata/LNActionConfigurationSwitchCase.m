@interface LNActionConfigurationSwitchCase
- (BOOL)isEqual:(id)a3;
- (LNActionConfigurationSwitchCase)initWithCoder:(id)a3;
- (LNActionConfigurationSwitchCase)initWithDefaultConfiguration:(id)a3;
- (LNActionConfigurationSwitchCase)initWithOrigin:(id)a3 configuration:(id)a4;
- (LNActionConfigurationSwitchCase)initWithValue:(id)a3 configuration:(id)a4;
- (LNActionConfigurationSwitchCase)initWithWidgetFamilies:(id)a3 configuration:(id)a4;
- (LNActionConfigurationSwitchCase)initWithWidgetFamily:(id)a3 configuration:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionConfigurationSwitchCase

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v7 = [(LNActionConfigurationSwitchCase *)self value];
    v8 = [(LNActionConfigurationSwitchCase *)v6 value];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_20;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v16 = [(LNActionConfigurationSwitchCase *)self configuration];
    v17 = [(LNActionConfigurationSwitchCase *)v6 configuration];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      if (!v14 || !v18)
      {

        LOBYTE(v12) = 0;
        goto LABEL_20;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v19 = [(LNActionConfigurationSwitchCase *)self isDefaultCase];
    v12 = v19 ^ [(LNActionConfigurationSwitchCase *)v6 isDefaultCase]^ 1;
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v12) = 1;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNActionConfigurationSwitchCase *)self value];
  v4 = [v3 hash];
  v5 = [(LNActionConfigurationSwitchCase *)self configuration];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(LNActionConfigurationSwitchCase *)self value];
  [v6 encodeObject:v4 forKey:@"value"];

  v5 = [(LNActionConfigurationSwitchCase *)self configuration];
  [v6 encodeObject:v5 forKey:@"configuration"];

  [v6 encodeBool:-[LNActionConfigurationSwitchCase isDefaultCase](self forKey:{"isDefaultCase"), @"defaultCase"}];
}

- (LNActionConfigurationSwitchCase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (v5)
  {
    if ([v4 decodeBoolForKey:@"defaultCase"])
    {
      self = [(LNActionConfigurationSwitchCase *)self initWithDefaultConfiguration:v5];
    }

    else
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
      self = [(LNActionConfigurationSwitchCase *)self initWithValue:v7 configuration:v5];
    }

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionConfigurationSwitchCase *)self value];
  v7 = [(LNActionConfigurationSwitchCase *)self configuration];
  v8 = [(LNActionConfigurationSwitchCase *)self isDefaultCase];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, value: %@, configuration: %@, default: %@>", v5, self, v6, v7, v9];

  return v10;
}

- (LNActionConfigurationSwitchCase)initWithDefaultConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNActionConfigurationSwitchCase.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v14.receiver = self;
  v14.super_class = LNActionConfigurationSwitchCase;
  v6 = [(LNActionConfigurationSwitchCase *)&v14 init];
  v7 = v6;
  if (v6)
  {
    value = v6->_value;
    v6->_value = 0;

    v7->_defaultCase = 1;
    v9 = [v5 copy];
    configuration = v7->_configuration;
    v7->_configuration = v9;

    v11 = v7;
  }

  return v7;
}

- (LNActionConfigurationSwitchCase)initWithOrigin:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [LNValue alloc];
  v9 = +[LNPrimitiveValueType stringValueType];
  v10 = [(LNValue *)v8 initWithValue:v7 valueType:v9];

  v11 = [(LNActionConfigurationSwitchCase *)self initWithValue:v10 configuration:v6];
  return v11;
}

- (LNActionConfigurationSwitchCase)initWithWidgetFamilies:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = [a3 if_map:&__block_literal_global_6057];
  v8 = [LNValue alloc];
  v9 = +[LNPrimitiveValueType stringValueType];
  v10 = [(LNValue *)v8 initWithValues:v7 memberValueType:v9];
  v11 = [(LNActionConfigurationSwitchCase *)self initWithValue:v10 configuration:v6];

  return v11;
}

LNValue *__72__LNActionConfigurationSwitchCase_initWithWidgetFamilies_configuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [LNValue alloc];
  v4 = +[LNPrimitiveValueType stringValueType];
  v5 = [(LNValue *)v3 initWithValue:v2 valueType:v4];

  return v5;
}

- (LNActionConfigurationSwitchCase)initWithWidgetFamily:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [LNValue alloc];
  v9 = +[LNPrimitiveValueType stringValueType];
  v10 = [(LNValue *)v8 initWithValue:v7 valueType:v9];

  v11 = [(LNActionConfigurationSwitchCase *)self initWithValue:v10 configuration:v6];
  return v11;
}

- (LNActionConfigurationSwitchCase)initWithValue:(id)a3 configuration:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNActionConfigurationSwitchCase.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v17.receiver = self;
  v17.super_class = LNActionConfigurationSwitchCase;
  v10 = [(LNActionConfigurationSwitchCase *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    v11->_defaultCase = 0;
    v12 = [v9 copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;

    v14 = v11;
  }

  return v11;
}

@end