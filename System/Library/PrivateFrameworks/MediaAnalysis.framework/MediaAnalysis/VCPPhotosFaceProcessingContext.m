@interface VCPPhotosFaceProcessingContext
+ (id)contextWithPhotoLibrary:(id)a3;
- (VCPPhotosFaceProcessingContext)initWithPhotoLibrary:(id)a3;
@end

@implementation VCPPhotosFaceProcessingContext

- (VCPPhotosFaceProcessingContext)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = VCPPhotosFaceProcessingContext;
    v5 = [(VCPPhotosFaceProcessingContext *)&v10 init];
    v6 = v5;
    if (v5)
    {
      v5->_faceMergeFaceprintDistanceThreshold = 0.1;
      v7 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:v4];
      v6->_processingVersion = [v7 currentProcessingVersion];

      v6->_skipGallerySyncing = _os_feature_enabled_impl();
    }

    self = v6;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)contextWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v3];

  return v4;
}

@end