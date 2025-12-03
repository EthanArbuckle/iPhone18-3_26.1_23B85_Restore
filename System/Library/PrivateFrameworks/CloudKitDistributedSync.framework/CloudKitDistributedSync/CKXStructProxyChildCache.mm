@interface CKXStructProxyChildCache
- (CKXStructProxyBase)proxy;
- (CKXStructProxyChildCache)initWithProxy:(id)proxy;
- (id).cxx_construct;
- (void)reset;
@end

@implementation CKXStructProxyChildCache

- (CKXStructProxyChildCache)initWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v8.receiver = self;
  v8.super_class = CKXStructProxyChildCache;
  v5 = [(CKXStructProxyChildCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, proxyCopy);
  }

  return v6;
}

- (void)reset
{
  if (self->fieldToProxy.__table_.__size_)
  {
    sub_243985DC8(self->fieldToProxy.__table_.__first_node_.__next_);
    self->fieldToProxy.__table_.__first_node_.__next_ = 0;
    size = self->fieldToProxy.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        self->fieldToProxy.__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    self->fieldToProxy.__table_.__size_ = 0;
  }
}

- (CKXStructProxyBase)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end