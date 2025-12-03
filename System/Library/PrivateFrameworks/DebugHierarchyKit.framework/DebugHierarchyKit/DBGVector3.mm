@interface DBGVector3
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withVector3:(id)vector3;
- (DBGVector3)initWithVector3:(DBGVector3 *)self;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
- (void)setVector3:(DBGVector3 *)self;
@end

@implementation DBGVector3

+ (id)withVector3:(id)vector3
{
  v5 = v2[1];
  v6[0] = *v2;
  v6[1] = v5;
  v3 = [[vector3 alloc] initWithVector3:v6];

  return v3;
}

- (DBGVector3)initWithVector3:(DBGVector3 *)self
{
  v4 = *v2;
  v5 = v2[1];
  v6.receiver = self;
  v6.super_class = DBGVector3;
  result = [(DBGVector3 *)&v6 init];
  if (result)
  {
    *result->_vector3 = v4;
    *&result->_vector3[16] = v5;
  }

  return result;
}

- (id)objectValue
{
  [(DBGVector3 *)self vector3];
  v3 = [NSNumber numberWithDouble:v10];
  v11[0] = v3;
  [(DBGVector3 *)self vector3];
  v4 = [NSNumber numberWithDouble:v9];
  v11[1] = v4;
  [(DBGVector3 *)self vector3];
  v5 = [NSNumber numberWithDouble:v8];
  v11[2] = v5;
  v6 = [NSArray arrayWithObjects:v11 count:3];

  return v6;
}

- (NSString)description
{
  objectValue = [(DBGVector3 *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGVector3 *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (void)setVector3:(DBGVector3 *)self
{
  v3 = v2[1];
  v4[0] = *v2;
  v4[1] = v3;
  objc_copyStruct(self->_vector3, v4, 32, 1, 0);
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v26 = 0;
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
    v23 = v14;

    v15 = [v7 objectAtIndexedSubscript:1];
    [v15 doubleValue];
    v22 = v16;

    v17 = [v7 objectAtIndexedSubscript:2];
    [v17 doubleValue];
    v21 = v18;
    *&v18 = v23;
    *(&v18 + 1) = v22;
    v24 = v18;

    v12 = v21;
    v11 = v24;
  }

  v25[0] = v11;
  v25[1] = v12;
  v19 = [self withVector3:{v25, v21}];

  return v19;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGVector3 *)self vector3];
  v3 = [NSNumber numberWithDouble:v10];
  v11[0] = v3;
  [(DBGVector3 *)self vector3];
  v4 = [NSNumber numberWithDouble:v9];
  v11[1] = v4;
  [(DBGVector3 *)self vector3];
  v5 = [NSNumber numberWithDouble:v8];
  v11[2] = v5;
  v6 = [NSArray arrayWithObjects:v11 count:3];

  return v6;
}

@end