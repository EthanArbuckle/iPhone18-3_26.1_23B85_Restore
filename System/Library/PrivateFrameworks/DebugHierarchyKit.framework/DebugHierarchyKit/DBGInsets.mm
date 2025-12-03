@interface DBGInsets
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withEdgeInsets:(DBGEdgeInsets)insets;
- (DBGEdgeInsets)edgeInsets;
- (DBGInsets)initWithEdgeInsets:(DBGEdgeInsets)insets;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGInsets

+ (id)withEdgeInsets:(DBGEdgeInsets)insets
{
  v3 = [[self alloc] initWithEdgeInsets:{insets.top, insets.leading, insets.bottom, insets.trailing}];

  return v3;
}

- (DBGInsets)initWithEdgeInsets:(DBGEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  v8.receiver = self;
  v8.super_class = DBGInsets;
  result = [(DBGInsets *)&v8 init];
  if (result)
  {
    result->_edgeInsets.top = top;
    result->_edgeInsets.leading = leading;
    result->_edgeInsets.bottom = bottom;
    result->_edgeInsets.trailing = trailing;
  }

  return result;
}

- (id)objectValue
{
  [(DBGInsets *)self edgeInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [NSNumber numberWithDouble:?];
  v14[0] = v8;
  v9 = [NSNumber numberWithDouble:v3];
  v14[1] = v9;
  v10 = [NSNumber numberWithDouble:v5];
  v14[2] = v10;
  v11 = [NSNumber numberWithDouble:v7];
  v14[3] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:4];

  return v12;
}

- (NSString)description
{
  objectValue = [(DBGInsets *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGInsets *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (DBGEdgeInsets)edgeInsets
{
  objc_copyStruct(v6, &self->_edgeInsets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    v10 = 0.0;
    if (error)
    {
      v11 = v8;
      *error = v9;
    }

    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v15 = [v7 objectAtIndexedSubscript:0];
    [v15 doubleValue];
    v14 = v16;
    v17 = [v7 objectAtIndexedSubscript:1];
    [v17 doubleValue];
    v13 = v18;
    v19 = [v7 objectAtIndexedSubscript:2];
    [v19 doubleValue];
    v12 = v20;
    v21 = [v7 objectAtIndexedSubscript:3];
    [v21 doubleValue];
    v10 = v22;
  }

  v23 = [self withEdgeInsets:{v14, v13, v12, v10}];

  return v23;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGInsets *)self edgeInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [NSNumber numberWithDouble:?];
  v14[0] = v8;
  v9 = [NSNumber numberWithDouble:v3];
  v14[1] = v9;
  v10 = [NSNumber numberWithDouble:v5];
  v14[2] = v10;
  v11 = [NSNumber numberWithDouble:v7];
  v14[3] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:4];

  return v12;
}

@end