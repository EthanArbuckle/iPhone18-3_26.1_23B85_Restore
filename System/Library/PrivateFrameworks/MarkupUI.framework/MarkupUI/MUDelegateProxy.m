@interface MUDelegateProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (id)firstDelegate;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)secondDelegate;
- (void)forwardInvocation:(id)a3;
@end

@implementation MUDelegateProxy

- (BOOL)respondsToSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_secondDelegate);
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  v6 = [WeakRetained methodSignatureForSelector:a3];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_secondDelegate);
    v8 = [v9 methodSignatureForSelector:a3];
  }

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  if (WeakRetained)
  {
    [v6 selector];
    if (objc_opt_respondsToSelector())
    {
      [v6 invokeWithTarget:WeakRetained];
    }
  }

  v5 = objc_loadWeakRetained(&self->_secondDelegate);
  if (v5)
  {
    [v6 selector];
    if (objc_opt_respondsToSelector())
    {
      [v6 invokeWithTarget:v5];
    }
  }
}

- (id)firstDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);

  return WeakRetained;
}

- (id)secondDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secondDelegate);

  return WeakRetained;
}

@end