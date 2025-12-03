@interface BWPreviewStitcherFencedAnimationInfo
+ (id)fencedAnimationInfoWithAspectRatio:(double)ratio center:(CGPoint)center centerXPixelOffset:(int)offset centerYPixelOffset:(int)pixelOffset fencePortSendRight:(id)right;
- (CGPoint)primaryCaptureRectCenter;
- (id)description;
- (id)initWithAspectRatio:(int)ratio center:(uint64_t)center centerXPixelOffset:(double)offset centerYPixelOffset:(double)pixelOffset fencePortSendRight:(double)right;
@end

@implementation BWPreviewStitcherFencedAnimationInfo

+ (id)fencedAnimationInfoWithAspectRatio:(double)ratio center:(CGPoint)center centerXPixelOffset:(int)offset centerYPixelOffset:(int)pixelOffset fencePortSendRight:(id)right
{
  v7 = [[BWPreviewStitcherFencedAnimationInfo alloc] initWithAspectRatio:offset center:pixelOffset centerXPixelOffset:right centerYPixelOffset:ratio fencePortSendRight:center.x, center.y];

  return v7;
}

- (id)description
{
  primaryCaptureAspectRatio = self->_primaryCaptureAspectRatio;
  v4 = MEMORY[0x1E696AEC0];
  v5 = BWStringFromCGPoint(self->_primaryCaptureRectCenter.x, self->_primaryCaptureRectCenter.y);
  v7.receiver = self;
  v7.super_class = BWPreviewStitcherFencedAnimationInfo;
  return [v4 stringWithFormat:@"BWPreviewStitcherFencedAnimationInfo: { aspectRatio=%f, center=%@, centerPixelOffset=%dx%d, %@ }", *&primaryCaptureAspectRatio, v5, self->_primaryCaptureRectCenterXPixelOffset, self->_primaryCaptureRectCenterYPixelOffset, -[BWFencedAnimationInfo description](&v7, sel_description)];
}

- (CGPoint)primaryCaptureRectCenter
{
  objc_copyStruct(v4, &self->_primaryCaptureRectCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)initWithAspectRatio:(int)ratio center:(uint64_t)center centerXPixelOffset:(double)offset centerYPixelOffset:(double)pixelOffset fencePortSendRight:(double)right
{
  if (result)
  {
    v12.receiver = result;
    v12.super_class = BWPreviewStitcherFencedAnimationInfo;
    result = objc_msgSendSuper2(&v12, sel_initWithFencePortSendRight_, center);
    if (result)
    {
      *(result + 4) = offset;
      *(result + 5) = pixelOffset;
      *(result + 6) = right;
      *(result + 6) = a2;
      *(result + 7) = ratio;
    }
  }

  return result;
}

@end