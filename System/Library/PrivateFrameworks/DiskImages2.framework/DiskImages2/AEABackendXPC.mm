@interface AEABackendXPC
- (AEABackendXPC)initWithBackend:(id)backend key:(shared_ptr<unsigned char>)key;
- (AEABackendXPC)initWithCoder:(id)coder;
- (id).cxx_construct;
- (shared_ptr<unsigned)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AEABackendXPC

- (AEABackendXPC)initWithBackend:(id)backend key:(shared_ptr<unsigned char>)key
{
  ptr = key.__ptr_;
  backendCopy = backend;
  v15.receiver = self;
  v15.super_class = AEABackendXPC;
  v8 = [(AEABackendXPC *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseBackendXPC, backend);
    v11 = *ptr;
    v10 = *(ptr + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v9->_key.__cntrl_;
    v9->_key.__ptr_ = v11;
    v9->_key.__cntrl_ = v10;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    baseBackendXPC = v9->_baseBackendXPC;
    if (baseBackendXPC)
    {
      [baseBackendXPC backend];
    }

    std::allocate_shared[abi:ne200100]<AEA_backend,std::allocator<AEA_backend>,std::shared_ptr<Backend>,std::shared_ptr<unsigned char> &,0>();
  }

  return 0;
}

- (AEABackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AEABackendXPC;
  v5 = [(BackendXPC *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v8 = 0;
    if ([coderCopy decodeBytesForKey:@"encKeys" returnedLength:&v8] && v8 == 32)
    {
      operator new[]();
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = AEABackendXPC;
  [(BackendXPC *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBytes:self->_key.__ptr_ length:32 forKey:@"encKeys"];
  baseBackendXPC = [(AEABackendXPC *)self baseBackendXPC];
  [coderCopy encodeObject:baseBackendXPC forKey:@"baseBackend"];
}

- (shared_ptr<unsigned)key
{
  cntrl = self->_key.__cntrl_;
  *v2 = self->_key.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end