@interface JavaBeansPropertyChangeEvent
- (void)dealloc;
@end

@implementation JavaBeansPropertyChangeEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaBeansPropertyChangeEvent;
  [(JavaUtilEventObject *)&v3 dealloc];
}

@end