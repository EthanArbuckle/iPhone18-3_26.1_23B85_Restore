@interface FCBundleSubscriptionLookUpEntry
- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)a3 bundleChannelIDs:(id)a4 bundleChannelIDsVersion:(id)a5 purchaseID:(id)a6 purchaseValidationState:(unint64_t)a7 dateOfExpiration:(id)a8 hasShownRenewalNotice:(BOOL)a9 inTrialPeriod:(BOOL)a10 isPurchaser:(BOOL)a11 servicesBundlePurchaseID:(id)a12 isAmplifyUser:(BOOL)a13 isPaidBundleViaOfferActivated:(BOOL)a14 initialPurchaseTimestamp:(id)a15;
- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4;
- (id)bundleSubscription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation FCBundleSubscriptionLookUpEntry

- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)a3 bundleChannelIDs:(id)a4 bundleChannelIDsVersion:(id)a5 purchaseID:(id)a6 purchaseValidationState:(unint64_t)a7 dateOfExpiration:(id)a8 hasShownRenewalNotice:(BOOL)a9 inTrialPeriod:(BOOL)a10 isPurchaser:(BOOL)a11 servicesBundlePurchaseID:(id)a12 isAmplifyUser:(BOOL)a13 isPaidBundleViaOfferActivated:(BOOL)a14 initialPurchaseTimestamp:(id)a15
{
  v57 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a8;
  v26 = a12;
  v27 = a15;
  if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (v22)
    {
      goto LABEL_6;
    }
  }

  else if (v22)
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
    if (v21)
    {
      v30 = [v21 copy];
      identifier = v29->_identifier;
      v29->_identifier = v30;

      v32 = [v22 copy];
      bundleChannelIDs = v29->_bundleChannelIDs;
      v29->_bundleChannelIDs = v32;

      v34 = [v23 copy];
      bundleChannelIDsVersion = v29->_bundleChannelIDsVersion;
      v29->_bundleChannelIDsVersion = v34;

      v36 = [v24 copy];
      purchaseID = v29->_purchaseID;
      v29->_purchaseID = v36;

      v29->_purchaseValidationState = a7;
      v38 = [v25 copy];
      dateOfExpiration = v29->_dateOfExpiration;
      v29->_dateOfExpiration = v38;

      v29->_hasShownRenewalNotice = a9;
      v29->_inTrialPeriod = a10;
      v29->_isPurchaser = a11;
      v29->_isAmplifyUser = a13;
      v29->_isPaidBundleViaOfferActivated = a14;
      v40 = [v26 copy];
      servicesBundlePurchaseID = v29->_servicesBundlePurchaseID;
      v29->_servicesBundlePurchaseID = v40;

      v42 = [v27 copy];
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

- (FCBundleSubscriptionLookUpEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v38 = v5;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v7 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryPurchaseValidationState"];
  v35 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryBundleChannelIDsKey"];
  v34 = [v35 componentsSeparatedByString:{@", "}];
  v33 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryPurchaseIDKey"];
  v32 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryBundleChannelIDsVersionKey"];
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryServicesBundlePurchaseIDKey"];
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
  v11 = [v7 intValue];
  v12 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryHasShownRenewalNotice"];
  v31 = [v12 BOOLValue];

  v13 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryInTrialPeriod"];
  v14 = [v13 BOOLValue];

  v15 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryIsPurchaser"];
  v16 = [v15 BOOLValue];

  v17 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryIsAmplifyUser"];
  v18 = [v17 BOOLValue];

  v19 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryPaidBundleViaOfferActivated"];
  v20 = [v19 BOOLValue];

  v21 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryDateOfExpiration"];
  objc_opt_class();
  v22 = [v6 objectForKeyedSubscript:@"BundleLookUpEntryInitialPurchaseTimestampKey"];
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

  BYTE1(v30) = v20;
  LOBYTE(v30) = v18;
  BYTE2(v29) = v16;
  BYTE1(v29) = v14;
  LOBYTE(v29) = v31;
  v25 = [FCBundleSubscriptionLookUpEntry initWithEntryID:"initWithEntryID:bundleChannelIDs:bundleChannelIDsVersion:purchaseID:purchaseValidationState:dateOfExpiration:hasShownRenewalNotice:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:isPaidBundleViaOfferActivated:initialPurchaseTimestamp:" bundleChannelIDs:v38 bundleChannelIDsVersion:v34 purchaseID:v32 purchaseValidationState:v33 dateOfExpiration:v11 hasShownRenewalNotice:v21 inTrialPeriod:v29 isPurchaser:v10 servicesBundlePurchaseID:v30 isAmplifyUser:v24 isPaidBundleViaOfferActivated:? initialPurchaseTimestamp:?];

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCBundleSubscriptionLookUpEntry purchaseValidationState](self, "purchaseValidationState")}];
  [v3 fc_safelySetObject:v4 forKey:@"BundleLookUpEntryPurchaseValidationState"];

  v5 = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDs];
  v6 = [v5 componentsJoinedByString:{@", "}];

  [v3 fc_safelySetObjectAllowingNil:v6 forKey:@"BundleLookUpEntryBundleChannelIDsKey"];
  v7 = [(FCBundleSubscriptionLookUpEntry *)self purchaseID];
  [v3 fc_safelySetObjectAllowingNil:v7 forKey:@"BundleLookUpEntryPurchaseIDKey"];

  v8 = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDsVersion];
  [v3 fc_safelySetObjectAllowingNil:v8 forKey:@"BundleLookUpEntryBundleChannelIDsVersionKey"];

  v9 = [(FCBundleSubscriptionLookUpEntry *)self servicesBundlePurchaseID];
  [v3 fc_safelySetObjectAllowingNil:v9 forKey:@"BundleLookUpEntryServicesBundlePurchaseIDKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")}];
  [v3 fc_safelySetObject:v10 forKey:@"BundleLookUpEntryHasShownRenewalNotice"];

  v11 = [(FCBundleSubscriptionLookUpEntry *)self dateOfExpiration];
  [v3 fc_safelySetObjectAllowingNil:v11 forKey:@"BundleLookUpEntryDateOfExpiration"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry inTrialPeriod](self, "inTrialPeriod")}];
  [v3 fc_safelySetObject:v12 forKey:@"BundleLookUpEntryInTrialPeriod"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry isPurchaser](self, "isPurchaser")}];
  [v3 fc_safelySetObject:v13 forKey:@"BundleLookUpEntryIsPurchaser"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry isAmplifyUser](self, "isAmplifyUser")}];
  [v3 fc_safelySetObject:v14 forKey:@"BundleLookUpEntryIsAmplifyUser"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCBundleSubscriptionLookUpEntry isPaidBundleViaOfferActivated](self, "isPaidBundleViaOfferActivated")}];
  [v3 fc_safelySetObject:v15 forKey:@"BundleLookUpEntryPaidBundleViaOfferActivated"];

  v16 = [(FCBundleSubscriptionLookUpEntry *)self initialPurchaseTimestamp];
  [v3 fc_safelySetObjectAllowingNil:v16 forKey:@"BundleLookUpEntryInitialPurchaseTimestampKey"];

  v17 = [v3 copy];

  return v17;
}

- (id)bundleSubscription
{
  v3 = [(FCBundleSubscriptionLookUpEntry *)self purchaseID];
  v4 = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDs];
  v5 = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDsVersion];
  v24 = [(FCBundleSubscriptionLookUpEntry *)self inTrialPeriod];
  v6 = [(FCBundleSubscriptionLookUpEntry *)self isPurchaser];
  v7 = [(FCBundleSubscriptionLookUpEntry *)self servicesBundlePurchaseID];
  v8 = [(FCBundleSubscriptionLookUpEntry *)self isAmplifyUser];
  v9 = [(FCBundleSubscriptionLookUpEntry *)self isPaidBundleViaOfferActivated];
  v10 = [(FCBundleSubscriptionLookUpEntry *)self initialPurchaseTimestamp];
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v7;
  LOBYTE(v23) = v9;
  v15 = v10;
  LOBYTE(v22) = v8;
  v16 = [[FCBundleSubscription alloc] initWithBundlePurchaseID:v11 bundleChannelIDs:v12 bundleChannelIDsVersion:v13 inTrialPeriod:v24 isPurchaser:v6 servicesBundlePurchaseID:v14 isAmplifyUser:v22 initialPurchaseTimestamp:v10 isPaidBundleViaOfferActivated:v23];
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
  v3 = [(FCBundleSubscriptionLookUpEntry *)self purchaseValidationState];
  v4 = @"expired";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"valid";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [(FCBundleSubscriptionLookUpEntry *)self identifier];
  v9 = [(FCBundleSubscriptionLookUpEntry *)self bundleChannelIDsVersion];
  v10 = [(FCBundleSubscriptionLookUpEntry *)self purchaseID];
  v11 = [(FCBundleSubscriptionLookUpEntry *)self dateOfExpiration];
  v12 = [v6 stringWithFormat:@"<%@: %p id: %@ channelIDsVersion: %@ purchaseID: %@ validationState: %@ dateOfExpiration: %@ hasShownRenewalNotice: %d>", v7, self, v8, v9, v10, v5, v11, -[FCBundleSubscriptionLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [+[FCBundleSubscriptionLookUpEntry allocWithZone:](FCBundleSubscriptionLookUpEntry init];
  v6 = [(NSString *)self->_identifier mutableCopyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIdentifier:v6];

  v7 = [(NSArray *)self->_bundleChannelIDs mutableCopyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setBundleChannelIDs:v7];

  v8 = [(NSString *)self->_bundleChannelIDsVersion mutableCopyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setBundleChannelIDsVersion:v8];

  v9 = [(NSString *)self->_purchaseID mutableCopyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setPurchaseID:v9];

  [(FCBundleSubscriptionLookUpEntry *)v5 setPurchaseValidationState:self->_purchaseValidationState];
  v10 = [(NSDate *)self->_dateOfExpiration copyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setDateOfExpiration:v10];

  [(FCBundleSubscriptionLookUpEntry *)v5 setHasShownRenewalNotice:self->_hasShownRenewalNotice];
  [(FCBundleSubscriptionLookUpEntry *)v5 setInTrialPeriod:self->_inTrialPeriod];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIsPurchaser:self->_isPurchaser];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIsAmplifyUser:self->_isAmplifyUser];
  [(FCBundleSubscriptionLookUpEntry *)v5 setIsPaidBundleViaOfferActivated:self->_isPaidBundleViaOfferActivated];
  v11 = [(NSString *)self->_servicesBundlePurchaseID mutableCopyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setServicesBundlePurchaseID:v11];

  v12 = [(NSNumber *)self->_initialPurchaseTimestamp copyWithZone:a3];
  [(FCBundleSubscriptionLookUpEntry *)v5 setInitialPurchaseTimestamp:v12];

  return v5;
}

@end