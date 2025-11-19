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
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 imageValue];

  return v3;
}

- (UIImage)unpaddedImageValue
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 unpaddedImageValue];

  return v3;
}

- (NSArray)vertices
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 vertices];

  return v3;
}

- (NSArray)targetVertices
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 targetVertices];

  return v3;
}

- (NSString)capturePath
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 capturePath];

  return v3;
}

@end