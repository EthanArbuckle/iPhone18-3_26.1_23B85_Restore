@interface BLTBBObserverDelegate
- (BBObserverDelegate)actualDelegate;
- (BLTBBObserverDelegateDelegate)delegate;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation BLTBBObserverDelegate

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = [BLTTransaction transactionWithDescription:@"BLTBBObserverDelegate forwarding transaction"];
  actualDelegate = [(BLTBBObserverDelegate *)self actualDelegate];
  [invocationCopy selector];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    actualDelegate2 = [(BLTBBObserverDelegate *)self actualDelegate];
    [invocationCopy invokeWithTarget:actualDelegate2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BLTBBObserverDelegate;
    [(BLTBBObserverDelegate *)&v9 forwardInvocation:invocationCopy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = BLTBBObserverDelegate;
  if ([(BLTBBObserverDelegate *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    actualDelegate = [(BLTBBObserverDelegate *)self actualDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    isKindOfClass = 1;
  }

  else
  {
    actualDelegate = [(BLTBBObserverDelegate *)self actualDelegate];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = BLTBBObserverDelegate;
  v5 = [(BLTBBObserverDelegate *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    actualDelegate = [(BLTBBObserverDelegate *)self actualDelegate];
    v5 = [actualDelegate methodSignatureForSelector:selector];
  }

  return v5;
}

- (BBObserverDelegate)actualDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actualDelegate);

  return WeakRetained;
}

- (BLTBBObserverDelegateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end