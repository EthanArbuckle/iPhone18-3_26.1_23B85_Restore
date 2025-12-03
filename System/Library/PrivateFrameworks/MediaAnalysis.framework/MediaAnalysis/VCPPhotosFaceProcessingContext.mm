@interface VCPPhotosFaceProcessingContext
+ (id)contextWithPhotoLibrary:(id)library;
- (VCPPhotosFaceProcessingContext)initWithPhotoLibrary:(id)library;
@end

@implementation VCPPhotosFaceProcessingContext

- (VCPPhotosFaceProcessingContext)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v10.receiver = self;
    v10.super_class = VCPPhotosFaceProcessingContext;
    v5 = [(VCPPhotosFaceProcessingContext *)&v10 init];
    v6 = v5;
    if (v5)
    {
      v5->_faceMergeFaceprintDistanceThreshold = 0.1;
      v7 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:libraryCopy];
      v6->_processingVersion = [v7 currentProcessingVersion];

      v6->_skipGallerySyncing = _os_feature_enabled_impl();
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)contextWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

@end