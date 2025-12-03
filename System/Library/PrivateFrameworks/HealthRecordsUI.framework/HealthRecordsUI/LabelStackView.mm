@interface LabelStackView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC15HealthRecordsUI14LabelStackView)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI14LabelStackView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LabelStackView

- (_TtC15HealthRecordsUI14LabelStackView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_interItemSpacing) = 0x4010000000000000;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D1214EB4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1D12152B4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC15HealthRecordsUI14LabelStackView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end