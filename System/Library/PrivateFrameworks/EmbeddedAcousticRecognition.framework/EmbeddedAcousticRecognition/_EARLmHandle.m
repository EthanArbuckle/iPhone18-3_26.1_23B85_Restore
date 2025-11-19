@interface _EARLmHandle
- (id).cxx_construct;
- (id)_initWithHandle:(shared_ptr<kaldi::quasar::LmHandle>)a3;
- (shared_ptr<kaldi::quasar::LmHandle>)handle;
@end

@implementation _EARLmHandle

- (id)_initWithHandle:(shared_ptr<kaldi::quasar::LmHandle>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = _EARLmHandle;
  v4 = [(_EARLmHandle *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_handle.__cntrl_;
    v5->_handle.__ptr_ = v7;
    v5->_handle.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (shared_ptr<kaldi::quasar::LmHandle>)handle
{
  cntrl = self->_handle.__cntrl_;
  *v2 = self->_handle.__ptr_;
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
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end