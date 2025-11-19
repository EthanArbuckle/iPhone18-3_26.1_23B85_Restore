@interface DBGMatrix4
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withMatrix4:(_OWORD *)a3;
- (NSString)debugDescription;
- (NSString)description;
- (__n128)initWithMatrix4:(uint64_t)a3;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGMatrix4

+ (id)withMatrix4:(_OWORD *)a3
{
  v4 = [a1 alloc];
  v5 = a3[5];
  v11[4] = a3[4];
  v11[5] = v5;
  v6 = a3[7];
  v11[6] = a3[6];
  v11[7] = v6;
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  v8 = a3[3];
  v11[2] = a3[2];
  v11[3] = v8;
  v9 = [v4 initWithMatrix4:v11];

  return v9;
}

- (__n128)initWithMatrix4:(uint64_t)a3
{
  v11.receiver = a1;
  v11.super_class = DBGMatrix4;
  v4 = [(DBGMatrix4 *)&v11 init];
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 16);
    v8 = *(a3 + 48);
    v4[3] = *(a3 + 32);
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    result = *(a3 + 64);
    v9 = *(a3 + 80);
    v10 = *(a3 + 112);
    v4[7] = *(a3 + 96);
    v4[8] = v10;
    v4[5] = result;
    v4[6] = v9;
  }

  return result;
}

- (NSString)description
{
  v2 = [(DBGMatrix4 *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGMatrix4 *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v86 = 0;
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    v10 = *matrix_identity_double4x4.columns[0].f64;
    v11 = *&matrix_identity_double4x4.columns[0].f64[2];
    v12 = *matrix_identity_double4x4.columns[1].f64;
    v13 = *&matrix_identity_double4x4.columns[1].f64[2];
    v14 = *matrix_identity_double4x4.columns[2].f64;
    v15 = *&matrix_identity_double4x4.columns[2].f64[2];
    v16 = *matrix_identity_double4x4.columns[3].f64;
    v17 = *&matrix_identity_double4x4.columns[3].f64[2];
    if (a5)
    {
      v79 = *&matrix_identity_double4x4.columns[0].f64[2];
      v82 = *matrix_identity_double4x4.columns[0].f64;
      v72 = *&matrix_identity_double4x4.columns[1].f64[2];
      v75 = *matrix_identity_double4x4.columns[1].f64;
      v65 = *&matrix_identity_double4x4.columns[2].f64[2];
      v68 = *matrix_identity_double4x4.columns[2].f64;
      v58 = *&matrix_identity_double4x4.columns[3].f64[2];
      v61 = *matrix_identity_double4x4.columns[3].f64;
      v18 = v8;
      v17 = v58;
      v16 = v61;
      v15 = v65;
      v14 = v68;
      v13 = v72;
      v12 = v75;
      v11 = v79;
      v10 = v82;
      *a5 = v9;
    }
  }

  else
  {
    v19 = [v7 objectAtIndexedSubscript:0];
    [v19 doubleValue];
    v83 = v20;

    v21 = [v7 objectAtIndexedSubscript:1];
    [v21 doubleValue];
    v76 = v22;

    v23 = [v7 objectAtIndexedSubscript:2];
    [v23 doubleValue];
    v80 = v24;

    v25 = [v7 objectAtIndexedSubscript:3];
    [v25 doubleValue];
    *&v26 = v83;
    *(&v26 + 1) = v76;
    v84 = v26;
    *&v26 = v80;
    *(&v26 + 1) = v27;
    v81 = v26;

    v28 = [v7 objectAtIndexedSubscript:4];
    [v28 doubleValue];
    v77 = v29;

    v30 = [v7 objectAtIndexedSubscript:5];
    [v30 doubleValue];
    v69 = v31;

    v32 = [v7 objectAtIndexedSubscript:6];
    [v32 doubleValue];
    v73 = v33;

    v34 = [v7 objectAtIndexedSubscript:7];
    [v34 doubleValue];
    *&v35 = v77;
    *(&v35 + 1) = v69;
    v78 = v35;
    *&v35 = v73;
    *(&v35 + 1) = v36;
    v74 = v35;

    v37 = [v7 objectAtIndexedSubscript:8];
    [v37 doubleValue];
    v70 = v38;

    v39 = [v7 objectAtIndexedSubscript:9];
    [v39 doubleValue];
    v62 = v40;

    v41 = [v7 objectAtIndexedSubscript:10];
    [v41 doubleValue];
    v66 = v42;

    v43 = [v7 objectAtIndexedSubscript:11];
    [v43 doubleValue];
    *&v44 = v70;
    *(&v44 + 1) = v62;
    v71 = v44;
    *&v44 = v66;
    *(&v44 + 1) = v45;
    v67 = v44;

    v46 = [v7 objectAtIndexedSubscript:12];
    [v46 doubleValue];
    v63 = v47;

    v48 = [v7 objectAtIndexedSubscript:13];
    [v48 doubleValue];
    v57 = v49;

    v50 = [v7 objectAtIndexedSubscript:14];
    [v50 doubleValue];
    v59 = v51;

    v52 = [v7 objectAtIndexedSubscript:15];
    [v52 doubleValue];
    *&v53 = v63;
    *(&v53 + 1) = v57;
    v64 = v53;
    *&v53 = v59;
    *(&v53 + 1) = v54;
    v60 = v53;

    v17 = v60;
    v16 = v64;
    v15 = v67;
    v14 = v71;
    v13 = v74;
    v12 = v78;
    v11 = v81;
    v10 = v84;
  }

  v85[0] = v10;
  v85[1] = v11;
  v85[2] = v12;
  v85[3] = v13;
  v85[4] = v14;
  v85[5] = v15;
  v85[6] = v16;
  v85[7] = v17;
  v55 = [a1 withMatrix4:{v85, v57}];

  return v55;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGMatrix4 *)self matrix4];
  v20 = [NSNumber numberWithDouble:v36];
  v37[0] = v20;
  [(DBGMatrix4 *)self matrix4];
  v19 = [NSNumber numberWithDouble:v35];
  v37[1] = v19;
  [(DBGMatrix4 *)self matrix4];
  v18 = [NSNumber numberWithDouble:v34];
  v37[2] = v18;
  [(DBGMatrix4 *)self matrix4];
  v17 = [NSNumber numberWithDouble:v33];
  v37[3] = v17;
  [(DBGMatrix4 *)self matrix4];
  v16 = [NSNumber numberWithDouble:v32];
  v37[4] = v16;
  [(DBGMatrix4 *)self matrix4];
  v15 = [NSNumber numberWithDouble:v31];
  v37[5] = v15;
  [(DBGMatrix4 *)self matrix4];
  v14 = [NSNumber numberWithDouble:v30];
  v37[6] = v14;
  [(DBGMatrix4 *)self matrix4];
  v3 = [NSNumber numberWithDouble:v29];
  v37[7] = v3;
  [(DBGMatrix4 *)self matrix4];
  v4 = [NSNumber numberWithDouble:v28];
  v37[8] = v4;
  [(DBGMatrix4 *)self matrix4];
  v5 = [NSNumber numberWithDouble:v27];
  v37[9] = v5;
  [(DBGMatrix4 *)self matrix4];
  v6 = [NSNumber numberWithDouble:v26];
  v37[10] = v6;
  [(DBGMatrix4 *)self matrix4];
  v7 = [NSNumber numberWithDouble:v25];
  v37[11] = v7;
  [(DBGMatrix4 *)self matrix4];
  v8 = [NSNumber numberWithDouble:v24];
  v37[12] = v8;
  [(DBGMatrix4 *)self matrix4];
  v9 = [NSNumber numberWithDouble:v23];
  v37[13] = v9;
  [(DBGMatrix4 *)self matrix4];
  v10 = [NSNumber numberWithDouble:v22];
  v37[14] = v10;
  [(DBGMatrix4 *)self matrix4];
  v11 = [NSNumber numberWithDouble:v21];
  v37[15] = v11;
  v12 = [NSArray arrayWithObjects:v37 count:16];

  return v12;
}

@end