@interface LNWeakProxy
- (LNWeakProxy)initWithValue:(id)value;
- (LNWeakProxy)initWithValue:(id)value wrapper:(id)wrapper;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation LNWeakProxy

- (id)forwardingTargetForSelector:(SEL)selector
{
  v5 = self->_value;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  value = [v7 value];

  if (value)
  {
    wrapper = self->_wrapper;

    if (wrapper)
    {
      v10 = self->_wrapper;
      v11 = NSStringFromSelector(selector);
      v10[2](v10, v11, self->_value);
    }
  }

  value = self->_value;

  return value;
}

- (LNWeakProxy)initWithValue:(id)value wrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v7 = [(LNWeakProxy *)self initWithValue:value];
  if (v7)
  {
    v8 = _Block_copy(wrapperCopy);
    wrapper = v7->_wrapper;
    v7->_wrapper = v8;

    v10 = v7;
  }

  return v7;
}

- (LNWeakProxy)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = LNWeakProxy;
  v5 = [(LNWeakProxy *)&v10 init];
  if (v5)
  {
    v6 = [[LNLoggingProxy alloc] initWithValue:valueCopy];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

@end