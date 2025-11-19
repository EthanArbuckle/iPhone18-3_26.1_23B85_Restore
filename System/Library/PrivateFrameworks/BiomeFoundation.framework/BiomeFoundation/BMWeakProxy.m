@interface BMWeakProxy
+ (id)weakProxyToObject:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation BMWeakProxy

+ (id)weakProxyToObject:(id)a3
{
  v3 = a3;
  v4 = [BMWeakProxy alloc];
  objc_storeWeak(&v4->_target, v3);

  return v4;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end