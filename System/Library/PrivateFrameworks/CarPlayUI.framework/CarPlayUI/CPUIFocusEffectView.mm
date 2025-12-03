@interface CPUIFocusEffectView
+ (unint64_t)focusEffectStyleVariantForTraitCollection:(id)collection;
- (CPUIFocusEffectView)initWithCoder:(id)coder;
- (CPUIFocusEffectView)initWithCornerRadius:(double)radius strokeWidth:(double)width;
- (CPUIFocusEffectView)initWithFrame:(CGRect)frame;
- (CPUIFocusEffectView)initWithImage:(id)image;
- (void)layoutSubviews;
- (void)setEffectMask:(id)mask;
- (void)updateAppearance;
- (void)updateEffectWithCornerRadius:(double)radius;
- (void)updateEffectWithCornerRadius:(double)radius cornerCurve:(id)curve;
- (void)updateEffectWithCornerRadius:(double)radius strokeWidth:(double)width;
- (void)updateEffectWithImage:(id)image;
- (void)updateVariant;
- (void)updateWithStyleVariant:(unint64_t)variant isPressed:(BOOL)pressed;
@end

@implementation CPUIFocusEffectView

- (void)setEffectMask:(id)mask
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CPUIFocusEffectView_effectMask);
  *(&self->super.super.super.isa + OBJC_IVAR___CPUIFocusEffectView_effectMask) = mask;
  maskCopy = mask;
  selfCopy = self;
  [v4 removeFromSuperview];
  [(CPUIFocusEffectView *)selfCopy updateAppearance];
}

+ (unint64_t)focusEffectStyleVariantForTraitCollection:(id)collection
{
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType();
  collectionCopy = collection;
  UITraitCollection.subscript.getter();

  return v6 != 1;
}

- (CPUIFocusEffectView)initWithImage:(id)image
{
  imageCopy = image;
  imageWithRenderingMode_ = [imageCopy imageWithRenderingMode_];
  initWithImage_ = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v7 = [(CPUIFocusEffectView *)self initWithEffectMask:initWithImage_];
  return v7;
}

- (CPUIFocusEffectView)initWithCornerRadius:(double)radius strokeWidth:(double)width
{
  v5 = specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(radius, width);
  v6 = [(CPUIFocusEffectView *)self initWithEffectMask:v5];

  return v6;
}

- (CPUIFocusEffectView)initWithCoder:(id)coder
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
  selfCopy = self;
  [(CPUIFocusEffectView *)&v5 layoutSubviews];
  v3 = [(CPUIFocusEffectView *)selfCopy effectMask:v5.receiver];
  [(CPUIFocusEffectView *)selfCopy bounds];
  [(UIView *)v3 setFrame:?];

  materialView = [(CPUIFocusEffectView *)selfCopy materialView];
  [(CPUIFocusEffectView *)selfCopy bounds];
  [(UIVisualEffectView *)materialView setFrame:?];
}

- (void)updateWithStyleVariant:(unint64_t)variant isPressed:(BOOL)pressed
{
  selfCopy = self;
  CPUIFocusEffectView.update(with:isPressed:)(variant, pressed);
}

- (void)updateEffectWithImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  imageWithRenderingMode_ = [imageCopy imageWithRenderingMode_];
  initWithImage_ = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  [(CPUIFocusEffectView *)selfCopy setEffectMask:initWithImage_];
}

- (void)updateEffectWithCornerRadius:(double)radius strokeWidth:(double)width
{
  selfCopy = self;
  v6 = specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(radius, width);
  [(CPUIFocusEffectView *)selfCopy setEffectMask:v6];
}

- (void)updateEffectWithCornerRadius:(double)radius
{
  selfCopy = self;
  CPUIFocusEffectView.updateEffect(withCornerRadius:)(radius);
}

- (void)updateEffectWithCornerRadius:(double)radius cornerCurve:(id)curve
{
  v7 = type metadata accessor for CPUIFocusEffectView.SolidRoundedRectangleView();
  v13.receiver = objc_allocWithZone(v7);
  v13.super_class = v7;
  curveCopy = curve;
  selfCopy = self;
  v10 = [(CPUIFocusEffectView *)&v13 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v11 = [(CPUIFocusEffectView *)v10 layer:v13.receiver];
  [v11 setCornerRadius_];

  layer = [(CPUIFocusEffectView *)v10 layer];
  [layer setCornerCurve_];

  [(CPUIFocusEffectView *)selfCopy setEffectMask:v10];
}

- (void)updateVariant
{
  selfCopy = self;
  CPUIFocusEffectView.updateVariant()();
}

- (void)updateAppearance
{
  selfCopy = self;
  CPUIFocusEffectView.updateAppearance()();
}

- (CPUIFocusEffectView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end