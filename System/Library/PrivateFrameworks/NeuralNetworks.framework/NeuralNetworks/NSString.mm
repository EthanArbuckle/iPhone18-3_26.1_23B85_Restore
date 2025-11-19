@interface NSString
@end

@implementation NSString

void __46__NSString_SNN__initWithOwnedCXXStringNoCopy___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = *(v1 + 48);
  v2 = (v1 + 48);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2, v3);
  }
}

@end