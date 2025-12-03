@interface CAMMultiCamPIPMetrics
- (CAMMultiCamPIPMetrics)initWithTimestamp:(id *)timestamp frame:(CGRect)frame cornerRadius:(double)radius borderWidth:(double)width borderColor:(CGColor *)color videoResolution:(int64_t)resolution;
- (CGRect)frame;
- (CGRect)frameInCoreImageLandscapeCoordinateSpace;
@end

@implementation CAMMultiCamPIPMetrics

- (CAMMultiCamPIPMetrics)initWithTimestamp:(id *)timestamp frame:(CGRect)frame cornerRadius:(double)radius borderWidth:(double)width borderColor:(CGColor *)color videoResolution:(int64_t)resolution
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22.receiver = self;
  v22.super_class = CAMMultiCamPIPMetrics;
  v17 = [(CAMMultiCamPIPMetrics *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v19 = *&timestamp->var0;
    *(v17 + 7) = timestamp->var3;
    *(v17 + 40) = v19;
    *(v17 + 8) = x;
    *(v17 + 9) = y;
    *(v17 + 10) = width;
    *(v17 + 11) = height;
    *(v17 + 1) = radius;
    *(v17 + 2) = width;
    *(v17 + 3) = color;
    *(v17 + 4) = resolution;
    v20 = v17;
  }

  return v18;
}

- (CGRect)frameInCoreImageLandscapeCoordinateSpace
{
  [(CAMMultiCamPIPMetrics *)self frame];
  v4 = v3;
  [(CAMMultiCamPIPMetrics *)self frame];
  v6 = v5;
  [(CAMMultiCamPIPMetrics *)self frame];
  v8 = v7;
  [(CAMMultiCamPIPMetrics *)self frame];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end