@interface DetailView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)didTapWithAccessoryView:(id)view;
- (void)layoutSubviews;
- (void)wasTapped;
@end

@implementation DetailView

- (void)wasTapped
{
  selfCopy = self;
  sub_24E159D40();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E159DF0();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_24E15A19C(in, width);
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

- (void)didTapWithAccessoryView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E15A520(viewCopy);
}

@end