@interface CTBCPMGroupManagementWrapper
- (CTBCPMGroupManagementWrapper)initWithWrapped:(optional<ctb::CPMGroupManagement> *)wrapped;
- (id).cxx_construct;
@end

@implementation CTBCPMGroupManagementWrapper

- (CTBCPMGroupManagementWrapper)initWithWrapped:(optional<ctb::CPMGroupManagement> *)wrapped
{
  v7.receiver = self;
  v7.super_class = CTBCPMGroupManagementWrapper;
  v4 = [(CTBCPMGroupManagementWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::CPMGroupManagement,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::CPMGroupManagement,false>>(&v4->_wrapped, wrapped);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 40) = 0;
  return self;
}

@end