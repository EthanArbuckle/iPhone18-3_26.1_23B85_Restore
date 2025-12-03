@interface LNActionConfigurationCondition
- (BOOL)isEqual:(id)equal;
- (LNActionConfigurationCondition)initWithCoder:(id)coder;
- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)operator origin:(id)origin;
- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)operator widgetFamilies:(id)families;
- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)operator widgetFamily:(id)family;
- (LNActionConfigurationCondition)initWithParameterIdentifier:(id)identifier comparisonOperator:(int64_t)operator value:(id)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConfigurationCondition

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

    parameterIdentifier = [(LNActionConfigurationCondition *)self parameterIdentifier];
    parameterIdentifier2 = [(LNActionConfigurationCondition *)v6 parameterIdentifier];
    v9 = parameterIdentifier;
    v10 = parameterIdentifier2;
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

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    comparisonOperator = [(LNActionConfigurationCondition *)self comparisonOperator];
    if (comparisonOperator != [(LNActionConfigurationCondition *)v6 comparisonOperator])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    value = [(LNActionConfigurationCondition *)self value];
    value2 = [(LNActionConfigurationCondition *)v6 value];
    v14 = value;
    v18 = value2;
    v13 = v18;
    if (v14 == v18)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v18)
      {
        LOBYTE(v12) = [v14 isEqual:v18];
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  LOBYTE(v12) = 1;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  parameterIdentifier = [(LNActionConfigurationCondition *)self parameterIdentifier];
  v4 = [parameterIdentifier hash];
  v5 = [(LNActionConfigurationCondition *)self comparisonOperator]^ v4;
  value = [(LNActionConfigurationCondition *)self value];
  v7 = [value hash];

  return v5 ^ v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNActionConfigurationCondition *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  [coderCopy encodeInteger:-[LNActionConfigurationCondition comparisonOperator](self forKey:{"comparisonOperator"), @"comparisonOperator"}];
  value = [(LNActionConfigurationCondition *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (LNActionConfigurationCondition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"comparisonOperator"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    self = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:v5 comparisonOperator:v6 value:v7];

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
  parameterIdentifier = [(LNActionConfigurationCondition *)self parameterIdentifier];
  comparisonOperator = [(LNActionConfigurationCondition *)self comparisonOperator];
  value = [(LNActionConfigurationCondition *)self value];
  v9 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, comparisonOperator: %ld, value: %@>", v5, self, parameterIdentifier, comparisonOperator, value];

  return v9;
}

- (LNActionConfigurationCondition)initWithParameterIdentifier:(id)identifier comparisonOperator:(int64_t)operator value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConfigurationCondition.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = LNActionConfigurationCondition;
  v11 = [(LNActionConfigurationCondition *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    parameterIdentifier = v11->_parameterIdentifier;
    v11->_parameterIdentifier = v12;

    v11->_comparisonOperator = operator;
    objc_storeStrong(&v11->_value, value);
    v14 = v11;
  }

  return v11;
}

- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)operator widgetFamilies:(id)families
{
  v6 = [families if_map:&__block_literal_global_1416];
  v7 = [LNValue alloc];
  v8 = +[LNPrimitiveValueType stringValueType];
  v9 = [(LNValue *)v7 initWithValues:v6 memberValueType:v8];
  v10 = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:@"system.widgetFamily" comparisonOperator:operator value:v9];

  return v10;
}

LNValue *__95__LNActionConfigurationCondition_WidgetKit_Support__initWithComparisonOperator_widgetFamilies___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [LNValue alloc];
  v4 = +[LNPrimitiveValueType stringValueType];
  v5 = [(LNValue *)v3 initWithValue:v2 valueType:v4];

  return v5;
}

- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)operator widgetFamily:(id)family
{
  familyCopy = family;
  v7 = [LNValue alloc];
  v8 = +[LNPrimitiveValueType stringValueType];
  v9 = [(LNValue *)v7 initWithValue:familyCopy valueType:v8];

  v10 = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:@"system.widgetFamily" comparisonOperator:operator value:v9];
  return v10;
}

- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)operator origin:(id)origin
{
  originCopy = origin;
  v7 = [LNValue alloc];
  v8 = +[LNPrimitiveValueType stringValueType];
  v9 = [(LNValue *)v7 initWithValue:originCopy valueType:v8];

  v10 = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:@"system.origin" comparisonOperator:operator value:v9];
  return v10;
}

@end