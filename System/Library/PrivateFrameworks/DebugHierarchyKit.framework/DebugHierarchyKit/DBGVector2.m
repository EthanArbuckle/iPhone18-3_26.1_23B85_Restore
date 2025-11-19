@interface DBGVector2
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withVector2:(id)a1;
- (DBGVector2)initWithVector2:(DBGVector2 *)self;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGVector2

+ (id)withVector2:(id)a1
{
  v3 = [[a1 alloc] initWithVector2:v2];

  return v3;
}

- (DBGVector2)initWithVector2:(DBGVector2 *)self
{
  v4 = v2;
  v5.receiver = self;
  v5.super_class = DBGVector2;
  result = [(DBGVector2 *)&v5 init];
  if (result)
  {
    *result->_vector2 = v4;
  }

  return result;
}

- (id)objectValue
{
  [(DBGVector2 *)self vector2];
  v3 = [NSNumber numberWithDouble:?];
  v8[0] = v3;
  [(DBGVector2 *)self vector2];
  v5 = [NSNumber numberWithDouble:v4];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (NSString)description
{
  v2 = [(DBGVector2 *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGVector2 *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    v10 = 0.0;
    if (a5)
    {
      v11 = v8;
      v10 = 0.0;
      *a5 = v9;
    }
  }

  else
  {
    v12 = [v7 objectAtIndexedSubscript:0];
    [v12 doubleValue];
    v17 = v13;

    v14 = [v7 objectAtIndexedSubscript:1];
    [v14 doubleValue];

    v10 = v17;
  }

  v15 = [a1 withVector2:{v10, *&v17}];

  return v15;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGVector2 *)self vector2];
  v3 = [NSNumber numberWithDouble:?];
  v8[0] = v3;
  [(DBGVector2 *)self vector2];
  v5 = [NSNumber numberWithDouble:v4];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

@end