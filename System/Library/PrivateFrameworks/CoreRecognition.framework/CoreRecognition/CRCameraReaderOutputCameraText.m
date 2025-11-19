@interface CRCameraReaderOutputCameraText
- (CGRect)boundingBox;
- (NSAttributedString)overlayString;
- (float)rotation;
- (void)setBoundingBox:(CGRect)a3;
- (void)setOverlayString:(id)a3;
- (void)setRotation:(float)a3;
@end

@implementation CRCameraReaderOutputCameraText

- (void)setOverlayString:(id)a3
{
  v4 = a3;
  v5 = [(CRCameraReaderOutput *)self objectInternal];
  [v5 setOverlayString:v4];
}

- (NSAttributedString)overlayString
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 overlayString];

  return v3;
}

- (void)setRotation:(float)a3
{
  v5 = [(CRCameraReaderOutput *)self objectInternal];
  *&v4 = a3;
  [v5 setRotation:v4];
}

- (float)rotation
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  [v2 rotation];
  v4 = v3;

  return v4;
}

- (void)setBoundingBox:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRCameraReaderOutput *)self objectInternal];
  [v7 setBoundingBox:{x, y, width, height}];
}

- (CGRect)boundingBox
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  [v2 boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end