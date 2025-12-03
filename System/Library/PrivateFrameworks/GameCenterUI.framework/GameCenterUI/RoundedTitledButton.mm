@interface RoundedTitledButton
- (BOOL)isEnabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)radius;
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation RoundedTitledButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_24E2B8128(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_24E2B82D4();
}

- (double)_cornerRadius
{
  selfCopy = self;
  sub_24E2B83E0();
  v4 = v3;

  return v4;
}

- (void)_setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_24E2B8058(radius);
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_24E2B80A4();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_24E2B80DC(enabled);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_24E2B8694(in, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E2B8804();
}

@end