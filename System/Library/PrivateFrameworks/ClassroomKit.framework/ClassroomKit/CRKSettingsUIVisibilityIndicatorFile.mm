@interface CRKSettingsUIVisibilityIndicatorFile
+ (id)fileURL;
- (CRKSettingsUIVisibilityIndicatorFile)init;
@end

@implementation CRKSettingsUIVisibilityIndicatorFile

+ (id)fileURL
{
  crk_nonContainerizedHomeDirectoryURL = [MEMORY[0x277CCAA00] crk_nonContainerizedHomeDirectoryURL];
  v3 = [crk_nonContainerizedHomeDirectoryURL URLByAppendingPathComponent:@"Library/studentd/settingsUIVisible"];

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
    fileURL = [objc_opt_class() fileURL];
    v5 = [(CRKFileBackedMarker *)v3 initWithFileURL:fileURL];
    mFileMarker = v2->mFileMarker;
    v2->mFileMarker = v5;
  }

  return v2;
}

@end