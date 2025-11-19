@interface JavaUtilConcurrentConcurrentHashMap_ForwardingNode
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_ForwardingNode

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_ForwardingNode;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 dealloc];
}

@end