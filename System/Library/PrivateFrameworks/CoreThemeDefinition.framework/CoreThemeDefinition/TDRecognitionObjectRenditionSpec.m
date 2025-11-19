@interface TDRecognitionObjectRenditionSpec
- (__n128)referenceOriginTransform;
- (uint64_t)setReferenceOriginTransform:(__n128)a3;
@end

@implementation TDRecognitionObjectRenditionSpec

- (__n128)referenceOriginTransform
{
  [a1 a11];
  v10 = v2;
  [a1 a21];
  v9 = v3;
  [a1 a31];
  v8 = v4;
  [a1 a41];
  *&v5 = __PAIR64__(v9, v10);
  *(&v5 + 1) = __PAIR64__(v6, v8);
  v11 = v5;
  [a1 a12];
  [a1 a22];
  [a1 a32];
  [a1 a42];
  [a1 a13];
  [a1 a23];
  [a1 a33];
  [a1 a43];
  [a1 a14];
  [a1 a24];
  [a1 a34];
  [a1 a44];
  return v11;
}

- (uint64_t)setReferenceOriginTransform:(__n128)a3
{
  [a1 setA11:?];
  HIDWORD(v6) = a2.n128_u32[1];
  LODWORD(v6) = a2.n128_u32[1];
  [a1 setA21:v6];
  [a1 setA31:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  [a1 setA41:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  [a1 setA12:a3.n128_f64[0]];
  HIDWORD(v7) = a3.n128_u32[1];
  LODWORD(v7) = a3.n128_u32[1];
  [a1 setA22:v7];
  [a1 setA32:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  [a1 setA42:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  [a1 setA13:a4.n128_f64[0]];
  HIDWORD(v8) = a4.n128_u32[1];
  LODWORD(v8) = a4.n128_u32[1];
  [a1 setA23:v8];
  [a1 setA33:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  [a1 setA43:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  [a1 setA14:a5.n128_f64[0]];
  HIDWORD(v9) = a5.n128_u32[1];
  LODWORD(v9) = a5.n128_u32[1];
  [a1 setA24:v9];
  [a1 setA34:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[2]))}];

  return [a1 setA44:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[3]))}];
}

@end