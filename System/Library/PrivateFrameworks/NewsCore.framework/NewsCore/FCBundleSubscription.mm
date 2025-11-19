@interface FCBundleSubscription
+ (FCBundleSubscription)subscriptionWithSubscriptionState:(unint64_t)a3 bundleChannelIDs:(id)a4;
- (BOOL)containsHeadline:(id)a3;
- (BOOL)containsItem:(id)a3;
- (BOOL)containsTagID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isServicesBundleUser;
- (FCBundleSubscription)initWithBundlePurchaseID:(id)a3 bundleChannelIDs:(id)a4 bundleChannelIDsVersion:(id)a5 subscriptionState:(unint64_t)a6 isPurchaser:(BOOL)a7 servicesBundlePurchaseID:(id)a8 isAmplifyUser:(BOOL)a9 initialPurchaseTimestamp:(id)a10 isPaidBundleViaOfferActivated:(BOOL)a11;
- (FCBundleSubscription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCBundleSubscription

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FCBundleSubscription *)self bundlePurchaseID];
  v6 = [(FCBundleSubscription *)self unprotectedSubscriptionState];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isPurchaser](self, "isPurchaser")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isAmplifyUser](self, "isAmplifyUser")}];
  v9 = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  v10 = [v3 stringWithFormat:@"<%@: %p \n bundlePurchaseID: %@ \n subscriptionState: %lu \n isPurchaser=%@ \n isAmplifyUser=%@ \n servicesBundlePurchaseID=%@ \n>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isServicesBundleUser
{
  v2 = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)containsHeadline:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceChannel];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([v4 isBundlePaid])
    {
      v8 = [(FCBundleSubscription *)self bundleChannelIDs];
      v9 = [v8 count];

      if (v9)
      {
        v10 = [v7 identifier];
        v11 = [(FCBundleSubscription *)self containsTagID:v10];
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)containsItem:(id)a3
{
  v4 = a3;
  if ([v4 isBundlePaid])
  {
    v5 = [v4 publisherID];
    v6 = [(FCBundleSubscription *)self containsTagID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FCBundleSubscription)initWithBundlePurchaseID:(id)a3 bundleChannelIDs:(id)a4 bundleChannelIDsVersion:(id)a5 subscriptionState:(unint64_t)a6 isPurchaser:(BOOL)a7 servicesBundlePurchaseID:(id)a8 isAmplifyUser:(BOOL)a9 initialPurchaseTimestamp:(id)a10 isPaidBundleViaOfferActivated:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a10;
  v34.receiver = self;
  v34.super_class = FCBundleSubscription;
  v22 = [(FCBundleSubscription *)&v34 init];
  if (v22)
  {
    v23 = [v17 copy];
    bundlePurchaseID = v22->_bundlePurchaseID;
    v22->_bundlePurchaseID = v23;

    v25 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v18];
    bundleChannelIDs = v22->_bundleChannelIDs;
    v22->_bundleChannelIDs = v25;

    v27 = [v19 copy];
    bundleChannelIDsVersion = v22->_bundleChannelIDsVersion;
    v22->_bundleChannelIDsVersion = v27;

    v22->_unprotectedSubscriptionState = a6;
    v22->_isPurchaser = a7;
    v22->_isAmplifyUser = a9;
    v22->_isPaidBundleViaOfferActivated = a11;
    v29 = [v20 copy];
    servicesBundlePurchaseID = v22->_servicesBundlePurchaseID;
    v22->_servicesBundlePurchaseID = v29;

    v31 = [v21 copy];
    initialPurchaseTimestamp = v22->_initialPurchaseTimestamp;
    v22->_initialPurchaseTimestamp = v31;
  }

  return v22;
}

- (BOOL)containsTagID:(id)a3
{
  v4 = a3;
  v5 = [(FCBundleSubscription *)self bundleChannelIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (FCBundleSubscription)subscriptionWithSubscriptionState:(unint64_t)a3 bundleChannelIDs:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(FCBundleSubscription);
  [(FCBundleSubscription *)v6 setUnprotectedSubscriptionState:a3];
  v7 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v5];

  [(FCBundleSubscription *)v6 setBundleChannelIDs:v7];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(FCBundleSubscription);
  v5 = [(FCBundleSubscription *)self bundlePurchaseID];
  v6 = [v5 copy];
  [(FCBundleSubscription *)v4 setBundlePurchaseID:v6];

  v7 = [(FCBundleSubscription *)self bundleChannelIDs];
  v8 = [v7 copy];
  [(FCBundleSubscription *)v4 setBundleChannelIDs:v8];

  v9 = [(FCBundleSubscription *)self bundleChannelIDsVersion];
  v10 = [v9 copy];
  [(FCBundleSubscription *)v4 setBundleChannelIDsVersion:v10];

  [(FCBundleSubscription *)v4 setUnprotectedSubscriptionState:[(FCBundleSubscription *)self unprotectedSubscriptionState]];
  [(FCBundleSubscription *)v4 setIsPurchaser:[(FCBundleSubscription *)self isPurchaser]];
  [(FCBundleSubscription *)v4 setIsAmplifyUser:[(FCBundleSubscription *)self isAmplifyUser]];
  [(FCBundleSubscription *)v4 setIsPaidBundleViaOfferActivated:[(FCBundleSubscription *)self isPaidBundleViaOfferActivated]];
  v11 = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  v12 = [v11 copy];
  [(FCBundleSubscription *)v4 setServicesBundlePurchaseID:v12];

  v13 = [(FCBundleSubscription *)self initialPurchaseTimestamp];
  v14 = [v13 copy];
  [(FCBundleSubscription *)v4 setInitialPurchaseTimestamp:v14];

  if ([(FCBundleSubscription *)self unprotectedSubscriptionState]<= 1)
  {
    v15 = v4;
  }

  else
  {
    v15 = (&v4->super.isa + 1);
  }

  p_initialPurchaseTimestamp = &v15[1]._initialPurchaseTimestamp;
  v17 = MEMORY[0x1E696AD98];
  v18 = v4;
  v19 = [v17 numberWithUnsignedInteger:p_initialPurchaseTimestamp];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-113 - v4];
  objc_setAssociatedObject(v18, &v4->super.isa + 1, v19, 1);
  objc_setAssociatedObject(v18, ~p_initialPurchaseTimestamp, v20, 1);

  return v18;
}

- (FCBundleSubscription)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeIntegerForKey:@"subscriptionState"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v3 decodeDoubleForKey:@"initialPurchaseTimestamp"];
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePurchaseID"];
  [v3 decodeObjectOfClasses:v7 forKey:@"bundleChannelIDs"];
  v11 = v27 = v7;
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleChannelIDsVersion"];
  v13 = [v3 decodeBoolForKey:@"isPurchaser"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"servicesBundlePurchaseID"];
  v15 = [v3 decodeBoolForKey:@"isAmplifyUser"];
  LOBYTE(v25) = [v3 decodeBoolForKey:@"isPaidBundleViaOfferActivated"];
  LOBYTE(v24) = v15;
  v16 = [(FCBundleSubscription *)self initWithBundlePurchaseID:v10 bundleChannelIDs:v11 bundleChannelIDsVersion:v12 subscriptionState:v4 isPurchaser:v13 servicesBundlePurchaseID:v14 isAmplifyUser:v24 initialPurchaseTimestamp:v9 isPaidBundleViaOfferActivated:v25];

  v17 = 146;
  if (v4 > 1)
  {
    v17 = 147;
  }

  v18 = v16 + v17;
  v19 = MEMORY[0x1E696AD98];
  v20 = v16;
  v21 = [v19 numberWithUnsignedInteger:v18];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-147 - v16];
  objc_setAssociatedObject(v20, &v16->super.isa + 1, v21, 1);
  objc_setAssociatedObject(v20, ~v18, v22, 1);

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCBundleSubscription *)self bundleChannelIDs];
  v6 = [v5 array];
  [v4 encodeObject:v6 forKey:@"bundleChannelIDs"];

  v7 = [(FCBundleSubscription *)self bundleChannelIDsVersion];
  [v4 encodeObject:v7 forKey:@"bundleChannelIDsVersion"];

  v8 = [(FCBundleSubscription *)self bundlePurchaseID];
  [v4 encodeObject:v8 forKey:@"bundlePurchaseID"];

  [v4 encodeInteger:-[FCBundleSubscription unprotectedSubscriptionState](self forKey:{"unprotectedSubscriptionState"), @"subscriptionState"}];
  [v4 encodeBool:-[FCBundleSubscription isPurchaser](self forKey:{"isPurchaser"), @"isPurchaser"}];
  [v4 encodeBool:-[FCBundleSubscription isAmplifyUser](self forKey:{"isAmplifyUser"), @"isAmplifyUser"}];
  [v4 encodeBool:-[FCBundleSubscription isPaidBundleViaOfferActivated](self forKey:{"isPaidBundleViaOfferActivated"), @"isPaidBundleViaOfferActivated"}];
  v9 = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  [v4 encodeObject:v9 forKey:@"servicesBundlePurchaseID"];

  v10 = [(FCBundleSubscription *)self initialPurchaseTimestamp];
  [v10 doubleValue];
  [v4 encodeDouble:@"initialPurchaseTimestamp" forKey:?];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  if (v7 && (v8 = -[FCBundleSubscription unprotectedSubscriptionState](self, "unprotectedSubscriptionState"), v8 == [v7 unprotectedSubscriptionState]) && (v9 = -[FCBundleSubscription isPurchaser](self, "isPurchaser"), v9 == objc_msgSend(v7, "isPurchaser")) && (v10 = -[FCBundleSubscription isAmplifyUser](self, "isAmplifyUser"), v10 == objc_msgSend(v7, "isAmplifyUser")) && (v11 = -[FCBundleSubscription isPaidBundleViaOfferActivated](self, "isPaidBundleViaOfferActivated"), v11 == objc_msgSend(v7, "isPaidBundleViaOfferActivated")))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(FCBundleSubscription *)self bundlePurchaseID];
    v15 = [v7 bundlePurchaseID];
    if ([v13 fc_string:v14 isEqualToString:v15])
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [(FCBundleSubscription *)self servicesBundlePurchaseID];
      v18 = [v7 servicesBundlePurchaseID];
      if ([v16 fc_string:v17 isEqualToString:v18])
      {
        v19 = [(FCBundleSubscription *)self bundleChannelIDs];
        v20 = [v7 bundleChannelIDs];
        if ([v19 isEqualToOrderedSet:v20])
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = [(FCBundleSubscription *)self bundleChannelIDsVersion];
          v23 = [v7 bundleChannelIDsVersion];
          v28 = v22;
          v24 = v22;
          v25 = v23;
          if ([v21 fc_string:v24 isEqualToString:v23])
          {
            v26 = [(FCBundleSubscription *)self initialPurchaseTimestamp];
            v27 = [v7 initialPurchaseTimestamp];
            v6 = v26 == v27;
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(FCBundleSubscription *)self bundleChannelIDs];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCBundleSubscription unprotectedSubscriptionState](self, "unprotectedSubscriptionState")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isPurchaser](self, "isPurchaser")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isAmplifyUser](self, "isAmplifyUser")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isPaidBundleViaOfferActivated](self, "isPaidBundleViaOfferActivated")}];
  v12 = [v11 hash];
  v13 = [(FCBundleSubscription *)self bundleChannelIDsVersion];
  v14 = v12 ^ [v13 hash];
  v15 = [(FCBundleSubscription *)self initialPurchaseTimestamp];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

@end