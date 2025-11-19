@interface FCRestorePaidSubscriptionItem
- (FCRestorePaidSubscriptionItem)initWithChannelID:(id)a3 isNewsAppPurchase:(BOOL)a4;
@end

@implementation FCRestorePaidSubscriptionItem

- (FCRestorePaidSubscriptionItem)initWithChannelID:(id)a3 isNewsAppPurchase:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCRestorePaidSubscriptionItem;
  v8 = [(FCRestorePaidSubscriptionItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channelID, a3);
    v9->_isNewsAppPurchase = a4;
  }

  return v9;
}

@end