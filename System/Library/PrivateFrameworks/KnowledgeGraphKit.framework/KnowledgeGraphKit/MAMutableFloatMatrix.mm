@interface MAMutableFloatMatrix
- (id)copyWithZone:(_NSZone *)zone;
- (void)addScalar:(float)scalar;
- (void)appendRow:(id)row;
- (void)setFloat:(float)float atRow:(int64_t)row column:(int64_t)column;
- (void)subtractMatrix:(id)matrix;
- (void)subtractScalar:(float)scalar;
@end

@implementation MAMutableFloatMatrix

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MAFloatMatrix allocWithZone:zone];
  wrapper = [(MAFloatMatrix *)self wrapper];
  v6 = [wrapper copy];
  v7 = [(MAFloatMatrix *)v4 initWithWrapper:v6];

  return v7;
}

- (void)appendRow:(id)row
{
  rowCopy = row;
  wrapper = [(MAFloatMatrix *)self wrapper];
  wrapper2 = [rowCopy wrapper];

  [wrapper appendRow:wrapper2];
}

- (void)addScalar:(float)scalar
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  *&v4 = scalar;
  [wrapper addScalar:v4];
}

- (void)subtractScalar:(float)scalar
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  *&v4 = scalar;
  [wrapper subtractScalar:v4];
}

- (void)subtractMatrix:(id)matrix
{
  matrixCopy = matrix;
  wrapper = [(MAFloatMatrix *)self wrapper];
  wrapper2 = [matrixCopy wrapper];

  [wrapper subtract:wrapper2];
}

- (void)setFloat:(float)float atRow:(int64_t)row column:(int64_t)column
{
  wrapper = [(MAFloatMatrix *)self wrapper];
  *&v8 = float;
  [wrapper setFloat:row atRow:column column:v8];
}

@end