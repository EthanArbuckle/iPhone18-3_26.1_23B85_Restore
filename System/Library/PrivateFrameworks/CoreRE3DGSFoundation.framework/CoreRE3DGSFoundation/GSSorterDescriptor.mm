@interface GSSorterDescriptor
- (GSSorterDescriptor)init;
- (id).cxx_construct;
- (shared_ptr<apple3dgs::SorterDescriptor>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::SorterDescriptor>)impl;
@end

@implementation GSSorterDescriptor

- (GSSorterDescriptor)init
{
  v3.receiver = self;
  v3.super_class = GSSorterDescriptor;
  [(GSSorterDescriptor *)&v3 init];
  operator new();
}

- (shared_ptr<apple3dgs::SorterDescriptor>)impl
{
  cntrl = self->_impl.__cntrl_;
  *v2 = self->_impl.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setImpl:(shared_ptr<apple3dgs::SorterDescriptor>)impl
{
  v4 = *impl.__ptr_;
  v3 = *(impl.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_impl.__cntrl_;
  self->_impl.__ptr_ = v4;
  self->_impl.__cntrl_ = v3;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);

    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end