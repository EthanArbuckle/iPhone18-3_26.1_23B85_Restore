@interface FCPaidAccessChecker
- (BOOL)canGetAccessToItemPaid:(BOOL)a3 bundlePaid:(BOOL)a4 channel:(id)a5;
- (BOOL)canGetSubscriptionToChannel:(id)a3;
- (BOOL)isPreparedForUse;
- (FCPaidAccessChecker)initWithPurchaseProvider:(id)a3 bundleSubscriptionProvider:(id)a4 configurationManager:(id)a5;
- (uint64_t)_canGetBundleSubscriptionToChannel:(uint64_t)a1;
- (void)prepareForUseWithCompletion:(id)a3;
@end

@implementation FCPaidAccessChecker

- (FCPaidAccessChecker)initWithPurchaseProvider:(id)a3 bundleSubscriptionProvider:(id)a4 configurationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCPaidAccessChecker;
  v12 = [(FCPaidAccessChecker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_purchaseProvider, a3);
    objc_storeStrong(&v13->_bundleSubscriptionProvider, a4);
    objc_storeStrong(&v13->_configurationManager, a5);
  }

  return v13;
}

- (BOOL)canGetAccessToItemPaid:(BOOL)a3 bundlePaid:(BOOL)a4 channel:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (!v6 && !v5)
  {
    goto LABEL_17;
  }

  v10 = [v8 identifier];
  v11 = self;
  v12 = v10;
  v13 = [(FCPaidAccessChecker *)v11 bundleSubscriptionProvider];
  v14 = [(FCPaidAccessChecker *)v11 purchaseProvider];
  v15 = v13;
  v16 = v14;
  v17 = v12;
  if (v16)
  {
    if (v6)
    {
      v18 = [v16 purchasedTagIDs];
      v19 = [v18 containsObject:v17];

      if (v19)
      {
        goto LABEL_6;
      }
    }
  }

  if (v15 && v5)
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
    v23 = [v31 unsignedIntegerValue];
    v24 = v23;
    objc_getAssociatedObject(v22, ~v23);
    v25 = v34 = v20;
    v26 = [v25 unsignedIntegerValue] ^ v24;

    v20 = v34;
    v21 = v33;
    if (v26)
    {
      v29 = [v34 bundleSubscription];
      v30 = [v29 bundleChannelIDs];
      v32 = [v30 containsObject:v33];

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

  if ((!v11 || !v6 || ([v9 isPurchaseSetup] & 1) == 0) && (!v5 || (-[FCPaidAccessChecker _canGetBundleSubscriptionToChannel:](v11, v9) & 1) == 0))
  {
    v27 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v27 = 1;
LABEL_18:

  return v27;
}

- (uint64_t)_canGetBundleSubscriptionToChannel:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 24) configuration];
    v5 = [v4 paidBundleConfig];
    v6 = [v5 areMagazinesEnabled];

    if (v6)
    {
      v7 = [a1 bundleSubscriptionProvider];
      v8 = [v7 bundleSubscription];
      v9 = [v8 bundleChannelIDs];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [a1 bundleSubscriptionProvider];
        v12 = [v11 bundleSubscription];
        v13 = [v12 bundleChannelIDs];
        v14 = [v3 identifier];
        a1 = [v13 containsObject:v14];
      }

      else
      {
        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (BOOL)canGetSubscriptionToChannel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self && ([v4 isPurchaseSetup] & 1) != 0)
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
  v2 = [(FCPaidAccessChecker *)self bundleSubscriptionProvider];
  v3 = [v2 bundleSubscription];
  v4 = [v3 bundleChannelIDs];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)prepareForUseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCPaidAccessChecker *)self bundleSubscriptionProvider];
  [v5 prepareForUseWithCompletion:v4];
}

@end