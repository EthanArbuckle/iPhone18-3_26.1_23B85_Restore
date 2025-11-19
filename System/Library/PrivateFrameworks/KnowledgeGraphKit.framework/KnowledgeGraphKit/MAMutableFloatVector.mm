@interface MAMutableFloatVector
- (id)copyWithZone:(_NSZone *)a3;
- (void)addScalar:(float)a3;
- (void)addVector:(id)a3;
- (void)appendArray:(id)a3;
- (void)appendDoubles:(const double *)a3 count:(int64_t)a4;
- (void)appendFloat:(float)a3;
- (void)appendFloats:(const float *)a3 count:(int64_t)a4;
- (void)appendVector:(id)a3;
- (void)divideByScalar:(float)a3;
- (void)elementwiseMultiplyByVector:(id)a3;
- (void)elementwiseRaiseToExponent:(float)a3;
- (void)multiplyByScalar:(float)a3;
- (void)setFloat:(float)a3 atIndex:(int64_t)a4;
- (void)subtractScalar:(float)a3;
- (void)subtractVector:(id)a3;
@end

@implementation MAMutableFloatVector

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MAFloatVector allocWithZone:a3];
  v5 = [(MAFloatVector *)self wrapper];
  v6 = [v5 copy];
  v7 = [(MAFloatVector *)v4 initWithWrapper:v6];

  return v7;
}

- (void)elementwiseRaiseToExponent:(float)a3
{
  v5 = [(MAFloatVector *)self wrapper];
  *&v4 = a3;
  [v5 elementwiseRaiseToExponent:v4];
}

- (void)elementwiseMultiplyByVector:(id)a3
{
  v4 = a3;
  v6 = [(MAFloatVector *)self wrapper];
  v5 = [v4 wrapper];

  [v6 elementwiseMultiplyByWrapper:v5];
}

- (void)divideByScalar:(float)a3
{
  v5 = [(MAFloatVector *)self wrapper];
  *&v4 = a3;
  [v5 divideByScalar:v4];
}

- (void)multiplyByScalar:(float)a3
{
  v5 = [(MAFloatVector *)self wrapper];
  *&v4 = a3;
  [v5 multiplyByScalar:v4];
}

- (void)addScalar:(float)a3
{
  v5 = [(MAFloatVector *)self wrapper];
  *&v4 = a3;
  [v5 addScalar:v4];
}

- (void)subtractScalar:(float)a3
{
  v5 = [(MAFloatVector *)self wrapper];
  *&v4 = a3;
  [v5 subtractScalar:v4];
}

- (void)addVector:(id)a3
{
  v4 = a3;
  v6 = [(MAFloatVector *)self wrapper];
  v5 = [v4 wrapper];

  [v6 addVector:v5];
}

- (void)subtractVector:(id)a3
{
  v4 = a3;
  v6 = [(MAFloatVector *)self wrapper];
  v5 = [v4 wrapper];

  [v6 subtractVector:v5];
}

- (void)setFloat:(float)a3 atIndex:(int64_t)a4
{
  v7 = [(MAFloatVector *)self wrapper];
  *&v6 = a3;
  [v7 setFloat:a4 atIndex:v6];
}

- (void)appendArray:(id)a3
{
  v4 = a3;
  v5 = [(MAFloatVector *)self wrapper];
  [v5 appendArray:v4];
}

- (void)appendVector:(id)a3
{
  v4 = a3;
  v6 = [(MAFloatVector *)self wrapper];
  v5 = [v4 wrapper];

  [v6 appendVector:v5];
}

- (void)appendDoubles:(const double *)a3 count:(int64_t)a4
{
  v6 = [(MAFloatVector *)self wrapper];
  [v6 appendDoubles:a3 count:a4];
}

- (void)appendFloats:(const float *)a3 count:(int64_t)a4
{
  v6 = [(MAFloatVector *)self wrapper];
  [v6 appendFloats:a3 count:a4];
}

- (void)appendFloat:(float)a3
{
  v5 = [(MAFloatVector *)self wrapper];
  *&v4 = a3;
  [v5 appendFloat:v4];
}

@end