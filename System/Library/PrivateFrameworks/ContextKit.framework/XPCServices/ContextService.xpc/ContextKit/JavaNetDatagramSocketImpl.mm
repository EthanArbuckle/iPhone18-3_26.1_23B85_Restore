@interface JavaNetDatagramSocketImpl
- (void)dealloc;
@end

@implementation JavaNetDatagramSocketImpl

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetDatagramSocketImpl;
  [(JavaNetDatagramSocketImpl *)&v3 dealloc];
}

@end