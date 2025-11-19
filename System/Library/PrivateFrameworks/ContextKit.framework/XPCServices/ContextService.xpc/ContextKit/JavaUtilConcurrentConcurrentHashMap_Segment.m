@interface JavaUtilConcurrentConcurrentHashMap_Segment
- (JavaUtilConcurrentConcurrentHashMap_Segment)initWithFloat:(float)a3;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_Segment

- (JavaUtilConcurrentConcurrentHashMap_Segment)initWithFloat:(float)a3
{
  JavaUtilConcurrentLocksReentrantLock_init(self);
  self->loadFactor_ = a3;
  return self;
}

@end