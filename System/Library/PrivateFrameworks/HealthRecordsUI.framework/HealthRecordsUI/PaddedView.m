@interface PaddedView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC15HealthRecordsUI10PaddedView)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI10PaddedView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PaddedView

- (_TtC15HealthRecordsUI10PaddedView)initWithCoder:(id)a3
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI10PaddedView_contentView);
  v6 = self;
  [v5 sizeThatFits_];
  v8 = v7;
  v10 = v9;
  v11 = *(&v6->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI10PaddedView_bottomPadding);

  v12 = v10 + v11;
  v13 = v8;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PaddedView();
  v2 = v12.receiver;
  [(PaddedView *)&v12 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9 - *&v2[OBJC_IVAR____TtC15HealthRecordsUI10PaddedView_bottomPadding];
  v11 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI10PaddedView_contentView];
  [v11 setFrame_];
}

- (_TtC15HealthRecordsUI10PaddedView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end