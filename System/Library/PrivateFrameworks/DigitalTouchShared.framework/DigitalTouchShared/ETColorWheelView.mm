@interface ETColorWheelView
+ (CGColor)pickerBorderColor;
+ (double)colorWheelWidth;
+ (double)pickerDiameter;
- (BOOL)pickerShouldDismissClockwise;
- (ETColorWheelView)initWithFrame:(CGRect)frame;
- (double)colorWheelDismissalRotation;
- (id)pickerViewHighlightedColor;
- (void)addPickerCircleForPaletteCircle:(id)circle;
- (void)animatePickerToOriginalPosition;
- (void)beganTouches:(id)touches;
- (void)finishedTouches;
- (void)hideColorWheelPickingColor:(BOOL)color;
- (void)hideDoneButton;
- (void)hideDoneButtonAnimated;
- (void)showColorWheelFromPaletteCircle:(id)circle rotation:(double)rotation;
- (void)showDoneButtonAnimated;
@end

@implementation ETColorWheelView

+ (double)colorWheelWidth
{
  if (SetupSpecValuesIfNeeded_onceToken_0 != -1)
  {
    +[ETColorWheelView colorWheelWidth];
  }

  return 49.5;
}

+ (double)pickerDiameter
{
  if (SetupSpecValuesIfNeeded_onceToken_0 != -1)
  {
    +[ETColorWheelView colorWheelWidth];
  }

  return 45.5;
}

+ (CGColor)pickerBorderColor
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  cGColor = [v2 CGColor];

  return cGColor;
}

- (ETColorWheelView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = ETColorWheelView;
  v3 = [(ETColorWheelView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (SetupSpecValuesIfNeeded_onceToken_0 != -1)
    {
      [ETColorGradientView initWithFrame:];
    }

    [(ETColorWheelView *)v3 bounds];
    v8 = [[ETColorGradientView alloc] initWithFrame:v4, v5, v6, v7];
    gradientView = v3->_gradientView;
    v3->_gradientView = v8;

    [(ETColorWheelView *)v3 addSubview:v3->_gradientView];
    [(ETColorWheelView *)v3 colorWheelRadius];
    [(ETColorWheelView *)v3 gradientWidth];
    UIRectCenteredIntegralRect();
    [(DTSColorWheel *)v3 createDoneButtonWithFrame:?];
    doneButton = [(DTSColorWheel *)v3 doneButton];
    titleLabel = [doneButton titleLabel];
    v12 = [MEMORY[0x277D74300] systemFontOfSize:13.5];
    [titleLabel setFont:v12];

    [(ETColorWheelView *)v3 setHidden:1];
    [(ETColorWheelView *)v3 hideDoneButton];
  }

  return v3;
}

- (id)pickerViewHighlightedColor
{
  v2 = MEMORY[0x277D75348];
  originalRotation = self->_originalRotation;
  [(DTSColorWheel *)self pickerRotation];
  v5 = HueFromRadians(originalRotation - v4);

  return [v2 colorWithHue:v5 saturation:1.0 brightness:1.0 alpha:1.0];
}

- (void)hideDoneButton
{
  doneButton = [(DTSColorWheel *)self doneButton];
  [doneButton setAlpha:0.0];
  CGAffineTransformMakeScale(&v3, 0.7, 0.7);
  [doneButton setTransform:&v3];
}

- (void)showColorWheelFromPaletteCircle:(id)circle rotation:(double)rotation
{
  v17 = 0.0;
  circleCopy = circle;
  backgroundColor = [circleCopy backgroundColor];
  [backgroundColor getHue:&v17 saturation:0 brightness:0 alpha:0];

  [(DTSColorWheel *)self setHueRotation:RadiansFromHue(v17)];
  [(DTSColorWheel *)self hueRotation];
  v9 = v8 + rotation;
  self->_originalRotation = v9;
  CGAffineTransformMakeRotation(&v16, v9);
  gradientView = self->_gradientView;
  v15 = v16;
  [(ETColorGradientView *)gradientView setTransform:&v15];
  [(ETColorWheelView *)self setHidden:0];
  [(ETColorWheelView *)self addPickerCircleForPaletteCircle:circleCopy];

  [(ETColorWheelView *)self showDoneButtonAnimated];
  v11 = self->_gradientView;
  [(DTSColorWheel *)self hueRotation];
  [(ETColorGradientView *)v11 prepareToAnimateColorWheelWithRotation:-v12];
  v13 = self->_gradientView;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__ETColorWheelView_showColorWheelFromPaletteCircle_rotation___block_invoke;
  v14[3] = &unk_278F79ED0;
  v14[4] = self;
  [(ETColorGradientView *)v13 revealColorWheelWithCompletion:v14];
}

- (void)showDoneButtonAnimated
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__ETColorWheelView_showDoneButtonAnimated__block_invoke;
  v2[3] = &unk_278F79ED0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.2];
}

void __42__ETColorWheelView_showDoneButtonAnimated__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) doneButton];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
  [v1 setAlpha:1.0];
}

- (void)hideDoneButtonAnimated
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__ETColorWheelView_hideDoneButtonAnimated__block_invoke;
  v2[3] = &unk_278F79ED0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.2];
}

- (void)addPickerCircleForPaletteCircle:(id)circle
{
  circleCopy = circle;
  [(ETColorWheelView *)self pickerDiameter];
  v6 = v5;
  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v6, v6}];
  layer = [v21 layer];
  [layer setCornerRadius:v6 * 0.5];

  layer2 = [v21 layer];
  v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  [layer2 setBorderColor:{objc_msgSend(v9, "CGColor")}];

  layer3 = [v21 layer];
  [layer3 setBorderWidth:1.0];

  [(DTSColorWheel *)self setPickerCircle:v21];
  [(ETColorWheelView *)self addSubview:v21];
  [circleCopy center];
  v12 = v11;
  v14 = v13;
  superview = [circleCopy superview];

  [(ETColorWheelView *)self convertPoint:superview fromView:v12, v14];
  v17 = v16;
  v19 = v18;

  [(DTSColorWheel *)self updatePickerPositionForPoint:v17, v19];
  RoundViewOriginToViewScale(v21);
  [(DTSColorWheel *)self pickerRotation];
  self->_originalPickerRotation = v20;
}

- (void)beganTouches:(id)touches
{
  self->_handlingTouches = 1;
  v3.receiver = self;
  v3.super_class = ETColorWheelView;
  [(DTSColorWheel *)&v3 beganTouches:touches];
}

- (void)finishedTouches
{
  v3.receiver = self;
  v3.super_class = ETColorWheelView;
  [(DTSColorWheel *)&v3 finishedTouches];
  self->_handlingTouches = 0;
}

- (BOOL)pickerShouldDismissClockwise
{
    ;
  }

  v4 = fmod(i, 6.28318531);
  if (i <= 6.28318531)
  {
    v4 = i;
  }

  v5 = 6.28318531 - v4;
  [(DTSColorWheel *)self pickerRotation];
    ;
  }

  v8 = fmod(j, 6.28318531);
  if (j <= 6.28318531)
  {
    v8 = j;
  }

  return v8 > 3.14159265;
}

- (double)colorWheelDismissalRotation
{
  originalPickerRotation = self->_originalPickerRotation;
  [(DTSColorWheel *)self pickerRotation];
  v5 = originalPickerRotation - v4;
  pickerShouldDismissClockwise = [(ETColorWheelView *)self pickerShouldDismissClockwise];
  if (pickerShouldDismissClockwise && v5 < 0.0)
  {
    do
    {
      v5 = v5 + 6.28318531;
    }

    while (v5 < 0.0);
  }

  else
  {
    v7 = v5 <= 0.0 || pickerShouldDismissClockwise;
    if ((v7 & 1) == 0)
    {
      if (v5 < 0.0)
      {
        do
        {
          v5 = v5 + 6.28318531;
        }

        while (v5 < 0.0);
      }

      else
      {
        return fmod(v5, 6.28318531) + -6.28318531;
      }
    }
  }

  return v5;
}

- (void)hideColorWheelPickingColor:(BOOL)color
{
  colorCopy = color;
  pickerCircle = [(DTSColorWheel *)self pickerCircle];
  v6 = pickerCircle;
  if (colorCopy)
  {
    backgroundColor = [pickerCircle backgroundColor];
  }

  else
  {
    backgroundColor = 0;
  }

  [(ETColorWheelView *)self resignFirstResponder];
  delegate = [(DTSColorWheel *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DTSColorWheel *)self delegate];
    [delegate2 colorWheel:self willPickColor:backgroundColor];
  }

  gradientView = self->_gradientView;
  [(DTSColorWheel *)self hueRotation];
  [(ETColorGradientView *)gradientView prepareToAnimateColorWheelWithRotation:-v12];
  [(ETColorWheelView *)self hideDoneButtonAnimated];
  [(ETColorWheelView *)self animatePickerToOriginalPosition];
  v13 = self->_gradientView;
  [(ETColorWheelView *)self colorWheelDismissalRotation];
  v15 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__ETColorWheelView_hideColorWheelPickingColor___block_invoke;
  v18[3] = &unk_278F79F60;
  v18[4] = self;
  v19 = v6;
  v20 = backgroundColor;
  v16 = backgroundColor;
  v17 = v6;
  [(ETColorGradientView *)v13 hideColorWheelWithRotation:v18 completion:v15];
}

void __47__ETColorWheelView_hideColorWheelPickingColor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = [*(a1 + 40) layer];
  [v2 removeAllAnimations];

  [*(a1 + 40) removeFromSuperview];
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 colorWheel:*(a1 + 32) didPickColor:*(a1 + 48)];
  }
}

- (void)animatePickerToOriginalPosition
{
  [(ETColorWheelView *)self bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidY = CGRectGetMidY(v27);
  [(ETColorWheelView *)self colorWheelRadius];
  v10 = v9;
  [(ETColorWheelView *)self colorWheelRadius];
  v12 = v10 + v11 * -0.5;
  Mutable = CGPathCreateMutable();
  pickerShouldDismissClockwise = [(ETColorWheelView *)self pickerShouldDismissClockwise];
  [(DTSColorWheel *)self pickerRotation];
  CGPathAddArc(Mutable, 0, MidX, MidY, v12, v15, self->_originalPickerRotation, !pickerShouldDismissClockwise);
  pickerCircle = [(DTSColorWheel *)self pickerCircle];
  v17 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position"];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v17 setTimingFunction:v18];

  [v17 setDuration:0.275];
  [v17 setPath:Mutable];
  [v17 setFillMode:*MEMORY[0x277CDA238]];
  [v17 setRemovedOnCompletion:0];
  layer = [pickerCircle layer];
  [layer addAnimation:v17 forKey:@"position"];

  CFRelease(Mutable);
  v20 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__ETColorWheelView_animatePickerToOriginalPosition__block_invoke;
  v24[3] = &unk_278F79ED0;
  v25 = pickerCircle;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__ETColorWheelView_animatePickerToOriginalPosition__block_invoke_2;
  v22[3] = &unk_278F7A000;
  v23 = v25;
  v21 = v25;
  [v20 animateWithDuration:v24 animations:v22 completion:0.275];
}

void __51__ETColorWheelView_animatePickerToOriginalPosition__block_invoke(uint64_t a1)
{
  +[ETPaletteCircleView selectionMarkerDiameter];
  v3 = v2;
  +[ETColorWheelView pickerDiameter];
  v4 = *(a1 + 32);
  CGAffineTransformMakeScale(&v8, v3 / v5, v3 / v5);
  [v4 setTransform:&v8];
  v6 = *(a1 + 32);
  v7 = +[ETPaletteCircleView selectionMarkerColor];
  [v6 setBackgroundColor:v7];
}

void __51__ETColorWheelView_animatePickerToOriginalPosition__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setBorderWidth:0.0];
}

@end