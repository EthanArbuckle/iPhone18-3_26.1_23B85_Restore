@interface CTBProvisioningConfigurationWrapper
- (CTBProvisioningConfigurationWrapper)initWithWrapped:(optional<ctb:()set<std:()std:(std:()set<std:()std:(std:()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> allocator<std::string>> *)a5 :less<std::string> :string :allocator<std::string>> *)a4 :less<std::string> :string :ProvisioningConfiguration> *)a3;
- (id).cxx_construct;
@end

@implementation CTBProvisioningConfigurationWrapper

- (CTBProvisioningConfigurationWrapper)initWithWrapped:(optional<ctb:()set<std:()std:(std:()set<std:()std:(std:()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> allocator<std::string>> *)a5 :less<std::string> :string :allocator<std::string>> *)a4 :less<std::string> :string :ProvisioningConfiguration> *)a3
{
  v10.receiver = self;
  v10.super_class = CTBProvisioningConfigurationWrapper;
  v7 = [(CTBProvisioningConfigurationWrapper *)&v10 init:a3];
  v8 = v7;
  if (v7)
  {
    std::__optional_storage_base<ctb::ProvisioningConfiguration,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::ProvisioningConfiguration,false>>(&v7->_wrapped, a3);
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 1232) = 0;
  return self;
}

@end