@interface ASDSubscriptionEntitlement(FCAdditions)
- (id)description;
- (id)servicesBundlePurchaseID;
@end

@implementation ASDSubscriptionEntitlement(FCAdditions)

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 inAppAdamID];
  v4 = [a1 offerID];
  if ([a1 isTrialPeriod])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([a1 isPurchaser])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v2 stringWithFormat:@"{purchaseId=%@, offerId=%@, isTrialPeriod=%@, isPurchaser=%@}", v3, v4, v5, v6];

  return v7;
}

- (id)servicesBundlePurchaseID
{
  objc_opt_class();
  v2 = [a1 subscriptionBundleID];
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
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
      v5 = [v4 stringValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    objc_opt_class();
    v6 = [a1 subscriptionBundleID];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
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

    v5 = v7;
  }

  return v5;
}

@end