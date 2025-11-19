@interface MADPhotosFaceCropGenerationEntry
- (MADPhotosFaceCropGenerationEntry)initWithAsset:(id)a3 andFace:(id)a4;
@end

@implementation MADPhotosFaceCropGenerationEntry

- (MADPhotosFaceCropGenerationEntry)initWithAsset:(id)a3 andFace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MADPhotosFaceCropGenerationEntry;
  v9 = [(MADPhotosFaceCropGenerationEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    v11 = [NSMutableSet setWithObject:v8];
    faces = v10->_faces;
    v10->_faces = v11;
  }

  return v10;
}

@end