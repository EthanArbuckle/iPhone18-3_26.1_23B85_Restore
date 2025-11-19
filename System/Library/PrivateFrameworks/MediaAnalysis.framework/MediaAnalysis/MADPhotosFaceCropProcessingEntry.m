@interface MADPhotosFaceCropProcessingEntry
- (MADPhotosFaceCropProcessingEntry)initWithFaceCrop:(id)a3;
@end

@implementation MADPhotosFaceCropProcessingEntry

- (MADPhotosFaceCropProcessingEntry)initWithFaceCrop:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADPhotosFaceCropProcessingEntry;
  v6 = [(MADPhotosFaceCropProcessingEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceCrop, a3);
  }

  return v7;
}

@end