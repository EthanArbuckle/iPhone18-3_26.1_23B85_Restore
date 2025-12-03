@interface TDRecognitionObjectRenditionSpec
- (__n128)referenceOriginTransform;
- (uint64_t)setReferenceOriginTransform:(__n128)transform;
@end

@implementation TDRecognitionObjectRenditionSpec

- (__n128)referenceOriginTransform
{
  [self a11];
  v10 = v2;
  [self a21];
  v9 = v3;
  [self a31];
  v8 = v4;
  [self a41];
  *&v5 = __PAIR64__(v9, v10);
  *(&v5 + 1) = __PAIR64__(v6, v8);
  v11 = v5;
  [self a12];
  [self a22];
  [self a32];
  [self a42];
  [self a13];
  [self a23];
  [self a33];
  [self a43];
  [self a14];
  [self a24];
  [self a34];
  [self a44];
  return v11;
}

- (uint64_t)setReferenceOriginTransform:(__n128)transform
{
  [self setA11:?];
  HIDWORD(v6) = a2.n128_u32[1];
  LODWORD(v6) = a2.n128_u32[1];
  [self setA21:v6];
  [self setA31:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  [self setA41:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  [self setA12:transform.n128_f64[0]];
  HIDWORD(v7) = transform.n128_u32[1];
  LODWORD(v7) = transform.n128_u32[1];
  [self setA22:v7];
  [self setA32:{COERCE_DOUBLE(__PAIR64__(transform.n128_u32[1], transform.n128_u32[2]))}];
  [self setA42:{COERCE_DOUBLE(__PAIR64__(transform.n128_u32[1], transform.n128_u32[3]))}];
  [self setA13:a4.n128_f64[0]];
  HIDWORD(v8) = a4.n128_u32[1];
  LODWORD(v8) = a4.n128_u32[1];
  [self setA23:v8];
  [self setA33:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  [self setA43:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  [self setA14:a5.n128_f64[0]];
  HIDWORD(v9) = a5.n128_u32[1];
  LODWORD(v9) = a5.n128_u32[1];
  [self setA24:v9];
  [self setA34:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[2]))}];

  return [self setA44:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[3]))}];
}

@end