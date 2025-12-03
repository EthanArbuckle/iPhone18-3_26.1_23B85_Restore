@interface NPKPassDescription
+ (BOOL)isCachingEnabled;
+ (void)setCachingEnabled:(BOOL)enabled;
- (BOOL)hasValidNFCPayload;
- (BOOL)isAddValuePending;
- (BOOL)isEnroute;
- (BOOL)isEqual:(id)equal;
- (NPKPassDescription)initWithCoder:(id)coder;
- (NSData)backgroundImageEncoded;
- (NSData)logoImageEncoded;
- (PKImage)backgroundImage;
- (PKImage)logoImage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsData:(id)data;
- (id)fieldForKey:(id)key;
- (id)transitProperties;
- (int64_t)effectiveContactlessPaymentApplicationState;
- (unint64_t)hash;
- (void)encodeObject:(id)object asDataInCoder:(id)coder withKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundImage:(id)image;
- (void)setBackgroundImageEncoded:(id)encoded;
- (void)setLogoImage:(id)image;
- (void)setLogoImageEncoded:(id)encoded;
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

+ (void)setCachingEnabled:(BOOL)enabled
{
  if (__InitializeCachingIfNecessary_onceToken != -1)
  {
    +[NPKPassDescription isCachingEnabled];
  }

  __IsCachingEnabled = enabled;
}

- (NPKPassDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = NPKPassDescription;
  v5 = [(NPKPassDescription *)&v52 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    [(NPKPassDescription *)v5 setUniqueID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    [(NPKPassDescription *)v5 setGroupID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    [(NPKPassDescription *)v5 setPassTypeIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    [(NPKPassDescription *)v5 setManifestHash:v9];

    -[NPKPassDescription setStyle:](v5, "setStyle:", [coderCopy decodeIntegerForKey:@"style"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantDate"];
    [(NPKPassDescription *)v5 setRelevantDate:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ingestionDate"];
    [(NPKPassDescription *)v5 setIngestionDate:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoText"];
    [(NPKPassDescription *)v5 setLogoText:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    [(NPKPassDescription *)v5 setBackgroundColor:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    [(NPKPassDescription *)v5 setForegroundColor:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labelColor"];
    [(NPKPassDescription *)v5 setLabelColor:v15];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"devicePaymentApplications"];
    [(NPKPassDescription *)v5 setDevicePaymentApplications:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryPaymentApplication"];
    [(NPKPassDescription *)v5 setDevicePrimaryPaymentApplication:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryContactlessPaymentApplication"];
    [(NPKPassDescription *)v5 setDevicePrimaryContactlessPaymentApplication:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryInAppPaymentApplication"];
    [(NPKPassDescription *)v5 setDevicePrimaryInAppPaymentApplication:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredPaymentApplication"];
    [(NPKPassDescription *)v5 setPreferredPaymentApplication:v23];

    -[NPKPassDescription setEffectivePaymentApplicationState:](v5, "setEffectivePaymentApplicationState:", [coderCopy decodeIntegerForKey:@"effectivePaymentApplicationState"]);
    -[NPKPassDescription setPrivateLabel:](v5, "setPrivateLabel:", [coderCopy decodeBoolForKey:@"privateLabel"]);
    -[NPKPassDescription setCobranded:](v5, "setCobranded:", [coderCopy decodeBoolForKey:@"cobranded"]);
    -[NPKPassDescription setDeletePending:](v5, "setDeletePending:", [coderCopy decodeBoolForKey:@"deletePending"]);
    -[NPKPassDescription setHasUserSelectableContactlessPaymentApplications:](v5, "setHasUserSelectableContactlessPaymentApplications:", [coderCopy decodeBoolForKey:@"hasUserSelectablePaymentApplications"]);
    logoImage = [(NPKPassDescription *)v5 logoImage];

    if (!logoImage)
    {
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImageEncoded"];
      [(NPKPassDescription *)v5 setLogoImageEncoded:v25];
    }

    backgroundImage = [(NPKPassDescription *)v5 backgroundImage];

    if (!backgroundImage)
    {
      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundImageEncoded"];
      [(NPKPassDescription *)v5 setBackgroundImageEncoded:v27];
    }

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    [(NPKPassDescription *)v5 setLocalizedDescription:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nfcPayload"];
    [(NPKPassDescription *)v5 setNfcPayload:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completeHash"];
    [(NPKPassDescription *)v5 setCompleteHash:v30];

    -[NPKPassDescription setHasStoredValue:](v5, "setHasStoredValue:", [coderCopy decodeBoolForKey:@"hasStoredValue"]);
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settings"];
    v32 = v31;
    if (v31)
    {
      unsignedIntegerValue = [v31 unsignedIntegerValue];
    }

    else if ([(NPKPassDescription *)v5 style]== 6)
    {
      unsignedIntegerValue = 72;
    }

    else
    {
      unsignedIntegerValue = 3;
    }

    [(NPKPassDescription *)v5 setSettings:unsignedIntegerValue];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerCountryCode"];
    [(NPKPassDescription *)v5 setIssuerCountryCode:v34];

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"availableActions"];
    [(NPKPassDescription *)v5 setAvailableActions:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    [(NPKPassDescription *)v5 setOrganizationName:v39];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"felicaTransitAppletState"];
    [(NPKPassDescription *)v5 setTransitAppletState:v40];

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"frontFieldBuckets"];
    [(NPKPassDescription *)v5 setFrontFieldBuckets:v44];

    v45 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"backFieldBuckets"];
    [(NPKPassDescription *)v5 setBackFieldBuckets:v48];

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastAddValueAmount"];
    [(NPKPassDescription *)v5 setLastAddValueAmount:v49];

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingAddValueDate"];
    [(NPKPassDescription *)v5 setPendingAddValueDate:v50];

    -[NPKPassDescription setExpressPassTypesMask:](v5, "setExpressPassTypesMask:", [coderCopy decodeIntegerForKey:@"expressPassTypesMask"]);
    -[NPKPassDescription setHasAssociatedPeerPaymentAccount:](v5, "setHasAssociatedPeerPaymentAccount:", [coderCopy decodeBoolForKey:@"hasAssociatedPeerPaymentAccount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueID = [(NPKPassDescription *)self uniqueID];
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];

  groupID = [(NPKPassDescription *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  passTypeIdentifier = [(NPKPassDescription *)self passTypeIdentifier];
  [coderCopy encodeObject:passTypeIdentifier forKey:@"passTypeIdentifier"];

  manifestHash = [(NPKPassDescription *)self manifestHash];
  [coderCopy encodeObject:manifestHash forKey:@"manifestHash"];

  [coderCopy encodeInteger:-[NPKPassDescription style](self forKey:{"style"), @"style"}];
  relevantDate = [(NPKPassDescription *)self relevantDate];
  [coderCopy encodeObject:relevantDate forKey:@"relevantDate"];

  ingestionDate = [(NPKPassDescription *)self ingestionDate];
  [coderCopy encodeObject:ingestionDate forKey:@"ingestionDate"];

  logoText = [(NPKPassDescription *)self logoText];
  [coderCopy encodeObject:logoText forKey:@"logoText"];

  backgroundColor = [(NPKPassDescription *)self backgroundColor];
  [coderCopy encodeObject:backgroundColor forKey:@"backgroundColor"];

  foregroundColor = [(NPKPassDescription *)self foregroundColor];
  [coderCopy encodeObject:foregroundColor forKey:@"foregroundColor"];

  labelColor = [(NPKPassDescription *)self labelColor];
  [coderCopy encodeObject:labelColor forKey:@"labelColor"];

  devicePaymentApplications = [(NPKPassDescription *)self devicePaymentApplications];
  [coderCopy encodeObject:devicePaymentApplications forKey:@"devicePaymentApplications"];

  devicePrimaryPaymentApplication = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
  [coderCopy encodeObject:devicePrimaryPaymentApplication forKey:@"devicePrimaryPaymentApplication"];

  devicePrimaryContactlessPaymentApplication = [(NPKPassDescription *)self devicePrimaryContactlessPaymentApplication];
  [coderCopy encodeObject:devicePrimaryContactlessPaymentApplication forKey:@"devicePrimaryContactlessPaymentApplication"];

  devicePrimaryInAppPaymentApplication = [(NPKPassDescription *)self devicePrimaryInAppPaymentApplication];
  [coderCopy encodeObject:devicePrimaryInAppPaymentApplication forKey:@"devicePrimaryInAppPaymentApplication"];

  preferredPaymentApplication = [(NPKPassDescription *)self preferredPaymentApplication];
  [coderCopy encodeObject:preferredPaymentApplication forKey:@"preferredPaymentApplication"];

  [coderCopy encodeInteger:-[NPKPassDescription effectivePaymentApplicationState](self forKey:{"effectivePaymentApplicationState"), @"effectivePaymentApplicationState"}];
  [coderCopy encodeBool:-[NPKPassDescription isPrivateLabel](self forKey:{"isPrivateLabel"), @"privateLabel"}];
  [coderCopy encodeBool:-[NPKPassDescription isCobranded](self forKey:{"isCobranded"), @"cobranded"}];
  [coderCopy encodeBool:-[NPKPassDescription deletePending](self forKey:{"deletePending"), @"deletePending"}];
  [coderCopy encodeBool:-[NPKPassDescription hasUserSelectableContactlessPaymentApplications](self forKey:{"hasUserSelectableContactlessPaymentApplications"), @"hasUserSelectablePaymentApplications"}];
  logoImageEncoded = [(NPKPassDescription *)self logoImageEncoded];
  [coderCopy encodeObject:logoImageEncoded forKey:@"logoImageEncoded"];

  backgroundImageEncoded = [(NPKPassDescription *)self backgroundImageEncoded];
  [coderCopy encodeObject:backgroundImageEncoded forKey:@"backgroundImageEncoded"];

  localizedDescription = [(NPKPassDescription *)self localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  nfcPayload = [(NPKPassDescription *)self nfcPayload];
  [coderCopy encodeObject:nfcPayload forKey:@"nfcPayload"];

  completeHash = [(NPKPassDescription *)self completeHash];
  [coderCopy encodeObject:completeHash forKey:@"completeHash"];

  [coderCopy encodeBool:-[NPKPassDescription hasStoredValue](self forKey:{"hasStoredValue"), @"hasStoredValue"}];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NPKPassDescription settings](self, "settings")}];
  [coderCopy encodeObject:v24 forKey:@"settings"];

  issuerCountryCode = [(NPKPassDescription *)self issuerCountryCode];
  [coderCopy encodeObject:issuerCountryCode forKey:@"issuerCountryCode"];

  availableActions = [(NPKPassDescription *)self availableActions];
  [coderCopy encodeObject:availableActions forKey:@"availableActions"];

  organizationName = [(NPKPassDescription *)self organizationName];
  [coderCopy encodeObject:organizationName forKey:@"organizationName"];

  transitAppletState = [(NPKPassDescription *)self transitAppletState];
  [coderCopy encodeObject:transitAppletState forKey:@"felicaTransitAppletState"];

  frontFieldBuckets = [(NPKPassDescription *)self frontFieldBuckets];
  [coderCopy encodeObject:frontFieldBuckets forKey:@"frontFieldBuckets"];

  backFieldBuckets = [(NPKPassDescription *)self backFieldBuckets];
  [coderCopy encodeObject:backFieldBuckets forKey:@"backFieldBuckets"];

  lastAddValueAmount = [(NPKPassDescription *)self lastAddValueAmount];
  [coderCopy encodeObject:lastAddValueAmount forKey:@"lastAddValueAmount"];

  pendingAddValueDate = [(NPKPassDescription *)self pendingAddValueDate];
  [coderCopy encodeObject:pendingAddValueDate forKey:@"pendingAddValueDate"];

  [coderCopy encodeInteger:-[NPKPassDescription expressPassTypesMask](self forKey:{"expressPassTypesMask"), @"expressPassTypesMask"}];
  [coderCopy encodeBool:-[NPKPassDescription hasAssociatedPeerPaymentAccount](self forKey:{"hasAssociatedPeerPaymentAccount"), @"hasAssociatedPeerPaymentAccount"}];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
    if (uniqueID | equalCopy->_uniqueID)
    {
      if (![(NSString *)uniqueID isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    groupID = self->_groupID;
    if (groupID | equalCopy->_groupID)
    {
      if (![(NSNumber *)groupID isEqual:?])
      {
        goto LABEL_72;
      }
    }

    passTypeIdentifier = self->_passTypeIdentifier;
    if (passTypeIdentifier | equalCopy->_passTypeIdentifier)
    {
      if (![(NSString *)passTypeIdentifier isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    manifestHash = self->_manifestHash;
    if (manifestHash | equalCopy->_manifestHash)
    {
      if (![(NSData *)manifestHash isEqualToData:?])
      {
        goto LABEL_72;
      }
    }

    if (self->_style != equalCopy->_style)
    {
      goto LABEL_72;
    }

    relevantDate = self->_relevantDate;
    if (relevantDate | equalCopy->_relevantDate)
    {
      if (![(NSDate *)relevantDate isEqualToDate:?])
      {
        goto LABEL_72;
      }
    }

    ingestionDate = self->_ingestionDate;
    if (ingestionDate | equalCopy->_ingestionDate)
    {
      if (![(NSDate *)ingestionDate isEqualToDate:?])
      {
        goto LABEL_72;
      }
    }

    logoText = self->_logoText;
    if (logoText | equalCopy->_logoText)
    {
      if (![(NSString *)logoText isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    logoImageEncoded = self->_logoImageEncoded;
    if (logoImageEncoded | equalCopy->_logoImageEncoded)
    {
      if (![(NSData *)logoImageEncoded isEqualToData:?])
      {
        goto LABEL_72;
      }
    }

    backgroundColor = self->_backgroundColor;
    if (backgroundColor || equalCopy->_backgroundColor)
    {
      v14 = [(PKColor *)backgroundColor hash];
      if (v14 != [(PKColor *)equalCopy->_backgroundColor hash])
      {
        goto LABEL_72;
      }
    }

    foregroundColor = self->_foregroundColor;
    if (foregroundColor || equalCopy->_foregroundColor)
    {
      v16 = [(PKColor *)foregroundColor hash];
      if (v16 != [(PKColor *)equalCopy->_foregroundColor hash])
      {
        goto LABEL_72;
      }
    }

    labelColor = self->_labelColor;
    if (labelColor || equalCopy->_labelColor)
    {
      v18 = [(PKColor *)labelColor hash];
      if (v18 != [(PKColor *)equalCopy->_labelColor hash])
      {
        goto LABEL_72;
      }
    }

    localizedDescription = self->_localizedDescription;
    if (localizedDescription | equalCopy->_localizedDescription && ![(NSString *)localizedDescription isEqualToString:?])
    {
      goto LABEL_72;
    }

    backgroundImageEncoded = self->_backgroundImageEncoded;
    if (backgroundImageEncoded | equalCopy->_backgroundImageEncoded && ![(NSData *)backgroundImageEncoded isEqualToData:?])
    {
      goto LABEL_72;
    }

    devicePaymentApplications = self->_devicePaymentApplications;
    if (devicePaymentApplications | equalCopy->_devicePaymentApplications && ![(NSSet *)devicePaymentApplications isEqual:?])
    {
      goto LABEL_72;
    }

    devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
    if (devicePrimaryPaymentApplication | equalCopy->_devicePrimaryPaymentApplication && ![(PKPaymentApplication *)devicePrimaryPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    devicePrimaryContactlessPaymentApplication = self->_devicePrimaryContactlessPaymentApplication;
    if (devicePrimaryContactlessPaymentApplication | equalCopy->_devicePrimaryContactlessPaymentApplication && ![(PKPaymentApplication *)devicePrimaryContactlessPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    devicePrimaryInAppPaymentApplication = self->_devicePrimaryInAppPaymentApplication;
    if (devicePrimaryInAppPaymentApplication | equalCopy->_devicePrimaryInAppPaymentApplication && ![(PKPaymentApplication *)devicePrimaryInAppPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    preferredPaymentApplication = self->_preferredPaymentApplication;
    if (preferredPaymentApplication | equalCopy->_preferredPaymentApplication && ![(PKPaymentApplication *)preferredPaymentApplication isEqual:?])
    {
      goto LABEL_72;
    }

    if (self->_effectivePaymentApplicationState != equalCopy->_effectivePaymentApplicationState)
    {
      goto LABEL_72;
    }

    if (self->_privateLabel != equalCopy->_privateLabel)
    {
      goto LABEL_72;
    }

    if (self->_cobranded != equalCopy->_cobranded)
    {
      goto LABEL_72;
    }

    if (self->_deletePending != equalCopy->_deletePending)
    {
      goto LABEL_72;
    }

    if (self->_hasUserSelectableContactlessPaymentApplications != equalCopy->_hasUserSelectableContactlessPaymentApplications)
    {
      goto LABEL_72;
    }

    nfcPayload = self->_nfcPayload;
    if (nfcPayload | equalCopy->_nfcPayload)
    {
      if (![(PKNFCPayload *)nfcPayload isEqual:?])
      {
        goto LABEL_72;
      }
    }

    completeHash = self->_completeHash;
    if (completeHash | equalCopy->_completeHash && ![(NSData *)completeHash isEqual:?])
    {
      goto LABEL_72;
    }

    if (self->_hasStoredValue != equalCopy->_hasStoredValue)
    {
      goto LABEL_72;
    }

    if (self->_settings != equalCopy->_settings)
    {
      goto LABEL_72;
    }

    issuerCountryCode = self->_issuerCountryCode;
    if (issuerCountryCode | equalCopy->_issuerCountryCode)
    {
      if (![(NSString *)issuerCountryCode isEqualToString:?])
      {
        goto LABEL_72;
      }
    }

    if (((availableActions = self->_availableActions, !(availableActions | equalCopy->_availableActions)) || [(NSArray *)availableActions isEqual:?]) && ((organizationName = self->_organizationName, !(organizationName | equalCopy->_organizationName)) || [(NSString *)organizationName isEqual:?]) && ((transitAppletState = self->_transitAppletState, !(transitAppletState | equalCopy->_transitAppletState)) || [(PKTransitAppletState *)transitAppletState isEqual:?]) && ((frontFieldBuckets = self->_frontFieldBuckets, !(frontFieldBuckets | equalCopy->_frontFieldBuckets)) || [(NSArray *)frontFieldBuckets isEqual:?]) && ((backFieldBuckets = self->_backFieldBuckets, !(backFieldBuckets | equalCopy->_backFieldBuckets)) || [(NSArray *)backFieldBuckets isEqual:?]) && ((lastAddValueAmount = self->_lastAddValueAmount, !(lastAddValueAmount | equalCopy->_lastAddValueAmount)) || [(NSDecimalNumber *)lastAddValueAmount isEqual:?]) && ((pendingAddValueDate = self->_pendingAddValueDate, !(pendingAddValueDate | equalCopy->_pendingAddValueDate)) || [(NSDate *)pendingAddValueDate isEqual:?]) && self->_expressPassTypesMask == equalCopy->_expressPassTypesMask)
    {
      v36 = self->_hasAssociatedPeerPaymentAccount == equalCopy->_hasAssociatedPeerPaymentAccount;
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
  uniqueID = [(NPKPassDescription *)self uniqueID];
  groupID = [(NPKPassDescription *)self groupID];
  passTypeIdentifier = [(NPKPassDescription *)self passTypeIdentifier];
  manifestHash = [(NPKPassDescription *)self manifestHash];
  style = [(NPKPassDescription *)self style];
  relevantDate = [(NPKPassDescription *)self relevantDate];
  ingestionDate = [(NPKPassDescription *)self ingestionDate];
  logoText = [(NPKPassDescription *)self logoText];
  logoImage = self->_logoImage;
  logoImageEncoded = [(NPKPassDescription *)self logoImageEncoded];
  backgroundColor = [(NPKPassDescription *)self backgroundColor];
  foregroundColor = [(NPKPassDescription *)self foregroundColor];
  labelColor = [(NPKPassDescription *)self labelColor];
  backgroundImage = self->_backgroundImage;
  backgroundImageEncoded = [(NPKPassDescription *)self backgroundImageEncoded];
  localizedDescription = [(NPKPassDescription *)self localizedDescription];
  devicePaymentApplications = [(NPKPassDescription *)self devicePaymentApplications];
  devicePrimaryPaymentApplication = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
  devicePrimaryContactlessPaymentApplication = [(NPKPassDescription *)self devicePrimaryContactlessPaymentApplication];
  devicePrimaryInAppPaymentApplication = [(NPKPassDescription *)self devicePrimaryInAppPaymentApplication];
  preferredPaymentApplication = [(NPKPassDescription *)self preferredPaymentApplication];
  effectivePaymentApplicationState = [(NPKPassDescription *)self effectivePaymentApplicationState];
  isPrivateLabel = [(NPKPassDescription *)self isPrivateLabel];
  isCobranded = [(NPKPassDescription *)self isCobranded];
  deletePending = [(NPKPassDescription *)self deletePending];
  hasUserSelectableContactlessPaymentApplications = [(NPKPassDescription *)self hasUserSelectableContactlessPaymentApplications];
  nfcPayload = [(NPKPassDescription *)self nfcPayload];
  completeHash = [(NPKPassDescription *)self completeHash];
  hasStoredValue = [(NPKPassDescription *)self hasStoredValue];
  settings = [(NPKPassDescription *)self settings];
  [(NPKPassDescription *)self issuerCountryCode];
  v10 = v20 = isPrivateLabel;
  v34 = [v33 stringWithFormat:@"<%@> (uniqueID %@ groupID %@ passTypeIdentifier %@ manifestHash %@ style %d relevantDate %@ ingestionDate %@ logoText %@ logoImage %@ logoImageEncoded %p backgroundColor %@ foregroundColor %@ labelColor %@ backgroundImage %@ backgroundImageEncoded %p, localizedDescription %@, devicePaymentApplications (%@) devicePrimaryPaymentApplication (%@) devicePrimaryContactlessPaymentApplication (%@) devicePrimaryInAppPaymentApplication (%@) preferredPaymentApplication (%@) effectivePaymentApplicationState %d privateLabel %d cobranded %d deletePending %d hasUserSelectableContactlessPaymentApplications %d nfcPayload %@ completeHash %@ hasStoredValue %d settings %d issuerCountryCode %@ expressPassTypesMask %lu)", v46, uniqueID, groupID, passTypeIdentifier, manifestHash, style, relevantDate, ingestionDate, logoText, logoImage, logoImageEncoded, backgroundColor, foregroundColor, labelColor, backgroundImage, backgroundImageEncoded, localizedDescription, devicePaymentApplications, devicePrimaryPaymentApplication, devicePrimaryContactlessPaymentApplication, devicePrimaryInAppPaymentApplication, preferredPaymentApplication, effectivePaymentApplicationState, v20, isCobranded, deletePending, hasUserSelectableContactlessPaymentApplications, nfcPayload, completeHash, hasStoredValue, settings, v10, -[NPKPassDescription expressPassTypesMask](self, "expressPassTypesMask")];

  availableActions = [(NPKPassDescription *)self availableActions];
  organizationName = [(NPKPassDescription *)self organizationName];
  transitAppletState = [(NPKPassDescription *)self transitAppletState];
  frontFieldBuckets = [(NPKPassDescription *)self frontFieldBuckets];
  backFieldBuckets = [(NPKPassDescription *)self backFieldBuckets];
  lastAddValueAmount = [(NPKPassDescription *)self lastAddValueAmount];
  pendingAddValueDate = [(NPKPassDescription *)self pendingAddValueDate];
  v18 = [v34 stringByAppendingFormat:@" (availableActions %@ organizationName %@ transitAppletState %@ frontFieldBuckets %@ backFieldBuckets %@ lastAddValueAmount %@ pendingAddValueDate %@  hasAssociatedPeerPaymentAccount %d)", availableActions, organizationName, transitAppletState, frontFieldBuckets, backFieldBuckets, lastAddValueAmount, pendingAddValueDate, -[NPKPassDescription hasAssociatedPeerPaymentAccount](self, "hasAssociatedPeerPaymentAccount")];

  return v18;
}

- (id)encodeAsData:(id)data
{
  if (data)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = NPKSecureArchiveObject(data);
    v5 = [v3 dataWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeObject:(id)object asDataInCoder:(id)coder withKey:(id)key
{
  keyCopy = key;
  coderCopy = coder;
  v10 = [(NPKPassDescription *)self encodeAsData:object];
  [coderCopy encodeObject:v10 forKey:keyCopy];
}

- (void)setLogoImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_logoImage, image);
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

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_backgroundImage, image);
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

- (void)setLogoImageEncoded:(id)encoded
{
  encodedCopy = encoded;
  logoImage = self->_logoImage;
  self->_logoImage = 0;

  logoImageEncoded = self->_logoImageEncoded;
  self->_logoImageEncoded = encodedCopy;
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

- (void)setBackgroundImageEncoded:(id)encoded
{
  encodedCopy = encoded;
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = 0;

  backgroundImageEncoded = self->_backgroundImageEncoded;
  self->_backgroundImageEncoded = encodedCopy;
}

- (PKImage)logoImage
{
  p_logoImage = &self->_logoImage;
  logoImage = self->_logoImage;
  if (logoImage)
  {
    logoImageEncoded = logoImage;
  }

  else
  {
    logoImageEncoded = [(NPKPassDescription *)self logoImageEncoded];

    if (logoImageEncoded)
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

      logoImageEncoded2 = [(NPKPassDescription *)self logoImageEncoded];
      v11 = objc_opt_class();
      logoImageEncoded = NPKSecureUnarchiveObject(logoImageEncoded2, v11);

      if (logoImageEncoded && [objc_opt_class() isCachingEnabled])
      {
        objc_storeStrong(p_logoImage, logoImageEncoded);
      }
    }
  }

  return logoImageEncoded;
}

- (PKImage)backgroundImage
{
  p_backgroundImage = &self->_backgroundImage;
  backgroundImage = self->_backgroundImage;
  if (backgroundImage)
  {
    backgroundImageEncoded = backgroundImage;
  }

  else
  {
    backgroundImageEncoded = [(NPKPassDescription *)self backgroundImageEncoded];

    if (backgroundImageEncoded)
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

      backgroundImageEncoded2 = [(NPKPassDescription *)self backgroundImageEncoded];
      v11 = objc_opt_class();
      backgroundImageEncoded = NPKSecureUnarchiveObject(backgroundImageEncoded2, v11);

      if (backgroundImageEncoded && [objc_opt_class() isCachingEnabled])
      {
        objc_storeStrong(p_backgroundImage, backgroundImageEncoded);
      }
    }
  }

  return backgroundImageEncoded;
}

- (int64_t)effectiveContactlessPaymentApplicationState
{
  v18 = *MEMORY[0x277D85DE8];
  devicePrimaryPaymentApplication = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  if (state == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    devicePaymentApplications = [(NPKPassDescription *)self devicePaymentApplications];
    v6 = [devicePaymentApplications countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(devicePaymentApplications);
          }

          state2 = [*(*(&v13 + 1) + 8 * v9) state];
          if (state2 != 1)
          {
            state = state2;
            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [devicePaymentApplications countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    state = 1;
LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
  return state;
}

- (id)transitProperties
{
  transitAppletState = [(NPKPassDescription *)self transitAppletState];
  if (transitAppletState)
  {
    devicePrimaryPaymentApplication = [(NPKPassDescription *)self devicePrimaryPaymentApplication];
    v5 = [transitAppletState transitPassPropertiesWithPaymentApplication:devicePrimaryPaymentApplication];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fieldForKey:(id)key
{
  v59 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  frontFieldBuckets = [(NPKPassDescription *)self frontFieldBuckets];
  v37 = [frontFieldBuckets countByEnumeratingWithState:&v51 objects:v58 count:16];
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
                v28 = [v27 isEqual:keyCopy];

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

  selfCopy = self;
  obj = frontFieldBuckets;
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
            v16 = [v15 isEqual:keyCopy];

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

  self = selfCopy;
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
  pendingAddValueDate = [(NPKPassDescription *)self pendingAddValueDate];
  if (pendingAddValueDate)
  {
    pendingAddValueDate2 = [(NPKPassDescription *)self pendingAddValueDate];
    [pendingAddValueDate2 timeIntervalSinceNow];
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
  transitProperties = [(NPKPassDescription *)self transitProperties];
  if ([transitProperties isInStation])
  {
    isInShinkansenStation = 1;
  }

  else
  {
    felicaProperties = [transitProperties felicaProperties];
    isInShinkansenStation = [felicaProperties isInShinkansenStation];
  }

  return isInShinkansenStation;
}

- (BOOL)hasValidNFCPayload
{
  nfcPayload = [(NPKPassDescription *)self nfcPayload];
  message = [nfcPayload message];
  if (message)
  {
    encryptionPublicKeyData = [nfcPayload encryptionPublicKeyData];
    if (encryptionPublicKeyData)
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