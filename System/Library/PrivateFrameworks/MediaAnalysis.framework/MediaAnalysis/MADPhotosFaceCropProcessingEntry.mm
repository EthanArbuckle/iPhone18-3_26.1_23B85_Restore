@interface MADPhotosFaceCropProcessingEntry
- (MADPhotosFaceCropProcessingEntry)initWithFaceCrop:(id)crop;
@end

@implementation MADPhotosFaceCropProcessingEntry

- (MADPhotosFaceCropProcessingEntry)initWithFaceCrop:(id)crop
{
  cropCopy = crop;
  v9.receiver = self;
  v9.super_class = MADPhotosFaceCropProcessingEntry;
  v6 = [(MADPhotosFaceCropProcessingEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceCrop, crop);
  }

  return v7;
}

@end