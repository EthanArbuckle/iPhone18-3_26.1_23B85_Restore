@interface BWMemoryPoolFlushAssertion
- (void)dealloc;
- (void)initWithIdentifier:(void *)identifier pool:;
@end

@implementation BWMemoryPoolFlushAssertion

- (void)dealloc
{
  [(BWMemoryPool *)self->_pool _removeFlushAssertion];

  v3.receiver = self;
  v3.super_class = BWMemoryPoolFlushAssertion;
  [(BWMemoryPoolFlushAssertion *)&v3 dealloc];
}

- (void)initWithIdentifier:(void *)identifier pool:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = BWMemoryPoolFlushAssertion;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  if (v5)
  {
    v6 = [a2 copy];
    v5[1] = identifier;
    v5[2] = v6;
    [identifier _addFlushAssertion];
  }

  return v5;
}

@end