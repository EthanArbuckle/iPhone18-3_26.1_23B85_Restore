@interface CHGetUserLibraryDirectoryURL
@end

@implementation CHGetUserLibraryDirectoryURL

void ____CHGetUserLibraryDirectoryURL_block_invoke()
{
  if (__CHGetUserHomeDirectoryURL_onceToken != -1)
  {
    ____CHGetUserLibraryDirectoryURL_block_invoke_cold_1();
  }

  v2 = __CHGetUserHomeDirectoryURL_sDirectoryURL;
  v0 = [v2 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v1 = __CHGetUserLibraryDirectoryURL_sDirectoryURL;
  __CHGetUserLibraryDirectoryURL_sDirectoryURL = v0;
}

@end