@interface CAMBurstFaceConfigEntry
- (CAMBurstFaceConfigEntry)initWithRect:(CGRect)a3 withFaceId:(int)a4;
- (CGRect)faceRect;
@end

@implementation CAMBurstFaceConfigEntry

- (CAMBurstFaceConfigEntry)initWithRect:(CGRect)a3 withFaceId:(int)a4
{
  self->faceRect = a3;
  self->faceId = a4;
  self->framesSinceLast = 0;
  return self;
}

- (CGRect)faceRect
{
  objc_copyStruct(v6, &self->faceRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end