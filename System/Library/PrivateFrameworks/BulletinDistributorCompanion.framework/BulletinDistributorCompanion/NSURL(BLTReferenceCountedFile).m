@interface NSURL(BLTReferenceCountedFile)
- (id)blt_metadataURL;
@end

@implementation NSURL(BLTReferenceCountedFile)

- (id)blt_metadataURL
{
  v2 = [a1 pathExtension];
  v3 = [objc_opt_class() blt_metadataExtension];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = a1;
  }

  else
  {
    v6 = [objc_opt_class() blt_metadataExtension];
    v5 = [a1 URLByAppendingPathExtension:v6];
  }

  return v5;
}

@end