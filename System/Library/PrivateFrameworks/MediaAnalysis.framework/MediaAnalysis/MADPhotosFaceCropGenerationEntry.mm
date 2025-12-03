@interface MADPhotosFaceCropGenerationEntry
- (MADPhotosFaceCropGenerationEntry)initWithAsset:(id)asset andFace:(id)face;
@end

@implementation MADPhotosFaceCropGenerationEntry

- (MADPhotosFaceCropGenerationEntry)initWithAsset:(id)asset andFace:(id)face
{
  assetCopy = asset;
  faceCopy = face;
  v14.receiver = self;
  v14.super_class = MADPhotosFaceCropGenerationEntry;
  v9 = [(MADPhotosFaceCropGenerationEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    v11 = [NSMutableSet setWithObject:faceCopy];
    faces = v10->_faces;
    v10->_faces = v11;
  }

  return v10;
}

@end