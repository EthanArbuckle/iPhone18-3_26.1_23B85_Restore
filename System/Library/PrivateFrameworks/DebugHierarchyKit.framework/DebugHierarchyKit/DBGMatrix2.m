@interface DBGMatrix2
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withMatrix2:(double)a3;
- (NSString)debugDescription;
- (NSString)description;
- (__n128)initWithMatrix2:(__n128)a3;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
- (void)setMatrix2:(__n128)a3;
@end

@implementation DBGMatrix2

+ (id)withMatrix2:(double)a3
{
  v3 = [[a1 alloc] initWithMatrix2:{a2, a3}];

  return v3;
}

- (__n128)initWithMatrix2:(__n128)a3
{
  v7.receiver = a1;
  v7.super_class = DBGMatrix2;
  v3 = [(DBGMatrix2 *)&v7 init];
  if (v3)
  {
    result = a3;
    v3[1] = a2;
    v3[2] = a3;
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
  v2 = [(DBGMatrix2 *)self objectValue];
  v3 = [v2 description];

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

- (void)setMatrix2:(__n128)a3
{
  v3[0] = a2;
  v3[1] = a3;
  objc_copyStruct((a1 + 16), v3, 32, 1, 0);
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    v10 = matrix_identity_double2x2.columns[0];
    v11 = matrix_identity_double2x2.columns[1];
    if (a5)
    {
      v21 = matrix_identity_double2x2.columns[1];
      v12 = v8;
      v11.f64[0] = v21.f64[0];
      v10.f64[0] = matrix_identity_double2x2.columns[0].f64[0];
      *a5 = v9;
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

  v19 = [a1 withMatrix2:{v10.f64[0], v11.f64[0], *&v21.f64[0]}];

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