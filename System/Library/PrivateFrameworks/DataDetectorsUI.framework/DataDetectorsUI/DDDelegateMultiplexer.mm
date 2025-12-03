@interface DDDelegateMultiplexer
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (DDDelegateMultiplexer)initWithDelegate:(id)delegate andDelegate:(id)andDelegate;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation DDDelegateMultiplexer

- (DDDelegateMultiplexer)initWithDelegate:(id)delegate andDelegate:(id)andDelegate
{
  andDelegateCopy = andDelegate;
  objc_storeWeak(&self->_delegateA, delegate);
  objc_storeWeak(&self->_delegateB, andDelegateCopy);

  return self;
}

- (BOOL)respondsToSelector:(SEL)selector
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
    if ((objc_opt_respondsToSelector() & 1) != 0 && !sel_isEqual(selector, sel_adaptivePresentationStyleForPresentationController_traitCollection_))
    {
      v12 = !sel_isEqual(selector, sel_adaptivePresentationStyleForPresentationController_);
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

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegateA);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegateA);
      [invocationCopy invokeWithTarget:v8];
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
      [invocationCopy invokeWithTarget:v13];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  v6 = [WeakRetained methodSignatureForSelector:selector];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_delegateB);
    v10 = [v9 methodSignatureForSelector:selector];

    v7 = v10;
  }

  return v7;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  WeakRetained = objc_loadWeakRetained(&self->_delegateA);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_delegateA), v8 = [v7 conformsToProtocol:protocolCopy], v7, v6, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_delegateB);
    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegateB);
      v9 = [v11 conformsToProtocol:protocolCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end