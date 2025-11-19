@interface HUSimpleSliderControlView
- (BOOL)isDisabled;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HUControlViewDelegate)delegate;
- (HUSimpleSliderControlView)initWithFrame:(CGRect)a3;
- (float)maxValue;
- (float)minValue;
- (id)value;
- (void)_sliderTouchDown:(id)a3;
- (void)_sliderTouchUp:(id)a3;
- (void)_sliderValueChanged:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setMaxValue:(float)a3;
- (void)setMinValue:(float)a3;
- (void)setValue:(id)a3;
@end

@implementation HUSimpleSliderControlView

- (HUSimpleSliderControlView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v2 = [(HUSimpleSliderControlView *)self slider];
  [v2 minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(float)a3
{
  v5 = [(HUSimpleSliderControlView *)self slider];
  *&v4 = a3;
  [v5 setMinimumValue:v4];
}

- (float)maxValue
{
  v2 = [(HUSimpleSliderControlView *)self slider];
  [v2 maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(float)a3
{
  v5 = [(HUSimpleSliderControlView *)self slider];
  *&v4 = a3;
  [v5 setMaximumValue:v4];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUSimpleSliderControlView *)self slider];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HUSimpleSliderControlView *)self slider];
  [v5 sizeThatFits:{width, height}];
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
  v3 = [(HUSimpleSliderControlView *)self slider];
  [v3 value];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v9 = [(HUSimpleSliderControlView *)self slider];
  [v4 floatValue];
  v6 = v5;

  v7 = [MEMORY[0x277D75D18] _isInAnimationBlock];
  LODWORD(v8) = v6;
  [v9 setValue:v7 animated:v8];
}

- (BOOL)isDisabled
{
  v2 = [(HUSimpleSliderControlView *)self slider];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUSimpleSliderControlView *)self slider];
  [v4 setEnabled:!v3];
}

- (void)_sliderTouchDown:(id)a3
{
  v4 = [(HUSimpleSliderControlView *)self delegate];
  [v4 controlViewDidBeginUserInteraction:self];
}

- (void)_sliderTouchUp:(id)a3
{
  v4 = [(HUSimpleSliderControlView *)self delegate];
  [v4 controlViewDidEndUserInteraction:self];
}

- (void)_sliderValueChanged:(id)a3
{
  v5 = [(HUSimpleSliderControlView *)self delegate];
  v4 = [(HUSimpleSliderControlView *)self value];
  [v5 controlView:self valueDidChange:v4];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end