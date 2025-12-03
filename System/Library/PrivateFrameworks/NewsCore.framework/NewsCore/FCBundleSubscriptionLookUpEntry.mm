@interface FCBundleSubscriptionLookUpEntry
- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)d bundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version purchaseID:(id)iD purchaseValidationState:(unint64_t)state dateOfExpiration:(id)expiration hasShownRenewalNotice:(BOOL)notice inTrialPeriod:(BOOL)self0 isPurchaser:(BOOL)self1 servicesBundlePurchaseID:(id)self2 isAmplifyUser:(BOOL)self3 isPaidBundleViaOfferActivated:(BOOL)self4 initialPurchaseTimestamp:(id)self5;
- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation;
- (id)bundleSubscription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation FCBundleSubscriptionLookUpEntry

- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)d bundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version purchaseID:(id)iD purchaseValidationState:(unint64_t)state dateOfExpiration:(id)expiration hasShownRenewalNotice:(BOOL)notice inTrialPeriod:(BOOL)self0 isPurchaser:(BOOL)self1 servicesBundlePurchaseID:(id)self2 isAmplifyUser:(BOOL)self3 isPaidBundleViaOfferActivated:(BOOL)self4 initialPurchaseTimestamp:(id)self5
{
  v57 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsCopy = ds;
  versionCopy = version;
  iDCopy = iD;
  expirationCopy = expiration;
  purchaseIDCopy = purchaseID;
  timestampCopy = timestamp;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"bundle subscription lookup entry must have an identifier"];
    *buf = 136315906;
    v50 = "[FCBundleSubscriptionLookUpEntry initWithEntryID:bundleChannelIDs:bundleChannelIDsVersion:purchaseID:purchaseValidationState:dateOfExpiration:hasShownRenewalNotice:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:isPaidBundleViaOfferActivated:initialPurchaseTimestamp:]";
    v51 = 2080;
    v52 = "FCBundleSubscriptionLookUpEntry.m";
    v53 = 1024;
    v54 = 63;
    v55 = 2114;
    v56 = v46;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"bundle subscription lookup entry must have an array of bundle tag IDs"];
    *buf = 136315906;
    v50 = "[FCBundleSubscriptionLookUpEntry initWithEntryID:bundleChannelIDs:bundleChannelIDsVersion:purchaseID:purchaseValidationState:dateOfExpiration:hasShownRenewalNotice:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:isPaidBundleViaOfferActivated:initialPurchaseTimestamp:]";
    v51 = 2080;
    v52 = "FCBundleSubscriptionLookUpEntry.m";
    v53 = 1024;
    v54 = 64;
    v55 = 2114;
    v56 = v47;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v48.receiver = self;
  v48.super_class = FCBundleSubscriptionLookUpEntry;
  v28 = [(FCBundleSubscriptionLookUpEntry *)&v48 init];
  v29 = v28;
  if (v28)
  {
    if (dCopy)
    {
      v30 = [dCopy copy];
      identifier = v29->_identifier;
      v29->_identifier = v30;

      v32 = [dsCopy copy];
      bundleChannelIDs = v29->_bundleChannelIDs;
      v29->_bundleChannelIDs = v32;

      v34 = [versionCopy copy];
      bundleChannelIDsVersion = v29->_bundleChannelIDsVersion;
      v29->_bundleChannelIDsVersion = v34;

      v36 = [iDCopy copy];
      purchaseID = v29->_purchaseID;
      v29->_purchaseID = v36;

      v29->_purchaseValidationState = state;
      v38 = [expirationCopy copy];
      dateOfExpiration = v29->_dateOfExpiration;
      v29->_dateOfExpiration = v38;

      v29->_hasShownRenewalNotice = notice;
      v29->_inTrialPeriod = period;
      v29->_isPurchaser = purchaser;
      v29->_isAmplifyUser = user;
      v29->_isPaidBundleViaOfferActivated = activated;
      v40 = [purchaseIDCopy copy];
      servicesBundlePurchaseID = v29->_servicesBundlePurchaseID;
      v29->_servicesBundlePurchaseID = v40;

      v42 = [timestampCopy copy];
      initialPurchaseTimestamp = v29->_initialPurchaseTimestamp;
      v29->_initialPurchaseTimestamp = v42;
    }

    else
    {
      initialPurchaseTimestamp = v28;
      v29 = 0;
    }
  }

  v44 = *MEMORY[0x1E69E9840];
  return v29;
}

- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation
{
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  representationCopy = representation;
  v38 = dCopy;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"bundle subscription lookup entry must have an identifier"];
    *buf = 136315906;
    v40 = "[FCBundleSubscriptionLookUpEntry initWithEntryID:dictionaryRepresentation:]";
    v41 = 2080;
    v42 = "FCBundleSubscriptionLookUpEntry.m";
    v43 = 1024;
    v44 = 95;
    v45 = 2114;
    v46 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryPurchaseValidationState"];
  v35 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryBundleChannelIDsKey"];
  v34 = [v35 componentsSeparatedByString:{@", "}];
  v33 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryPurchaseIDKey"];
  v32 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryBundleChannelIDsVersionKey"];
  objc_opt_class();
  v8 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryServicesBundlePurchaseIDKey"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v36 = v7;
  intValue = [v7 intValue];
  v12 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryHasShownRenewalNotice"];
  bOOLValue = [v12 BOOLValue];

  v13 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryInTrialPeriod"];
  bOOLValue2 = [v13 BOOLValue];

  v15 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryIsPurchaser"];
  bOOLValue3 = [v15 BOOLValue];

  v17 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryIsAmplifyUser"];
  bOOLValue4 = [v17 BOOLValue];

  v19 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryPaidBundleViaOfferActivated"];
  bOOLValue5 = [v19 BOOLValue];

  v21 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryDateOfExpiration"];
  objc_opt_class();
  v22 = [representationCopy objectForKeyedSubscript:@"BundleLookUpEntryInitialPurchaseTimestampKey"];
  if (v22)
  {
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  BYTE1(v30) = bOOLValue5;
  LOBYTE(v30) = bOOLValue4;
  BYTE2(v29) = bOOLValue3;
  BYTE1(v29) = bOOLValue2;
  LOBYTE(v29) = bOOLValue;
  v25 = [FCBundleSubscriptionLookUpEntry initWithEntryID:"initWithEntryID:bundleChannelIDs:bundleChannelIDsVersion:purchaseID:purchaseValidationState:dateOfExpiration:hasShownRenewalNotice:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:isPaidBundleViaOfferActivated:initialPurchaseTimestamp:" bundleChannelIDs:v38 bundleChannelIDsVersion:v34 purchaseID:v32 purchaseValidationState:v33 dateOfExpiration:intValue hasShownRenewalNotice:v21 inTrialPeriod:v29 isPurchaser:v10 servicesBundlePurchaseID:v30 isAmplifyUser:v24 isPaidBundleViaOfferActivated:? initialPurchaseTimestamp:?];

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCBundleSubscriptionLookUpEntry purchaseValidationState](self, "purchaseValidationState")}];
  [dictionary fc_safelySetObject:v4 forKey:@"BundleLookUpEntryPurchaseValidationState"];

  bundleChannelIDs = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDs];
  v6 = [bundleChannelIDs componentsJoinedByString:{@", "}];

  [dictionary fc_safelySetObjectAllowingNil:v6 forKey:@"BundleLookUpEntryBundleChannelIDsKey"];
  purchaseID = [(FCBundleSubscriptionLookUpEntry *)self purchaseID];
  [dictionary fc_safelySetObjectAllowingNil:purchaseID forKey:@"BundleLookUpEntryPurchaseIDKey"];

  bundleChannelIDsVersion = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDsVersion];
  [dictionary fc_safelySetObjectAllowingNil:bundleChannelIDsVersion forKey:@"BundleLookUpEntryBundleChannelIDsVersionKey"];

  servicesBundlePurchaseID = [(FCBundleSubscriptionLookUpEntry *)self servicesBundlePurchaseID];
  [dictionary fc_safelySetObjectAllowingNil:servicesBundlePurchaseID forKey:@"BundleLookUpEntryServicesBundlePurchaseIDKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")}];
  [dictionary fc_safelySetObject:v10 forKey:@"BundleLookUpEntryHasShownRenewalNotice"];

  dateOfExpiration = [(FCBundleSubscriptionLookUpEntry *)self dateOfExpiration];
  [dictionary fc_safelySetObjectAllowingNil:dateOfExpiration forKey:@"BundleLookUpEntryDateOfExpiration"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry inTrialPeriod](self, "inTrialPeriod")}];
  [dictionary fc_safelySetObject:v12 forKey:@"BundleLookUpEntryInTrialPeriod"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry isPurchaser](self, "isPurchaser")}];
  [dictionary fc_safelySetObject:v13 forKey:@"BundleLookUpEntryIsPurchaser"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry isAmplifyUser](self, "isAmplifyUser")}];
  [dictionary fc_safelySetObject:v14 forKey:@"BundleLookUpEntryIsAmplifyUser"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry isPaidBundleViaOfferActivated](self, "isPaidBundleViaOfferActivated")}];
  [dictionary fc_safelySetObject:v15 forKey:@"BundleLookUpEntryPaidBundleViaOfferActivated"];

  initialPurchaseTimestamp = [(FCBundleSubscriptionLookUpEntry *)self initialPurchaseTimestamp];
  [dictionary fc_safelySetObjectAllowingNil:initialPurchaseTimestamp forKey:@"BundleLookUpEntryInitialPurchaseTimestampKey"];

  v17 = [dictionary copy];

  return v17;
}

- (id)bundleSubscription
{
  purchaseID = [(FCBundleSubscriptionLookUpEntry *)self purchaseID];
  bundleChannelIDs = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDs];
  bundleChannelIDsVersion = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDsVersion];
  inTrialPeriod = [(FCBundleSubscriptionLookUpEntry *)self inTrialPeriod];
  isPurchaser = [(FCBundleSubscriptionLookUpEntry *)self isPurchaser];
  servicesBundlePurchaseID = [(FCBundleSubscriptionLookUpEntry *)self servicesBundlePurchaseID];
  isAmplifyUser = [(FCBundleSubscriptionLookUpEntry *)self isAmplifyUser];
  isPaidBundleViaOfferActivated = [(FCBundleSubscriptionLookUpEntry *)self isPaidBundleViaOfferActivated];
  initialPurchaseTimestamp = [(FCBundleSubscriptionLookUpEntry *)self initialPurchaseTimestamp];
  v11 = purchaseID;
  v12 = bundleChannelIDs;
  v13 = bundleChannelIDsVersion;
  v14 = servicesBundlePurchaseID;
  LOBYTE(v23) = isPaidBundleViaOfferActivated;
  v15 = initialPurchaseTimestamp;
  LOBYTE(v22) = isAmplifyUser;
  v16 = [[FCBundleSubscription alloc] initWithBundlePurchaseID:v11 bundleChannelIDs:v12 bundleChannelIDsVersion:v13 inTrialPeriod:inTrialPeriod isPurchaser:isPurchaser servicesBundlePurchaseID:v14 isAmplifyUser:v22 initialPurchaseTimestamp:initialPurchaseTimestamp isPaidBundleViaOfferActivated:v23];
  v17 = MEMORY[0x1E696AD98];
  v18 = v16;
  v19 = [v17 numberWithUnsignedInteger:&v16[2]._bundleChannelIDsVersion + 3];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-164 - v16];
  objc_setAssociatedObject(v18, &v16->super.isa + 1, v19, 1);
  objc_setAssociatedObject(v18, (-164 - v16), v20, 1);

  return v18;
}

- (id)description
{
  purchaseValidationState = [(FCBundleSubscriptionLookUpEntry *)self purchaseValidationState];
  v4 = @"expired";
  if (purchaseValidationState != 1)
  {
    v4 = 0;
  }

  if (purchaseValidationState)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"valid";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  identifier = [(FCBundleSubscriptionLookUpEntry *)self identifier];
  bundleChannelIDsVersion = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDsVersion];
  purchaseID = [(FCBundleSubscriptionLookUpEntry *)self purchaseID];
  dateOfExpiration = [(FCBundleSubscriptionLookUpEntry *)self dateOfExpiration];
  v12 = [v6 stringWithFormat:@"<%@: %p id: %@ channelIDsVersion: %@ purchaseID: %@ validationState: %@ dateOfExpiration: %@ hasShownRenewalNotice: %d>", v7, self, identifier, bundleChannelIDsVersion, purchaseID, v5, dateOfExpiration, -[FCBundleSubscriptionLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[FCBundleSubscriptionLookUpEntry allocWithZone:](FCBundleSubscriptionLookUpEntry init];
  v6 = [(NSString *)self->_identifier mutableCopyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIdentifier:v6];

  v7 = [(NSArray *)self->_bundleChannelIDs mutableCopyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setBundleChannelIDs:v7];

  v8 = [(NSString *)self->_bundleChannelIDsVersion mutableCopyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setBundleChannelIDsVersion:v8];

  v9 = [(NSString *)self->_purchaseID mutableCopyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setPurchaseID:v9];

  [(FCBundleSubscriptionLookUpEntry *)v5 setPurchaseValidationState:self->_purchaseValidationState];
  v10 = [(NSDate *)self->_dateOfExpiration copyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setDateOfExpiration:v10];

  [(FCBundleSubscriptionLookUpEntry *)v5 setHasShownRenewalNotice:self->_hasShownRenewalNotice];
  [(FCBundleSubscriptionLookUpEntry *)v5 setInTrialPeriod:self->_inTrialPeriod];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIsPurchaser:self->_isPurchaser];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIsAmplifyUser:self->_isAmplifyUser];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIsPaidBundleViaOfferActivated:self->_isPaidBundleViaOfferActivated];
  v11 = [(NSString *)self->_servicesBundlePurchaseID mutableCopyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setServicesBundlePurchaseID:v11];

  v12 = [(NSNumber *)self->_initialPurchaseTimestamp copyWithZone:zone];
  [(FCBundleSubscriptionLookUpEntry *)v5 setInitialPurchaseTimestamp:v12];

  return v5;
}

@end