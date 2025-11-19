@interface CHGetUserHomeDirectoryURL
@end

@implementation CHGetUserHomeDirectoryURL

uint64_t ____CHGetUserHomeDirectoryURL_block_invoke()
{
  if (__CHGetUserName_onceToken != -1)
  {
    ____CHGetUserHomeDirectoryURL_block_invoke_cold_1();
  }

  result = CFCopyHomeDirectoryURLForUser();
  __CHGetUserHomeDirectoryURL_sDirectoryURL = result;
  return result;
}

@end