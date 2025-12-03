@interface KNOXBackendXPC
- (KNOXBackendXPC)initWithCoder:(id)coder;
- (KNOXBackendXPC)initWithURL:(id)l key:(void *)key;
- (id).cxx_construct;
- (shared_ptr<unsigned)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNOXBackendXPC

- (KNOXBackendXPC)initWithURL:(id)l key:(void *)key
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = KNOXBackendXPC;
  v8 = [(KNOXBackendXPC *)&v15 init];
  v9 = v8;
  if (v8)
  {
    p_key = &v8->_key;
    v12 = *key;
    v11 = *(key + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v8->_key.__cntrl_;
    p_key->__ptr_ = v12;
    v9->_key.__cntrl_ = v11;
    if (cntrl)
    {
      sub_10000367C(cntrl);
    }

    objc_storeStrong(&v9->_URL, l);
    [(KNOXBackendXPC *)v9 URL];
    [objc_claimAutoreleasedReturnValue() absoluteString];
    [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_1000DF9F8();
  }

  return 0;
}

- (KNOXBackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = KNOXBackendXPC;
  v5 = [(BackendXPC *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v10 = 0;
    if ([coderCopy decodeBytesForKey:@"encKeys" returnedLength:&v10] && v10 == 32)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = KNOXBackendXPC;
  [(BackendXPC *)&v6 encodeWithCoder:coderCopy];
  v5 = [(KNOXBackendXPC *)self URL];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  [coderCopy encodeBytes:self->_key.__ptr_ length:32 forKey:@"encKeys"];
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