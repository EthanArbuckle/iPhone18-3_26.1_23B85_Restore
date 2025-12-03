@interface BackendXPC
- (BOOL)tryCreatingCryptoHeader;
- (BackendXPC)initWithCoder:(id)coder;
- (NSUUID)instanceID;
- (expected<std::shared_ptr<Backend>,)getCryptoHeaderBackend;
- (id).cxx_construct;
- (id)description;
- (int)lock;
- (shared_ptr<Backend>)backend;
- (void)encodeWithCoder:(id)coder;
- (void)replaceWithBackendXPC:(id)c;
- (void)setBackend:(shared_ptr<Backend>)backend;
@end

@implementation BackendXPC

- (BackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BackendXPC;
  v5 = [(BackendXPC *)&v9 init];
  if (v5)
  {
    sub_1000D879C(coderCopy, &v8);
    sub_1000A2CF4(&v5->_cryptoHeader.__ptr_, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      operator delete();
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->_cryptoHeader.__ptr_;
  if (ptr)
  {
    [coderCopy encodeBytes:ptr length:76 forKey:@"crypto_header"];
  }
}

- (int)lock
{
  [(BackendXPC *)self backend];
  sub_10019A824(&v4, &v6);
  sub_1000520A4(&v6, &v8);
  if (v7)
  {
    sub_10000367C(v7);
  }

  if (v5)
  {
    sub_10000367C(v5);
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
    sub_10000367C(v9);
  }

  return v2;
}

- (NSUUID)instanceID
{
  v3 = [NSUUID alloc];
  [(BackendXPC *)self backend];
  v9[0] = (*(*v7 + 168))();
  v9[1] = v4;
  v5 = [v3 initWithUUIDBytes:v9];
  if (v8)
  {
    sub_10000367C(v8);
  }

  return v5;
}

- (BOOL)tryCreatingCryptoHeader
{
  [(BackendXPC *)self getCryptoHeaderBackend];
  if ((v6 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
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
    sub_10000367C(*(&v5 + 1));
  }

  if (v6 == 1 && *(&v5 + 1))
  {
    sub_10000367C(*(&v5 + 1));
  }

  return v2 > 0x4B;
}

- (expected<std::shared_ptr<Backend>,)getCryptoHeaderBackend
{
  [(BackendXPC *)self backend];
  sub_10019A824(&v5, &v7);
  retstr->var0.var0.var0 = v7;
  v7 = 0;
  retstr->var0.var0.var1 = 1;
  result = v6;
  if (v6)
  {
    sub_10000367C(v6);
  }

  return result;
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)replaceWithBackendXPC:(id)c
{
  cCopy = c;
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v8 = std::generic_category();
    exception[1] = 22;
    exception[2] = v8;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Unexpected backend replace request";
  }

  if (cCopy)
  {
    [cCopy backend];
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
    sub_10000367C(cntrl);
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

- (void)setBackend:(shared_ptr<Backend>)backend
{
  v4 = *backend.__ptr_;
  v3 = *(backend.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_backend.__cntrl_;
  self->_backend.__ptr_ = v4;
  self->_backend.__cntrl_ = v3;
  if (cntrl)
  {
    sub_10000367C(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end