@interface CAMSpatialCaptureRecordingIndicator
- (CAMSpatialCaptureRecordingIndicator)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMSpatialCaptureRecordingIndicator

- (CAMSpatialCaptureRecordingIndicator)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CAMSpatialCaptureRecordingIndicator;
  v3 = [(CAMSpatialCaptureRecordingIndicator *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->__imageView;
    v3->__imageView = v4;

    v6 = CAMRedColor();
    [(CAMSpatialCaptureRecordingIndicator *)v3 setBackgroundColor:v6];

    v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"visionpro" withConfiguration:v7];
    [(UIImageView *)v3->__imageView setImage:v8];

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->__imageView setTintColor:v9];

    [(CAMSpatialCaptureRecordingIndicator *)v3 addSubview:v3->__imageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CAMSpatialCaptureRecordingIndicator;
  [(CAMSpatialCaptureRecordingIndicator *)&v15 layoutSubviews];
  [(CAMSpatialCaptureRecordingIndicator *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(CAMSpatialCaptureRecordingIndicator *)self layer];
  [v5 setCornerRadius:v4];

  [(CAMSpatialCaptureRecordingIndicator *)self bounds];
  UIRectGetCenter();
  v6 = [(CAMSpatialCaptureRecordingIndicator *)self _imageView];
  CAMViewAlignmentSize(v6);
  CEKRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v6 setCenter:?];
  [v6 setBounds:{v8, v10, v12, v14}];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    v7 = [(CAMSpatialCaptureRecordingIndicator *)self _imageView];
    [CAMView rotateView:v7 toInterfaceOrientation:[(CAMSpatialCaptureRecordingIndicator *)self orientation] animated:v5];
  }
}

@end