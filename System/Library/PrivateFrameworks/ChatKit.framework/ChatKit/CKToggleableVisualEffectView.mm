@interface CKToggleableVisualEffectView
- (BOOL)isEffectActive;
- (CKToggleableVisualEffectView)initWithCoder:(id)coder;
- (CKToggleableVisualEffectView)initWithEffect:(id)effect;
- (void)setIsEffectActive:(BOOL)active;
@end

@implementation CKToggleableVisualEffectView

- (BOOL)isEffectActive
{
  v3 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setIsEffectActive:(BOOL)active
{
  activeCopy = active;
  v5 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  v6 = 0;
  *(&self->super.super.super.super.isa + v5) = activeCopy;
  if (activeCopy)
  {
    v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect);
  }

  [(CKToggleableVisualEffectView *)self setEffect:v6];
}

- (CKToggleableVisualEffectView)initWithEffect:(id)effect
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect) = effect;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ToggleableVisualEffectView();
  return [(CKToggleableVisualEffectView *)&v5 initWithEffect:effect];
}

- (CKToggleableVisualEffectView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive) = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end