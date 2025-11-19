@interface DKProcessContext
@end

@implementation DKProcessContext

void __43___DKProcessContext_isRunningInUserContext__block_invoke()
{
  if (!vproc_swap_string())
  {
    isRunningInUserContext_userContext = geteuid() != 0;
    free(0);
  }
}

@end