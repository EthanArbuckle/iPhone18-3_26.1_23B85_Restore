@interface FCRestorePaidSubscriptionItem
- (FCRestorePaidSubscriptionItem)initWithChannelID:(id)d isNewsAppPurchase:(BOOL)purchase;
@end

@implementation FCRestorePaidSubscriptionItem

- (FCRestorePaidSubscriptionItem)initWithChannelID:(id)d isNewsAppPurchase:(BOOL)purchase
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = FCRestorePaidSubscriptionItem;
  v8 = [(FCRestorePaidSubscriptionItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channelID, d);
    v9->_isNewsAppPurchase = purchase;
  }

  return v9;
}

@end