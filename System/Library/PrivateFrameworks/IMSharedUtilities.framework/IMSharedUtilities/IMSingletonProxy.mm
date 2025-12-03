@interface IMSingletonProxy
+ (void)initialize;
- (IMSingletonProxy)initWithSingleton:(id)singleton singletonOverride:(id)override;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)singletonOverrideRef;
- (void)forwardInvocation:(id)invocation;
- (void)setSingletonOverride:(id)override;
@end

@implementation IMSingletonProxy

+ (void)initialize
{
  if ((byte_1EB30B450 & 1) == 0)
  {
    byte_1EB30B450 = 1;
    if (NSClassFromString(&cfstr_Xctestcase.isa))
    {

      IMSetAlwaysUseSingletonProxies(1);
    }
  }
}

- (id)singletonOverrideRef
{
  WeakRetained = objc_loadWeakRetained(&self->_singletonOverride);

  return WeakRetained;
}

- (IMSingletonProxy)initWithSingleton:(id)singleton singletonOverride:(id)override
{
  objc_storeStrong(&self->_singleton, singleton);
  overrideCopy = override;
  [(IMSingletonProxy *)self setSingletonOverride:overrideCopy];

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_singletonOverride);
  if (!WeakRetained)
  {
    singleton = self->_singleton;
LABEL_5:
    v6 = invocationCopy;
    goto LABEL_10;
  }

  selector = [invocationCopy selector];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6 = invocationCopy;
      singleton = self->_singleton;
      goto LABEL_10;
    }

    if (![WeakRetained shouldInvokeSelector:selector onSingleton:self->_singleton])
    {
      goto LABEL_11;
    }

    singleton = self->_singleton;
    goto LABEL_5;
  }

  v6 = invocationCopy;
  singleton = WeakRetained;
LABEL_10:
  [v6 setTarget:singleton];
  [invocationCopy invoke];
LABEL_11:
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_singletonOverride);
  if (!WeakRetained && self->_overrideClass)
  {
    v6 = IMLogHandleForCategory("IMSingletonLog");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C4F78(&self->_overrideClass);
    }

    self->_overrideClass = 0;
  }

  singleton = self->_singleton;
  if (singleton)
  {
    v8 = [singleton methodSignatureForSelector:selector];
    if (v8)
    {
      goto LABEL_12;
    }

    v8 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
    if (v8)
    {
      goto LABEL_12;
    }
  }

  v9 = objc_loadWeakRetained(&self->_singletonOverride);

  if (!v9 || (v10 = objc_loadWeakRetained(&self->_singletonOverride), [v10 methodSignatureForSelector:selector], v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v13.receiver = self;
    v13.super_class = IMSingletonProxy;
    v8 = [(IMSingletonProxy *)&v13 methodSignatureForSelector:selector];
LABEL_12:
    v11 = v8;
  }

  return v11;
}

- (void)setSingletonOverride:(id)override
{
  overrideCopy = override;
  WeakRetained = objc_loadWeakRetained(&self->_singletonOverride);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didOverrideSingleton:0];
  }

  v6 = objc_storeWeak(&self->_singletonOverride, overrideCopy);

  if (overrideCopy)
  {
    v7 = objc_loadWeakRetained(&self->_singletonOverride);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_singletonOverride);
      [v9 didOverrideSingleton:self->_singleton];
    }

    v10 = objc_loadWeakRetained(&self->_singletonOverride);
    self->_overrideClass = objc_opt_class();

    v11 = IMLogHandleForCategory("IMSingletonLog");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C5008(self);
    }
  }

  else
  {
    overrideClass = self->_overrideClass;
    self->_overrideClass = 0;
    v11 = IMLogHandleForCategory("IMSingletonLog");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C5094(overrideClass);
    }
  }
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_singletonOverride);

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_singletonOverride);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v4 stringWithFormat:@"IMSingletonProxy: singleton class: %@ overridden by class: %@", v7, v10];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"IMSingletonProxy: singleton class: %@ not overridden", v6];
  }

  return v11;
}

@end