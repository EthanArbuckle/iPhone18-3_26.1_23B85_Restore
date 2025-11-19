@interface EmptyStateTableViewCell
- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EmptyStateTableViewCell

- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1B9FE49EC(a3, a4, v6);
}

- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView) = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyStateTableViewCell();
  v5 = a3;
  v6 = [(EmptyStateTableViewCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end