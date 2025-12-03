@interface CPLPrequeliteVariable
+ (CPLPrequeliteVariable)variableWithName:(id)name defaultValue:(id)value forTable:(id)table type:(id)type;
+ (CPLPrequeliteVariable)variableWithName:(id)name defaultValue:(id)value type:(id)type;
+ (id)indexVariableForVariableWithName:(id)name forTable:(id)table;
- (BOOL)hasCachedValueForIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CPLPrequeliteVariable)initWithName:(id)name defaultValue:(id)value table:(id)table type:(id)type;
- (NSString)description;
- (id)bindableValueForValue:(id)value;
- (id)cachedValueForIdentifier:(id)identifier;
- (id)columnDefinitionWithDefaultValue:(id)value;
- (id)redactedDescription;
- (void)discardCachedValue;
- (void)setCachedValue:(id)value forIdentifier:(id)identifier;
@end

@implementation CPLPrequeliteVariable

+ (CPLPrequeliteVariable)variableWithName:(id)name defaultValue:(id)value type:(id)type
{
  typeCopy = type;
  valueCopy = value;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy defaultValue:valueCopy table:0 type:typeCopy];

  return v11;
}

+ (CPLPrequeliteVariable)variableWithName:(id)name defaultValue:(id)value forTable:(id)table type:(id)type
{
  typeCopy = type;
  tableCopy = table;
  valueCopy = value;
  nameCopy = name;
  v14 = [[self alloc] initWithName:nameCopy defaultValue:valueCopy table:tableCopy type:typeCopy];

  return v14;
}

+ (id)indexVariableForVariableWithName:(id)name forTable:(id)table
{
  tableCopy = table;
  v7 = [name stringByAppendingString:@".idx"];
  v8 = [self alloc];
  v9 = +[CPLPrequeliteType integerType];
  v10 = [v8 initWithName:v7 defaultValue:0 table:tableCopy type:v9];

  return v10;
}

- (CPLPrequeliteVariable)initWithName:(id)name defaultValue:(id)value table:(id)table type:(id)type
{
  nameCopy = name;
  valueCopy = value;
  tableCopy = table;
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = CPLPrequeliteVariable;
  v14 = [(CPLPrequeliteVariable *)&v22 init];
  if (v14)
  {
    if (tableCopy)
    {
      tableName = [tableCopy tableName];
      nameCopy = [NSString stringWithFormat:@"%@.%@", tableName, nameCopy];

      nameCopy = nameCopy;
    }

    objc_storeStrong(&v14->_table, table);
    v17 = [nameCopy copy];
    variableName = v14->_variableName;
    v14->_variableName = v17;

    objc_storeStrong(&v14->_type, type);
    v19 = [PQLNameInjection nameWithString:nameCopy];
    injection = v14->_injection;
    v14->_injection = v19;

    objc_storeStrong(&v14->_defaultValue, value);
    v14->_allowsNull = valueCopy == 0;
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

- (BOOL)hasCachedValueForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_shouldNotCacheValue || !self->_cachedValueIdentifier)
  {
    v6 = 0;
  }

  else
  {
    v6 = [identifierCopy isEqual:?];
  }

  return v6;
}

- (id)cachedValueForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!self->_shouldNotCacheValue && self->_cachedValueIdentifier && [identifierCopy isEqual:?])
  {
    v6 = self->_cachedValue;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCachedValue:(id)value forIdentifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  if (!self->_shouldNotCacheValue)
  {
    objc_storeStrong(&self->_cachedValueIdentifier, identifier);
    objc_storeStrong(&self->_cachedValue, value);
  }
}

- (void)discardCachedValue
{
  cachedValue = self->_cachedValue;
  self->_cachedValue = 0;

  cachedValueIdentifier = self->_cachedValueIdentifier;
  self->_cachedValueIdentifier = 0;
}

- (id)bindableValueForValue:(id)value
{
  valueCopy = value;
  if (valueCopy || self->_allowsNull)
  {
    defaultValueForNull = [(CPLPrequeliteType *)self->_type _bindableValueForValue:valueCopy];
  }

  else
  {
    defaultValue = self->_defaultValue;
    if (defaultValue)
    {
      defaultValueForNull = defaultValue;
    }

    else
    {
      defaultValueForNull = [(CPLPrequeliteType *)self->_type defaultValueForNull];
    }
  }

  v6 = defaultValueForNull;

  return v6;
}

- (id)columnDefinitionWithDefaultValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    valueCopy = self->_defaultValue;
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

  if (valueCopy)
  {
    [v5 appendBytes:" DEFAULT " length:9];
    v8 = [(CPLPrequeliteType *)self->_type rawInjectionForValue:self->_defaultValue];
    v9 = [v8 sql];
    [v5 appendData:v9];
  }

  v10 = [[PQLRawInjection alloc] initWithData:v5];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy->_type)
    {
      v5 = [(NSString *)self->_variableName isEqualToString:equalCopy->_variableName];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end