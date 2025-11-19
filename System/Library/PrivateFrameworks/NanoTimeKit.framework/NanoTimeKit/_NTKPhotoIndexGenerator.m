@interface _NTKPhotoIndexGenerator
- (_NTKPhotoIndexGenerator)initWithSize:(int64_t)a3;
- (int64_t)nextRandom;
- (int64_t)nextSequential;
- (void)setIndex:(int64_t)a3;
@end

@implementation _NTKPhotoIndexGenerator

- (_NTKPhotoIndexGenerator)initWithSize:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _NTKPhotoIndexGenerator;
  v4 = [(_NTKPhotoIndexGenerator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    stepSizes = v4->_stepSizes;
    v4->_stepSizes = &unk_28418AE88;

    v5->_n = a3;
    v5->_count = 0;
    v5->_prevIndex = a3 - 1;
  }

  return v5;
}

- (void)setIndex:(int64_t)a3
{
  if (self->_n > a3)
  {
    self->_prevIndex = a3;
  }
}

- (int64_t)nextRandom
{
  n = self->_n;
  if (n >= 2)
  {
    count = self->_count;
    prevIndex = self->_prevIndex;
    while (1)
    {
      if (count % n)
      {
        v7 = self->_step + prevIndex;
      }

      else
      {
        do
        {
          do
          {
            v8 = [(NSArray *)self->_stepSizes objectAtIndexedSubscript:arc4random() % [(NSArray *)self->_stepSizes count]];
            v9 = [v8 integerValue];
          }

          while (v9 == self->_step);
          n = self->_n;
        }

        while (v9 == n);
        self->_step = v9;
        count = self->_count;
        if (!count)
        {
          result = 0;
          goto LABEL_11;
        }

        v7 = arc4random();
        n = self->_n;
        count = self->_count;
      }

      result = v7 % n;
LABEL_11:
      self->_count = ++count;
      self->_prevIndex = result;
      if (prevIndex != result)
      {
        return result;
      }
    }
  }

  return 0;
}

- (int64_t)nextSequential
{
  n = self->_n;
  if (n < 2)
  {
    return 0;
  }

  v3 = (self->_prevIndex + 1) % n;
  self->_prevIndex = v3;
  return v3;
}

@end