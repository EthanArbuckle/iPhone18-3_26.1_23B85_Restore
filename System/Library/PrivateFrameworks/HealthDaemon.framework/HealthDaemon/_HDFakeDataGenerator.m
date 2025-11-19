@interface _HDFakeDataGenerator
- (id)initWithType:(void *)a3 interval:(double)a4 startTime:(double)a5 generator:;
@end

@implementation _HDFakeDataGenerator

- (id)initWithType:(void *)a3 interval:(double)a4 startTime:(double)a5 generator:
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = _HDFakeDataGenerator;
    a1 = objc_msgSendSuper2(&v16, sel_init);
    if (a1)
    {
      v11 = [v9 copy];
      v12 = *(a1 + 2);
      *(a1 + 2) = v11;

      *(a1 + 1) = a5;
      *(a1 + 3) = a4;
      *(a1 + 4) = a4 + a5;
      v13 = [v10 copy];
      v14 = *(a1 + 5);
      *(a1 + 5) = v13;
    }
  }

  return a1;
}

@end