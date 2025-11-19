@interface PlayerProfileInfoBarView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (NSArray)accessibilityInfoItemPairs;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlayerProfileInfoBarView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_24E15E02C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_24E15FA4C(width, a4, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E15E524();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E15EEF0(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E15F0B0(v4);
}

- (NSArray)accessibilityInfoItemPairs
{
  v2 = self;
  v3 = sub_24E15F66C();

  if (v3)
  {
    v4 = sub_24E347EE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end