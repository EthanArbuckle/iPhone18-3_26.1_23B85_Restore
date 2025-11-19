@interface DetailView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)didTapWithAccessoryView:(id)a3;
- (void)layoutSubviews;
- (void)wasTapped;
@end

@implementation DetailView

- (void)wasTapped
{
  v2 = self;
  sub_24E159D40();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E159DF0();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_24E15A19C(a4, width);
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

- (void)didTapWithAccessoryView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E15A520(v4);
}

@end