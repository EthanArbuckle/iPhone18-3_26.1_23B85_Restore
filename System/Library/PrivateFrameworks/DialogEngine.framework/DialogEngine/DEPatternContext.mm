@interface DEPatternContext
- (id).cxx_construct;
- (shared_ptr<siri::dialogengine::PatternContext>)getSharedPtr;
@end

@implementation DEPatternContext

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (shared_ptr<siri::dialogengine::PatternContext>)getSharedPtr
{
  cntrl = self->_This.__cntrl_;
  *v2 = self->_This.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

@end