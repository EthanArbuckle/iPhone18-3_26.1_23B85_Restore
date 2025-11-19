@interface IconTextListView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC15HealthRecordsUI16IconTextListView)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI16IconTextListView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation IconTextListView

- (_TtC15HealthRecordsUI16IconTextListView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items) = MEMORY[0x1E69E7CC0];
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D12E5D3C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1D12E639C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D12E6494(a3);
}

- (_TtC15HealthRecordsUI16IconTextListView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end