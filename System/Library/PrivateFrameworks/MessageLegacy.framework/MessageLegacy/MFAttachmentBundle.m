@interface MFAttachmentBundle
+ (BOOL)isFileBundleURL:(id)a3;
+ (id)_stripBundlePath:(id)a3 entryPath:(id)a4;
@end

@implementation MFAttachmentBundle

+ (BOOL)isFileBundleURL:(id)a3
{
  v4 = 0;
  [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  return v4;
}

+ (id)_stripBundlePath:(id)a3 entryPath:(id)a4
{
  v5 = [a3 path];
  v6 = [v5 length];
  v7 = [v5 hasSuffix:@"/"] ^ 1;
  v8 = [a4 path];

  return [v8 substringFromIndex:v6 + v7];
}

@end