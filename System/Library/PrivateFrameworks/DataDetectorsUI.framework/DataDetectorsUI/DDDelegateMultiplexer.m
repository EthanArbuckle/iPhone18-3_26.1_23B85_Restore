@interface DDDelegateMultiplexer
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (DDDelegateMultiplexer)initWithDelegate:(id)a3 andDelegate:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation DDDelegateMultiplexer

- (DDDelegateMultiplexer)initWithDelegate:(id)a3 andDelegate:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_delegateA, a3);
  objc_storeWeak(&self->_delegateB, v6);

  return self;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegateA);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      return 1;
    }
  }

  v10 = objc_loadWeakRetained(&self->_delegateB);
  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegateB);
    if ((objc_opt_respondsToSelector() & 1) != 0 && !sel_isEqual(a3, sel_adaptivePresentationStyleForPresentationController_traitCollection_))
    {
      v12 = !sel_isEqual(a3, sel_adaptivePresentationStyleForPresentationController_);
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)forwardInvocation:(id)a3
{
  v14 = a3;
  [v14 selector];
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegateA);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegateA);
      [v14 invokeWithTarget:v8];
    }
  }

  v9 = objc_loadWeakRetained(&self->_delegateB);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_delegateB);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegateB);
      [v14 invokeWithTarget:v13];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  v6 = [WeakRetained methodSignatureForSelector:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_delegateB);
    v10 = [v9 methodSignatureForSelector:a3];

    v7 = v10;
  }

  return v7;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_delegateA), v8 = [v7 conformsToProtocol:v4], v7, v6, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_delegateB);
    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegateB);
      v9 = [v11 conformsToProtocol:v4];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end