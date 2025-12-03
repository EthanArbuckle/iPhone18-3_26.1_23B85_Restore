@interface JavaNetPlainServerSocketImpl
- (void)createWithBoolean:(BOOL)boolean;
@end

@implementation JavaNetPlainServerSocketImpl

- (void)createWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v5.receiver = self;
  v5.super_class = JavaNetPlainServerSocketImpl;
  [(JavaNetPlainSocketImpl *)&v5 createWithBoolean:?];
  if (booleanCopy)
  {
    if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100223CE4();
    }

    [(JavaNetPlainSocketImpl *)self setOptionWithInt:4 withId:JavaLangBoolean_TRUE__];
  }
}

@end