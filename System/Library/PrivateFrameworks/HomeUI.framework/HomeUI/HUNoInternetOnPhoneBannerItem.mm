@interface HUNoInternetOnPhoneBannerItem
- (HUNoInternetOnPhoneBannerItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUNoInternetOnPhoneBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    sub_20D567758();
  }

  selfCopy = self;
  v5 = sub_20D0B4420();

  return v5;
}

- (HUNoInternetOnPhoneBannerItem)initWithHome:(id)home
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoInternetOnPhoneBannerItem();
  return [(HUBannerItem *)&v5 initWithHome:home];
}

@end