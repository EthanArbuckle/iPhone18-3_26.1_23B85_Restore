@interface ICRandomNumberGenerator
- (ICRandomNumberGenerator)initWithSeed:(unsigned int)a3;
- (double)randomFloat;
- (id)randomObject:(id)a3;
- (unint64_t)randomIndexMin:(unint64_t)a3 max:(unint64_t)a4;
@end

@implementation ICRandomNumberGenerator

- (ICRandomNumberGenerator)initWithSeed:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = ICRandomNumberGenerator;
  result = [(ICRandomNumberGenerator *)&v5 init];
  if (result)
  {
    result->_randomSeed = a3;
  }

  return result;
}

- (double)randomFloat
{
  v2 = 1664525 * self->_randomSeed + 1013904223;
  self->_randomSeed = v2;
  return vcvtd_n_f64_u32(HIWORD(v2), 0x10uLL);
}

- (unint64_t)randomIndexMin:(unint64_t)a3 max:(unint64_t)a4
{
  v6 = a3;
  [(ICRandomNumberGenerator *)self randomFloat];
  return (v6 + v7 * (a4 - a3 + 1));
}

- (id)randomObject:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:{-[ICRandomNumberGenerator randomIndexMin:max:](self, "randomIndexMin:max:", 0, objc_msgSend(v4, "count") - 1)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end