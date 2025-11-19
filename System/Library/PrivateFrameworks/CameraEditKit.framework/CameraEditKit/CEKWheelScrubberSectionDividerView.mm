@interface CEKWheelScrubberSectionDividerView
- (CEKWheelScrubberSectionDividerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CEKWheelScrubberSectionDividerView

- (CEKWheelScrubberSectionDividerView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CEKWheelScrubberSectionDividerView;
  v3 = [(CEKWheelScrubberSectionDividerView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v3->__separatorView;
    v3->__separatorView = v4;

    v6 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [(UIView *)v3->__separatorView setBackgroundColor:v6];

    v7 = [(UIView *)v3->__separatorView layer];
    [v7 setMasksToBounds:1];

    v8 = *MEMORY[0x1E69796E8];
    v9 = [(UIView *)v3->__separatorView layer];
    [v9 setCornerCurve:v8];

    v10 = [(UIView *)v3->__separatorView layer];
    [v10 setCornerRadius:2.0];

    [(CEKWheelScrubberSectionDividerView *)v3 addSubview:v3->__separatorView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CEKWheelScrubberSectionDividerView;
  [(CEKWheelScrubberSectionDividerView *)&v11 layoutSubviews];
  [(CEKWheelScrubberSectionDividerView *)self bounds];
  v5 = v4 <= v3;
  v6 = v4 * 0.5 + -2.0;
  v7 = v3 + -20.0;
  v8 = v3 * 0.5 + -2.0;
  v9 = v4 + -20.0;
  if (v5)
  {
    v8 = 10.0;
    v10 = v3 + -20.0;
  }

  else
  {
    v6 = 10.0;
    v10 = 4.0;
  }

  if (v5)
  {
    v9 = 4.0;
  }

  [(UIView *)self->__separatorView setFrame:v8, v6, v10, v9, -2.0, -20.0, v7];
}

@end