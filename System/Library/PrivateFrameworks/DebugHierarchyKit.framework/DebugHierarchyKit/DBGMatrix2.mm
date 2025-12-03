@interface DBGMatrix2
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withMatrix2:(double)matrix2;
- (NSString)debugDescription;
- (NSString)description;
- (__n128)initWithMatrix2:(__n128)matrix2;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
- (void)setMatrix2:(__n128)matrix2;
@end

@implementation DBGMatrix2

+ (id)withMatrix2:(double)matrix2
{
  v3 = [[self alloc] initWithMatrix2:{a2, matrix2}];

  return v3;
}

- (__n128)initWithMatrix2:(__n128)matrix2
{
  v7.receiver = self;
  v7.super_class = DBGMatrix2;
  v3 = [(DBGMatrix2 *)&v7 init];
  if (v3)
  {
    result = matrix2;
    v3[1] = a2;
    v3[2] = matrix2;
  }

  return result;
}

- (id)objectValue
{
  [(DBGMatrix2 *)self matrix2];
  v3 = [NSNumber numberWithDouble:?];
  v12[0] = v3;
  [(DBGMatrix2 *)self matrix2];
  v5 = [NSNumber numberWithDouble:v4];
  v12[1] = v5;
  [(DBGMatrix2 *)self matrix2];
  v7 = [NSNumber numberWithDouble:v6];
  v12[2] = v7;
  [(DBGMatrix2 *)self matrix2];
  v9 = [NSNumber numberWithDouble:v8];
  v12[3] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:4];

  return v10;
}

- (NSString)description
{
  objectValue = [(DBGMatrix2 *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGMatrix2 *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (void)setMatrix2:(__n128)matrix2
{
  v3[0] = a2;
  v3[1] = matrix2;
  objc_copyStruct((self + 16), v3, 32, 1, 0);
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    v10 = matrix_identity_double2x2.columns[0];
    v11 = matrix_identity_double2x2.columns[1];
    if (error)
    {
      v21 = matrix_identity_double2x2.columns[1];
      v12 = v8;
      v11.f64[0] = v21.f64[0];
      v10.f64[0] = matrix_identity_double2x2.columns[0].f64[0];
      *error = v9;
    }
  }

  else
  {
    v13 = [v7 objectAtIndexedSubscript:0];
    [v13 doubleValue];
    v22 = v14;

    v15 = [v7 objectAtIndexedSubscript:1];
    [v15 doubleValue];

    v16 = [v7 objectAtIndexedSubscript:4];
    [v16 doubleValue];
    v21.f64[0] = v17;

    v18 = [v7 objectAtIndexedSubscript:5];
    [v18 doubleValue];

    v11.f64[0] = v21.f64[0];
    v10.f64[0] = v22;
  }

  v19 = [self withMatrix2:{v10.f64[0], v11.f64[0], *&v21.f64[0]}];

  return v19;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGMatrix2 *)self matrix2];
  v3 = [NSNumber numberWithDouble:?];
  v12[0] = v3;
  [(DBGMatrix2 *)self matrix2];
  v5 = [NSNumber numberWithDouble:v4];
  v12[1] = v5;
  [(DBGMatrix2 *)self matrix2];
  v7 = [NSNumber numberWithDouble:v6];
  v12[2] = v7;
  [(DBGMatrix2 *)self matrix2];
  v9 = [NSNumber numberWithDouble:v8];
  v12[3] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:4];

  return v10;
}

@end