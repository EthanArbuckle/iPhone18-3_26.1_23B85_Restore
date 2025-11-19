@interface RoundedTitledButton
- (BOOL)isEnabled;
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)a3;
- (void)didTapButton:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
@end

@implementation RoundedTitledButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_24E2B8128(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2B82D4();
}

- (double)_cornerRadius
{
  v2 = self;
  sub_24E2B83E0();
  v4 = v3;

  return v4;
}

- (void)_setCornerRadius:(double)a3
{
  v4 = self;
  sub_24E2B8058(a3);
}

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_24E2B80A4();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_24E2B80DC(a3);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_24E2B8694(a4, width, height);
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
  v2 = self;
  sub_24E2B8804();
}

@end