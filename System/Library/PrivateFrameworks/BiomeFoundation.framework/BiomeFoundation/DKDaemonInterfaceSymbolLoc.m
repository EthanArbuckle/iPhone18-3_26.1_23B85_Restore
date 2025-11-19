@interface DKDaemonInterfaceSymbolLoc
@end

@implementation DKDaemonInterfaceSymbolLoc

void *__get_DKDaemonInterfaceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreDuetLibrary();
  result = dlsym(v2, "_DKDaemonInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DKDaemonInterfaceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end