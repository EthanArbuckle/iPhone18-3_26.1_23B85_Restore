@interface DBGMatrix3
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withMatrix3:(_OWORD *)matrix3;
- (NSString)debugDescription;
- (NSString)description;
- (__n128)initWithMatrix3:(uint64_t)matrix3;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGMatrix3

+ (id)withMatrix3:(_OWORD *)matrix3
{
  v4 = [self alloc];
  v5 = matrix3[3];
  v10[2] = matrix3[2];
  v10[3] = v5;
  v6 = matrix3[5];
  v10[4] = matrix3[4];
  v10[5] = v6;
  v7 = matrix3[1];
  v10[0] = *matrix3;
  v10[1] = v7;
  v8 = [v4 initWithMatrix3:v10];

  return v8;
}

- (__n128)initWithMatrix3:(uint64_t)matrix3
{
  v9.receiver = self;
  v9.super_class = DBGMatrix3;
  v4 = [(DBGMatrix3 *)&v9 init];
  if (v4)
  {
    v6 = *(matrix3 + 16);
    v4[1] = *matrix3;
    v4[2] = v6;
    result = *(matrix3 + 32);
    v7 = *(matrix3 + 48);
    v8 = *(matrix3 + 80);
    v4[5] = *(matrix3 + 64);
    v4[6] = v8;
    v4[3] = result;
    v4[4] = v7;
  }

  return result;
}

- (id)objectValue
{
  [(DBGMatrix3 *)self matrix3];
  v3 = [NSNumber numberWithDouble:v22];
  v23[0] = v3;
  [(DBGMatrix3 *)self matrix3];
  v4 = [NSNumber numberWithDouble:v21];
  v23[1] = v4;
  [(DBGMatrix3 *)self matrix3];
  v5 = [NSNumber numberWithDouble:v20];
  v23[2] = v5;
  [(DBGMatrix3 *)self matrix3];
  v6 = [NSNumber numberWithDouble:v19];
  v23[3] = v6;
  [(DBGMatrix3 *)self matrix3];
  v7 = [NSNumber numberWithDouble:v18];
  v23[4] = v7;
  [(DBGMatrix3 *)self matrix3];
  v8 = [NSNumber numberWithDouble:v17];
  v23[5] = v8;
  [(DBGMatrix3 *)self matrix3];
  v9 = [NSNumber numberWithDouble:v16];
  v23[6] = v9;
  [(DBGMatrix3 *)self matrix3];
  v10 = [NSNumber numberWithDouble:v15];
  v23[7] = v10;
  [(DBGMatrix3 *)self matrix3];
  v11 = [NSNumber numberWithDouble:v14];
  v23[8] = v11;
  v12 = [NSArray arrayWithObjects:v23 count:9];

  return v12;
}

- (NSString)description
{
  objectValue = [(DBGMatrix3 *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGMatrix3 *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v7 = matrix_identity_double3x3.columns[0].f64[3];
  v8 = matrix_identity_double3x3.columns[1].f64[3];
  v9 = matrix_identity_double3x3.columns[2].f64[3];
  v68 = 0;
  v10 = DBGDecodeValueFromJSONCompatibleValue();
  v11 = 0;
  v13 = v11;
  if (v11)
  {
    v14 = matrix_identity_double3x3.columns[0].f64[2];
    v15 = *matrix_identity_double3x3.columns[0].f64;
    v16 = vextq_s8(v15, v15, 8uLL).u64[0];
    v17 = matrix_identity_double3x3.columns[1].f64[2];
    v18 = *matrix_identity_double3x3.columns[1].f64;
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    *&v12 = matrix_identity_double3x3.columns[2].f64[2];
    v20 = *matrix_identity_double3x3.columns[2].f64;
    v21 = vextq_s8(v20, v20, 8uLL).u64[0];
    if (error)
    {
      v56 = v16;
      v52 = matrix_identity_double3x3.columns[1].f64[0];
      v54 = matrix_identity_double3x3.columns[0].f64[2];
      v48 = matrix_identity_double3x3.columns[1].f64[2];
      v50 = v19;
      v44 = v21;
      v46 = matrix_identity_double3x3.columns[2].f64[0];
      v43 = v12;
      v22 = v11;
      *&v12 = v43;
      v21 = v44;
      *v20.i64 = v46;
      v17 = v48;
      v19 = v50;
      *v18.i64 = v52;
      v14 = v54;
      v16 = v56;
      v15.i64[0] = *&matrix_identity_double3x3.columns[0].f64[0];
      *error = v13;
    }
  }

  else
  {
    v23 = [v10 objectAtIndexedSubscript:0];
    [v23 doubleValue];
    v58 = v24;

    v25 = [v10 objectAtIndexedSubscript:1];
    [v25 doubleValue];
    v57 = v26;

    v27 = [v10 objectAtIndexedSubscript:2];
    [v27 doubleValue];
    v55 = v28;

    v29 = [v10 objectAtIndexedSubscript:4];
    [v29 doubleValue];
    v53 = v30;

    v31 = [v10 objectAtIndexedSubscript:5];
    [v31 doubleValue];
    v51 = v32;

    v33 = [v10 objectAtIndexedSubscript:6];
    [v33 doubleValue];
    v49 = v34;

    v35 = [v10 objectAtIndexedSubscript:8];
    [v35 doubleValue];
    v47 = v36;

    v37 = [v10 objectAtIndexedSubscript:9];
    [v37 doubleValue];
    v45 = v38;

    v39 = [v10 objectAtIndexedSubscript:10];
    [v39 doubleValue];
    v43 = v40;

    *&v12 = v43;
    v21 = v45;
    v20.i64[0] = v47;
    v17 = v49;
    v19 = v51;
    v18.i64[0] = v53;
    v14 = v55;
    v16 = v57;
    v15.i64[0] = v58;
  }

  v60 = v14;
  v15.i64[1] = v16;
  v59 = v15;
  v61 = v7;
  v63 = v17;
  v18.i64[1] = v19;
  v62 = v18;
  v64 = v8;
  v66 = v12;
  v20.i64[1] = v21;
  v65 = v20;
  v67 = v9;
  v41 = [self withMatrix3:{&v59, v43}];

  return v41;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGMatrix3 *)self matrix3];
  v3 = [NSNumber numberWithDouble:v22];
  v23[0] = v3;
  [(DBGMatrix3 *)self matrix3];
  v4 = [NSNumber numberWithDouble:v21];
  v23[1] = v4;
  [(DBGMatrix3 *)self matrix3];
  v5 = [NSNumber numberWithDouble:v20];
  v23[2] = v5;
  [(DBGMatrix3 *)self matrix3];
  v6 = [NSNumber numberWithDouble:v19];
  v23[3] = v6;
  [(DBGMatrix3 *)self matrix3];
  v7 = [NSNumber numberWithDouble:v18];
  v23[4] = v7;
  [(DBGMatrix3 *)self matrix3];
  v8 = [NSNumber numberWithDouble:v17];
  v23[5] = v8;
  [(DBGMatrix3 *)self matrix3];
  v9 = [NSNumber numberWithDouble:v16];
  v23[6] = v9;
  [(DBGMatrix3 *)self matrix3];
  v10 = [NSNumber numberWithDouble:v15];
  v23[7] = v10;
  [(DBGMatrix3 *)self matrix3];
  v11 = [NSNumber numberWithDouble:v14];
  v23[8] = v11;
  v12 = [NSArray arrayWithObjects:v23 count:9];

  return v12;
}

@end