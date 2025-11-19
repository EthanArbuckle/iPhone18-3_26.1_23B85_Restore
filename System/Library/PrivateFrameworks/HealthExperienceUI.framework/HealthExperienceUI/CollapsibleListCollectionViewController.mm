@interface CollapsibleListCollectionViewController
- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCollectionViewLayout:(id)a3;
@end

@implementation CollapsibleListCollectionViewController

- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  return [(CompoundDataSourceCollectionViewController *)&v5 initWithCollectionViewLayout:a3];
}

- (_TtC18HealthExperienceUI39CollapsibleListCollectionViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  v4 = a3;
  v5 = [(CompoundDataSourceCollectionViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end