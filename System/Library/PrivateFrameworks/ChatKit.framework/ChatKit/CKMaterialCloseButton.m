@interface CKMaterialCloseButton
+ (id)closeButton;
- (BOOL)isEnabled;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIButtonConfiguration)configuration;
- (UIColor)materialColor;
- (UIColor)symbolColor;
- (UIImage)symbolImage;
- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)materialBackgroundView;
- (double)cornerRadius;
- (double)padding;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setMaterialBackgroundView:(id)a3;
- (void)setMaterialColor:(id)a3;
- (void)setPadding:(double)a3;
- (void)setSymbolColor:(id)a3;
- (void)setSymbolImage:(id)a3;
@end

@implementation CKMaterialCloseButton

+ (id)closeButton
{
  v2 = _sSo21CKMaterialCloseButtonC7ChatKitE5closeAByFZ_0();

  return v2;
}

- (_TtC7ChatKit32CKUnborderedBackdropMaterialView)materialBackgroundView
{
  v2 = self;
  v3 = sub_1908EE27C();

  return v3;
}

- (void)setMaterialBackgroundView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView) = a3;
  v3 = a3;
}

- (UIImage)symbolImage
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSymbolImage:(id)a3
{
  v5 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_1908EE56C(v6);
}

- (UIColor)symbolColor
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_symbolColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSymbolColor:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1908EFE7C(v5);
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  CKMaterialCloseButton.cornerRadius.setter(a3);
}

- (UIColor)materialColor
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_materialColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setMaterialColor:(id)a3
{
  v4 = a3;
  v5 = self;
  CKMaterialCloseButton.materialColor.setter(v4);
}

- (double)padding
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_padding;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setPadding:(double)a3
{
  v5 = OBJC_IVAR___CKMaterialCloseButton_padding;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  if (v6 != a3)
  {
    [(CKMaterialCloseButton *)self setNeedsLayout];
  }
}

- (UIButtonConfiguration)configuration
{
  v4.receiver = self;
  v4.super_class = CKMaterialCloseButton;
  v2 = [(CKMaterialCloseButton *)&v4 configuration];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKMaterialCloseButton;
  v4 = a3;
  v5 = self;
  [(CKMaterialCloseButton *)&v6 setConfiguration:v4];
  sub_1908EEF64();
}

- (void)layoutSubviews
{
  v2 = self;
  CKMaterialCloseButton.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  CKMaterialCloseButton.isEnabled.setter(a3);
}

@end