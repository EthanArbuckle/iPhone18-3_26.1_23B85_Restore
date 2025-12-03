@interface NSURL(BLTReferenceCountedFile)
- (id)blt_metadataURL;
@end

@implementation NSURL(BLTReferenceCountedFile)

- (id)blt_metadataURL
{
  pathExtension = [self pathExtension];
  blt_metadataExtension = [objc_opt_class() blt_metadataExtension];
  v4 = [pathExtension isEqualToString:blt_metadataExtension];

  if (v4)
  {
    selfCopy = self;
  }

  else
  {
    blt_metadataExtension2 = [objc_opt_class() blt_metadataExtension];
    selfCopy = [self URLByAppendingPathExtension:blt_metadataExtension2];
  }

  return selfCopy;
}

@end