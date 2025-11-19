@interface CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView
- (CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView

- (CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView;
  v3 = [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    contentView = v3->_contentView;
    v3->_contentView = v5;

    [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v3 addSubview:v3->_contentView];
    v7 = [(UIView *)v3->_contentView layer];
    [v7 setCompositingFilter:*MEMORY[0x1E6979C58]];

    v8 = [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v3 layer];
    [v8 setAllowsGroupBlending:0];

    v9 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView;
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)&v12 layoutSubviews];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)self contentView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end