@interface _CSStoreAccessContext
- (id).cxx_construct;
- (id)description;
- (id)initForSharedReading;
@end

@implementation _CSStoreAccessContext

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = (*(*self->_impl.__ptr_ + 32))(self->_impl.__ptr_);
  v5 = [v3 initWithFormat:@"<_CSStoreAccessContext: %@>", v4];

  return v5;
}

- (id)initForSharedReading
{
  v3.receiver = self;
  v3.super_class = _CSStoreAccessContext;
  if ([(_CSStoreAccessContext *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end