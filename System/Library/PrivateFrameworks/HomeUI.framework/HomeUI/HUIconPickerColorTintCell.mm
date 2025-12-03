@interface HUIconPickerColorTintCell
- (HUIconPickerColorTintCell)initWithFrame:(CGRect)frame;
- (UIColor)color;
- (void)setColor:(id)color;
- (void)setSelected:(BOOL)selected;
@end

@implementation HUIconPickerColorTintCell

- (HUIconPickerColorTintCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = HUIconPickerColorTintCell;
  v3 = [(HUIconPickerColorTintCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [HUColorSwatchView alloc];
    [(HUIconPickerColorTintCell *)v3 bounds];
    v5 = [(HUColorSwatchView *)v4 initWithFrame:?];
    [(HUIconPickerColorTintCell *)v3 setColorSwatchView:v5];

    colorSwatchView = [(HUIconPickerColorTintCell *)v3 colorSwatchView];
    [colorSwatchView setLabelHidden:1];

    contentView = [(HUIconPickerColorTintCell *)v3 contentView];
    colorSwatchView2 = [(HUIconPickerColorTintCell *)v3 colorSwatchView];
    [contentView addSubview:colorSwatchView2];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  colorSwatchView = [(HUIconPickerColorTintCell *)self colorSwatchView];
  [colorSwatchView setSelectionState:v3];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  colorSwatchView = [(HUIconPickerColorTintCell *)self colorSwatchView];
  [colorSwatchView setColor:colorCopy];
}

- (UIColor)color
{
  colorSwatchView = [(HUIconPickerColorTintCell *)self colorSwatchView];
  color = [colorSwatchView color];

  return color;
}

@end