@interface Endpoint
@end

@implementation Endpoint

void *__getkACCProperties_Endpoint_NFC_TypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "kACCProperties_Endpoint_NFC_Type");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end