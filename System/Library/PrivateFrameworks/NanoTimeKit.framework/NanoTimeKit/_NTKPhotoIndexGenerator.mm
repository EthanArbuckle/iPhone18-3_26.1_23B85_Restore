@interface _NTKPhotoIndexGenerator
- (_NTKPhotoIndexGenerator)initWithSize:(int64_t)size;
- (int64_t)nextRandom;
- (int64_t)nextSequential;
- (void)setIndex:(int64_t)index;
@end

@implementation _NTKPhotoIndexGenerator

- (_NTKPhotoIndexGenerator)initWithSize:(int64_t)size
{
  v8.receiver = self;
  v8.super_class = _NTKPhotoIndexGenerator;
  v4 = [(_NTKPhotoIndexGenerator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    stepSizes = v4->_stepSizes;
    v4->_stepSizes = &unk_28418AE88;

    v5->_n = size;
    v5->_count = 0;
    v5->_prevIndex = size - 1;
  }

  return v5;
}

- (void)setIndex:(int64_t)index
{
  if (self->_n > index)
  {
    self->_prevIndex = index;
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
            integerValue = [v8 integerValue];
          }

          while (integerValue == self->_step);
          n = self->_n;
        }

        while (integerValue == n);
        self->_step = integerValue;
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