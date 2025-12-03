@interface MAMutableFloatVector
- (id)copyWithZone:(_NSZone *)zone;
- (void)addScalar:(float)scalar;
- (void)addVector:(id)vector;
- (void)appendArray:(id)array;
- (void)appendDoubles:(const double *)doubles count:(int64_t)count;
- (void)appendFloat:(float)float;
- (void)appendFloats:(const float *)floats count:(int64_t)count;
- (void)appendVector:(id)vector;
- (void)divideByScalar:(float)scalar;
- (void)elementwiseMultiplyByVector:(id)vector;
- (void)elementwiseRaiseToExponent:(float)exponent;
- (void)multiplyByScalar:(float)scalar;
- (void)setFloat:(float)float atIndex:(int64_t)index;
- (void)subtractScalar:(float)scalar;
- (void)subtractVector:(id)vector;
@end

@implementation MAMutableFloatVector

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MAFloatVector allocWithZone:zone];
  wrapper = [(MAFloatVector *)self wrapper];
  v6 = [wrapper copy];
  v7 = [(MAFloatVector *)v4 initWithWrapper:v6];

  return v7;
}

- (void)elementwiseRaiseToExponent:(float)exponent
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v4 = exponent;
  [wrapper elementwiseRaiseToExponent:v4];
}

- (void)elementwiseMultiplyByVector:(id)vector
{
  vectorCopy = vector;
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  [wrapper elementwiseMultiplyByWrapper:wrapper2];
}

- (void)divideByScalar:(float)scalar
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v4 = scalar;
  [wrapper divideByScalar:v4];
}

- (void)multiplyByScalar:(float)scalar
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v4 = scalar;
  [wrapper multiplyByScalar:v4];
}

- (void)addScalar:(float)scalar
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v4 = scalar;
  [wrapper addScalar:v4];
}

- (void)subtractScalar:(float)scalar
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v4 = scalar;
  [wrapper subtractScalar:v4];
}

- (void)addVector:(id)vector
{
  vectorCopy = vector;
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  [wrapper addVector:wrapper2];
}

- (void)subtractVector:(id)vector
{
  vectorCopy = vector;
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  [wrapper subtractVector:wrapper2];
}

- (void)setFloat:(float)float atIndex:(int64_t)index
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v6 = float;
  [wrapper setFloat:index atIndex:v6];
}

- (void)appendArray:(id)array
{
  arrayCopy = array;
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper appendArray:arrayCopy];
}

- (void)appendVector:(id)vector
{
  vectorCopy = vector;
  wrapper = [(MAFloatVector *)self wrapper];
  wrapper2 = [vectorCopy wrapper];

  [wrapper appendVector:wrapper2];
}

- (void)appendDoubles:(const double *)doubles count:(int64_t)count
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper appendDoubles:doubles count:count];
}

- (void)appendFloats:(const float *)floats count:(int64_t)count
{
  wrapper = [(MAFloatVector *)self wrapper];
  [wrapper appendFloats:floats count:count];
}

- (void)appendFloat:(float)float
{
  wrapper = [(MAFloatVector *)self wrapper];
  *&v4 = float;
  [wrapper appendFloat:v4];
}

@end