@interface CTBSIPResourceListsWrapper
- (CTBSIPResourceListsWrapper)initWithWrapped:(optional<ctb::SIPResourceLists> *)a3;
- (id).cxx_construct;
@end

@implementation CTBSIPResourceListsWrapper

- (CTBSIPResourceListsWrapper)initWithWrapped:(optional<ctb::SIPResourceLists> *)a3
{
  v7.receiver = self;
  v7.super_class = CTBSIPResourceListsWrapper;
  v4 = [(CTBSIPResourceListsWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::chatbot::CategoryList,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::CategoryList,false>>((v4 + 8), a3);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 32) = 0;
  return self;
}

@end