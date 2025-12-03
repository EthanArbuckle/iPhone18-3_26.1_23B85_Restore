@interface UpsellGridView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameStoreKit14UpsellGridView)initWithFrame:(CGRect)frame;
- (id)impressionItems;
- (void)layoutSubviews;
@end

@implementation UpsellGridView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UpsellGridView *)&v3 layoutSubviews];
  sub_24F740180();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  selfCopy = self;
  [(UpsellGridView *)selfCopy bounds];
  sub_24F740044(v13, v7);
  swift_beginAccess();

  sub_24E8E966C(v8);

  v9 = 0.0;
  v10 = width;
  v11 = height;
  v12 = height;
  result.var3 = v9;
  result.var2 = v12;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (id)impressionItems
{
  sub_24E69A5C4(0, &unk_27F24E880);

  v2 = sub_24F92B588();

  return v2;
}

- (_TtC12GameStoreKit14UpsellGridView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end