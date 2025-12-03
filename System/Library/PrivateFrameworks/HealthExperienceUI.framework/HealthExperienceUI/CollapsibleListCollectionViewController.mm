@interface CollapsibleListCollectionViewController
- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCollectionViewLayout:(id)layout;
@end

@implementation CollapsibleListCollectionViewController

- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  return [(CompoundDataSourceCollectionViewController *)&v5 initWithCollectionViewLayout:layout];
}

- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  coderCopy = coder;
  v5 = [(CompoundDataSourceCollectionViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end