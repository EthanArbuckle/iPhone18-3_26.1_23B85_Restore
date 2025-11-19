@interface FocusableTitledAppIconView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation FocusableTitledAppIconView

- (void)prepareForReuse
{
  v2 = self;
  sub_24E28725C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E31F09C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_24E31F158(a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

@end