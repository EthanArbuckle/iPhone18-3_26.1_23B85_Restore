@interface CRCameraReaderOutputIDCard
- (NSArray)targetVertices;
- (NSArray)vertices;
- (NSString)capturePath;
- (UIImage)imageValue;
- (UIImage)unpaddedImageValue;
@end

@implementation CRCameraReaderOutputIDCard

- (UIImage)imageValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  imageValue = [objectInternal imageValue];

  return imageValue;
}

- (UIImage)unpaddedImageValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  unpaddedImageValue = [objectInternal unpaddedImageValue];

  return unpaddedImageValue;
}

- (NSArray)vertices
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  vertices = [objectInternal vertices];

  return vertices;
}

- (NSArray)targetVertices
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  targetVertices = [objectInternal targetVertices];

  return targetVertices;
}

- (NSString)capturePath
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  capturePath = [objectInternal capturePath];

  return capturePath;
}

@end