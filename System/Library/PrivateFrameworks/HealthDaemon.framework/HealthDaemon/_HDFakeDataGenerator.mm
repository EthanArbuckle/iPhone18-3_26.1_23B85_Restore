@interface _HDFakeDataGenerator
- (id)initWithType:(void *)type interval:(double)interval startTime:(double)time generator:;
@end

@implementation _HDFakeDataGenerator

- (id)initWithType:(void *)type interval:(double)interval startTime:(double)time generator:
{
  v9 = a2;
  typeCopy = type;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = _HDFakeDataGenerator;
    self = objc_msgSendSuper2(&v16, sel_init);
    if (self)
    {
      v11 = [v9 copy];
      v12 = *(self + 2);
      *(self + 2) = v11;

      *(self + 1) = time;
      *(self + 3) = interval;
      *(self + 4) = interval + time;
      v13 = [typeCopy copy];
      v14 = *(self + 5);
      *(self + 5) = v13;
    }
  }

  return self;
}

@end