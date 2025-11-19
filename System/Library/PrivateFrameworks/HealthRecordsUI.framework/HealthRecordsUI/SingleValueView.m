@interface SingleValueView
- (_TtC15HealthRecordsUI15SingleValueView)initWithCoder:(id)a3;
- (void)didMoveToSuperview;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SingleValueView

- (_TtC15HealthRecordsUI15SingleValueView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 93) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_activeConstraints) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView) = 0;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SingleValueView();
  v2 = v3.receiver;
  [(SingleValueView *)&v3 didMoveToSuperview];
  sub_1D11C2EA8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D11C23C8(a3);
}

@end