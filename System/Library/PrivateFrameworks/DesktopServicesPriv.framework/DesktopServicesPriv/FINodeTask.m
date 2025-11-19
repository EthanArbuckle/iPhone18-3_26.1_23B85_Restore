@interface FINodeTask
- (id).cxx_construct;
- (id)init:(const void *)a3;
@end

@implementation FINodeTask

- (id)init:(const void *)a3
{
  v4 = [(FINodeTask *)self init];
  v5 = v4;
  v7 = *a3;
  v6 = *(a3 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v4->_nodeTask.__cntrl_;
  v5->_nodeTask.__ptr_ = v7;
  v5->_nodeTask.__cntrl_ = v6;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end