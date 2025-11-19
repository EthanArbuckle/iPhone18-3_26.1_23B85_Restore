@interface MTKnownFieldMethod
- (MTKnownFieldMethod)initWithIMP:(void *)a3 accessor:(SEL)a4;
@end

@implementation MTKnownFieldMethod

- (MTKnownFieldMethod)initWithIMP:(void *)a3 accessor:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = MTKnownFieldMethod;
  v6 = [(MTKnownFieldMethod *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MTKnownFieldMethod *)v6 setImp:a3];
    [(MTKnownFieldMethod *)v7 setAccessor:a4];
  }

  return v7;
}

@end