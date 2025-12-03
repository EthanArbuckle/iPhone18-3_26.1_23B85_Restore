@interface HUNoResponseResidentsBannerItem
- (HUNoResponseResidentsBannerItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUNoResponseResidentsBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    sub_20D567758();
  }

  selfCopy = self;
  sub_20CFC4C7C();
  v6 = v5;

  return v6;
}

- (HUNoResponseResidentsBannerItem)initWithHome:(id)home
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoResponseResidentsBannerItem();
  return [(HUBannerItem *)&v5 initWithHome:home];
}

@end