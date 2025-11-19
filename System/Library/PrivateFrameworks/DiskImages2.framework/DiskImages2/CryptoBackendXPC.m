@interface CryptoBackendXPC
- (CryptoBackendXPC)initWithCoder:(id)a3;
- (CryptoBackendXPC)initWithFormat:(const void *)a3 baseBackendXPC:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)replaceWithBackendXPC:(id)a3;
@end

@implementation CryptoBackendXPC

- (CryptoBackendXPC)initWithFormat:(const void *)a3 baseBackendXPC:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CryptoBackendXPC;
  v8 = [(CryptoBackendXPC *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseBackendXPC, a4);
    v11 = **a3;
    v10 = *(*a3 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = [(BackendXPC *)v9 cryptoHeader];
    v13 = v12[1];
    *v12 = v11;
    v12[1] = v10;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    baseBackendXPC = v9->_baseBackendXPC;
    if (baseBackendXPC)
    {
      [baseBackendXPC backend];
    }

    std::allocate_shared[abi:ne200100]<crypto_format_backend,std::allocator<crypto_format_backend>,std::shared_ptr<Backend>,std::shared_ptr<crypto::format> const&,0>();
  }

  return 0;
}

- (CryptoBackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CryptoBackendXPC;
  v5 = [(BackendXPC *)&v18 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(BackendXPC *)v5 cryptoHeader];
    crypto::format_serializer::decode(v4, &v17);
    if (v17)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseBackend"];
      baseBackendXPC = v6->_baseBackendXPC;
      v6->_baseBackendXPC = v7;

      v10 = *v17;
      v9 = v17[1];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = [(BackendXPC *)v6 cryptoHeader];
      v12 = v11[1];
      *v11 = v10;
      v11[1] = v9;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = v6->_baseBackendXPC;
      if (v13)
      {
        [(BackendXPC *)v13 backend];
      }

      std::allocate_shared[abi:ne200100]<crypto_format_backend,std::allocator<crypto_format_backend>,std::shared_ptr<Backend>,std::shared_ptr<crypto::format> &,0>();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v16 = std::generic_category();
    exception[1] = 154;
    exception[2] = v16;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Failed to deserialize crypto format";
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CryptoBackendXPC;
  [(BackendXPC *)&v10 encodeWithCoder:v4];
  [(BackendXPC *)self backend];
  v5 = v9;
  crypto::format_serializer::encode(v4, *(v8 + 48), v6);
  v7 = [(CryptoBackendXPC *)self baseBackendXPC];
  [(crypto::format_serializer *)v4 encodeObject:v7 forKey:@"baseBackend"];

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)replaceWithBackendXPC:(id)a3
{
  v5 = a3;
  [(BackendXPC *)self backend];
  if (v5)
  {
    [v5 backend];
    v6 = v9;
  }

  else
  {
    v6 = 0uLL;
  }

  v8 = *(v10 + 24);
  v7 = *(v10 + 32);
  *(v10 + 24) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  objc_storeStrong(&self->_baseBackendXPC, a3);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

@end