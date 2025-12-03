@interface NTKRoundedCornerOverlayView
- (NTKRoundedCornerOverlayView)initWithFrame:(CGRect)frame forDevice:(id)device cornerRadius:(double)radius;
- (NTKRoundedCornerOverlayView)initWithFrame:(CGRect)frame forDeviceCornerRadius:(id)radius;
- (NTKRoundedCornerOverlayView)initWithFrame:(CGRect)frame screenScale:(double)scale cornerRadius:(double)radius;
- (void)layoutSubviews;
@end

@implementation NTKRoundedCornerOverlayView

- (NTKRoundedCornerOverlayView)initWithFrame:(CGRect)frame screenScale:(double)scale cornerRadius:(double)radius
{
  v36.receiver = self;
  v36.super_class = NTKRoundedCornerOverlayView;
  v7 = [(NTKRoundedCornerOverlayView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_cornerRadius = radius;
    v7->_screenScale = scale;
    v9 = [MEMORY[0x277D755B8] newImageForScreenCorner:1 screenScale:scale cornerRadius:radius];
    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
    upperLeftCorner = v8->_upperLeftCorner;
    v8->_upperLeftCorner = v10;

    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = MEMORY[0x277D755B8];
    cGImage = [v9 CGImage];
    [v9 scale];
    v15 = [v13 imageWithCGImage:cGImage scale:3 orientation:?];
    v16 = [v12 initWithImage:v15];
    upperRightCorner = v8->_upperRightCorner;
    v8->_upperRightCorner = v16;

    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = MEMORY[0x277D755B8];
    cGImage2 = [v9 CGImage];
    [v9 scale];
    v21 = [v19 imageWithCGImage:cGImage2 scale:2 orientation:?];
    v22 = [v18 initWithImage:v21];
    bottomLeftCorner = v8->_bottomLeftCorner;
    v8->_bottomLeftCorner = v22;

    v24 = objc_alloc(MEMORY[0x277D755E8]);
    v25 = MEMORY[0x277D755B8];
    cGImage3 = [v9 CGImage];
    [v9 scale];
    v27 = [v25 imageWithCGImage:cGImage3 scale:1 orientation:?];
    v28 = [v24 initWithImage:v27];
    bottomRightCorner = v8->_bottomRightCorner;
    v8->_bottomRightCorner = v28;

    layer = [(UIImageView *)v8->_upperLeftCorner layer];
    [layer setAllowsEdgeAntialiasing:0];

    layer2 = [(UIImageView *)v8->_upperRightCorner layer];
    [layer2 setAllowsEdgeAntialiasing:0];

    layer3 = [(UIImageView *)v8->_bottomLeftCorner layer];
    [layer3 setAllowsEdgeAntialiasing:0];

    layer4 = [(UIImageView *)v8->_bottomRightCorner layer];
    [layer4 setAllowsEdgeAntialiasing:0];

    [(NTKRoundedCornerOverlayView *)v8 addSubview:v8->_upperRightCorner];
    [(NTKRoundedCornerOverlayView *)v8 addSubview:v8->_upperLeftCorner];
    [(NTKRoundedCornerOverlayView *)v8 addSubview:v8->_bottomLeftCorner];
    [(NTKRoundedCornerOverlayView *)v8 addSubview:v8->_bottomRightCorner];
    [(NTKRoundedCornerOverlayView *)v8 setUserInteractionEnabled:0];
    layer5 = [(NTKRoundedCornerOverlayView *)v8 layer];
    [layer5 setAllowsHitTesting:0];
  }

  return v8;
}

- (NTKRoundedCornerOverlayView)initWithFrame:(CGRect)frame forDeviceCornerRadius:(id)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  radiusCopy = radius;
  [radiusCopy screenCornerRadius];
  v11 = [(NTKRoundedCornerOverlayView *)self initWithFrame:radiusCopy forDevice:x cornerRadius:y, width, height, v10];

  return v11;
}

- (NTKRoundedCornerOverlayView)initWithFrame:(CGRect)frame forDevice:(id)device cornerRadius:(double)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [device screenScale];

  return [(NTKRoundedCornerOverlayView *)self initWithFrame:x screenScale:y cornerRadius:width, height, v11, radius];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRoundedCornerOverlayView;
  [(NTKRoundedCornerOverlayView *)&v14 layoutSubviews];
  [(NTKRoundedCornerOverlayView *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v7 = ceil(self->_cornerRadius * 1.528665 * self->_screenScale) / self->_screenScale;
  v8 = CGRectGetMinX(v15) + -0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetMinY(v16) + -0.5;
  [(UIImageView *)self->_upperLeftCorner ntk_setBoundsAndPositionFromFrame:v8, v9, v7 + 0.5, v7 + 0.5];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = CGRectGetWidth(v17);
  v11 = v10 - v7;
  [(UIImageView *)self->_upperRightCorner ntk_setBoundsAndPositionFromFrame:v10 - v7, v9, v7 + 0.5, v7 + 0.5];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v13 = MaxY - v7;
  [(UIImageView *)self->_bottomRightCorner ntk_setBoundsAndPositionFromFrame:v11, MaxY - v7, v7 + 0.5, v7 + 0.5];
  [(UIImageView *)self->_bottomLeftCorner ntk_setBoundsAndPositionFromFrame:-0.5, v13, v7 + 0.5, v7 + 0.5];
}

@end