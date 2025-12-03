@interface CTBCPIMMessageWrapper
- (CTBCPIMMessageWrapper)initWithWrapped:(optional<ctb::CPIMMessage> *)wrapped;
- (id).cxx_construct;
@end

@implementation CTBCPIMMessageWrapper

- (CTBCPIMMessageWrapper)initWithWrapped:(optional<ctb::CPIMMessage> *)wrapped
{
  v7.receiver = self;
  v7.super_class = CTBCPIMMessageWrapper;
  v4 = [(CTBCPIMMessageWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::CPIMMessage,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::CPIMMessage,false>>(&v4->_wrapped, wrapped);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 288) = 0;
  return self;
}

@end