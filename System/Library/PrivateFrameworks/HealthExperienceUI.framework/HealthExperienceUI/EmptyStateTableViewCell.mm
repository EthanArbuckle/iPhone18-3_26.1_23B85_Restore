@interface EmptyStateTableViewCell
- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation EmptyStateTableViewCell

- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1B9FE49EC(style, identifier, v6);
}

- (_TtC18HealthExperienceUI23EmptyStateTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView) = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyStateTableViewCell();
  coderCopy = coder;
  v6 = [(EmptyStateTableViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end