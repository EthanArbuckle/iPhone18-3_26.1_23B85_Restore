@interface HMDRemoteEventRouterAssertion
- (HMDRemoteEventRouterAssertion)initWithAssertionController:(id)a3;
- (HMDRemoteEventRouterClientActiveStateDelegate)activeStateDelegate;
- (void)cancel;
- (void)dealloc;
@end

@implementation HMDRemoteEventRouterAssertion

- (HMDRemoteEventRouterClientActiveStateDelegate)activeStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activeStateDelegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(HMDRemoteEventRouterAssertion *)self cancel];
  v3.receiver = self;
  v3.super_class = HMDRemoteEventRouterAssertion;
  [(HMDRemoteEventRouterAssertion *)&v3 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDRemoteEventRouterAssertion *)self isActive];
  [(HMDRemoteEventRouterAssertion *)self setIsActive:0];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = [(HMDRemoteEventRouterAssertion *)self activeStateDelegate];
    [v4 assertionDidBecomeInactive:self];
  }
}

- (HMDRemoteEventRouterAssertion)initWithAssertionController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v11.receiver = self;
    v11.super_class = HMDRemoteEventRouterAssertion;
    v6 = [(HMDRemoteEventRouterAssertion *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_activeStateDelegate, v5);
      v7->_isActive = 1;
      v7->_lock._os_unfair_lock_opaque = 0;
    }

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    [(HMDRemoteEventRouterAssertionController *)v9 .cxx_destruct];
  }

  return result;
}

@end