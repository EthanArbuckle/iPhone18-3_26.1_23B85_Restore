@interface FINodeEvent
- (id).cxx_construct;
- (id)init:(const void *)a3;
@end

@implementation FINodeEvent

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 2) = 0;
  *(self + 6) = 0;
  *(self + 12) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

- (id)init:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = FINodeEvent;
  v4 = [(FINodeEvent *)&v9 init];
  v4->_event.fEventKind = *a3;
  objc_storeStrong(&v4->_event.fFINode, *(a3 + 1));
  v4->_event.fProperty = *(a3 + 4);
  TPropertyValue::operator=(&v4->_event.fPropertyValue, a3 + 1);
  v6 = *(a3 + 6);
  v5 = *(a3 + 7);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v4->_event.fTask.__cntrl_;
  v4->_event.fTask.__ptr_ = v6;
  v4->_event.fTask.__cntrl_ = v5;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=(&v4->_event.fNotifier.fRef, *(a3 + 8));
  return v4;
}

@end