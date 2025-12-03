@interface JavaUtilConcurrentConcurrentHashMap_Segment
- (JavaUtilConcurrentConcurrentHashMap_Segment)initWithFloat:(float)float;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_Segment

- (JavaUtilConcurrentConcurrentHashMap_Segment)initWithFloat:(float)float
{
  JavaUtilConcurrentLocksReentrantLock_init(self);
  self->loadFactor_ = float;
  return self;
}

@end