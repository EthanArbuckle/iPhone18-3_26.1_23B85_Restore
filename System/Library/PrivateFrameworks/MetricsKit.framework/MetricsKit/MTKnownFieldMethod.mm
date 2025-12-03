@interface MTKnownFieldMethod
- (MTKnownFieldMethod)initWithIMP:(void *)p accessor:(SEL)accessor;
@end

@implementation MTKnownFieldMethod

- (MTKnownFieldMethod)initWithIMP:(void *)p accessor:(SEL)accessor
{
  v9.receiver = self;
  v9.super_class = MTKnownFieldMethod;
  v6 = [(MTKnownFieldMethod *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MTKnownFieldMethod *)v6 setImp:p];
    [(MTKnownFieldMethod *)v7 setAccessor:accessor];
  }

  return v7;
}

@end