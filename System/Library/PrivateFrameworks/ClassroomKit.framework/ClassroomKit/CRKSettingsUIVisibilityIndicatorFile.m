@interface CRKSettingsUIVisibilityIndicatorFile
+ (id)fileURL;
- (CRKSettingsUIVisibilityIndicatorFile)init;
@end

@implementation CRKSettingsUIVisibilityIndicatorFile

+ (id)fileURL
{
  v2 = [MEMORY[0x277CCAA00] crk_nonContainerizedHomeDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Library/studentd/settingsUIVisible"];

  return v3;
}

- (CRKSettingsUIVisibilityIndicatorFile)init
{
  v8.receiver = self;
  v8.super_class = CRKSettingsUIVisibilityIndicatorFile;
  v2 = [(CRKSettingsUIVisibilityIndicatorFile *)&v8 init];
  if (v2)
  {
    v3 = [CRKFileBackedMarker alloc];
    v4 = [objc_opt_class() fileURL];
    v5 = [(CRKFileBackedMarker *)v3 initWithFileURL:v4];
    mFileMarker = v2->mFileMarker;
    v2->mFileMarker = v5;
  }

  return v2;
}

@end