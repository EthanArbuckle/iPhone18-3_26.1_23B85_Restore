@interface IconTextListView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC15HealthRecordsUI16IconTextListView)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI16IconTextListView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation IconTextListView

- (_TtC15HealthRecordsUI16IconTextListView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items) = MEMORY[0x1E69E7CC0];
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D12E5D3C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1D12E639C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D12E6494(change);
}

- (_TtC15HealthRecordsUI16IconTextListView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end