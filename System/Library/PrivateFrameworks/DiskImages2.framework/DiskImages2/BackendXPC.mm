@interface BackendXPC
- (BOOL)tryCreatingCryptoHeader;
- (BackendXPC)initWithCoder:(id)a3;
- (NSUUID)instanceID;
- (expected<std::shared_ptr<Backend>,)getCryptoHeaderBackend;
- (id).cxx_construct;
- (id)description;
- (int)lock;
- (shared_ptr<Backend>)backend;
- (void)encodeWithCoder:(id)a3;
- (void)replaceWithBackendXPC:(id)a3;
- (void)setBackend:(shared_ptr<Backend>)a3;
@end

@implementation BackendXPC

- (BackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BackendXPC;
  v5 = [(BackendXPC *)&v9 init];
  if (v5)
  {
    crypto::header_serializer::decode(v4, &v8);
    std::shared_ptr<crypto::header>::operator=[abi:ne200100]<crypto::header,std::default_delete<crypto::header>,0>(&v5->_cryptoHeader.__ptr_, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      MEMORY[0x24C1ED730](v6, 0x1000C4015A9971DLL);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  ptr = self->_cryptoHeader.__ptr_;
  if (ptr)
  {
    [v5 encodeBytes:ptr length:76 forKey:@"crypto_header"];
  }
}

- (int)lock
{
  [(BackendXPC *)self backend];
  get_sink_backend(&v4, &v6);
  std::dynamic_pointer_cast[abi:ne200100]<LockableResource,Backend>(&v6, &v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v8)
  {
    v2 = (**v8)(v8);
  }

  else
  {
    v2 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v2;
}

- (NSUUID)instanceID
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  [(BackendXPC *)self backend];
  v10[0] = (*(*v8 + 168))();
  v10[1] = v4;
  v5 = [v3 initWithUUIDBytes:v10];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)tryCreatingCryptoHeader
{
  [(BackendXPC *)self getCryptoHeaderBackend];
  if ((v6 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    *(exception + 8) = v5;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = "Failed to open backend of crypto header";
  }

  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v2 = (*(*v5 + 40))();
  if (v2 > 0x4B)
  {
    operator new();
  }

  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (v6 == 1 && *(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  return v2 > 0x4B;
}

- (expected<std::shared_ptr<Backend>,)getCryptoHeaderBackend
{
  [(BackendXPC *)self backend];
  get_sink_backend(&v5, &v7);
  retstr->var0.var0.var0 = v7;
  v7 = 0;
  retstr->var0.var0.var1 = 1;
  result = v6;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return result;
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)replaceWithBackendXPC:(id)a3
{
  v4 = a3;
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v8 = std::generic_category();
    exception[1] = 22;
    exception[2] = v8;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Unexpected backend replace request";
  }

  if (v4)
  {
    [v4 backend];
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  cntrl = self->_backend.__cntrl_;
  self->_backend = v5;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<Backend>)backend
{
  cntrl = self->_backend.__cntrl_;
  *v2 = self->_backend.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setBackend:(shared_ptr<Backend>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_backend.__cntrl_;
  self->_backend.__ptr_ = v4;
  self->_backend.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end