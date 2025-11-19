@interface JavaNioPipeImpl
- (void)dealloc;
@end

@implementation JavaNioPipeImpl

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioPipeImpl;
  [(JavaNioPipeImpl *)&v3 dealloc];
}

@end