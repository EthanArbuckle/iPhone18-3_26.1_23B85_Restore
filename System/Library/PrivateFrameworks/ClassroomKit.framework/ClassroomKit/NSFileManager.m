@interface NSFileManager
@end

@implementation NSFileManager

uint64_t __67__NSFileManager_CRKAdditions__crk_nonContainerizedHomeDirectoryURL__block_invoke(uint64_t a1)
{
  crk_nonContainerizedHomeDirectoryURL_URL = [*(a1 + 32) crk_computeNonContainerizedHomeDirectoryURL];

  return MEMORY[0x2821F96F8]();
}

@end