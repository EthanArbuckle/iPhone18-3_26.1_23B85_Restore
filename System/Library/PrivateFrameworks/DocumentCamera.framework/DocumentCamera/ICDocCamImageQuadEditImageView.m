@interface ICDocCamImageQuadEditImageView
- (ICDocCamImageQuadEditImageView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3 orientation:(int64_t)a4;
- (void)setImageOpacity:(double)a3;
@end

@implementation ICDocCamImageQuadEditImageView

- (ICDocCamImageQuadEditImageView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = ICDocCamImageQuadEditImageView;
  v3 = [(ICDocCamImageQuadEditImageView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ICDocCamImageQuadEditImageView *)v3 layer];
    [v5 setMasksToBounds:0];

    v6 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICDocCamImageQuadEditImageView *)v4 setImageLayer:v6];

    v7 = [(ICDocCamImageQuadEditImageView *)v4 layer];
    v8 = [(ICDocCamImageQuadEditImageView *)v4 imageLayer];
    [v7 addSublayer:v8];

    v9 = [MEMORY[0x277D75348] blackColor];
    [(ICDocCamImageQuadEditImageView *)v4 setBackgroundColor:v9];
  }

  return v4;
}

- (void)setImageOpacity:(double)a3
{
  self->_imageOpacity = a3;
  v3 = a3;
  v5 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
  *&v4 = v3;
  [v5 setOpacity:v4];
}

- (void)setFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = ICDocCamImageQuadEditImageView;
  [(ICDocCamImageQuadEditImageView *)&v21 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ICDocCamImageQuadEditImageView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICDocCamImageQuadEditImageView *)self layer];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(ICDocCamImageQuadEditImageView *)self bounds];
  v17 = DCTSDCenterOfRect(v13, v14, v15, v16);
  v19 = v18;
  v20 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
  [v20 setPosition:{v17, v19}];
}

- (void)setImage:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (*&self->_image != __PAIR128__(a4, v6))
  {
    [v6 size];
    v9 = v8;
    v11 = v10;
    v12 = [v7 CGImage];
    v13 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
    [v13 setContents:v12];

    v14 = [(ICDocCamImageQuadEditImageView *)self layer];
    [v14 setFrame:{0.0, 0.0, v9, v11}];

    v15 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
    [v15 setFrame:{0.0, 0.0, v9, v11}];

    matched = dc_clockwiseRotationsFromUpToMatchOrientation(a4);
    CGAffineTransformMakeRotation(&v19, matched * 1.57079633);
    v17 = [(ICDocCamImageQuadEditImageView *)self imageLayer];
    v18 = v19;
    [v17 setAffineTransform:&v18];
  }
}

@end