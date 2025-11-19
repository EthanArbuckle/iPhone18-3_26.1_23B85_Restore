@interface CAMMultiCamPIPMetrics
- (CAMMultiCamPIPMetrics)initWithTimestamp:(id *)a3 frame:(CGRect)a4 cornerRadius:(double)a5 borderWidth:(double)a6 borderColor:(CGColor *)a7 videoResolution:(int64_t)a8;
- (CGRect)frame;
- (CGRect)frameInCoreImageLandscapeCoordinateSpace;
@end

@implementation CAMMultiCamPIPMetrics

- (CAMMultiCamPIPMetrics)initWithTimestamp:(id *)a3 frame:(CGRect)a4 cornerRadius:(double)a5 borderWidth:(double)a6 borderColor:(CGColor *)a7 videoResolution:(int64_t)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v22.receiver = self;
  v22.super_class = CAMMultiCamPIPMetrics;
  v17 = [(CAMMultiCamPIPMetrics *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v19 = *&a3->var0;
    *(v17 + 7) = a3->var3;
    *(v17 + 40) = v19;
    *(v17 + 8) = x;
    *(v17 + 9) = y;
    *(v17 + 10) = width;
    *(v17 + 11) = height;
    *(v17 + 1) = a5;
    *(v17 + 2) = a6;
    *(v17 + 3) = a7;
    *(v17 + 4) = a8;
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