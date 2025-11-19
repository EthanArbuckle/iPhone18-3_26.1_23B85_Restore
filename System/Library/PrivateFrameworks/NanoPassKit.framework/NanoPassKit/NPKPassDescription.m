@interface NPKPassDescription
+ (BOOL)isCachingEnabled;
+ (void)setCachingEnabled:(BOOL)a3;
- (BOOL)hasValidNFCPayload;
- (BOOL)isAddValuePending;
- (BOOL)isEnroute;
- (BOOL)isEqual:(id)a3;
- (NPKPassDescription)initWithCoder:(id)a3;
- (NSData)backgroundImageEncoded;
- (NSData)logoImageEncoded;
- (PKImage)backgroundImage;
- (PKImage)logoImage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsData:(id)a3;
- (id)fieldForKey:(id)a3;
- (id)transitProperties;
- (int64_t)effectiveContactlessPaymentApplicationState;
- (unint64_t)hash;
- (void)encodeObject:(id)a3 asDataInCoder:(id)a4 withKey:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundImage:(id)a3;
- (void)setBackgroundImageEncoded:(id)a3;
- (void)setLogoImage:(id)a3;
- (void)setLogoImageEncoded:(id)a3;
@end

@implementation NPKPassDescription

+ (BOOL)isCachingEnabled
{
  if (__InitializeCachingIfNecessary_onceToken != -1)
  {
    +[NPKPassDescription isCachingEnabled];
  }

  return __IsCachingEnabled;
}

+ (void)setCachingEnabled:(BOOL)a3
{
  if (__InitializeCachingIfNecessary_onceToken != -1)
  {
    +[NPKPassDescription isCachingEnabled];
  }

  __IsCachingEnabled = a3;
}

- (NPKPassDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = NPKPassDescription;
  v5 = [(NPKPassDescription *)&v52 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    [(NPKPassDescription *)v5 setUniqueID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    [(NPKPassDescription *)v5 setGroupID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    [(NPKPassDescription *)v5 setPassTypeIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    [(NPKPassDescription *)v5 setManifestHash:v9];

    -[NPKPassDescription setStyle:](v5, "setStyle:", [v4 decodeIntegerForKey:@"style"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relevantDate"];
    [(NPKPassDescription *)v5 setRelevantDate:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ingestionDate"];
    [(NPKPassDescription *)v5 setIngestionDate:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoText"];
    [(NPKPassDescription *)v5 setLogoText:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    [(NPKPassDescription *)v5 setBackgroundColor:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    [(NPKPassDescription *)v5 setForegroundColor:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"labelColor"];
    [(NPKPassDescription *)v5 setLabelColor:v15];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"devicePaymentApplications"];
    [(NPKPassDescription *)v5 setDevicePaymentApplications:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryPaymentApplication"];
    [(NPKPassDescription *)v5 setDevicePrimaryPaymentApplication:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryContactlessPaymentApplication"];
    [(NPKPassDescription *)v5 setDevicePrimaryContactlessPaymentApplication:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryInAppPaymentApplication"];
    [(NPKPassDescription *)v5 setDevicePrimaryInAppPaymentApplication:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredPaymentApplication"];
    [(NPKPassDescription *)v5 setPreferredPaymentApplication:v23];

    -[NPKPassDescription setEffectivePaymentApplicationState:](v5, "setEffectivePaymentApplicationState:", [v4 decodeIntegerForKey:@"effectivePaymentApplicationState"]);
    -[NPKPassDescription setPrivateLabel:](v5, "setPrivateLabel:", [v4 decodeBoolForKey:@"privateLabel"]);
    -[NPKPassDescription setCobranded:](v5, "setCobranded:", [v4 decodeBoolForKey:@"cobranded"]);
    -[NPKPassDescription setDeletePending:](v5, "setDeletePending:", [v4 decodeBoolForKey:@"deletePending"]);
    -[NPKPassDescription setHasUserSelectableContactlessPaymentApplications:](v5, "setHasUserSelectableContactlessPaymentApplications:", [v4 decodeBoolForKey:@"hasUserSelectablePaymentApplications"]);
    v24 = [(NPKPassDescription *)v5 logoImage];

    if (!v24)
    {
      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImageEncoded"];
      [(NPKPassDescription *)v5 setLogoImageEncoded:v25];
    }

    v26 = [(NPKPassDescription *)v5 backgroundImage];

    if (!v26)
    {
      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundImageEncoded"];
      [(NPKPassDescription *)v5 setBackgroundImageEncoded:v27];
    }

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    [(NPKPassDescription *)v5 setLocalizedDescription:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nfcPayload"];
    [(NPKPassDescription *)v5 setNfcPayload:v29];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completeHash"];
    [(NPKPassDescription *)v5 setCompleteHash:v30];

    -[NPKPassDescription setHasStoredValue:](v5, "setHasStoredValue:", [v4 decodeBoolForKey:@"hasStoredValue"]);
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settings"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 unsignedIntegerValue];
    }

    else if ([(NPKPassDescription *)v5 style]== 6)
    {
      v33 = 72;
    }

    else
    {
      v33 = 3;
    }

    [(NPKPassDescription *)v5 setSettings:v33];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerCountryCode"];
    [(NPKPassDescription *)v5 setIssuerCountryCode:v34];

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"availableActions"];
    [(NPKPassDescription *)v5 setAvailableActions:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    [(NPKPassDescription *)v5 setOrganizationName:v39];

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"felicaTransitAppletState"];
    [(NPKPassDescription *)v5 setTransitAppletState:v40];

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [v4 decodeObjectOfClasses:v43 forKey:@"frontFieldBuckets"];
    [(NPKPassDescription *)v5 setFrontFieldBuckets:v44];

    v45 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"backFieldBuckets"];
    [(NPKPassDescription *)v5 setBackFieldBuckets:v48];

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastAddValueAmount"];
    [(NPKPassDescription *)v5 setLastAddValueAmount:v49];

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingAddValueDate"];
    [(NPKPassDescription *)v5 setPendingAddValueDate:v50];

    -[NPKPassDescription setExpressPassTypesMask:](v5, "setExpressPassTypesMask:", [v4 decodeIntegerForKey:@"expressPassTypesMask"]);
    -[NPKPassDescription setHasAssociatedPeerPaymentAccount:](v5, "setHasAssociatedPeerPaymentAccount:", [v4 decodeBoolForKey:@"hasAssociatedPeerPaymentAccount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v33 = a3;
  v4 = [(NPKPassDescription *)self uniqueID];
  [v33 encodeObject:v4 forKey:@"uniqueID"];

  v5 = [(NPKPassDescription *)self groupID];
  [v33 encodeObject:v5 forKey:@"groupID"];

  v6 = [(NPKPassDescription *)self passTypeIdentifier];
  [v33 encodeObject:v6 forKey:@"passTypeIdentifier"];

  v7 = [(NPKPassDescription *)self manifestHash];
  [v33 encodeObject:v7 forKey:@"manifestHash"];

  [v33 encodeInteger:-[NPKPassDescription style](self forKey:{"style"), @"style"}];
  v8 = [(NPKPassDescription *)self relevantDate];
  [v33 encodeObject:v8 forKey:@"relevantDate"];

  v9 = [(NPKPassDescription *)self ingestionDate];
  [v33 encodeObject:v9 forKey:@"ingestionDate"];

  v10 = [(NPKPassDescription *)self logoText];
  [v33 encodeObject:v10 forKey:@"logoText"];

  v11 = [(NPKPassDescription *)self backgroundColor];
  [v33 encodeObject:v11 forKey:@"backgroundColor"];

  v12 = [(NPKPassDescription *)self foregroundColor];
  [v33 encodeObject:v12 forKey:@"foregroundColor"];

  v13 = [(NPKPassDescription *)self labelColor];
  [v33 encodeObject:v13 forKey:@"labelColor"];

  v14 = [(NPKPassDescription *)self devicePaymentApplications];
  [v33 encodeObject:v14 forKey:@"devicePaymentApplications"];

  v15 = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
  [v33 encodeObject:v15 forKey:@"devicePrimaryPaymentApplication"];

  v16 = [(NPKPassDescription *)self devicePrimaryContactlessPaymentApplication];
  [v33 encodeObject:v16 forKey:@"devicePrimaryContactlessPaymentApplication"];

  v17 = [(NPKPassDescription *)self devicePrimaryInAppPaymentApplication];
  [v33 encodeObject:v17 forKey:@"devicePrimaryInAppPaymentApplication"];

  v18 = [(NPKPassDescription *)self preferredPaymentApplication];
  [v33 encodeObject:v18 forKey:@"preferredPaymentApplication"];

  [v33 encodeInteger:-[NPKPassDescription effectivePaymentApplicationState](self forKey:{"effectivePaymentApplicationState"), @"effectivePaymentApplicationState"}];
  [v33 encodeBool:-[NPKPassDescription isPrivateLabel](self forKey:{"isPrivateLabel"), @"privateLabel"}];
  [v33 encodeBool:-[NPKPassDescription isCobranded](self forKey:{"isCobranded"), @"cobranded"}];
  [v33 encodeBool:-[NPKPassDescription deletePending](self forKey:{"deletePending"), @"deletePending"}];
  [v33 encodeBool:-[NPKPassDescription hasUserSelectableContactlessPaymentApplications](self forKey:{"hasUserSelectableContactlessPaymentApplications"), @"hasUserSelectablePaymentApplications"}];
  v19 = [(NPKPassDescription *)self logoImageEncoded];
  [v33 encodeObject:v19 forKey:@"logoImageEncoded"];

  v20 = [(NPKPassDescription *)self backgroundImageEncoded];
  [v33 encodeObject:v20 forKey:@"backgroundImageEncoded"];

  v21 = [(NPKPassDescription *)self localizedDescription];
  [v33 encodeObject:v21 forKey:@"localizedDescription"];

  v22 = [(NPKPassDescription *)self nfcPayload];
  [v33 encodeObject:v22 forKey:@"nfcPayload"];

  v23 = [(NPKPassDescription *)self completeHash];
  [v33 encodeObject:v23 forKey:@"completeHash"];

  [v33 encodeBool:-[NPKPassDescription hasStoredValue](self forKey:{"hasStoredValue"), @"hasStoredValue"}];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NPKPassDescription settings](self, "settings")}];
  [v33 encodeObject:v24 forKey:@"settings"];

  v25 = [(NPKPassDescription *)self issuerCountryCode];
  [v33 encodeObject:v25 forKey:@"issuerCountryCode"];

  v26 = [(NPKPassDescription *)self availableActions];
  [v33 encodeObject:v26 forKey:@"availableActions"];

  v27 = [(NPKPassDescription *)self organizationName];
  [v33 encodeObject:v27 forKey:@"organizationName"];

  v28 = [(NPKPassDescription *)self transitAppletState];
  [v33 encodeObject:v28 forKey:@"felicaTransitAppletState"];

  v29 = [(NPKPassDescription *)self frontFieldBuckets];
  [v33 encodeObject:v29 forKey:@"frontFieldBuckets"];

  v30 = [(NPKPassDescription *)self backFieldBuckets];
  [v33 encodeObject:v30 forKey:@"backFieldBuckets"];

  v31 = [(NPKPassDescription *)self lastAddValueAmount];
  [v33 encodeObject:v31 forKey:@"lastAddValueAmount"];

  v32 = [(NPKPassDescription *)self pendingAddValueDate];
  [v33 encodeObject:v32 forKey:@"pendingAddValueDate"];

  [v33 encodeInteger:-[NPKPassDescription expressPassTypesMask](self forKey:{"expressPassTypesMask"), @"expressPassTypesMask"}];
  [v33 encodeBool:-[NPKPassDescription hasAssociatedPeerPaymentAccount](self forKey:{"hasAssociatedPeerPaymentAccount"), @"hasAssociatedPeerPaymentAccount"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NPKPassDescription);
  objc_storeStrong(&v4->_uniqueID, self->_uniqueID);
  objc_storeStrong(&v4->_groupID, self->_groupID);
  objc_storeStrong(&v4->_passTypeIdentifier, self->_passTypeIdentifier);
  objc_storeStrong(&v4->_manifestHash, self->_manifestHash);
  v4->_style = self->_style;
  objc_storeStrong(&v4->_relevantDate, self->_relevantDate);
  objc_storeStrong(&v4->_ingestionDate, self->_ingestionDate);
  objc_storeStrong(&v4->_logoText, self->_logoText);
  objc_storeStrong(&v4->_logoImage, self->_logoImage);
  objc_storeStrong(&v4->_logoImageEncoded, self->_logoImageEncoded);
  objc_storeStrong(&v4->_backgroundColor, self->_backgroundColor);
  objc_storeStrong(&v4->_foregroundColor, self->_foregroundColor);
  objc_storeStrong(&v4->_labelColor, self->_labelColor);
  objc_storeStrong(&v4->_backgroundImage, self->_backgroundImage);
  objc_storeStrong(&v4->_backgroundImageEncoded, self->_backgroundImageEncoded);
  objc_storeStrong(&v4->_localizedDescription, self->_localizedDescription);
  objc_storeStrong(&v4->_devicePaymentApplications, self->_devicePaymentApplications);
  objc_storeStrong(&v4->_devicePrimaryPaymentApplication, self->_devicePrimaryPaymentApplication);
  objc_storeStrong(&v4->_devicePrimaryContactlessPaymentApplication, self->_devicePrimaryContactlessPaymentApplication);
  objc_storeStrong(&v4->_devicePrimaryInAppPaymentApplication, self->_devicePrimaryInAppPaymentApplication);
  objc_storeStrong(&v4->_preferredPaymentApplication, self->_preferredPaymentApplication);
  v4->_effectivePaymentApplicationState = self->_effectivePaymentApplicationState;
  v4->_privateLabel = self->_privateLabel;
  v4->_cobranded = self->_cobranded;
  v4->_deletePending = self->_deletePending;
  v4->_hasUserSelectableContactlessPaymentApplications = self->_hasUserSelectableContactlessPaymentApplications;
  objc_storeStrong(&v4->_backgroundColor, self->_backgroundColor);
  objc_storeStrong(&v4->_nfcPayload, self->_nfcPayload);
  objc_storeStrong(&v4->_completeHash, self->_completeHash);
  v4->_hasStoredValue = self->_hasStoredValue;
  v4->_settings = self->_settings;
  objc_storeStrong(&v4->_issuerCountryCode, self->_issuerCountryCode);
  objc_storeStrong(&v4->_availableActions, self->_availableActions);
  objc_storeStrong(&v4->_organizationName, self->_organizationName);
  objc_storeStrong(&v4->_transitAppletState, self->_transitAppletState);
  objc_storeStrong(&v4->_frontFieldBuckets, self->_frontFieldBuckets);
  objc_storeStrong(&v4->_backFieldBuckets, self->_backFieldBuckets);
  objc_storeStrong(&v4->_lastAddValueAmount, self->_lastAddValueAmount);
  objc_storeStrong(&v4->_pendingAddValueDate, self->_pendingAddValueDate);
  v4->_expressPassTypesMask = self->_expressPassTypesMask;
  v4->_hasAssociatedPeerPaymentAccount = self->_hasAssociatedPeerPaymentAccount;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v36 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_72;
    }

    uniqueID = self->_uniqueID;
    if (uniqueID | v4->_uniqueID)
    {
      if (![(NSString *)uniqueID isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    groupID = self->_groupID;
    if (groupID | v4->_groupID)
    {
      if (![(NSNumber *)groupID isEqual:?])
      {
        goto LABEL_72;
      }
    }

    passTypeIdentifier = self->_passTypeIdentifier;
    if (passTypeIdentifier | v4->_passTypeIdentifier)
    {
      if (![(NSString *)passTypeIdentifier isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    manifestHash = self->_manifestHash;
    if (manifestHash | v4->_manifestHash)
    {
      if (![(NSData *)manifestHash isEqualToData:?])
      {
        goto LABEL_72;
      }
    }

    if (self->_style != v4->_style)
    {
      goto LABEL_72;
    }

    relevantDate = self->_relevantDate;
    if (relevantDate | v4->_relevantDate)
    {
      if (![(NSDate *)relevantDate isEqualToDate:?])
      {
        goto LABEL_72;
      }
    }

    ingestionDate = self->_ingestionDate;
    if (ingestionDate | v4->_ingestionDate)
    {
      if (![(NSDate *)ingestionDate isEqualToDate:?])
      {
        goto LABEL_72;
      }
    }

    logoText = self->_logoText;
    if (logoText | v4->_logoText)
    {
      if (![(NSString *)logoText isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    logoImageEncoded = self->_logoImageEncoded;
    if (logoImageEncoded | v4->_logoImageEncoded)
    {
      if (![(NSData *)logoImageEncoded isEqualToData:?])
      {
        goto LABEL_72;
      }
    }

    backgroundColor = self->_backgroundColor;
    if (backgroundColor || v4->_backgroundColor)
    {
      v14 = [(PKColor *)backgroundColor hash];
      if (v14 != [(PKColor *)v4->_backgroundColor hash])
      {
        goto LABEL_72;
      }
    }

    foregroundColor = self->_foregroundColor;
    if (foregroundColor || v4->_foregroundColor)
    {
      v16 = [(PKColor *)foregroundColor hash];
      if (v16 != [(PKColor *)v4->_foregroundColor hash])
      {
        goto LABEL_72;
      }
    }

    labelColor = self->_labelColor;
    if (labelColor || v4->_labelColor)
    {
      v18 = [(PKColor *)labelColor hash];
      if (v18 != [(PKColor *)v4->_labelColor hash])
      {
        goto LABEL_72;
      }
    }

    localizedDescription = self->_localizedDescription;
    if (localizedDescription | v4->_localizedDescription && ![(NSString *)localizedDescription isEqualToString:?])
    {
      goto LABEL_72;
    }

    backgroundImageEncoded = self->_backgroundImageEncoded;
    if (backgroundImageEncoded | v4->_backgroundImageEncoded && ![(NSData *)backgroundImageEncoded isEqualToData:?])
    {
      goto LABEL_72;
    }

    devicePaymentApplications = self->_devicePaymentApplications;
    if (devicePaymentApplications | v4->_devicePaymentApplications && ![(NSSet *)devicePaymentApplications isEqual:?])
    {
      goto LABEL_72;
    }

    devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
    if (devicePrimaryPaymentApplication | v4->_devicePrimaryPaymentApplication && ![(PKPaymentApplication *)devicePrimaryPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    devicePrimaryContactlessPaymentApplication = self->_devicePrimaryContactlessPaymentApplication;
    if (devicePrimaryContactlessPaymentApplication | v4->_devicePrimaryContactlessPaymentApplication && ![(PKPaymentApplication *)devicePrimaryContactlessPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    devicePrimaryInAppPaymentApplication = self->_devicePrimaryInAppPaymentApplication;
    if (devicePrimaryInAppPaymentApplication | v4->_devicePrimaryInAppPaymentApplication && ![(PKPaymentApplication *)devicePrimaryInAppPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    preferredPaymentApplication = self->_preferredPaymentApplication;
    if (preferredPaymentApplication | v4->_preferredPaymentApplication && ![(PKPaymentApplication *)preferredPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    if (self->_effectivePaymentApplicationState != v4->_effectivePaymentApplicationState)
    {
      goto LABEL_72;
    }

    if (self->_privateLabel != v4->_privateLabel)
    {
      goto LABEL_72;
    }

    if (self->_cobranded != v4->_cobranded)
    {
      goto LABEL_72;
    }

    if (self->_deletePending != v4->_deletePending)
    {
      goto LABEL_72;
    }

    if (self->_hasUserSelectableContactlessPaymentApplications != v4->_hasUserSelectableContactlessPaymentApplications)
    {
      goto LABEL_72;
    }

    nfcPayload = self->_nfcPayload;
    if (nfcPayload | v4->_nfcPayload)
    {
      if (![(PKNFCPayload *)nfcPayload isEqual:?])
      {
        goto LABEL_72;
      }
    }

    completeHash = self->_completeHash;
    if (completeHash | v4->_completeHash && ![(NSData *)completeHash isEqual:?])
    {
      goto LABEL_72;
    }

    if (self->_hasStoredValue != v4->_hasStoredValue)
    {
      goto LABEL_72;
    }

    if (self->_settings != v4->_settings)
    {
      goto LABEL_72;
    }

    issuerCountryCode = self->_issuerCountryCode;
    if (issuerCountryCode | v4->_issuerCountryCode)
    {
      if (![(NSString *)issuerCountryCode isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    if (((availableActions = self->_availableActions, !(availableActions | v4->_availableActions)) || [(NSArray *)availableActions isEqual:?]) && ((organizationName = self->_organizationName, !(organizationName | v4->_organizationName)) || [(NSString *)organizationName isEqual:?]) && ((transitAppletState = self->_transitAppletState, !(transitAppletState | v4->_transitAppletState)) || [(PKTransitAppletState *)transitAppletState isEqual:?]) && ((frontFieldBuckets = self->_frontFieldBuckets, !(frontFieldBuckets | v4->_frontFieldBuckets)) || [(NSArray *)frontFieldBuckets isEqual:?]) && ((backFieldBuckets = self->_backFieldBuckets, !(backFieldBuckets | v4->_backFieldBuckets)) || [(NSArray *)backFieldBuckets isEqual:?]) && ((lastAddValueAmount = self->_lastAddValueAmount, !(lastAddValueAmount | v4->_lastAddValueAmount)) || [(NSDecimalNumber *)lastAddValueAmount isEqual:?]) && ((pendingAddValueDate = self->_pendingAddValueDate, !(pendingAddValueDate | v4->_pendingAddValueDate)) || [(NSDate *)pendingAddValueDate isEqual:?]) && self->_expressPassTypesMask == v4->_expressPassTypesMask)
    {
      v36 = self->_hasAssociatedPeerPaymentAccount == v4->_hasAssociatedPeerPaymentAccount;
    }

    else
    {
LABEL_72:
      v36 = 0;
    }
  }

  return v36;
}

- (unint64_t)hash
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D38638];
  uniqueID = self->_uniqueID;
  v33 = *&self->_groupID;
  style = self->_style;
  manifestHash = self->_manifestHash;
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v35 = v31;
  v36 = *&self->_relevantDate;
  backgroundColor = self->_backgroundColor;
  backgroundImageEncoded = self->_backgroundImageEncoded;
  logoImageEncoded = self->_logoImageEncoded;
  logoText = self->_logoText;
  v38 = logoImageEncoded;
  v39 = backgroundColor;
  v40 = *&self->_foregroundColor;
  localizedDescription = self->_localizedDescription;
  devicePaymentApplications = self->_devicePaymentApplications;
  v41 = backgroundImageEncoded;
  v42 = localizedDescription;
  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
  v43 = devicePaymentApplications;
  v44 = devicePrimaryPaymentApplication;
  v45 = *&self->_devicePrimaryContactlessPaymentApplication;
  effectivePaymentApplicationState = self->_effectivePaymentApplicationState;
  preferredPaymentApplication = self->_preferredPaymentApplication;
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:effectivePaymentApplicationState];
  v47 = v30;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateLabel];
  v48 = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_cobranded];
  v49 = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_deletePending];
  v50 = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasUserSelectableContactlessPaymentApplications];
  nfcPayload = self->_nfcPayload;
  completeHash = self->_completeHash;
  v51 = v15;
  v52 = nfcPayload;
  v53 = completeHash;
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasStoredValue];
  v54 = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_settings];
  issuerCountryCode = self->_issuerCountryCode;
  availableActions = self->_availableActions;
  v55 = v19;
  v56 = issuerCountryCode;
  v57 = availableActions;
  v58 = *&self->_organizationName;
  frontFieldBuckets = self->_frontFieldBuckets;
  v60 = *&self->_backFieldBuckets;
  pendingAddValueDate = self->_pendingAddValueDate;
  v59 = frontFieldBuckets;
  v61 = pendingAddValueDate;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_expressPassTypesMask];
  v62 = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAssociatedPeerPaymentAccount];
  v63 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&uniqueID count:38];
  v27 = PKCombinedHash();

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)description
{
  v33 = MEMORY[0x277CCACA8];
  v47.receiver = self;
  v47.super_class = NPKPassDescription;
  v46 = [(NPKPassDescription *)&v47 description];
  v45 = [(NPKPassDescription *)self uniqueID];
  v44 = [(NPKPassDescription *)self groupID];
  v43 = [(NPKPassDescription *)self passTypeIdentifier];
  v42 = [(NPKPassDescription *)self manifestHash];
  v32 = [(NPKPassDescription *)self style];
  v41 = [(NPKPassDescription *)self relevantDate];
  v40 = [(NPKPassDescription *)self ingestionDate];
  v38 = [(NPKPassDescription *)self logoText];
  logoImage = self->_logoImage;
  v39 = [(NPKPassDescription *)self logoImageEncoded];
  v37 = [(NPKPassDescription *)self backgroundColor];
  v36 = [(NPKPassDescription *)self foregroundColor];
  v30 = [(NPKPassDescription *)self labelColor];
  backgroundImage = self->_backgroundImage;
  v28 = [(NPKPassDescription *)self backgroundImageEncoded];
  v29 = [(NPKPassDescription *)self localizedDescription];
  v26 = [(NPKPassDescription *)self devicePaymentApplications];
  v25 = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
  v24 = [(NPKPassDescription *)self devicePrimaryContactlessPaymentApplication];
  v35 = [(NPKPassDescription *)self devicePrimaryInAppPaymentApplication];
  v23 = [(NPKPassDescription *)self preferredPaymentApplication];
  v22 = [(NPKPassDescription *)self effectivePaymentApplicationState];
  v3 = [(NPKPassDescription *)self isPrivateLabel];
  v4 = [(NPKPassDescription *)self isCobranded];
  v5 = [(NPKPassDescription *)self deletePending];
  v6 = [(NPKPassDescription *)self hasUserSelectableContactlessPaymentApplications];
  v21 = [(NPKPassDescription *)self nfcPayload];
  v7 = [(NPKPassDescription *)self completeHash];
  v8 = [(NPKPassDescription *)self hasStoredValue];
  v9 = [(NPKPassDescription *)self settings];
  [(NPKPassDescription *)self issuerCountryCode];
  v10 = v20 = v3;
  v34 = [v33 stringWithFormat:@"<%@> (uniqueID %@ groupID %@ passTypeIdentifier %@ manifestHash %@ style %d relevantDate %@ ingestionDate %@ logoText %@ logoImage %@ logoImageEncoded %p backgroundColor %@ foregroundColor %@ labelColor %@ backgroundImage %@ backgroundImageEncoded %p, localizedDescription %@, devicePaymentApplications (%@) devicePrimaryPaymentApplication (%@) devicePrimaryContactlessPaymentApplication (%@) devicePrimaryInAppPaymentApplication (%@) preferredPaymentApplication (%@) effectivePaymentApplicationState %d privateLabel %d cobranded %d deletePending %d hasUserSelectableContactlessPaymentApplications %d nfcPayload %@ completeHash %@ hasStoredValue %d settings %d issuerCountryCode %@ expressPassTypesMask %lu)", v46, v45, v44, v43, v42, v32, v41, v40, v38, logoImage, v39, v37, v36, v30, backgroundImage, v28, v29, v26, v25, v24, v35, v23, v22, v20, v4, v5, v6, v21, v7, v8, v9, v10, -[NPKPassDescription expressPassTypesMask](self, "expressPassTypesMask")];

  v11 = [(NPKPassDescription *)self availableActions];
  v12 = [(NPKPassDescription *)self organizationName];
  v13 = [(NPKPassDescription *)self transitAppletState];
  v14 = [(NPKPassDescription *)self frontFieldBuckets];
  v15 = [(NPKPassDescription *)self backFieldBuckets];
  v16 = [(NPKPassDescription *)self lastAddValueAmount];
  v17 = [(NPKPassDescription *)self pendingAddValueDate];
  v18 = [v34 stringByAppendingFormat:@" (availableActions %@ organizationName %@ transitAppletState %@ frontFieldBuckets %@ backFieldBuckets %@ lastAddValueAmount %@ pendingAddValueDate %@  hasAssociatedPeerPaymentAccount %d)", v11, v12, v13, v14, v15, v16, v17, -[NPKPassDescription hasAssociatedPeerPaymentAccount](self, "hasAssociatedPeerPaymentAccount")];

  return v18;
}

- (id)encodeAsData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = NPKSecureArchiveObject(a3);
    v5 = [v3 dataWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeObject:(id)a3 asDataInCoder:(id)a4 withKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(NPKPassDescription *)self encodeAsData:a3];
  [v9 encodeObject:v10 forKey:v8];
}

- (void)setLogoImage:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_logoImage, a3);
  if ([(NPKPassDescription *)self lazyLoadEncodedImages]|| !self->_logoImage)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NPKPassDescription *)self encodeAsData:?];
  }

  logoImageEncoded = self->_logoImageEncoded;
  self->_logoImageEncoded = v5;
}

- (void)setBackgroundImage:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_backgroundImage, a3);
  if ([(NPKPassDescription *)self lazyLoadEncodedImages]|| !self->_backgroundImage)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NPKPassDescription *)self encodeAsData:?];
  }

  backgroundImageEncoded = self->_backgroundImageEncoded;
  self->_backgroundImageEncoded = v5;
}

- (NSData)backgroundImageEncoded
{
  if (!self->_backgroundImageEncoded)
  {
    if (self->_backgroundImage)
    {
      v3 = [(NPKPassDescription *)self encodeAsData:?];
    }

    else
    {
      v3 = 0;
    }

    backgroundImageEncoded = self->_backgroundImageEncoded;
    self->_backgroundImageEncoded = v3;
  }

  v5 = self->_backgroundImageEncoded;

  return v5;
}

- (void)setLogoImageEncoded:(id)a3
{
  v4 = a3;
  logoImage = self->_logoImage;
  self->_logoImage = 0;

  logoImageEncoded = self->_logoImageEncoded;
  self->_logoImageEncoded = v4;
}

- (NSData)logoImageEncoded
{
  if (!self->_logoImageEncoded)
  {
    if (self->_logoImage)
    {
      v3 = [(NPKPassDescription *)self encodeAsData:?];
    }

    else
    {
      v3 = 0;
    }

    logoImageEncoded = self->_logoImageEncoded;
    self->_logoImageEncoded = v3;
  }

  v5 = self->_logoImageEncoded;

  return v5;
}

- (void)setBackgroundImageEncoded:(id)a3
{
  v4 = a3;
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = 0;

  backgroundImageEncoded = self->_backgroundImageEncoded;
  self->_backgroundImageEncoded = v4;
}

- (PKImage)logoImage
{
  p_logoImage = &self->_logoImage;
  logoImage = self->_logoImage;
  if (logoImage)
  {
    v4 = logoImage;
  }

  else
  {
    v4 = [(NPKPassDescription *)self logoImageEncoded];

    if (v4)
    {
      v7 = pk_ui_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_ui_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: decoding logo image from data on demand", v12, 2u);
        }
      }

      v10 = [(NPKPassDescription *)self logoImageEncoded];
      v11 = objc_opt_class();
      v4 = NPKSecureUnarchiveObject(v10, v11);

      if (v4 && [objc_opt_class() isCachingEnabled])
      {
        objc_storeStrong(p_logoImage, v4);
      }
    }
  }

  return v4;
}

- (PKImage)backgroundImage
{
  p_backgroundImage = &self->_backgroundImage;
  backgroundImage = self->_backgroundImage;
  if (backgroundImage)
  {
    v4 = backgroundImage;
  }

  else
  {
    v4 = [(NPKPassDescription *)self backgroundImageEncoded];

    if (v4)
    {
      v7 = pk_ui_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_ui_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: decoding background image from data on demand", v12, 2u);
        }
      }

      v10 = [(NPKPassDescription *)self backgroundImageEncoded];
      v11 = objc_opt_class();
      v4 = NPKSecureUnarchiveObject(v10, v11);

      if (v4 && [objc_opt_class() isCachingEnabled])
      {
        objc_storeStrong(p_backgroundImage, v4);
      }
    }
  }

  return v4;
}

- (int64_t)effectiveContactlessPaymentApplicationState
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
  v4 = [v3 state];

  if (v4 == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NPKPassDescription *)self devicePaymentApplications];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) state];
          if (v10 != 1)
          {
            v4 = v10;
            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 1;
LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)transitProperties
{
  v3 = [(NPKPassDescription *)self transitAppletState];
  if (v3)
  {
    v4 = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
    v5 = [v3 transitPassPropertiesWithPaymentApplication:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fieldForKey:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = [(NPKPassDescription *)self frontFieldBuckets];
  v37 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (!v37)
  {

LABEL_21:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obja = [(NPKPassDescription *)self backFieldBuckets];
    v38 = [obja countByEnumeratingWithState:&v43 objects:v56 count:16];
    v18 = 0;
    if (v38)
    {
      v36 = *v44;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v39 objects:v55 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v40;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v40 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v39 + 1) + 8 * j);
                v27 = [v26 key];
                v28 = [v27 isEqual:v4];

                if (v28)
                {
                  v29 = v26;

                  v18 = v29;
                  goto LABEL_36;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v39 objects:v55 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_36:
        }

        v38 = [obja countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v38);
    }

    v6 = v18;
    goto LABEL_39;
  }

  v32 = self;
  obj = v5;
  v6 = 0;
  v35 = *v52;
  do
  {
    for (k = 0; k != v37; ++k)
    {
      if (*v52 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v51 + 1) + 8 * k);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v48;
        while (2)
        {
          for (m = 0; m != v11; ++m)
          {
            if (*v48 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v47 + 1) + 8 * m);
            v15 = [v14 key];
            v16 = [v15 isEqual:v4];

            if (v16)
            {
              v17 = v14;

              v6 = v17;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v37 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
  }

  while (v37);

  self = v32;
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_39:

  v30 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isAddValuePending
{
  v3 = [(NPKPassDescription *)self pendingAddValueDate];
  if (v3)
  {
    v4 = [(NPKPassDescription *)self pendingAddValueDate];
    [v4 timeIntervalSinceNow];
    v6 = fabs(v5) < 600.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEnroute
{
  v2 = [(NPKPassDescription *)self transitProperties];
  if ([v2 isInStation])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 felicaProperties];
    v3 = [v4 isInShinkansenStation];
  }

  return v3;
}

- (BOOL)hasValidNFCPayload
{
  v2 = [(NPKPassDescription *)self nfcPayload];
  v3 = [v2 message];
  if (v3)
  {
    v4 = [v2 encryptionPublicKeyData];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = PKNFCPassKeyOptional();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end