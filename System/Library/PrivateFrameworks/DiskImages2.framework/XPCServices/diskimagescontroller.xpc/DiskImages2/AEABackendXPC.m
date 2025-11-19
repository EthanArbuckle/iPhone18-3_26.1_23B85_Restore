@interface AEABackendXPC
- (AEABackendXPC)initWithBackend:(id)a3 key:(shared_ptr<unsigned char>)a4;
- (AEABackendXPC)initWithCoder:(id)a3;
- (id).cxx_construct;
- (shared_ptr<unsigned)key;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AEABackendXPC

- (AEABackendXPC)initWithBackend:(id)a3 key:(shared_ptr<unsigned char>)a4
{
  ptr = a4.__ptr_;
  v7 = a3;
  v15.receiver = self;
  v15.super_class = AEABackendXPC;
  v8 = [(AEABackendXPC *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseBackendXPC, a3);
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
      sub_10000367C(cntrl);
    }

    baseBackendXPC = v9->_baseBackendXPC;
    if (baseBackendXPC)
    {
      [baseBackendXPC backend];
    }

    sub_1000DF874();
  }

  return 0;
}

- (AEABackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AEABackendXPC;
  v5 = [(BackendXPC *)&v9 initWithCoder:v4];
  if (v5)
  {
    v8 = 0;
    if ([v4 decodeBytesForKey:@"encKeys" returnedLength:&v8] && v8 == 32)
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = AEABackendXPC;
  [(BackendXPC *)&v6 encodeWithCoder:v4];
  [v4 encodeBytes:self->_key.__ptr_ length:32 forKey:@"encKeys"];
  v5 = [(AEABackendXPC *)self baseBackendXPC];
  [v4 encodeObject:v5 forKey:@"baseBackend"];
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