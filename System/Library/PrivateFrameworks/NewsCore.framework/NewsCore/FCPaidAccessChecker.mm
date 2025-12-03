@interface FCPaidAccessChecker
- (BOOL)canGetAccessToItemPaid:(BOOL)paid bundlePaid:(BOOL)bundlePaid channel:(id)channel;
- (BOOL)canGetSubscriptionToChannel:(id)channel;
- (BOOL)isPreparedForUse;
- (FCPaidAccessChecker)initWithPurchaseProvider:(id)provider bundleSubscriptionProvider:(id)subscriptionProvider configurationManager:(id)manager;
- (uint64_t)_canGetBundleSubscriptionToChannel:(uint64_t)channel;
- (void)prepareForUseWithCompletion:(id)completion;
@end

@implementation FCPaidAccessChecker

- (FCPaidAccessChecker)initWithPurchaseProvider:(id)provider bundleSubscriptionProvider:(id)subscriptionProvider configurationManager:(id)manager
{
  providerCopy = provider;
  subscriptionProviderCopy = subscriptionProvider;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = FCPaidAccessChecker;
  v12 = [(FCPaidAccessChecker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_purchaseProvider, provider);
    objc_storeStrong(&v13->_bundleSubscriptionProvider, subscriptionProvider);
    objc_storeStrong(&v13->_configurationManager, manager);
  }

  return v13;
}

- (BOOL)canGetAccessToItemPaid:(BOOL)paid bundlePaid:(BOOL)bundlePaid channel:(id)channel
{
  bundlePaidCopy = bundlePaid;
  paidCopy = paid;
  channelCopy = channel;
  v9 = channelCopy;
  if (!paidCopy && !bundlePaidCopy)
  {
    goto LABEL_17;
  }

  identifier = [channelCopy identifier];
  selfCopy = self;
  v12 = identifier;
  bundleSubscriptionProvider = [(FCPaidAccessChecker *)selfCopy bundleSubscriptionProvider];
  purchaseProvider = [(FCPaidAccessChecker *)selfCopy purchaseProvider];
  v15 = bundleSubscriptionProvider;
  v16 = purchaseProvider;
  v17 = v12;
  if (v16)
  {
    if (paidCopy)
    {
      purchasedTagIDs = [v16 purchasedTagIDs];
      v19 = [purchasedTagIDs containsObject:v17];

      if (v19)
      {
        goto LABEL_6;
      }
    }
  }

  if (v15 && bundlePaidCopy)
  {
    v20 = v15;
    v21 = v17;
    if (!v21)
    {
      goto LABEL_11;
    }

    [v20 bundleSubscription];
    v22 = v33 = v21;
    v31 = objc_getAssociatedObject(v22, (v22 + 1));
    unsignedIntegerValue = [v31 unsignedIntegerValue];
    v24 = unsignedIntegerValue;
    objc_getAssociatedObject(v22, ~unsignedIntegerValue);
    v25 = v34 = v20;
    v26 = [v25 unsignedIntegerValue] ^ v24;

    v20 = v34;
    v21 = v33;
    if (v26)
    {
      bundleSubscription = [v34 bundleSubscription];
      bundleChannelIDs = [bundleSubscription bundleChannelIDs];
      v32 = [bundleChannelIDs containsObject:v33];

      if (v32)
      {
LABEL_6:

        goto LABEL_17;
      }
    }

    else
    {
LABEL_11:
    }
  }

  if ((!selfCopy || !paidCopy || ([v9 isPurchaseSetup] & 1) == 0) && (!bundlePaidCopy || (-[FCPaidAccessChecker _canGetBundleSubscriptionToChannel:](selfCopy, v9) & 1) == 0))
  {
    v27 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v27 = 1;
LABEL_18:

  return v27;
}

- (uint64_t)_canGetBundleSubscriptionToChannel:(uint64_t)channel
{
  v3 = a2;
  if (channel)
  {
    configuration = [*(channel + 24) configuration];
    paidBundleConfig = [configuration paidBundleConfig];
    areMagazinesEnabled = [paidBundleConfig areMagazinesEnabled];

    if (areMagazinesEnabled)
    {
      bundleSubscriptionProvider = [channel bundleSubscriptionProvider];
      bundleSubscription = [bundleSubscriptionProvider bundleSubscription];
      bundleChannelIDs = [bundleSubscription bundleChannelIDs];
      v10 = [bundleChannelIDs count];

      if (v10)
      {
        bundleSubscriptionProvider2 = [channel bundleSubscriptionProvider];
        bundleSubscription2 = [bundleSubscriptionProvider2 bundleSubscription];
        bundleChannelIDs2 = [bundleSubscription2 bundleChannelIDs];
        identifier = [v3 identifier];
        channel = [bundleChannelIDs2 containsObject:identifier];
      }

      else
      {
        channel = 1;
      }
    }

    else
    {
      channel = 0;
    }
  }

  return channel;
}

- (BOOL)canGetSubscriptionToChannel:(id)channel
{
  channelCopy = channel;
  v5 = channelCopy;
  if (self && ([channelCopy isPurchaseSetup] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(FCPaidAccessChecker *)self _canGetBundleSubscriptionToChannel:v5];
  }

  return v6;
}

- (BOOL)isPreparedForUse
{
  bundleSubscriptionProvider = [(FCPaidAccessChecker *)self bundleSubscriptionProvider];
  bundleSubscription = [bundleSubscriptionProvider bundleSubscription];
  bundleChannelIDs = [bundleSubscription bundleChannelIDs];
  v5 = [bundleChannelIDs count] != 0;

  return v5;
}

- (void)prepareForUseWithCompletion:(id)completion
{
  completionCopy = completion;
  bundleSubscriptionProvider = [(FCPaidAccessChecker *)self bundleSubscriptionProvider];
  [bundleSubscriptionProvider prepareForUseWithCompletion:completionCopy];
}

@end