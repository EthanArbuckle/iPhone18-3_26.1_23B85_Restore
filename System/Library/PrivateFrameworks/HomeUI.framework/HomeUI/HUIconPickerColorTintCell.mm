@interface HUIconPickerColorTintCell
- (HUIconPickerColorTintCell)initWithFrame:(CGRect)a3;
- (UIColor)color;
- (void)setColor:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation HUIconPickerColorTintCell

- (HUIconPickerColorTintCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = HUIconPickerColorTintCell;
  v3 = [(HUIconPickerColorTintCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [HUColorSwatchView alloc];
    [(HUIconPickerColorTintCell *)v3 bounds];
    v5 = [(HUColorSwatchView *)v4 initWithFrame:?];
    [(HUIconPickerColorTintCell *)v3 setColorSwatchView:v5];

    v6 = [(HUIconPickerColorTintCell *)v3 colorSwatchView];
    [v6 setLabelHidden:1];

    v7 = [(HUIconPickerColorTintCell *)v3 contentView];
    v8 = [(HUIconPickerColorTintCell *)v3 colorSwatchView];
    [v7 addSubview:v8];
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HUIconPickerColorTintCell *)self colorSwatchView];
  [v4 setSelectionState:v3];
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v5 = [(HUIconPickerColorTintCell *)self colorSwatchView];
  [v5 setColor:v4];
}

- (UIColor)color
{
  v2 = [(HUIconPickerColorTintCell *)self colorSwatchView];
  v3 = [v2 color];

  return v3;
}

@end