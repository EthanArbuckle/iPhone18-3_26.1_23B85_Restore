@interface ContinuePlayingEmptyStateView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)didTapButton:(id)a3;
- (void)layoutSubviews;
@end

@implementation ContinuePlayingEmptyStateView

- (void)layoutSubviews
{
  v2 = self;
  sub_24E2FDDE0();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_24E2FECB8(a4);
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

- (void)didTapButton:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_24E2FEDE8();

  sub_24DF8C95C(v6, &qword_27F1E0370);
}

@end