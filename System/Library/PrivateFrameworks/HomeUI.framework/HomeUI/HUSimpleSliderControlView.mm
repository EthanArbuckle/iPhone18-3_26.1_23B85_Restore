@interface HUSimpleSliderControlView
- (BOOL)isDisabled;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HUControlViewDelegate)delegate;
- (HUSimpleSliderControlView)initWithFrame:(CGRect)frame;
- (float)maxValue;
- (float)minValue;
- (id)value;
- (void)_sliderTouchDown:(id)down;
- (void)_sliderTouchUp:(id)up;
- (void)_sliderValueChanged:(id)changed;
- (void)setDisabled:(BOOL)disabled;
- (void)setMaxValue:(float)value;
- (void)setMinValue:(float)value;
- (void)setValue:(id)value;
@end

@implementation HUSimpleSliderControlView

- (HUSimpleSliderControlView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = HUSimpleSliderControlView;
  v7 = [(HUSimpleSliderControlView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75A30]) initWithFrame:{x, y, width, height}];
    slider = v7->_slider;
    v7->_slider = v8;

    [(UISlider *)v7->_slider setAutoresizingMask:18];
    [(UISlider *)v7->_slider addTarget:v7 action:sel__sliderTouchDown_ forControlEvents:1];
    [(UISlider *)v7->_slider addTarget:v7 action:sel__sliderValueChanged_ forControlEvents:4096];
    [(UISlider *)v7->_slider addTarget:v7 action:sel__sliderTouchUp_ forControlEvents:448];
    [(HUSimpleSliderControlView *)v7 addSubview:v7->_slider];
  }

  return v7;
}

- (float)minValue
{
  slider = [(HUSimpleSliderControlView *)self slider];
  [slider minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(float)value
{
  slider = [(HUSimpleSliderControlView *)self slider];
  *&v4 = value;
  [slider setMinimumValue:v4];
}

- (float)maxValue
{
  slider = [(HUSimpleSliderControlView *)self slider];
  [slider maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(float)value
{
  slider = [(HUSimpleSliderControlView *)self slider];
  *&v4 = value;
  [slider setMaximumValue:v4];
}

- (CGSize)intrinsicContentSize
{
  slider = [(HUSimpleSliderControlView *)self slider];
  [slider intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  slider = [(HUSimpleSliderControlView *)self slider];
  [slider sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  slider = [(HUSimpleSliderControlView *)self slider];
  [slider value];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  slider = [(HUSimpleSliderControlView *)self slider];
  [valueCopy floatValue];
  v6 = v5;

  _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
  LODWORD(v8) = v6;
  [slider setValue:_isInAnimationBlock animated:v8];
}

- (BOOL)isDisabled
{
  slider = [(HUSimpleSliderControlView *)self slider];
  isEnabled = [slider isEnabled];

  return isEnabled ^ 1;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  slider = [(HUSimpleSliderControlView *)self slider];
  [slider setEnabled:!disabledCopy];
}

- (void)_sliderTouchDown:(id)down
{
  delegate = [(HUSimpleSliderControlView *)self delegate];
  [delegate controlViewDidBeginUserInteraction:self];
}

- (void)_sliderTouchUp:(id)up
{
  delegate = [(HUSimpleSliderControlView *)self delegate];
  [delegate controlViewDidEndUserInteraction:self];
}

- (void)_sliderValueChanged:(id)changed
{
  delegate = [(HUSimpleSliderControlView *)self delegate];
  value = [(HUSimpleSliderControlView *)self value];
  [delegate controlView:self valueDidChange:value];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end