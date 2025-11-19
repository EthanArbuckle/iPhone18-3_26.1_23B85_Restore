@interface SFEditableEffectView
- (SFEditableEffectView)initWithCoder:(id)a3;
- (SFEditableEffectView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setEffect:(id)a3;
@end

@implementation SFEditableEffectView

- (SFEditableEffectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR___SFEditableEffectView_effect;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(SFEditableEffect) init];
  *(&self->super.super.super.isa + OBJC_IVAR___SFEditableEffectView_effectViews) = MEMORY[0x1E69E7CC0];
  v11.receiver = self;
  v11.super_class = SFEditableEffectView;
  v9 = [(SFEditableEffectView *)&v11 initWithFrame:x, y, width, height];
  [(SFEditableEffectView *)v9 setClipsToBounds:1];
  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  SFEditableEffectView.layoutSubviews()();
}

- (void)setEffect:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_18BAA5164(a3);
}

- (SFEditableEffectView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___SFEditableEffectView_effect;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(SFEditableEffect) init];
  *(&self->super.super.super.isa + OBJC_IVAR___SFEditableEffectView_effectViews) = MEMORY[0x1E69E7CC0];
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

@end