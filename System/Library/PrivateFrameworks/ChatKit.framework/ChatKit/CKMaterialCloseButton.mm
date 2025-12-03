@interface CKMaterialCloseButton
+ (id)closeButton;
- (BOOL)isEnabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIButtonConfiguration)configuration;
- (UIColor)materialColor;
- (UIColor)symbolColor;
- (UIImage)symbolImage;
- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)materialBackgroundView;
- (double)cornerRadius;
- (double)padding;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setCornerRadius:(double)radius;
- (void)setEnabled:(BOOL)enabled;
- (void)setMaterialBackgroundView:(id)view;
- (void)setMaterialColor:(id)color;
- (void)setPadding:(double)padding;
- (void)setSymbolColor:(id)color;
- (void)setSymbolImage:(id)image;
@end

@implementation CKMaterialCloseButton

+ (id)closeButton
{
  v2 = _sSo21CKMaterialCloseButtonC7ChatKitE5closeAByFZ_0();

  return v2;
}

- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)materialBackgroundView
{
  selfCopy = self;
  v3 = sub_1908EE27C();

  return v3;
}

- (void)setMaterialBackgroundView:(id)view
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView) = view;
  viewCopy = view;
}

- (UIImage)symbolImage
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSymbolImage:(id)image
{
  v5 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = image;
  imageCopy = image;
  selfCopy = self;
  sub_1908EE56C(v6);
}

- (UIColor)symbolColor
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_symbolColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSymbolColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1908EFE7C(colorCopy);
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  CKMaterialCloseButton.cornerRadius.setter(radius);
}

- (UIColor)materialColor
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_materialColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setMaterialColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  CKMaterialCloseButton.materialColor.setter(colorCopy);
}

- (double)padding
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_padding;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setPadding:(double)padding
{
  v5 = OBJC_IVAR___CKMaterialCloseButton_padding;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = padding;
  if (v6 != padding)
  {
    [(CKMaterialCloseButton *)self setNeedsLayout];
  }
}

- (UIButtonConfiguration)configuration
{
  v4.receiver = self;
  v4.super_class = CKMaterialCloseButton;
  configuration = [(CKMaterialCloseButton *)&v4 configuration];

  return configuration;
}

- (void)setConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = CKMaterialCloseButton;
  configurationCopy = configuration;
  selfCopy = self;
  [(CKMaterialCloseButton *)&v6 setConfiguration:configurationCopy];
  sub_1908EEF64();
}

- (void)layoutSubviews
{
  selfCopy = self;
  CKMaterialCloseButton.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = CKMaterialCloseButton.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = CKMaterialCloseButton;
  return [(CKMaterialCloseButton *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  CKMaterialCloseButton.isEnabled.setter(enabled);
}

@end