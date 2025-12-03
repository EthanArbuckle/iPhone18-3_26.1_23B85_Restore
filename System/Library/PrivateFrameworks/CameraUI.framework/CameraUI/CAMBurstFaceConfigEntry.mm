@interface CAMBurstFaceConfigEntry
- (CAMBurstFaceConfigEntry)initWithRect:(CGRect)rect withFaceId:(int)id;
- (CGRect)faceRect;
@end

@implementation CAMBurstFaceConfigEntry

- (CAMBurstFaceConfigEntry)initWithRect:(CGRect)rect withFaceId:(int)id
{
  self->faceRect = rect;
  self->faceId = id;
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