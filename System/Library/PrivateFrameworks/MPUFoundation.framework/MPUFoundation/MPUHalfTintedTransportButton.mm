@interface MPUHalfTintedTransportButton
+ (id)transportButton;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isEnabled;
- (BOOL)shouldTrack;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPUHalfTintedTransportButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)transportButtonImageViewContentMode;
- (void)_updateRegularImage;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAdjustsImageWhenHighlighted:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRegularImage:(id)a3;
- (void)setRegularImageColor:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTintedImage:(id)a3;
- (void)setTransportButtonImageViewContentMode:(int64_t)a3;
@end

@implementation MPUHalfTintedTransportButton

- (MPUHalfTintedTransportButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MPUHalfTintedTransportButton;
  v3 = [(MPUHalfTintedTransportButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MPUTransportButtonEventHandler);
    transportButtonEventHandler = v3->_transportButtonEventHandler;
    v3->_transportButtonEventHandler = v4;

    [(MPUTransportButtonEventHandler *)v3->_transportButtonEventHandler setButton:v3];
    v6 = [(MPUHalfTintedTransportButton *)v3 _newButton];
    regularButton = v3->_regularButton;
    v3->_regularButton = v6;

    [(UIButton *)v3->_regularButton setHidden:1];
    [(UIButton *)v3->_regularButton setUserInteractionEnabled:0];
    [(MPUHalfTintedTransportButton *)v3 addSubview:v3->_regularButton];
    v8 = [(MPUHalfTintedTransportButton *)v3 _newButton];
    tintedButton = v3->_tintedButton;
    v3->_tintedButton = v8;

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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__MPUHalfTintedTransportButton_hitTest_withEvent___block_invoke;
  v12[3] = &unk_27984C450;
  v15 = x;
  v16 = y;
  v13 = v7;
  v14 = self;
  v9 = v7;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = self;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v7 = a4;
  v8 = a3;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler beginTrackingWithTouch:v8 withEvent:v7];
  v10.receiver = v5;
  v10.super_class = MPUHalfTintedTransportButton;
  LOBYTE(v5) = [(MPUHalfTintedTransportButton *)&v10 beginTrackingWithTouch:v8 withEvent:v7];

  return v5;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v5 = a3;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler cancelTrackingWithEvent:v5];
  v6.receiver = self;
  v6.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v6 cancelTrackingWithEvent:v5];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v7 = a4;
  v8 = a3;
  [(MPUTransportButtonEventHandler *)transportButtonEventHandler endTrackingWithTouch:v8 withEvent:v7];
  v9.receiver = self;
  v9.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v9 endTrackingWithTouch:v8 withEvent:v7];
}

- (BOOL)isEnabled
{
  v4.receiver = self;
  v4.super_class = MPUHalfTintedTransportButton;
  return [(MPUHalfTintedTransportButton *)&v4 isEnabled]|| [(MPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldFakeEnabled];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v5 setEnabled:?];
  [(UIButton *)self->_regularButton setEnabled:v3];
  [(UIButton *)self->_tintedButton setEnabled:v3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v5 setHighlighted:?];
  [(UIButton *)self->_regularButton setHighlighted:v3];
  [(UIButton *)self->_tintedButton setHighlighted:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MPUHalfTintedTransportButton;
  [(MPUHalfTintedTransportButton *)&v5 setSelected:?];
  if ([(MPUHalfTintedTransportButton *)self _shouldForwardSelectedState])
  {
    [(UIButton *)self->_regularButton setSelected:v3];
    [(UIButton *)self->_tintedButton setSelected:v3];
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
  v2 = [a1 alloc];
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

- (void)prepareForReuse
{
  [(MPUHalfTintedTransportButton *)self setRegularImage:0];

  [(MPUHalfTintedTransportButton *)self setTintedImage:0];
}

- (void)setAdjustsImageWhenHighlighted:(BOOL)a3
{
  v3 = a3;
  [(UIButton *)self->_regularButton setAdjustsImageWhenHighlighted:?];
  tintedButton = self->_tintedButton;

  [(UIButton *)tintedButton setAdjustsImageWhenHighlighted:v3];
}

- (int64_t)transportButtonImageViewContentMode
{
  v2 = [(UIButton *)self->_regularButton imageView];
  v3 = [v2 contentMode];

  return v3;
}

- (void)setTransportButtonImageViewContentMode:(int64_t)a3
{
  v5 = [(UIButton *)self->_regularButton imageView];
  [v5 setContentMode:a3];

  v6 = [(UIButton *)self->_tintedButton imageView];
  [v6 setContentMode:a3];
}

- (void)setRegularImage:(id)a3
{
  v5 = a3;
  if (self->_regularImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_regularImage, a3);
    [(MPUHalfTintedTransportButton *)self _updateRegularImage];
    [(UIButton *)self->_regularButton setHidden:v6 == 0];
    v5 = v6;
  }
}

- (void)setRegularImageColor:(id)a3
{
  v5 = a3;
  if (self->_regularImageColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_regularImageColor, a3);
    [(UIButton *)self->_regularButton setTintColor:v6];
    v5 = v6;
    if ((v6 != 0) == (self->_regularImageColor == 0))
    {
      [(MPUHalfTintedTransportButton *)self _updateRegularImage];
      v5 = v6;
    }
  }
}

- (void)setTintedImage:(id)a3
{
  v5 = a3;
  if (self->_tintedImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_tintedImage, a3);
    v6 = [(UIImage *)v7 imageWithRenderingMode:2];
    [(MPUHalfTintedTransportButton *)self _applyImage:v6 toButton:self->_tintedButton];

    [(UIButton *)self->_tintedButton setHidden:v7 == 0];
    v5 = v7;
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