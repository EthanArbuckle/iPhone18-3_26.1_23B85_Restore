@interface BWPreviewStitcherFencedAnimationInfo
+ (id)fencedAnimationInfoWithAspectRatio:(double)a3 center:(CGPoint)a4 centerXPixelOffset:(int)a5 centerYPixelOffset:(int)a6 fencePortSendRight:(id)a7;
- (CGPoint)primaryCaptureRectCenter;
- (id)description;
- (id)initWithAspectRatio:(int)a3 center:(uint64_t)a4 centerXPixelOffset:(double)a5 centerYPixelOffset:(double)a6 fencePortSendRight:(double)a7;
@end

@implementation BWPreviewStitcherFencedAnimationInfo

+ (id)fencedAnimationInfoWithAspectRatio:(double)a3 center:(CGPoint)a4 centerXPixelOffset:(int)a5 centerYPixelOffset:(int)a6 fencePortSendRight:(id)a7
{
  v7 = [[BWPreviewStitcherFencedAnimationInfo alloc] initWithAspectRatio:a5 center:a6 centerXPixelOffset:a7 centerYPixelOffset:a3 fencePortSendRight:a4.x, a4.y];

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

- (id)initWithAspectRatio:(int)a3 center:(uint64_t)a4 centerXPixelOffset:(double)a5 centerYPixelOffset:(double)a6 fencePortSendRight:(double)a7
{
  if (result)
  {
    v12.receiver = result;
    v12.super_class = BWPreviewStitcherFencedAnimationInfo;
    result = objc_msgSendSuper2(&v12, sel_initWithFencePortSendRight_, a4);
    if (result)
    {
      *(result + 4) = a5;
      *(result + 5) = a6;
      *(result + 6) = a7;
      *(result + 6) = a2;
      *(result + 7) = a3;
    }
  }

  return result;
}

@end