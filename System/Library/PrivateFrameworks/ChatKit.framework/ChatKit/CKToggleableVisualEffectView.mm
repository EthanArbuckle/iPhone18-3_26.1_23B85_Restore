@interface CKToggleableVisualEffectView
- (BOOL)isEffectActive;
- (CKToggleableVisualEffectView)initWithCoder:(id)a3;
- (CKToggleableVisualEffectView)initWithEffect:(id)a3;
- (void)setIsEffectActive:(BOOL)a3;
@end

@implementation CKToggleableVisualEffectView

- (BOOL)isEffectActive
{
  v3 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setIsEffectActive:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  v6 = 0;
  *(&self->super.super.super.super.isa + v5) = v3;
  if (v3)
  {
    v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect);
  }

  [(CKToggleableVisualEffectView *)self setEffect:v6];
}

- (CKToggleableVisualEffectView)initWithEffect:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect) = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ToggleableVisualEffectView();
  return [(CKToggleableVisualEffectView *)&v5 initWithEffect:a3];
}

- (CKToggleableVisualEffectView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive) = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end