@interface JavaUtilEventListenerProxy
- (void)dealloc;
@end

@implementation JavaUtilEventListenerProxy

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilEventListenerProxy;
  [(JavaUtilEventListenerProxy *)&v3 dealloc];
}

@end