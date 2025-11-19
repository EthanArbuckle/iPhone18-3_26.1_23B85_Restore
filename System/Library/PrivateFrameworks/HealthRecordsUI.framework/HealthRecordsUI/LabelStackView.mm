@interface LabelStackView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC15HealthRecordsUI14LabelStackView)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI14LabelStackView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation LabelStackView

- (_TtC15HealthRecordsUI14LabelStackView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_interItemSpacing) = 0x4010000000000000;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D1214EB4();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1D12152B4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC15HealthRecordsUI14LabelStackView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end