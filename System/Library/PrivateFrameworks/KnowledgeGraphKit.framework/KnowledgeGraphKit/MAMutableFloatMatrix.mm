@interface MAMutableFloatMatrix
- (id)copyWithZone:(_NSZone *)a3;
- (void)addScalar:(float)a3;
- (void)appendRow:(id)a3;
- (void)setFloat:(float)a3 atRow:(int64_t)a4 column:(int64_t)a5;
- (void)subtractMatrix:(id)a3;
- (void)subtractScalar:(float)a3;
@end

@implementation MAMutableFloatMatrix

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MAFloatMatrix allocWithZone:a3];
  v5 = [(MAFloatMatrix *)self wrapper];
  v6 = [v5 copy];
  v7 = [(MAFloatMatrix *)v4 initWithWrapper:v6];

  return v7;
}

- (void)appendRow:(id)a3
{
  v4 = a3;
  v6 = [(MAFloatMatrix *)self wrapper];
  v5 = [v4 wrapper];

  [v6 appendRow:v5];
}

- (void)addScalar:(float)a3
{
  v5 = [(MAFloatMatrix *)self wrapper];
  *&v4 = a3;
  [v5 addScalar:v4];
}

- (void)subtractScalar:(float)a3
{
  v5 = [(MAFloatMatrix *)self wrapper];
  *&v4 = a3;
  [v5 subtractScalar:v4];
}

- (void)subtractMatrix:(id)a3
{
  v4 = a3;
  v6 = [(MAFloatMatrix *)self wrapper];
  v5 = [v4 wrapper];

  [v6 subtract:v5];
}

- (void)setFloat:(float)a3 atRow:(int64_t)a4 column:(int64_t)a5
{
  v9 = [(MAFloatMatrix *)self wrapper];
  *&v8 = a3;
  [v9 setFloat:a4 atRow:a5 column:v8];
}

@end