@interface _EARCustomPronData
- (_EARCustomPronData)initWithCustomPronData:(shared_ptr<quasar::CustomPronData>)data;
- (id).cxx_construct;
- (id)validationError;
- (shared_ptr<quasar::CustomPronData>)data;
- (void)setData:(shared_ptr<quasar::CustomPronData>)data;
@end

@implementation _EARCustomPronData

- (_EARCustomPronData)initWithCustomPronData:(shared_ptr<quasar::CustomPronData>)data
{
  ptr = data.__ptr_;
  v10.receiver = self;
  v10.super_class = _EARCustomPronData;
  v4 = [(_EARCustomPronData *)&v10 init:data.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_data.__cntrl_;
    v5->_data.__ptr_ = v7;
    v5->_data.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (id)validationError
{
  ptr = self->_data.__ptr_;
  v3 = (ptr + 8);
  if (*(ptr + 31) < 0)
  {
    v3 = *v3;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
}

- (shared_ptr<quasar::CustomPronData>)data
{
  cntrl = self->_data.__cntrl_;
  *v2 = self->_data.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setData:(shared_ptr<quasar::CustomPronData>)data
{
  v4 = *data.__ptr_;
  v3 = *(data.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_data.__cntrl_;
  self->_data.__ptr_ = v4;
  self->_data.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end