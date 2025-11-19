@interface CTBClientAuthenticityRequestWrapper
- (CTBClientAuthenticityRequestWrapper)initWithWrapped:(optional<ctb::ClientAuthenticityRequest> *)a3;
- (id).cxx_construct;
@end

@implementation CTBClientAuthenticityRequestWrapper

- (CTBClientAuthenticityRequestWrapper)initWithWrapped:(optional<ctb::ClientAuthenticityRequest> *)a3
{
  v7.receiver = self;
  v7.super_class = CTBClientAuthenticityRequestWrapper;
  v4 = [(CTBClientAuthenticityRequestWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::ClientAuthenticityRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ClientAuthenticityRequest,false>>(&v4->_wrapped, a3);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 80) = 0;
  return self;
}

@end