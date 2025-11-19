@interface LNActionConfigurationCondition
- (BOOL)isEqual:(id)a3;
- (LNActionConfigurationCondition)initWithCoder:(id)a3;
- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)a3 origin:(id)a4;
- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)a3 widgetFamilies:(id)a4;
- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)a3 widgetFamily:(id)a4;
- (LNActionConfigurationCondition)initWithParameterIdentifier:(id)a3 comparisonOperator:(int64_t)a4 value:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionConfigurationCondition

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

    v7 = [(LNActionConfigurationCondition *)self parameterIdentifier];
    v8 = [(LNActionConfigurationCondition *)v6 parameterIdentifier];
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

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v15 = [(LNActionConfigurationCondition *)self comparisonOperator];
    if (v15 != [(LNActionConfigurationCondition *)v6 comparisonOperator])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    v16 = [(LNActionConfigurationCondition *)self value];
    v17 = [(LNActionConfigurationCondition *)v6 value];
    v14 = v16;
    v18 = v17;
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
  v3 = [(LNActionConfigurationCondition *)self parameterIdentifier];
  v4 = [v3 hash];
  v5 = [(LNActionConfigurationCondition *)self comparisonOperator]^ v4;
  v6 = [(LNActionConfigurationCondition *)self value];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionConfigurationCondition *)self parameterIdentifier];
  [v4 encodeObject:v5 forKey:@"parameterIdentifier"];

  [v4 encodeInteger:-[LNActionConfigurationCondition comparisonOperator](self forKey:{"comparisonOperator"), @"comparisonOperator"}];
  v6 = [(LNActionConfigurationCondition *)self value];
  [v4 encodeObject:v6 forKey:@"value"];
}

- (LNActionConfigurationCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"comparisonOperator"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    self = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:v5 comparisonOperator:v6 value:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionConfigurationCondition *)self parameterIdentifier];
  v7 = [(LNActionConfigurationCondition *)self comparisonOperator];
  v8 = [(LNActionConfigurationCondition *)self value];
  v9 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, comparisonOperator: %ld, value: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (LNActionConfigurationCondition)initWithParameterIdentifier:(id)a3 comparisonOperator:(int64_t)a4 value:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNActionConfigurationCondition.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = LNActionConfigurationCondition;
  v11 = [(LNActionConfigurationCondition *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    parameterIdentifier = v11->_parameterIdentifier;
    v11->_parameterIdentifier = v12;

    v11->_comparisonOperator = a4;
    objc_storeStrong(&v11->_value, a5);
    v14 = v11;
  }

  return v11;
}

- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)a3 widgetFamilies:(id)a4
{
  v6 = [a4 if_map:&__block_literal_global_1416];
  v7 = [LNValue alloc];
  v8 = +[LNPrimitiveValueType stringValueType];
  v9 = [(LNValue *)v7 initWithValues:v6 memberValueType:v8];
  v10 = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:@"system.widgetFamily" comparisonOperator:a3 value:v9];

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

- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)a3 widgetFamily:(id)a4
{
  v6 = a4;
  v7 = [LNValue alloc];
  v8 = +[LNPrimitiveValueType stringValueType];
  v9 = [(LNValue *)v7 initWithValue:v6 valueType:v8];

  v10 = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:@"system.widgetFamily" comparisonOperator:a3 value:v9];
  return v10;
}

- (LNActionConfigurationCondition)initWithComparisonOperator:(int64_t)a3 origin:(id)a4
{
  v6 = a4;
  v7 = [LNValue alloc];
  v8 = +[LNPrimitiveValueType stringValueType];
  v9 = [(LNValue *)v7 initWithValue:v6 valueType:v8];

  v10 = [(LNActionConfigurationCondition *)self initWithParameterIdentifier:@"system.origin" comparisonOperator:a3 value:v9];
  return v10;
}

@end