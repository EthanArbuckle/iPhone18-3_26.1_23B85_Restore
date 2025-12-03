@interface FCBundleSubscription
+ (FCBundleSubscription)subscriptionWithSubscriptionState:(unint64_t)state bundleChannelIDs:(id)ds;
- (BOOL)containsHeadline:(id)headline;
- (BOOL)containsItem:(id)item;
- (BOOL)containsTagID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isServicesBundleUser;
- (FCBundleSubscription)initWithBundlePurchaseID:(id)d bundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version subscriptionState:(unint64_t)state isPurchaser:(BOOL)purchaser servicesBundlePurchaseID:(id)iD isAmplifyUser:(BOOL)user initialPurchaseTimestamp:(id)self0 isPaidBundleViaOfferActivated:(BOOL)self1;
- (FCBundleSubscription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCBundleSubscription

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  bundlePurchaseID = [(FCBundleSubscription *)self bundlePurchaseID];
  unprotectedSubscriptionState = [(FCBundleSubscription *)self unprotectedSubscriptionState];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isPurchaser](self, "isPurchaser")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isAmplifyUser](self, "isAmplifyUser")}];
  servicesBundlePurchaseID = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  v10 = [v3 stringWithFormat:@"<%@: %p \n bundlePurchaseID: %@ \n subscriptionState: %lu \n isPurchaser=%@ \n isAmplifyUser=%@ \n servicesBundlePurchaseID=%@ \n>", v4, self, bundlePurchaseID, unprotectedSubscriptionState, v7, v8, servicesBundlePurchaseID];

  return v10;
}

- (BOOL)isServicesBundleUser
{
  servicesBundlePurchaseID = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  v3 = servicesBundlePurchaseID != 0;

  return v3;
}

- (BOOL)containsHeadline:(id)headline
{
  headlineCopy = headline;
  sourceChannel = [headlineCopy sourceChannel];
  v6 = sourceChannel;
  if (sourceChannel)
  {
    v7 = sourceChannel;
    if ([headlineCopy isBundlePaid])
    {
      bundleChannelIDs = [(FCBundleSubscription *)self bundleChannelIDs];
      v9 = [bundleChannelIDs count];

      if (v9)
      {
        identifier = [v7 identifier];
        v11 = [(FCBundleSubscription *)self containsTagID:identifier];
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

- (BOOL)containsItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isBundlePaid])
  {
    publisherID = [itemCopy publisherID];
    v6 = [(FCBundleSubscription *)self containsTagID:publisherID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FCBundleSubscription)initWithBundlePurchaseID:(id)d bundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version subscriptionState:(unint64_t)state isPurchaser:(BOOL)purchaser servicesBundlePurchaseID:(id)iD isAmplifyUser:(BOOL)user initialPurchaseTimestamp:(id)self0 isPaidBundleViaOfferActivated:(BOOL)self1
{
  dCopy = d;
  dsCopy = ds;
  versionCopy = version;
  iDCopy = iD;
  timestampCopy = timestamp;
  v34.receiver = self;
  v34.super_class = FCBundleSubscription;
  v22 = [(FCBundleSubscription *)&v34 init];
  if (v22)
  {
    v23 = [dCopy copy];
    bundlePurchaseID = v22->_bundlePurchaseID;
    v22->_bundlePurchaseID = v23;

    v25 = [MEMORY[0x1E695DFB8] orderedSetWithArray:dsCopy];
    bundleChannelIDs = v22->_bundleChannelIDs;
    v22->_bundleChannelIDs = v25;

    v27 = [versionCopy copy];
    bundleChannelIDsVersion = v22->_bundleChannelIDsVersion;
    v22->_bundleChannelIDsVersion = v27;

    v22->_unprotectedSubscriptionState = state;
    v22->_isPurchaser = purchaser;
    v22->_isAmplifyUser = user;
    v22->_isPaidBundleViaOfferActivated = activated;
    v29 = [iDCopy copy];
    servicesBundlePurchaseID = v22->_servicesBundlePurchaseID;
    v22->_servicesBundlePurchaseID = v29;

    v31 = [timestampCopy copy];
    initialPurchaseTimestamp = v22->_initialPurchaseTimestamp;
    v22->_initialPurchaseTimestamp = v31;
  }

  return v22;
}

- (BOOL)containsTagID:(id)d
{
  dCopy = d;
  bundleChannelIDs = [(FCBundleSubscription *)self bundleChannelIDs];
  v6 = [bundleChannelIDs containsObject:dCopy];

  return v6;
}

+ (FCBundleSubscription)subscriptionWithSubscriptionState:(unint64_t)state bundleChannelIDs:(id)ds
{
  dsCopy = ds;
  v6 = objc_alloc_init(FCBundleSubscription);
  [(FCBundleSubscription *)v6 setUnprotectedSubscriptionState:state];
  v7 = [MEMORY[0x1E695DFB8] orderedSetWithArray:dsCopy];

  [(FCBundleSubscription *)v6 setBundleChannelIDs:v7];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FCBundleSubscription);
  bundlePurchaseID = [(FCBundleSubscription *)self bundlePurchaseID];
  v6 = [bundlePurchaseID copy];
  [(FCBundleSubscription *)v4 setBundlePurchaseID:v6];

  bundleChannelIDs = [(FCBundleSubscription *)self bundleChannelIDs];
  v8 = [bundleChannelIDs copy];
  [(FCBundleSubscription *)v4 setBundleChannelIDs:v8];

  bundleChannelIDsVersion = [(FCBundleSubscription *)self bundleChannelIDsVersion];
  v10 = [bundleChannelIDsVersion copy];
  [(FCBundleSubscription *)v4 setBundleChannelIDsVersion:v10];

  [(FCBundleSubscription *)v4 setUnprotectedSubscriptionState:[(FCBundleSubscription *)self unprotectedSubscriptionState]];
  [(FCBundleSubscription *)v4 setIsPurchaser:[(FCBundleSubscription *)self isPurchaser]];
  [(FCBundleSubscription *)v4 setIsAmplifyUser:[(FCBundleSubscription *)self isAmplifyUser]];
  [(FCBundleSubscription *)v4 setIsPaidBundleViaOfferActivated:[(FCBundleSubscription *)self isPaidBundleViaOfferActivated]];
  servicesBundlePurchaseID = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  v12 = [servicesBundlePurchaseID copy];
  [(FCBundleSubscription *)v4 setServicesBundlePurchaseID:v12];

  initialPurchaseTimestamp = [(FCBundleSubscription *)self initialPurchaseTimestamp];
  v14 = [initialPurchaseTimestamp copy];
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

- (FCBundleSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeIntegerForKey:@"subscriptionState"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [coderCopy decodeDoubleForKey:@"initialPurchaseTimestamp"];
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePurchaseID"];
  [coderCopy decodeObjectOfClasses:v7 forKey:@"bundleChannelIDs"];
  v11 = v27 = v7;
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleChannelIDsVersion"];
  v13 = [coderCopy decodeBoolForKey:@"isPurchaser"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"servicesBundlePurchaseID"];
  v15 = [coderCopy decodeBoolForKey:@"isAmplifyUser"];
  LOBYTE(v25) = [coderCopy decodeBoolForKey:@"isPaidBundleViaOfferActivated"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleChannelIDs = [(FCBundleSubscription *)self bundleChannelIDs];
  array = [bundleChannelIDs array];
  [coderCopy encodeObject:array forKey:@"bundleChannelIDs"];

  bundleChannelIDsVersion = [(FCBundleSubscription *)self bundleChannelIDsVersion];
  [coderCopy encodeObject:bundleChannelIDsVersion forKey:@"bundleChannelIDsVersion"];

  bundlePurchaseID = [(FCBundleSubscription *)self bundlePurchaseID];
  [coderCopy encodeObject:bundlePurchaseID forKey:@"bundlePurchaseID"];

  [coderCopy encodeInteger:-[FCBundleSubscription unprotectedSubscriptionState](self forKey:{"unprotectedSubscriptionState"), @"subscriptionState"}];
  [coderCopy encodeBool:-[FCBundleSubscription isPurchaser](self forKey:{"isPurchaser"), @"isPurchaser"}];
  [coderCopy encodeBool:-[FCBundleSubscription isAmplifyUser](self forKey:{"isAmplifyUser"), @"isAmplifyUser"}];
  [coderCopy encodeBool:-[FCBundleSubscription isPaidBundleViaOfferActivated](self forKey:{"isPaidBundleViaOfferActivated"), @"isPaidBundleViaOfferActivated"}];
  servicesBundlePurchaseID = [(FCBundleSubscription *)self servicesBundlePurchaseID];
  [coderCopy encodeObject:servicesBundlePurchaseID forKey:@"servicesBundlePurchaseID"];

  initialPurchaseTimestamp = [(FCBundleSubscription *)self initialPurchaseTimestamp];
  [initialPurchaseTimestamp doubleValue];
  [coderCopy encodeDouble:@"initialPurchaseTimestamp" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    bundlePurchaseID = [(FCBundleSubscription *)self bundlePurchaseID];
    bundlePurchaseID2 = [v7 bundlePurchaseID];
    if ([v13 fc_string:bundlePurchaseID isEqualToString:bundlePurchaseID2])
    {
      v16 = MEMORY[0x1E696AEC0];
      servicesBundlePurchaseID = [(FCBundleSubscription *)self servicesBundlePurchaseID];
      servicesBundlePurchaseID2 = [v7 servicesBundlePurchaseID];
      if ([v16 fc_string:servicesBundlePurchaseID isEqualToString:servicesBundlePurchaseID2])
      {
        bundleChannelIDs = [(FCBundleSubscription *)self bundleChannelIDs];
        bundleChannelIDs2 = [v7 bundleChannelIDs];
        if ([bundleChannelIDs isEqualToOrderedSet:bundleChannelIDs2])
        {
          v21 = MEMORY[0x1E696AEC0];
          bundleChannelIDsVersion = [(FCBundleSubscription *)self bundleChannelIDsVersion];
          bundleChannelIDsVersion2 = [v7 bundleChannelIDsVersion];
          v28 = bundleChannelIDsVersion;
          v24 = bundleChannelIDsVersion;
          v25 = bundleChannelIDsVersion2;
          if ([v21 fc_string:v24 isEqualToString:bundleChannelIDsVersion2])
          {
            initialPurchaseTimestamp = [(FCBundleSubscription *)self initialPurchaseTimestamp];
            initialPurchaseTimestamp2 = [v7 initialPurchaseTimestamp];
            v6 = initialPurchaseTimestamp == initialPurchaseTimestamp2;
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
  bundleChannelIDs = [(FCBundleSubscription *)self bundleChannelIDs];
  v4 = [bundleChannelIDs hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCBundleSubscription unprotectedSubscriptionState](self, "unprotectedSubscriptionState")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isPurchaser](self, "isPurchaser")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isAmplifyUser](self, "isAmplifyUser")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscription isPaidBundleViaOfferActivated](self, "isPaidBundleViaOfferActivated")}];
  v12 = [v11 hash];
  bundleChannelIDsVersion = [(FCBundleSubscription *)self bundleChannelIDsVersion];
  v14 = v12 ^ [bundleChannelIDsVersion hash];
  initialPurchaseTimestamp = [(FCBundleSubscription *)self initialPurchaseTimestamp];
  v16 = v14 ^ [initialPurchaseTimestamp hash];

  return v10 ^ v16;
}

@end