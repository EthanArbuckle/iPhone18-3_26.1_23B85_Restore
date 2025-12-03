@interface BMWeakProxy
+ (id)weakProxyToObject:(id)object;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation BMWeakProxy

+ (id)weakProxyToObject:(id)object
{
  objectCopy = object;
  v4 = [BMWeakProxy alloc];
  objc_storeWeak(&v4->_target, objectCopy);

  return v4;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end