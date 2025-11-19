@interface HUBlurGroupingEffectView
- (HUBlurGroupingEffectView)initWithCoder:(id)a3;
- (HUBlurGroupingEffectView)initWithFrame:(CGRect)a3;
- (void)backgroundEffectAddCaptureDependent:(id)a3 forBackgroundEffectIdentifier:(id)a4;
- (void)backgroundEffectRemoveCaptureDependent:(id)a3 forBackgroundEffectIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation HUBlurGroupingEffectView

- (void)layoutSubviews
{
  v2 = self;
  sub_20CF313DC();
}

- (void)backgroundEffectAddCaptureDependent:(id)a3 forBackgroundEffectIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CF31598(v6, v7);
}

- (void)backgroundEffectRemoveCaptureDependent:(id)a3 forBackgroundEffectIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CF31E64(v6);
}

- (HUBlurGroupingEffectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews) = MEMORY[0x277D84F98];
  v8.receiver = self;
  v8.super_class = type metadata accessor for BlurGroupingEffectView();
  return [(HUBlurGroupingEffectView *)&v8 initWithFrame:x, y, width, height];
}

- (HUBlurGroupingEffectView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews) = MEMORY[0x277D84F98];
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlurGroupingEffectView();
  v4 = a3;
  v5 = [(HUBlurGroupingEffectView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end