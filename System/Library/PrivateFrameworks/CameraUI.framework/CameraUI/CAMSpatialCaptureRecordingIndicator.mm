@interface CAMSpatialCaptureRecordingIndicator
- (CAMSpatialCaptureRecordingIndicator)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation CAMSpatialCaptureRecordingIndicator

- (CAMSpatialCaptureRecordingIndicator)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = CAMSpatialCaptureRecordingIndicator;
  v3 = [(CAMSpatialCaptureRecordingIndicator *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->__imageView setTintColor:whiteColor];

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
  layer = [(CAMSpatialCaptureRecordingIndicator *)self layer];
  [layer setCornerRadius:v4];

  [(CAMSpatialCaptureRecordingIndicator *)self bounds];
  UIRectGetCenter();
  _imageView = [(CAMSpatialCaptureRecordingIndicator *)self _imageView];
  CAMViewAlignmentSize(_imageView);
  CEKRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_imageView setCenter:?];
  [_imageView setBounds:{v8, v10, v12, v14}];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    _imageView = [(CAMSpatialCaptureRecordingIndicator *)self _imageView];
    [CAMView rotateView:_imageView toInterfaceOrientation:[(CAMSpatialCaptureRecordingIndicator *)self orientation] animated:animatedCopy];
  }
}

@end