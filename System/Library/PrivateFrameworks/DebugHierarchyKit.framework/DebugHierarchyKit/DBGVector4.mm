@interface DBGVector4
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withVector4:(id)vector4;
- (DBGVector4)initWithVector4:(DBGVector4 *)self;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
- (void)setVector4:(DBGVector4 *)self;
@end

@implementation DBGVector4

+ (id)withVector4:(id)vector4
{
  v5 = v2[1];
  v6[0] = *v2;
  v6[1] = v5;
  v3 = [[vector4 alloc] initWithVector4:v6];

  return v3;
}

- (DBGVector4)initWithVector4:(DBGVector4 *)self
{
  v4 = *v2;
  v5 = v2[1];
  v6.receiver = self;
  v6.super_class = DBGVector4;
  result = [(DBGVector4 *)&v6 init];
  if (result)
  {
    *result->_vector4 = v4;
    *&result->_vector4[16] = v5;
  }

  return result;
}

- (id)objectValue
{
  [(DBGVector4 *)self vector4];
  v3 = [NSNumber numberWithDouble:v12];
  v13[0] = v3;
  [(DBGVector4 *)self vector4];
  v4 = [NSNumber numberWithDouble:v11];
  v13[1] = v4;
  [(DBGVector4 *)self vector4];
  v5 = [NSNumber numberWithDouble:v10];
  v13[2] = v5;
  [(DBGVector4 *)self vector4];
  v6 = [NSNumber numberWithDouble:v9];
  v13[3] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:4];

  return v7;
}

- (NSString)description
{
  objectValue = [(DBGVector4 *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGVector4 *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (void)setVector4:(DBGVector4 *)self
{
  v3 = v2[1];
  v4[0] = *v2;
  v4[1] = v3;
  objc_copyStruct(self->_vector4, v4, 32, 1, 0);
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v30 = 0;
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    v11 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v13 = [v7 objectAtIndexedSubscript:0];
    [v13 doubleValue];
    v27 = v14;

    v15 = [v7 objectAtIndexedSubscript:1];
    [v15 doubleValue];
    v24 = v16;

    v17 = [v7 objectAtIndexedSubscript:2];
    [v17 doubleValue];
    v25 = v18;

    v19 = [v7 objectAtIndexedSubscript:3];
    [v19 doubleValue];
    *&v20 = v27;
    *(&v20 + 1) = v24;
    v28 = v20;
    *&v20 = v25;
    *(&v20 + 1) = v21;
    v26 = v20;

    v12 = v26;
    v11 = v28;
  }

  v29[0] = v11;
  v29[1] = v12;
  v22 = [self withVector4:{v29, v24}];

  return v22;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGVector4 *)self vector4];
  v3 = [NSNumber numberWithDouble:v12];
  v13[0] = v3;
  [(DBGVector4 *)self vector4];
  v4 = [NSNumber numberWithDouble:v11];
  v13[1] = v4;
  [(DBGVector4 *)self vector4];
  v5 = [NSNumber numberWithDouble:v10];
  v13[2] = v5;
  [(DBGVector4 *)self vector4];
  v6 = [NSNumber numberWithDouble:v9];
  v13[3] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:4];

  return v7;
}

@end