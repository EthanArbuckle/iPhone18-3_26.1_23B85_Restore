@interface HUCameraMicrophoneButton
- (CGSize)intrinsicContentSize;
- (HUCameraMicrophoneButton)initWithFrame:(CGRect)frame;
- (id)_circleColor;
- (void)_updateAlpha;
- (void)_updateImage;
- (void)drawRect:(CGRect)rect;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOn:(BOOL)on;
@end

@implementation HUCameraMicrophoneButton

- (HUCameraMicrophoneButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUCameraMicrophoneButton;
  v3 = [(HUCameraMicrophoneButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCameraMicrophoneButton *)v3 setOpaque:0];
    [(HUCameraMicrophoneButton *)v4 setContentMode:3];
    [(HUCameraMicrophoneButton *)v4 _updateImage];
  }

  return v4;
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(HUCameraMicrophoneButton *)self _updateImage];

    [(HUCameraMicrophoneButton *)self setNeedsDisplay];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = HUCameraMicrophoneButton;
  [(HUCameraMicrophoneButton *)&v4 setEnabled:enabled];
  [(HUCameraMicrophoneButton *)self _updateAlpha];
  [(HUCameraMicrophoneButton *)self setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = HUCameraMicrophoneButton;
  [(HUCameraMicrophoneButton *)&v5 setHighlighted:highlighted];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HUCameraMicrophoneButton_setHighlighted___block_invoke;
  v4[3] = &unk_277DB8488;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
}

- (void)_updateAlpha
{
  if ([(HUCameraMicrophoneButton *)self isEnabled])
  {
    isHighlighted = [(HUCameraMicrophoneButton *)self isHighlighted];
    v4 = 0.3;
    if (!isHighlighted)
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = 0.2;
  }

  [(HUCameraMicrophoneButton *)self setAlpha:v4];
}

- (void)_updateImage
{
  if ([(HUCameraMicrophoneButton *)self isOn])
  {
    v3 = @"microphoneEnabled";
  }

  else
  {
    v3 = @"microphoneDisabled";
  }

  v7 = HUImageNamed(v3);
  if ([(HUCameraMicrophoneButton *)self hu_isHomeAffordancePresent])
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    v5 = [v7 _flatImageWithColor:systemWhiteColor];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [(HUCameraMicrophoneButton *)self setMicrophoneImage:v6];
  [(HUCameraMicrophoneButton *)self invalidateIntrinsicContentSize];
  [(HUCameraMicrophoneButton *)self setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  microphoneImage = [(HUCameraMicrophoneButton *)self microphoneImage];
  [microphoneImage size];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + 0.4;
  v9 = v8;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  v14 = [(HUCameraMicrophoneButton *)self microphoneImage:rect.origin.x];
  hu_isHomeAffordancePresent = [(HUCameraMicrophoneButton *)self hu_isHomeAffordancePresent];
  if ([(HUCameraMicrophoneButton *)self isEnabled])
  {
    if ([(HUCameraMicrophoneButton *)self isOn])
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }
    v5 = ;
    if (hu_isHomeAffordancePresent)
    {
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];

      v5 = systemWhiteColor;
    }

    v7 = [v14 _flatImageWithColor:v5];

    v14 = v7;
  }

  [(HUCameraMicrophoneButton *)self bounds];
  v9 = HURoundToScreenScale(v8 * 0.2);
  [(HUCameraMicrophoneButton *)self bounds];
  v17 = CGRectInset(v16, v9, v9);
  [v14 drawInRect:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  if ((hu_isHomeAffordancePresent & 1) == 0)
  {
    v10 = MEMORY[0x277D75208];
    [(HUCameraMicrophoneButton *)self bounds];
    v11 = [v10 bezierPathWithOvalInRect:?];
    [v11 addClip];

    _circleColor = [(HUCameraMicrophoneButton *)self _circleColor];
    [_circleColor setFill];

    if ([(HUCameraMicrophoneButton *)self isEnabled])
    {
      v13 = kCGBlendModeDestinationOver;
    }

    else
    {
      v13 = kCGBlendModeSourceOut;
    }

    [(HUCameraMicrophoneButton *)self bounds];
    UIRectFillUsingBlendMode(v18, v13);
  }
}

- (id)_circleColor
{
  if (([(HUCameraMicrophoneButton *)self isEnabled]& 1) != 0)
  {
    if ([(HUCameraMicrophoneButton *)self isOn])
    {
      [MEMORY[0x277D75348] hf_keyColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v3 = ;
  }

  else
  {
    v3 = [MEMORY[0x277D75348] colorWithWhite:0.15 alpha:1.0];
  }

  return v3;
}

@end