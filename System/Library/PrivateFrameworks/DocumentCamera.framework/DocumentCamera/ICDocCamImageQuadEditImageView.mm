@interface ICDocCamImageQuadEditImageView
- (ICDocCamImageQuadEditImageView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image orientation:(int64_t)orientation;
- (void)setImageOpacity:(double)opacity;
@end

@implementation ICDocCamImageQuadEditImageView

- (ICDocCamImageQuadEditImageView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = ICDocCamImageQuadEditImageView;
  v3 = [(ICDocCamImageQuadEditImageView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(ICDocCamImageQuadEditImageView *)v3 layer];
    [layer setMasksToBounds:0];

    v6 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICDocCamImageQuadEditImageView *)v4 setImageLayer:v6];

    layer2 = [(ICDocCamImageQuadEditImageView *)v4 layer];
    imageLayer = [(ICDocCamImageQuadEditImageView *)v4 imageLayer];
    [layer2 addSublayer:imageLayer];

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(ICDocCamImageQuadEditImageView *)v4 setBackgroundColor:blackColor];
  }

  return v4;
}

- (void)setImageOpacity:(double)opacity
{
  self->_imageOpacity = opacity;
  opacityCopy = opacity;
  imageLayer = [(ICDocCamImageQuadEditImageView *)self imageLayer];
  *&v4 = opacityCopy;
  [imageLayer setOpacity:v4];
}

- (void)setFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = ICDocCamImageQuadEditImageView;
  [(ICDocCamImageQuadEditImageView *)&v21 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ICDocCamImageQuadEditImageView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  layer = [(ICDocCamImageQuadEditImageView *)self layer];
  [layer setFrame:{v5, v7, v9, v11}];

  [(ICDocCamImageQuadEditImageView *)self bounds];
  v17 = DCTSDCenterOfRect(v13, v14, v15, v16);
  v19 = v18;
  imageLayer = [(ICDocCamImageQuadEditImageView *)self imageLayer];
  [imageLayer setPosition:{v17, v19}];
}

- (void)setImage:(id)image orientation:(int64_t)orientation
{
  imageCopy = image;
  v7 = imageCopy;
  if (*&self->_image != __PAIR128__(orientation, imageCopy))
  {
    [imageCopy size];
    v9 = v8;
    v11 = v10;
    cGImage = [v7 CGImage];
    imageLayer = [(ICDocCamImageQuadEditImageView *)self imageLayer];
    [imageLayer setContents:cGImage];

    layer = [(ICDocCamImageQuadEditImageView *)self layer];
    [layer setFrame:{0.0, 0.0, v9, v11}];

    imageLayer2 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
    [imageLayer2 setFrame:{0.0, 0.0, v9, v11}];

    matched = dc_clockwiseRotationsFromUpToMatchOrientation(orientation);
    CGAffineTransformMakeRotation(&v19, matched * 1.57079633);
    imageLayer3 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
    v18 = v19;
    [imageLayer3 setAffineTransform:&v18];
  }
}

@end