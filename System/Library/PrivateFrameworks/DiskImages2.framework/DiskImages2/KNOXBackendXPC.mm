@interface KNOXBackendXPC
- (KNOXBackendXPC)initWithCoder:(id)a3;
- (KNOXBackendXPC)initWithURL:(id)a3 key:(void *)a4;
- (id).cxx_construct;
- (shared_ptr<unsigned)key;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNOXBackendXPC

- (KNOXBackendXPC)initWithURL:(id)a3 key:(void *)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = KNOXBackendXPC;
  v8 = [(KNOXBackendXPC *)&v15 init];
  v9 = v8;
  if (v8)
  {
    p_key = &v8->_key;
    v12 = *a4;
    v11 = *(a4 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v8->_key.__cntrl_;
    p_key->__ptr_ = v12;
    v9->_key.__cntrl_ = v11;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    objc_storeStrong(&v9->_URL, a3);
    [(KNOXBackendXPC *)v9 URL];
    [objc_claimAutoreleasedReturnValue() absoluteString];
    [objc_claimAutoreleasedReturnValue() UTF8String];
    std::allocate_shared[abi:ne200100]<std::string,std::allocator<std::string>,char const*,0>();
  }

  return 0;
}

- (KNOXBackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KNOXBackendXPC;
  v5 = [(BackendXPC *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v10 = 0;
    if ([v4 decodeBytesForKey:@"encKeys" returnedLength:&v10] && v10 == 32)
    {
      operator new[]();
    }

    v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = KNOXBackendXPC;
  [(BackendXPC *)&v6 encodeWithCoder:v4];
  v5 = [(KNOXBackendXPC *)self URL];
  [v4 encodeObject:v5 forKey:@"URL"];

  [v4 encodeBytes:self->_key.__ptr_ length:32 forKey:@"encKeys"];
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