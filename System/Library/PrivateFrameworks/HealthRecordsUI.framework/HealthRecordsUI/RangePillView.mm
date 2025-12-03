@interface RangePillView
- (CGRect)bounds;
- (_TtC15HealthRecordsUI13RangePillView)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
@end

@implementation RangePillView

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RangePillView();
  [(RangePillView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RangePillView();
  v7 = v9.receiver;
  [(RangePillView *)&v9 setBounds:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
  if (v8)
  {

    v8([v7 bounds]);

    sub_1D102CC60(v8);
  }

  else
  {
  }
}

- (_TtC15HealthRecordsUI13RangePillView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end