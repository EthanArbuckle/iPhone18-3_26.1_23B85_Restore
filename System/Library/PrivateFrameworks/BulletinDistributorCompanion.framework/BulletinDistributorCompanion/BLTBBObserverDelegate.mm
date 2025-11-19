@interface BLTBBObserverDelegate
- (BBObserverDelegate)actualDelegate;
- (BLTBBObserverDelegateDelegate)delegate;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation BLTBBObserverDelegate

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [BLTTransaction transactionWithDescription:@"BLTBBObserverDelegate forwarding transaction"];
  v6 = [(BLTBBObserverDelegate *)self actualDelegate];
  [v4 selector];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(BLTBBObserverDelegate *)self actualDelegate];
    [v4 invokeWithTarget:v8];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BLTBBObserverDelegate;
    [(BLTBBObserverDelegate *)&v9 forwardInvocation:v4];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = BLTBBObserverDelegate;
  if ([(BLTBBObserverDelegate *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BLTBBObserverDelegate *)self actualDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(BLTBBObserverDelegate *)self actualDelegate];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = BLTBBObserverDelegate;
  v5 = [(BLTBBObserverDelegate *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(BLTBBObserverDelegate *)self actualDelegate];
    v5 = [v6 methodSignatureForSelector:a3];
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