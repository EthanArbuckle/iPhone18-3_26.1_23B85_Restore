@interface ICRandomNumberGenerator
- (ICRandomNumberGenerator)initWithSeed:(unsigned int)seed;
- (double)randomFloat;
- (id)randomObject:(id)object;
- (unint64_t)randomIndexMin:(unint64_t)min max:(unint64_t)max;
@end

@implementation ICRandomNumberGenerator

- (ICRandomNumberGenerator)initWithSeed:(unsigned int)seed
{
  v5.receiver = self;
  v5.super_class = ICRandomNumberGenerator;
  result = [(ICRandomNumberGenerator *)&v5 init];
  if (result)
  {
    result->_randomSeed = seed;
  }

  return result;
}

- (double)randomFloat
{
  v2 = 1664525 * self->_randomSeed + 1013904223;
  self->_randomSeed = v2;
  return vcvtd_n_f64_u32(HIWORD(v2), 0x10uLL);
}

- (unint64_t)randomIndexMin:(unint64_t)min max:(unint64_t)max
{
  minCopy = min;
  [(ICRandomNumberGenerator *)self randomFloat];
  return (minCopy + v7 * (max - min + 1));
}

- (id)randomObject:(id)object
{
  objectCopy = object;
  if ([objectCopy count])
  {
    v5 = [objectCopy objectAtIndexedSubscript:{-[ICRandomNumberGenerator randomIndexMin:max:](self, "randomIndexMin:max:", 0, objc_msgSend(objectCopy, "count") - 1)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end