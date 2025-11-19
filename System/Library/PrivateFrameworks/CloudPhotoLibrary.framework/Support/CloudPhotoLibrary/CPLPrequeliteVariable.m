@interface CPLPrequeliteVariable
+ (CPLPrequeliteVariable)variableWithName:(id)a3 defaultValue:(id)a4 forTable:(id)a5 type:(id)a6;
+ (CPLPrequeliteVariable)variableWithName:(id)a3 defaultValue:(id)a4 type:(id)a5;
+ (id)indexVariableForVariableWithName:(id)a3 forTable:(id)a4;
- (BOOL)hasCachedValueForIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CPLPrequeliteVariable)initWithName:(id)a3 defaultValue:(id)a4 table:(id)a5 type:(id)a6;
- (NSString)description;
- (id)bindableValueForValue:(id)a3;
- (id)cachedValueForIdentifier:(id)a3;
- (id)columnDefinitionWithDefaultValue:(id)a3;
- (id)redactedDescription;
- (void)discardCachedValue;
- (void)setCachedValue:(id)a3 forIdentifier:(id)a4;
@end

@implementation CPLPrequeliteVariable

+ (CPLPrequeliteVariable)variableWithName:(id)a3 defaultValue:(id)a4 type:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 defaultValue:v9 table:0 type:v8];

  return v11;
}

+ (CPLPrequeliteVariable)variableWithName:(id)a3 defaultValue:(id)a4 forTable:(id)a5 type:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithName:v13 defaultValue:v12 table:v11 type:v10];

  return v14;
}

+ (id)indexVariableForVariableWithName:(id)a3 forTable:(id)a4
{
  v6 = a4;
  v7 = [a3 stringByAppendingString:@".idx"];
  v8 = [a1 alloc];
  v9 = +[CPLPrequeliteType integerType];
  v10 = [v8 initWithName:v7 defaultValue:0 table:v6 type:v9];

  return v10;
}

- (CPLPrequeliteVariable)initWithName:(id)a3 defaultValue:(id)a4 table:(id)a5 type:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CPLPrequeliteVariable;
  v14 = [(CPLPrequeliteVariable *)&v22 init];
  if (v14)
  {
    if (v12)
    {
      v15 = [v12 tableName];
      v16 = [NSString stringWithFormat:@"%@.%@", v15, v10];

      v10 = v16;
    }

    objc_storeStrong(&v14->_table, a5);
    v17 = [v10 copy];
    variableName = v14->_variableName;
    v14->_variableName = v17;

    objc_storeStrong(&v14->_type, a6);
    v19 = [PQLNameInjection nameWithString:v10];
    injection = v14->_injection;
    v14->_injection = v19;

    objc_storeStrong(&v14->_defaultValue, a4);
    v14->_allowsNull = v11 == 0;
  }

  return v14;
}

- (NSString)description
{
  if (self->_cachedValueIdentifier)
  {
    [NSString stringWithFormat:@"<SQLVariable %@ = %@>", self->_variableName, self->_cachedValue];
  }

  else
  {
    [NSString stringWithFormat:@"<SQLVariable %@>", self->_variableName, v4];
  }
  v2 = ;

  return v2;
}

- (id)redactedDescription
{
  if (self->_cachedValueIdentifier)
  {
    v2 = @"<SQLVariable %@ = [cached]>";
  }

  else
  {
    v2 = @"<SQLVariable %@>";
  }

  v3 = [NSString stringWithFormat:v2, self->_variableName];

  return v3;
}

- (BOOL)hasCachedValueForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shouldNotCacheValue || !self->_cachedValueIdentifier)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isEqual:?];
  }

  return v6;
}

- (id)cachedValueForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_shouldNotCacheValue && self->_cachedValueIdentifier && [v4 isEqual:?])
  {
    v6 = self->_cachedValue;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCachedValue:(id)a3 forIdentifier:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (!self->_shouldNotCacheValue)
  {
    objc_storeStrong(&self->_cachedValueIdentifier, a4);
    objc_storeStrong(&self->_cachedValue, a3);
  }
}

- (void)discardCachedValue
{
  cachedValue = self->_cachedValue;
  self->_cachedValue = 0;

  cachedValueIdentifier = self->_cachedValueIdentifier;
  self->_cachedValueIdentifier = 0;
}

- (id)bindableValueForValue:(id)a3
{
  v4 = a3;
  if (v4 || self->_allowsNull)
  {
    v5 = [(CPLPrequeliteType *)self->_type _bindableValueForValue:v4];
  }

  else
  {
    defaultValue = self->_defaultValue;
    if (defaultValue)
    {
      v5 = defaultValue;
    }

    else
    {
      v5 = [(CPLPrequeliteType *)self->_type defaultValueForNull];
    }
  }

  v6 = v5;

  return v6;
}

- (id)columnDefinitionWithDefaultValue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self->_defaultValue;
  }

  v5 = objc_alloc_init(NSMutableData);
  v6 = [(CPLPrequeliteVariable *)self sql];
  [v5 appendData:v6];

  [v5 appendBytes:" " length:1];
  v7 = [(CPLPrequeliteType *)self->_type sql];
  [v5 appendData:v7];

  if (self->_unique)
  {
    [v5 appendBytes:" UNIQUE" length:7];
  }

  if (!self->_allowsNull)
  {
    [v5 appendBytes:" NOT NULL" length:9];
  }

  if (v4)
  {
    [v5 appendBytes:" DEFAULT " length:9];
    v8 = [(CPLPrequeliteType *)self->_type rawInjectionForValue:self->_defaultValue];
    v9 = [v8 sql];
    [v5 appendData:v9];
  }

  v10 = [[PQLRawInjection alloc] initWithData:v5];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4->_type)
    {
      v5 = [(NSString *)self->_variableName isEqualToString:v4->_variableName];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end