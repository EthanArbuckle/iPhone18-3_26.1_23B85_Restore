@interface LNActionConfigurationSwitchCase
- (BOOL)isEqual:(id)equal;
- (LNActionConfigurationSwitchCase)initWithCoder:(id)coder;
- (LNActionConfigurationSwitchCase)initWithDefaultConfiguration:(id)configuration;
- (LNActionConfigurationSwitchCase)initWithOrigin:(id)origin configuration:(id)configuration;
- (LNActionConfigurationSwitchCase)initWithValue:(id)value configuration:(id)configuration;
- (LNActionConfigurationSwitchCase)initWithWidgetFamilies:(id)families configuration:(id)configuration;
- (LNActionConfigurationSwitchCase)initWithWidgetFamily:(id)family configuration:(id)configuration;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConfigurationSwitchCase

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_22:

      goto LABEL_23;
    }

    value = [(LNActionConfigurationSwitchCase *)self value];
    value2 = [(LNActionConfigurationSwitchCase *)v6 value];
    v9 = value;
    v10 = value2;
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

    configuration = [(LNActionConfigurationSwitchCase *)self configuration];
    configuration2 = [(LNActionConfigurationSwitchCase *)v6 configuration];
    v14 = configuration;
    v18 = configuration2;
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

    isDefaultCase = [(LNActionConfigurationSwitchCase *)self isDefaultCase];
    v12 = isDefaultCase ^ [(LNActionConfigurationSwitchCase *)v6 isDefaultCase]^ 1;
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v12) = 1;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  value = [(LNActionConfigurationSwitchCase *)self value];
  v4 = [value hash];
  configuration = [(LNActionConfigurationSwitchCase *)self configuration];
  v6 = [configuration hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(LNActionConfigurationSwitchCase *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  configuration = [(LNActionConfigurationSwitchCase *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  [coderCopy encodeBool:-[LNActionConfigurationSwitchCase isDefaultCase](self forKey:{"isDefaultCase"), @"defaultCase"}];
}

- (LNActionConfigurationSwitchCase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (v5)
  {
    if ([coderCopy decodeBoolForKey:@"defaultCase"])
    {
      self = [(LNActionConfigurationSwitchCase *)self initWithDefaultConfiguration:v5];
    }

    else
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
      self = [(LNActionConfigurationSwitchCase *)self initWithValue:v7 configuration:v5];
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  value = [(LNActionConfigurationSwitchCase *)self value];
  configuration = [(LNActionConfigurationSwitchCase *)self configuration];
  isDefaultCase = [(LNActionConfigurationSwitchCase *)self isDefaultCase];
  v9 = @"NO";
  if (isDefaultCase)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, value: %@, configuration: %@, default: %@>", v5, self, value, configuration, v9];

  return v10;
}

- (LNActionConfigurationSwitchCase)initWithDefaultConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConfigurationSwitchCase.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
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
    v9 = [configurationCopy copy];
    configuration = v7->_configuration;
    v7->_configuration = v9;

    v11 = v7;
  }

  return v7;
}

- (LNActionConfigurationSwitchCase)initWithOrigin:(id)origin configuration:(id)configuration
{
  configurationCopy = configuration;
  originCopy = origin;
  v8 = [LNValue alloc];
  v9 = +[LNPrimitiveValueType stringValueType];
  v10 = [(LNValue *)v8 initWithValue:originCopy valueType:v9];

  v11 = [(LNActionConfigurationSwitchCase *)self initWithValue:v10 configuration:configurationCopy];
  return v11;
}

- (LNActionConfigurationSwitchCase)initWithWidgetFamilies:(id)families configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = [families if_map:&__block_literal_global_6057];
  v8 = [LNValue alloc];
  v9 = +[LNPrimitiveValueType stringValueType];
  v10 = [(LNValue *)v8 initWithValues:v7 memberValueType:v9];
  v11 = [(LNActionConfigurationSwitchCase *)self initWithValue:v10 configuration:configurationCopy];

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

- (LNActionConfigurationSwitchCase)initWithWidgetFamily:(id)family configuration:(id)configuration
{
  configurationCopy = configuration;
  familyCopy = family;
  v8 = [LNValue alloc];
  v9 = +[LNPrimitiveValueType stringValueType];
  v10 = [(LNValue *)v8 initWithValue:familyCopy valueType:v9];

  v11 = [(LNActionConfigurationSwitchCase *)self initWithValue:v10 configuration:configurationCopy];
  return v11;
}

- (LNActionConfigurationSwitchCase)initWithValue:(id)value configuration:(id)configuration
{
  valueCopy = value;
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConfigurationSwitchCase.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v17.receiver = self;
  v17.super_class = LNActionConfigurationSwitchCase;
  v10 = [(LNActionConfigurationSwitchCase *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    v11->_defaultCase = 0;
    v12 = [configurationCopy copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;

    v14 = v11;
  }

  return v11;
}

@end