@interface MPUHalfTintedTransportButton
+ (id)transportButton;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isEnabled;
- (BOOL)shouldTrack;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPUHalfTintedTransportButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)transportButtonImageViewContentMode;
- (void)_updateRegularImage;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAdjustsImageWhenHighlighted:(BOOL)highlighted;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRegularImage:(id)image;
- (void)setRegularImageColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setTintedImage:(id)image;
- (void)setTransportButtonImageViewContentMode:(int64_t)mode;
@end

@implementation MPUHalfTintedTransportButton

- (MPUHalfTintedTransportButton)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MPUHalfTintedTransportButton;
  v3 = [(MPUHalfTintedTransportButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MPUTransportButtonEventHandler);
    transportButtonEventHandler = v3->_transportButtonEventHandler;
    v3->_transportButtonEventHandler = v4;

    [(MPUTransportButtonEventHandler *)v3->_transportButtonEventHandler setButton:v3];
    _newButton = [(MPUHalfTintedTransportButton *)v3 _newButton];
    regularButton = v3->_regularButton;
    v3->_regularButton = _newButton;

    [(UIButton *)v3->_regularButton setHidden:1];
    [(UIButton *)v3->_regularButton setUserInteractionEnabled:0];
    [(MPUHalfTintedTransportButton *)v3 addSubview:v3->_regularButton];
    _newButton2 = [(MPUHalfTintedTransportButton *)v3 _newButton];
    tintedButton = v3->_tintedButton;
    v3->_tintedButton = _newButton2;

    [(UIButton *)v3->_tintedButton setHidden:1];
    [(UIButton *)v3->_tintedButton setUserInteractionEnabled:0];
    [(MPUHalfTintedTransportButton *)v3 addSubview:v3->_tintedButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v11 layoutSubviews];
  [(MPUHalfTintedTransportButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_regularButton setFrame:?];
  [(UIButton *)self->_tintedButton setFrame:v4, v6, v8, v10];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__MPUHalfTintedTransportButton_hitTest_withEvent___block_invoke;
  v12[3] = &unk_27984C450;
  v15 = x;
  v16 = y;
  v13 = eventCopy;
  selfCopy = self;
  v9 = eventCopy;
  v10 = [(MPUTransportButtonEventHandler *)transportButtonEventHandler performHitTestingBlock:v12];

  return v10;
}

id __50__MPUHalfTintedTransportButton_hitTest_withEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8.receiver = *(a1 + 40);
  v8.super_class = MPUHalfTintedTransportButton;
  v3 = objc_msgSendSuper2(&v8, sel_hitTest_withEvent_, v2, *(a1 + 48), *(a1 + 56));
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3 == v5[57] || v3 == v5[58])
  {
    v6 = v5;

    v4 = v6;
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIButton *)self->_regularButton sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(UIButton *)self->_tintedButton sizeThatFits:width, height];
  if (v7 >= v10)
  {
    v10 = v7;
  }

  if (v9 >= v11)
  {
    v11 = v9;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  touchCopy = touch;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  v10.receiver = selfCopy;
  v10.super_class = MPUHalfTintedTransportButton;
  LOBYTE(selfCopy) = [(MPUHalfTintedTransportButton *)&v10 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return selfCopy;
}

- (void)cancelTrackingWithEvent:(id)event
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler cancelTrackingWithEvent:eventCopy];
  v6.receiver = self;
  v6.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v6 cancelTrackingWithEvent:eventCopy];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  touchCopy = touch;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler endTrackingWithTouch:touchCopy withEvent:eventCopy];
  v9.receiver = self;
  v9.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (BOOL)isEnabled
{
  v4.receiver = self;
  v4.super_class = MPUHalfTintedTransportButton;
  return [(MPUHalfTintedTransportButton *)&v4 isEnabled]|| [(MPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldFakeEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v5 setEnabled:?];
  [(UIButton *)self->_regularButton setEnabled:enabledCopy];
  [(UIButton *)self->_tintedButton setEnabled:enabledCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v5 setHighlighted:?];
  [(UIButton *)self->_regularButton setHighlighted:highlightedCopy];
  [(UIButton *)self->_tintedButton setHighlighted:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v5 setSelected:?];
  if ([(MPUHalfTintedTransportButton *)self _shouldForwardSelectedState])
  {
    [(UIButton *)self->_regularButton setSelected:selectedCopy];
    [(UIButton *)self->_tintedButton setSelected:selectedCopy];
  }
}

- (BOOL)shouldTrack
{
  v4.receiver = self;
  v4.super_class = MPUHalfTintedTransportButton;
  return [(MPUHalfTintedTransportButton *)&v4 shouldTrack]|| [(MPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldForceTrackingEnabled];
}

+ (id)transportButton
{
  v2 = [self alloc];
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

- (void)prepareForReuse
{
  [(MPUHalfTintedTransportButton *)self setRegularImage:0];

  [(MPUHalfTintedTransportButton *)self setTintedImage:0];
}

- (void)setAdjustsImageWhenHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(UIButton *)self->_regularButton setAdjustsImageWhenHighlighted:?];
  tintedButton = self->_tintedButton;

  [(UIButton *)tintedButton setAdjustsImageWhenHighlighted:highlightedCopy];
}

- (int64_t)transportButtonImageViewContentMode
{
  imageView = [(UIButton *)self->_regularButton imageView];
  contentMode = [imageView contentMode];

  return contentMode;
}

- (void)setTransportButtonImageViewContentMode:(int64_t)mode
{
  imageView = [(UIButton *)self->_regularButton imageView];
  [imageView setContentMode:mode];

  imageView2 = [(UIButton *)self->_tintedButton imageView];
  [imageView2 setContentMode:mode];
}

- (void)setRegularImage:(id)image
{
  imageCopy = image;
  if (self->_regularImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_regularImage, image);
    [(MPUHalfTintedTransportButton *)self _updateRegularImage];
    [(UIButton *)self->_regularButton setHidden:v6 == 0];
    imageCopy = v6;
  }
}

- (void)setRegularImageColor:(id)color
{
  colorCopy = color;
  if (self->_regularImageColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_regularImageColor, color);
    [(UIButton *)self->_regularButton setTintColor:v6];
    colorCopy = v6;
    if ((v6 != 0) == (self->_regularImageColor == 0))
    {
      [(MPUHalfTintedTransportButton *)self _updateRegularImage];
      colorCopy = v6;
    }
  }
}

- (void)setTintedImage:(id)image
{
  imageCopy = image;
  if (self->_tintedImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_tintedImage, image);
    v6 = [(UIImage *)v7 imageWithRenderingMode:2];
    [(MPUHalfTintedTransportButton *)self _applyImage:v6 toButton:self->_tintedButton];

    [(UIButton *)self->_tintedButton setHidden:v7 == 0];
    imageCopy = v7;
  }
}

- (void)_updateRegularImage
{
  if (self->_regularImageColor)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(UIImage *)self->_regularImage imageWithRenderingMode:v3];
  [(MPUHalfTintedTransportButton *)self _applyImage:v4 toButton:self->_regularButton];
}

@end