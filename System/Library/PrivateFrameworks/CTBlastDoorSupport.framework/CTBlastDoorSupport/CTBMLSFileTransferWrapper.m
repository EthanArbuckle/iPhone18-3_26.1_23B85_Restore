@interface CTBMLSFileTransferWrapper
- (CTBMLSFileTransferWrapper)initWithWrapped:(optional<ctb::MLSFileTransfer> *)a3;
- (id).cxx_construct;
@end

@implementation CTBMLSFileTransferWrapper

- (CTBMLSFileTransferWrapper)initWithWrapped:(optional<ctb::MLSFileTransfer> *)a3
{
  v7.receiver = self;
  v7.super_class = CTBMLSFileTransferWrapper;
  v4 = [(CTBMLSFileTransferWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::MLSFileTransfer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::MLSFileTransfer,false>>(&v4->_wrapped, a3);
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