@interface CTBIMCompositionIndicationWrapper
- (CTBIMCompositionIndicationWrapper)initWithWrapped:(optional<ctb::IMCompositionIndication> *)a3;
- (id).cxx_construct;
@end

@implementation CTBIMCompositionIndicationWrapper

- (CTBIMCompositionIndicationWrapper)initWithWrapped:(optional<ctb::IMCompositionIndication> *)a3
{
  v7.receiver = self;
  v7.super_class = CTBIMCompositionIndicationWrapper;
  v4 = [(CTBIMCompositionIndicationWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::IMCompositionIndication,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::IMCompositionIndication,false>>(&v4->_wrapped, a3);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 72) = 0;
  return self;
}

@end