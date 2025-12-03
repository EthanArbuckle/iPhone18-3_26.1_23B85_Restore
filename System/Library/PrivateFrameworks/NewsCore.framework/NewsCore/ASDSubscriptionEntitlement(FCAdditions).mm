@interface ASDSubscriptionEntitlement(FCAdditions)
- (id)description;
- (id)servicesBundlePurchaseID;
@end

@implementation ASDSubscriptionEntitlement(FCAdditions)

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  inAppAdamID = [self inAppAdamID];
  offerID = [self offerID];
  if ([self isTrialPeriod])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([self isPurchaser])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v2 stringWithFormat:@"{purchaseId=%@, offerId=%@, isTrialPeriod=%@, isPurchaser=%@}", inAppAdamID, offerID, v5, v6];

  return v7;
}

- (id)servicesBundlePurchaseID
{
  objc_opt_class();
  subscriptionBundleID = [self subscriptionBundleID];
  if (subscriptionBundleID)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = subscriptionBundleID;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    if ([v4 intValue])
    {
      stringValue = [v4 stringValue];
    }

    else
    {
      stringValue = 0;
    }
  }

  else
  {
    objc_opt_class();
    subscriptionBundleID2 = [self subscriptionBundleID];
    if (subscriptionBundleID2)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = subscriptionBundleID2;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    stringValue = v7;
  }

  return stringValue;
}

@end