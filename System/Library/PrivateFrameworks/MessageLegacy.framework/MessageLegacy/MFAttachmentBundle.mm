@interface MFAttachmentBundle
+ (BOOL)isFileBundleURL:(id)l;
+ (id)_stripBundlePath:(id)path entryPath:(id)entryPath;
@end

@implementation MFAttachmentBundle

+ (BOOL)isFileBundleURL:(id)l
{
  v4 = 0;
  [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  return v4;
}

+ (id)_stripBundlePath:(id)path entryPath:(id)entryPath
{
  path = [path path];
  v6 = [path length];
  v7 = [path hasSuffix:@"/"] ^ 1;
  path2 = [entryPath path];

  return [path2 substringFromIndex:v6 + v7];
}

@end