@interface CTServerConnectionAddIdentifierExceptionSymbolLoc
@end

@implementation CTServerConnectionAddIdentifierExceptionSymbolLoc

void *__get_CTServerConnectionAddIdentifierExceptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "_CTServerConnectionAddIdentifierException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CTServerConnectionAddIdentifierExceptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end