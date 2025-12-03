@interface EmptyStateCollectionViewCell
- (_TtC18HealthExperienceUI28EmptyStateCollectionViewCell)initWithCoder:(id)coder;
@end

@implementation EmptyStateCollectionViewCell

- (_TtC18HealthExperienceUI28EmptyStateCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView) = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyStateCollectionViewCell();
  coderCopy = coder;
  v6 = [(EmptyStateCollectionViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end