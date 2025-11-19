@interface RecordTitleWithSubtitleView
- (_TtC15HealthRecordsUI27RecordTitleWithSubtitleView)initWithCoder:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RecordTitleWithSubtitleView

- (_TtC15HealthRecordsUI27RecordTitleWithSubtitleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_needsToLayoutFirstHeader) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___recordsHeadingLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_customConstraints) = MEMORY[0x1E69E7CC0];
  v3 = self + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D12BB6D8(a3);
}

@end