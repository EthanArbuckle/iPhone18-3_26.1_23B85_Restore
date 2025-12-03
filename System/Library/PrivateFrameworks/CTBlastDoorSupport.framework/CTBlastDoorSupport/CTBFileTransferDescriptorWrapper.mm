@interface CTBFileTransferDescriptorWrapper
- (CTBFileTransferDescriptorWrapper)initWithWrapped:(optional<ctb:()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> FileTransferDescriptor> *)a3;
- (id).cxx_construct;
@end

@implementation CTBFileTransferDescriptorWrapper

- (CTBFileTransferDescriptorWrapper)initWithWrapped:(optional<ctb:()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> FileTransferDescriptor> *)a3
{
  v8.receiver = self;
  v8.super_class = CTBFileTransferDescriptorWrapper;
  v5 = [(CTBFileTransferDescriptorWrapper *)&v8 init:a3];
  v6 = v5;
  if (v5)
  {
    std::__optional_storage_base<ctb::FileTransferDescriptor,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::FileTransferDescriptor,false>>(&v5->_wrapped, a3);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 336) = 0;
  return self;
}

@end