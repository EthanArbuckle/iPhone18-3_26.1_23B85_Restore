@interface HUNoInternetOnPhoneBannerItem
- (HUNoInternetOnPhoneBannerItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUNoInternetOnPhoneBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  if (a3)
  {
    sub_20D567758();
  }

  v4 = self;
  v5 = sub_20D0B4420();

  return v5;
}

- (HUNoInternetOnPhoneBannerItem)initWithHome:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoInternetOnPhoneBannerItem();
  return [(HUBannerItem *)&v5 initWithHome:a3];
}

@end