@interface CTBServerMLSRCSContentWrapper
- (CTBServerMLSRCSContentWrapper)initWithWrapped:(optional<ctb::ServerMLSRCSContent> *)wrapped;
- (id).cxx_construct;
@end

@implementation CTBServerMLSRCSContentWrapper

- (CTBServerMLSRCSContentWrapper)initWithWrapped:(optional<ctb::ServerMLSRCSContent> *)wrapped
{
  v7.receiver = self;
  v7.super_class = CTBServerMLSRCSContentWrapper;
  v4 = [(CTBServerMLSRCSContentWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::MLSFileTransfer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::MLSFileTransfer,false>>(&v4->_wrapped, wrapped);
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