@interface LNWeakProxy
- (LNWeakProxy)initWithValue:(id)a3;
- (LNWeakProxy)initWithValue:(id)a3 wrapper:(id)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation LNWeakProxy

- (id)forwardingTargetForSelector:(SEL)a3
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

  v8 = [v7 value];

  if (v8)
  {
    wrapper = self->_wrapper;

    if (wrapper)
    {
      v10 = self->_wrapper;
      v11 = NSStringFromSelector(a3);
      v10[2](v10, v11, self->_value);
    }
  }

  value = self->_value;

  return value;
}

- (LNWeakProxy)initWithValue:(id)a3 wrapper:(id)a4
{
  v6 = a4;
  v7 = [(LNWeakProxy *)self initWithValue:a3];
  if (v7)
  {
    v8 = _Block_copy(v6);
    wrapper = v7->_wrapper;
    v7->_wrapper = v8;

    v10 = v7;
  }

  return v7;
}

- (LNWeakProxy)initWithValue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LNWeakProxy;
  v5 = [(LNWeakProxy *)&v10 init];
  if (v5)
  {
    v6 = [[LNLoggingProxy alloc] initWithValue:v4];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

@end