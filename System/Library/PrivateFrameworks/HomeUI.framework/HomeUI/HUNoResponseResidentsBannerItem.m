@interface HUNoResponseResidentsBannerItem
- (HUNoResponseResidentsBannerItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUNoResponseResidentsBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  if (a3)
  {
    sub_20D567758();
  }

  v4 = self;
  sub_20CFC4C7C();
  v6 = v5;

  return v6;
}

- (HUNoResponseResidentsBannerItem)initWithHome:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoResponseResidentsBannerItem();
  return [(HUBannerItem *)&v5 initWithHome:a3];
}

@end