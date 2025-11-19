@interface NPKHomeDirectoryPathForDevice
@end

@implementation NPKHomeDirectoryPathForDevice

uint64_t (*__NPKHomeDirectoryPathForDevice_block_invoke())(void)
{
  result = CUTWeakLinkSymbol();
  NPKHomeDirectoryPathForDevice__CPSharedResourcesDirectory = result;
  return result;
}

@end