@interface CPUIFocusEffectView
+ (unint64_t)focusEffectStyleVariantForTraitCollection:(id)a3;
- (CPUIFocusEffectView)initWithCoder:(id)a3;
- (CPUIFocusEffectView)initWithCornerRadius:(double)a3 strokeWidth:(double)a4;
- (CPUIFocusEffectView)initWithFrame:(CGRect)a3;
- (CPUIFocusEffectView)initWithImage:(id)a3;
- (void)layoutSubviews;
- (void)setEffectMask:(id)a3;
- (void)updateAppearance;
- (void)updateEffectWithCornerRadius:(double)a3;
- (void)updateEffectWithCornerRadius:(double)a3 cornerCurve:(id)a4;
- (void)updateEffectWithCornerRadius:(double)a3 strokeWidth:(double)a4;
- (void)updateEffectWithImage:(id)a3;
- (void)updateVariant;
- (void)updateWithStyleVariant:(unint64_t)a3 isPressed:(BOOL)a4;
@end

@implementation CPUIFocusEffectView

- (void)setEffectMask:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CPUIFocusEffectView_effectMask);
  *(&self->super.super.super.isa + OBJC_IVAR___CPUIFocusEffectView_effectMask) = a3;
  v5 = a3;
  v6 = self;
  [v4 removeFromSuperview];
  [(CPUIFocusEffectView *)v6 updateAppearance];
}

+ (unint64_t)focusEffectStyleVariantForTraitCollection:(id)a3
{
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType();
  v4 = a3;
  UITraitCollection.subscript.getter();

  return v6 != 1;
}

- (CPUIFocusEffectView)initWithImage:(id)a3
{
  v4 = a3;
  v5 = [v4 imageWithRenderingMode_];
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v7 = [(CPUIFocusEffectView *)self initWithEffectMask:v6];
  return v7;
}

- (CPUIFocusEffectView)initWithCornerRadius:(double)a3 strokeWidth:(double)a4
{
  v5 = specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(a3, a4);
  v6 = [(CPUIFocusEffectView *)self initWithEffectMask:v5];

  return v6;
}

- (CPUIFocusEffectView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CPUIFocusEffectView__isPressed) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CPUIFocusEffectView;
  v2 = self;
  [(CPUIFocusEffectView *)&v5 layoutSubviews];
  v3 = [(CPUIFocusEffectView *)v2 effectMask:v5.receiver];
  [(CPUIFocusEffectView *)v2 bounds];
  [(UIView *)v3 setFrame:?];

  v4 = [(CPUIFocusEffectView *)v2 materialView];
  [(CPUIFocusEffectView *)v2 bounds];
  [(UIVisualEffectView *)v4 setFrame:?];
}

- (void)updateWithStyleVariant:(unint64_t)a3 isPressed:(BOOL)a4
{
  v6 = self;
  CPUIFocusEffectView.update(with:isPressed:)(a3, a4);
}

- (void)updateEffectWithImage:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 imageWithRenderingMode_];
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  [(CPUIFocusEffectView *)v7 setEffectMask:v6];
}

- (void)updateEffectWithCornerRadius:(double)a3 strokeWidth:(double)a4
{
  v7 = self;
  v6 = specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(a3, a4);
  [(CPUIFocusEffectView *)v7 setEffectMask:v6];
}

- (void)updateEffectWithCornerRadius:(double)a3
{
  v4 = self;
  CPUIFocusEffectView.updateEffect(withCornerRadius:)(a3);
}

- (void)updateEffectWithCornerRadius:(double)a3 cornerCurve:(id)a4
{
  v7 = type metadata accessor for CPUIFocusEffectView.SolidRoundedRectangleView();
  v13.receiver = objc_allocWithZone(v7);
  v13.super_class = v7;
  v8 = a4;
  v9 = self;
  v10 = [(CPUIFocusEffectView *)&v13 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v11 = [(CPUIFocusEffectView *)v10 layer:v13.receiver];
  [v11 setCornerRadius_];

  v12 = [(CPUIFocusEffectView *)v10 layer];
  [v12 setCornerCurve_];

  [(CPUIFocusEffectView *)v9 setEffectMask:v10];
}

- (void)updateVariant
{
  v2 = self;
  CPUIFocusEffectView.updateVariant()();
}

- (void)updateAppearance
{
  v2 = self;
  CPUIFocusEffectView.updateAppearance()();
}

- (CPUIFocusEffectView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end