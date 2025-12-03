@interface SFEditableEffectView
- (SFEditableEffectView)initWithCoder:(id)coder;
- (SFEditableEffectView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setEffect:(id)effect;
@end

@implementation SFEditableEffectView

- (SFEditableEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR___SFEditableEffectView_effect;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(SFEditableEffect) init];
  *(&self->super.super.super.isa + OBJC_IVAR___SFEditableEffectView_effectViews) = MEMORY[0x1E69E7CC0];
  v11.receiver = self;
  v11.super_class = SFEditableEffectView;
  height = [(SFEditableEffectView *)&v11 initWithFrame:x, y, width, height];
  [(SFEditableEffectView *)height setClipsToBounds:1];
  return height;
}

- (void)layoutSubviews
{
  selfCopy = self;
  SFEditableEffectView.layoutSubviews()();
}

- (void)setEffect:(id)effect
{
  effectCopy = effect;
  selfCopy = self;
  sub_18BAA5164(effect);
}

- (SFEditableEffectView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___SFEditableEffectView_effect;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(SFEditableEffect) init];
  *(&self->super.super.super.isa + OBJC_IVAR___SFEditableEffectView_effectViews) = MEMORY[0x1E69E7CC0];
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

@end