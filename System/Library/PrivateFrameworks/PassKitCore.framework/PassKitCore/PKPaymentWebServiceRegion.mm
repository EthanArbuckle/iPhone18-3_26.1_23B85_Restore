@interface PKPaymentWebServiceRegion
- (NSURL)accountServiceURL;
- (NSURL)applyServiceURL;
- (NSURL)inAppPaymentServicesURL;
- (NSURL)paymentOffersServiceURL;
- (PKPaymentWebServiceRegion)initWithCeritficates:(id)ceritficates brokerURL:(id)l trustedServiceManagerURL:(id)rL trustedServiceManagerPushTopic:(id)topic paymentServicesURL:(id)uRL inAppPaymentServicesURL:(id)servicesURL consistencyCheckBackoffLevel:(int64_t)level lastUpdatedTag:(id)self0;
- (PKPaymentWebServiceRegion)initWithCoder:(id)coder;
- (PKPaymentWebServiceRegion)initWithDictionary:(id)dictionary hasPeerPaymentAccount:(BOOL)account;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)regionBySettingConsistencyCheckBackoffLevel:(int64_t)level;
- (id)regionBySettingLastDeviceCheckInBuildVersion:(id)version;
- (id)regionBySettingLastDeviceUpgradeTaskBuildVersion:(id)version;
- (id)regionBySettingLastUpdatedTag:(id)tag;
- (id)regionBySettingOutstandingCheckInAction:(int64_t)action lastDeviceCheckInBuildVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentWebServiceRegion

- (PKPaymentWebServiceRegion)initWithDictionary:(id)dictionary hasPeerPaymentAccount:(BOOL)account
{
  dictionaryCopy = dictionary;
  v61.receiver = self;
  v61.super_class = PKPaymentWebServiceRegion;
  v7 = [(PKPaymentWebServiceRegion *)&v61 init];
  if (v7)
  {
    v8 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"certificates"];
    v9 = [v8 pk_arrayBySafelyApplyingBlock:&__block_literal_global_130];
    certificates = v7->_certificates;
    v7->_certificates = v9;

    v11 = MEMORY[0x1E695DFF8];
    v12 = [dictionaryCopy PKStringForKey:@"brokerURL"];
    v13 = [v11 URLWithString:v12];
    brokerURL = v7->_brokerURL;
    v7->_brokerURL = v13;

    v15 = [dictionaryCopy PKStringForKey:@"region"];
    regionCode = v7->_regionCode;
    v7->_regionCode = v15;

    v17 = [dictionaryCopy PKURLForKey:@"paymentServicesURL"];
    paymentServicesURL = v7->_paymentServicesURL;
    v7->_paymentServicesURL = v17;

    v19 = [dictionaryCopy PKURLForKey:@"inAppPaymentServicesURL"];
    inAppPaymentServicesURL = v7->_inAppPaymentServicesURL;
    v7->_inAppPaymentServicesURL = v19;

    v21 = [dictionaryCopy PKURLForKey:@"paymentServicesMerchantURL"];
    paymentServicesMerchantURL = v7->_paymentServicesMerchantURL;
    v7->_paymentServicesMerchantURL = v21;

    v23 = [dictionaryCopy PKURLForKey:@"partnerServiceURL"];
    partnerServiceURL = v7->_partnerServiceURL;
    v7->_partnerServiceURL = v23;

    v25 = [dictionaryCopy PKURLForKey:@"trustedServiceManagerURL"];
    trustedServiceManagerURL = v7->_trustedServiceManagerURL;
    v7->_trustedServiceManagerURL = v25;

    v27 = [dictionaryCopy PKStringForKey:@"trustedServiceManagerPushTopic"];
    trustedServiceManagerPushTopic = v7->_trustedServiceManagerPushTopic;
    v7->_trustedServiceManagerPushTopic = v27;

    v29 = [dictionaryCopy PKStringForKey:@"userNotificationPushTopic"];
    userNotificationPushTopic = v7->_userNotificationPushTopic;
    v7->_userNotificationPushTopic = v29;

    v31 = [dictionaryCopy PKStringForKey:@"deviceCheckInPushTopic"];
    deviceCheckInPushTopic = v7->_deviceCheckInPushTopic;
    v7->_deviceCheckInPushTopic = v31;

    v33 = [dictionaryCopy PKURLForKey:@"peerPaymentServiceURL"];
    peerPaymentServiceURL = v7->_peerPaymentServiceURL;
    v7->_peerPaymentServiceURL = v33;

    v35 = [dictionaryCopy objectForKey:@"hasPeerPaymentAccount"];
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7->_hasPeerPaymentAccount = [v35 BOOLValue];
    }

    else if ([(NSString *)v7->_regionCode isEqualToString:@"US"])
    {
      v7->_hasPeerPaymentAccount = account;
    }

    v36 = [dictionaryCopy PKURLForKey:@"accountServiceURL"];
    accountServiceURL = v7->_accountServiceURL;
    v7->_accountServiceURL = v36;

    v38 = [dictionaryCopy PKStringForKey:@"accountServicePushTopic"];
    accountServicePushTopic = v7->_accountServicePushTopic;
    v7->_accountServicePushTopic = v38;

    v7->_hasAccounts = [dictionaryCopy PKBoolForKey:@"hasAccounts"];
    v40 = [dictionaryCopy PKURLForKey:@"applyServiceURL"];
    applyServiceURL = v7->_applyServiceURL;
    v7->_applyServiceURL = v40;

    v42 = [dictionaryCopy PKStringForKey:@"applyServicePushTopic"];
    applyServicePushTopic = v7->_applyServicePushTopic;
    v7->_applyServicePushTopic = v42;

    v7->_hasApplications = [dictionaryCopy PKBoolForKey:@"hasApplications"];
    v44 = [dictionaryCopy PKStringForKey:@"productsPushTopic"];
    productsPushTopic = v7->_productsPushTopic;
    v7->_productsPushTopic = v44;

    v46 = [dictionaryCopy PKStringForKey:@"transactionZonePushTopic"];
    transactionZonePushTopic = v7->_transactionZonePushTopic;
    v7->_transactionZonePushTopic = v46;

    v48 = [dictionaryCopy PKStringForKey:@"provisioningTargetsPushTopic"];
    provisioningTargetsPushTopic = v7->_provisioningTargetsPushTopic;
    v7->_provisioningTargetsPushTopic = v48;

    v50 = [dictionaryCopy PKStringForKey:@"ownershipTokensPushTopic"];
    ownershipTokensPushTopic = v7->_ownershipTokensPushTopic;
    v7->_ownershipTokensPushTopic = v50;

    v52 = [dictionaryCopy PKStringForKey:@"auxiliaryRegistrationRequirementPushTopic"];
    auxiliaryRegistrationRequirementPushTopic = v7->_auxiliaryRegistrationRequirementPushTopic;
    v7->_auxiliaryRegistrationRequirementPushTopic = v52;

    v54 = [dictionaryCopy PKURLForKey:@"paymentOffersServiceURL"];
    paymentOffersServiceURL = v7->_paymentOffersServiceURL;
    v7->_paymentOffersServiceURL = v54;

    v56 = [dictionaryCopy PKStringForKey:@"paymentOffersServicePushTopic"];
    paymentOffersServicePushTopic = v7->_paymentOffersServicePushTopic;
    v7->_paymentOffersServicePushTopic = v56;

    v58 = [dictionaryCopy PKStringForKey:@"merchantTokensPushTopic"];
    merchantTokensPushTopic = v7->_merchantTokensPushTopic;
    v7->_merchantTokensPushTopic = v58;
  }

  return v7;
}

id __70__PKPaymentWebServiceRegion_initWithDictionary_hasPeerPaymentAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = a2;
  v4 = [[v2 alloc] initWithBase64EncodedString:v3 options:0];

  return v4;
}

- (PKPaymentWebServiceRegion)initWithCeritficates:(id)ceritficates brokerURL:(id)l trustedServiceManagerURL:(id)rL trustedServiceManagerPushTopic:(id)topic paymentServicesURL:(id)uRL inAppPaymentServicesURL:(id)servicesURL consistencyCheckBackoffLevel:(int64_t)level lastUpdatedTag:(id)self0
{
  ceritficatesCopy = ceritficates;
  lCopy = l;
  rLCopy = rL;
  topicCopy = topic;
  uRLCopy = uRL;
  servicesURLCopy = servicesURL;
  tagCopy = tag;
  v27.receiver = self;
  v27.super_class = PKPaymentWebServiceRegion;
  v19 = [(PKPaymentWebServiceRegion *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_certificates, ceritficates);
    objc_storeStrong(&v20->_brokerURL, l);
    objc_storeStrong(&v20->_paymentServicesURL, uRL);
    objc_storeStrong(&v20->_inAppPaymentServicesURL, servicesURL);
    objc_storeStrong(&v20->_trustedServiceManagerURL, rL);
    objc_storeStrong(&v20->_trustedServiceManagerPushTopic, topic);
    objc_storeStrong(&v20->_lastUpdatedTag, tag);
    v20->_consistencyCheckBackoffLevel = level;
  }

  return v20;
}

- (PKPaymentWebServiceRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v61.receiver = self;
  v61.super_class = PKPaymentWebServiceRegion;
  v5 = [(PKPaymentWebServiceRegion *)&v61 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedTag"];
    lastUpdatedTag = v5->_lastUpdatedTag;
    v5->_lastUpdatedTag = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brokerURL"];
    brokerURL = v5->_brokerURL;
    v5->_brokerURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionCode"];
    regionCode = v5->_regionCode;
    v5->_regionCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentServicesURL"];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAppPaymentServicesURL"];
    inAppPaymentServicesURL = v5->_inAppPaymentServicesURL;
    v5->_inAppPaymentServicesURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentServicesMerchantURL"];
    paymentServicesMerchantURL = v5->_paymentServicesMerchantURL;
    v5->_paymentServicesMerchantURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerServiceURL"];
    partnerServiceURL = v5->_partnerServiceURL;
    v5->_partnerServiceURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trustedServiceManagerURL"];
    trustedServiceManagerURL = v5->_trustedServiceManagerURL;
    v5->_trustedServiceManagerURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trustedServiceManagerPushTopic"];
    trustedServiceManagerPushTopic = v5->_trustedServiceManagerPushTopic;
    v5->_trustedServiceManagerPushTopic = v22;

    v24 = [coderCopy decodePropertyListForKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v24;

    v5->_consistencyCheckBackoffLevel = [coderCopy decodeIntegerForKey:@"consistencyCheckBackoff"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userNotificationPushTopic"];
    userNotificationPushTopic = v5->_userNotificationPushTopic;
    v5->_userNotificationPushTopic = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentServiceURL"];
    peerPaymentServiceURL = v5->_peerPaymentServiceURL;
    v5->_peerPaymentServiceURL = v28;

    v5->_hasPeerPaymentAccount = [coderCopy decodeBoolForKey:@"hasPeerPaymentAccount"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceCheckInPushTopic"];
    deviceCheckInPushTopic = v5->_deviceCheckInPushTopic;
    v5->_deviceCheckInPushTopic = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastDeviceCheckInBuildVersion"];
    lastDeviceCheckInBuildVersion = v5->_lastDeviceCheckInBuildVersion;
    v5->_lastDeviceCheckInBuildVersion = v32;

    v5->_outstandingCheckInAction = [coderCopy decodeIntegerForKey:@"outstandingCheckInAction"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUpgradeTasksBuildVersion"];
    lastDeviceUpgradeTaskBuildVersion = v5->_lastDeviceUpgradeTaskBuildVersion;
    v5->_lastDeviceUpgradeTaskBuildVersion = v34;

    v5->_hasApplications = [coderCopy decodeBoolForKey:@"hasApplications"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyServiceURL"];
    applyServiceURL = v5->_applyServiceURL;
    v5->_applyServiceURL = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyServicePushTopic"];
    applyServicePushTopic = v5->_applyServicePushTopic;
    v5->_applyServicePushTopic = v38;

    v5->_hasAccounts = [coderCopy decodeBoolForKey:@"hasAccounts"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountServiceURL"];
    accountServiceURL = v5->_accountServiceURL;
    v5->_accountServiceURL = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountServicePushTopic"];
    accountServicePushTopic = v5->_accountServicePushTopic;
    v5->_accountServicePushTopic = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productsPushTopic"];
    productsPushTopic = v5->_productsPushTopic;
    v5->_productsPushTopic = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionZonePushTopic"];
    transactionZonePushTopic = v5->_transactionZonePushTopic;
    v5->_transactionZonePushTopic = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTargetsPushTopic"];
    provisioningTargetsPushTopic = v5->_provisioningTargetsPushTopic;
    v5->_provisioningTargetsPushTopic = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownershipTokensPushTopic"];
    ownershipTokensPushTopic = v5->_ownershipTokensPushTopic;
    v5->_ownershipTokensPushTopic = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryRegistrationRequirementPushTopic"];
    auxiliaryRegistrationRequirementPushTopic = v5->_auxiliaryRegistrationRequirementPushTopic;
    v5->_auxiliaryRegistrationRequirementPushTopic = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentOffersServiceURL"];
    paymentOffersServiceURL = v5->_paymentOffersServiceURL;
    v5->_paymentOffersServiceURL = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentOffersServicePushTopic"];
    paymentOffersServicePushTopic = v5->_paymentOffersServicePushTopic;
    v5->_paymentOffersServicePushTopic = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantTokensPushTopic"];
    merchantTokensPushTopic = v5->_merchantTokensPushTopic;
    v5->_merchantTokensPushTopic = v58;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  certificates = self->_certificates;
  coderCopy = coder;
  [coderCopy encodeObject:certificates forKey:@"certificates"];
  [coderCopy encodeObject:self->_lastUpdatedTag forKey:@"lastUpdatedTag"];
  [coderCopy encodeObject:self->_brokerURL forKey:@"brokerURL"];
  [coderCopy encodeObject:self->_regionCode forKey:@"regionCode"];
  [coderCopy encodeObject:self->_paymentServicesURL forKey:@"paymentServicesURL"];
  [coderCopy encodeObject:self->_inAppPaymentServicesURL forKey:@"inAppPaymentServicesURL"];
  [coderCopy encodeObject:self->_paymentServicesMerchantURL forKey:@"paymentServicesMerchantURL"];
  [coderCopy encodeObject:self->_partnerServiceURL forKey:@"partnerServiceURL"];
  [coderCopy encodeObject:self->_trustedServiceManagerURL forKey:@"trustedServiceManagerURL"];
  [coderCopy encodeObject:self->_trustedServiceManagerPushTopic forKey:@"trustedServiceManagerPushTopic"];
  [coderCopy encodeInteger:self->_consistencyCheckBackoffLevel forKey:@"consistencyCheckBackoff"];
  [coderCopy encodeObject:self->_userNotificationPushTopic forKey:@"userNotificationPushTopic"];
  [coderCopy encodeObject:self->_peerPaymentServiceURL forKey:@"peerPaymentServiceURL"];
  [coderCopy encodeBool:self->_hasPeerPaymentAccount forKey:@"hasPeerPaymentAccount"];
  [coderCopy encodeObject:self->_deviceCheckInPushTopic forKey:@"deviceCheckInPushTopic"];
  [coderCopy encodeObject:self->_lastDeviceCheckInBuildVersion forKey:@"lastDeviceCheckInBuildVersion"];
  [coderCopy encodeInteger:self->_outstandingCheckInAction forKey:@"outstandingCheckInAction"];
  [coderCopy encodeObject:self->_lastDeviceUpgradeTaskBuildVersion forKey:@"deviceUpgradeTasksBuildVersion"];
  [coderCopy encodeBool:self->_hasApplications forKey:@"hasApplications"];
  [coderCopy encodeObject:self->_applyServiceURL forKey:@"applyServiceURL"];
  [coderCopy encodeObject:self->_applyServicePushTopic forKey:@"applyServicePushTopic"];
  [coderCopy encodeBool:self->_hasAccounts forKey:@"hasAccounts"];
  [coderCopy encodeObject:self->_accountServiceURL forKey:@"accountServiceURL"];
  [coderCopy encodeObject:self->_accountServicePushTopic forKey:@"accountServicePushTopic"];
  [coderCopy encodeObject:self->_productsPushTopic forKey:@"productsPushTopic"];
  [coderCopy encodeObject:self->_transactionZonePushTopic forKey:@"transactionZonePushTopic"];
  [coderCopy encodeObject:self->_provisioningTargetsPushTopic forKey:@"provisioningTargetsPushTopic"];
  [coderCopy encodeObject:self->_ownershipTokensPushTopic forKey:@"ownershipTokensPushTopic"];
  [coderCopy encodeObject:self->_auxiliaryRegistrationRequirementPushTopic forKey:@"auxiliaryRegistrationRequirementPushTopic"];
  [coderCopy encodeObject:self->_paymentOffersServiceURL forKey:@"paymentOffersServiceURL"];
  [coderCopy encodeObject:self->_paymentOffersServicePushTopic forKey:@"paymentOffersServicePushTopic"];
  [coderCopy encodeObject:self->_merchantTokensPushTopic forKey:@"merchantTokensPushTopic"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKPaymentWebServiceRegion);
  objc_storeStrong(&v4->_certificates, self->_certificates);
  objc_storeStrong(&v4->_brokerURL, self->_brokerURL);
  objc_storeStrong(&v4->_regionCode, self->_regionCode);
  objc_storeStrong(&v4->_paymentServicesURL, self->_paymentServicesURL);
  objc_storeStrong(&v4->_inAppPaymentServicesURL, self->_inAppPaymentServicesURL);
  objc_storeStrong(&v4->_paymentServicesMerchantURL, self->_paymentServicesMerchantURL);
  objc_storeStrong(&v4->_partnerServiceURL, self->_partnerServiceURL);
  objc_storeStrong(&v4->_trustedServiceManagerURL, self->_trustedServiceManagerURL);
  objc_storeStrong(&v4->_trustedServiceManagerPushTopic, self->_trustedServiceManagerPushTopic);
  objc_storeStrong(&v4->_userNotificationPushTopic, self->_userNotificationPushTopic);
  objc_storeStrong(&v4->_deviceCheckInPushTopic, self->_deviceCheckInPushTopic);
  objc_storeStrong(&v4->_peerPaymentServiceURL, self->_peerPaymentServiceURL);
  v4->_hasPeerPaymentAccount = self->_hasPeerPaymentAccount;
  objc_storeStrong(&v4->_accountServiceURL, self->_accountServiceURL);
  objc_storeStrong(&v4->_accountServicePushTopic, self->_accountServicePushTopic);
  v4->_hasAccounts = self->_hasAccounts;
  objc_storeStrong(&v4->_applyServiceURL, self->_applyServiceURL);
  objc_storeStrong(&v4->_applyServicePushTopic, self->_applyServicePushTopic);
  v4->_hasApplications = self->_hasApplications;
  objc_storeStrong(&v4->_productsPushTopic, self->_productsPushTopic);
  objc_storeStrong(&v4->_transactionZonePushTopic, self->_transactionZonePushTopic);
  objc_storeStrong(&v4->_provisioningTargetsPushTopic, self->_provisioningTargetsPushTopic);
  objc_storeStrong(&v4->_ownershipTokensPushTopic, self->_ownershipTokensPushTopic);
  objc_storeStrong(&v4->_auxiliaryRegistrationRequirementPushTopic, self->_auxiliaryRegistrationRequirementPushTopic);
  objc_storeStrong(&v4->_lastUpdatedTag, self->_lastUpdatedTag);
  objc_storeStrong(&v4->_lastDeviceCheckInBuildVersion, self->_lastDeviceCheckInBuildVersion);
  objc_storeStrong(&v4->_lastDeviceUpgradeTaskBuildVersion, self->_lastDeviceUpgradeTaskBuildVersion);
  v4->_outstandingCheckInAction = self->_outstandingCheckInAction;
  v4->_consistencyCheckBackoffLevel = self->_consistencyCheckBackoffLevel;
  objc_storeStrong(&v4->_paymentOffersServiceURL, self->_paymentOffersServiceURL);
  objc_storeStrong(&v4->_paymentOffersServicePushTopic, self->_paymentOffersServicePushTopic);
  objc_storeStrong(&v4->_merchantTokensPushTopic, self->_merchantTokensPushTopic);
  return v4;
}

- (NSURL)inAppPaymentServicesURL
{
  v3 = PKOverrideInAppPaymentServicesURL();
  inAppPaymentServicesURL = v3;
  if (!v3)
  {
    inAppPaymentServicesURL = self->_inAppPaymentServicesURL;
    if (!inAppPaymentServicesURL)
    {
      inAppPaymentServicesURL = self->_paymentServicesURL;
    }
  }

  v5 = inAppPaymentServicesURL;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"certificates: '%@'; ", self->_certificates];
  [v3 appendFormat:@"lastUpdatedTag: '%@'; ", self->_lastUpdatedTag];
  [v3 appendFormat:@"brokerURL: '%@'; ", self->_brokerURL];
  [v3 appendFormat:@"regionCode: '%@'; ", self->_regionCode];
  [v3 appendFormat:@"paymentServicesURL: '%@'; ", self->_paymentServicesURL];
  inAppPaymentServicesURL = self->_inAppPaymentServicesURL;
  inAppPaymentServicesURL = [(PKPaymentWebServiceRegion *)self inAppPaymentServicesURL];
  [v3 appendFormat:@"inAppPaymentServicesURL: '%@' (resolved '%@'); ", inAppPaymentServicesURL, inAppPaymentServicesURL];

  [v3 appendFormat:@"paymentServicesMerchantURL: '%@'; ", self->_paymentServicesMerchantURL];
  [v3 appendFormat:@"trustedServiceManagerURL: '%@'; ", self->_trustedServiceManagerURL];
  [v3 appendFormat:@"trustedServiceManagerPushTopic: '%@'; ", self->_trustedServiceManagerPushTopic];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_consistencyCheckBackoffLevel];
  [v3 appendFormat:@"consistencyCheckBackoffLevel: '%@'; ", v6];

  [v3 appendFormat:@"userNotificationPushTopic: '%@'; ", self->_userNotificationPushTopic];
  [v3 appendFormat:@"peerPaymentServiceURL: '%@'; ", self->_peerPaymentServiceURL];
  if (self->_hasPeerPaymentAccount)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"hasPeerPaymentAccount: '%@'; ", v7];
  [v3 appendFormat:@"deviceCheckInPushTopic: '%@'; ", self->_deviceCheckInPushTopic];
  [v3 appendFormat:@"lastDeviceCheckInBuildVersion: '%@'; ", self->_lastDeviceCheckInBuildVersion];
  [v3 appendFormat:@"outstandingCheckInAction: '%ld'; ", self->_outstandingCheckInAction];
  [v3 appendFormat:@"deviceUpgradeTasksBuildVersion: '%@'; ", self->_lastDeviceUpgradeTaskBuildVersion];
  [v3 appendFormat:@"applyServiceURL: '%@'; ", self->_applyServiceURL];
  [v3 appendFormat:@"applyServicePushTopic: '%@'; ", self->_applyServicePushTopic];
  if (self->_hasApplications)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"hasApplications: '%@'; ", v8];
  [v3 appendFormat:@"accountServiceURL: '%@'; ", self->_accountServiceURL];
  [v3 appendFormat:@"accountServicePushTopic: '%@'; ", self->_accountServicePushTopic];
  if (self->_hasAccounts)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"hasAccounts: '%@'; ", v9];
  [v3 appendFormat:@"productsPushTopic: %@; ", self->_productsPushTopic];
  [v3 appendFormat:@"transactionZonePushTopic: %@; ", self->_transactionZonePushTopic];
  [v3 appendFormat:@"provisioningTargetsPushTopic: %@; ", self->_provisioningTargetsPushTopic];
  [v3 appendFormat:@"ownershipTokensPushTopic: %@; ", self->_ownershipTokensPushTopic];
  [v3 appendFormat:@"auxiliaryRegistrationRequirementPushTopic: '%@'; ", self->_auxiliaryRegistrationRequirementPushTopic];
  [v3 appendFormat:@"paymentOffersServiceURL: '%@'; ", self->_paymentOffersServiceURL];
  [v3 appendFormat:@"paymentOffersServicePushTopic: '%@'; ", self->_paymentOffersServicePushTopic];
  [v3 appendFormat:@"merchantTokensPushTopic: '%@'; ", self->_merchantTokensPushTopic];
  [v3 appendFormat:@">"];

  return v3;
}

- (NSURL)applyServiceURL
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PKApplyServiceOverrideURL();
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Using overridden Apply service URL: %@ ", &v8, 0xCu);
    }

    applyServiceURL = v3;
  }

  else
  {
    applyServiceURL = self->_applyServiceURL;
  }

  v6 = applyServiceURL;

  return v6;
}

- (NSURL)accountServiceURL
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PKAccountServiceOverrideURL();
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Using overridden Account service URL: %@ ", &v8, 0xCu);
    }

    accountServiceURL = v3;
  }

  else
  {
    accountServiceURL = self->_accountServiceURL;
  }

  v6 = accountServiceURL;

  return v6;
}

- (NSURL)paymentOffersServiceURL
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PKOverridePaymentOffersServiceURL();
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Using overridden Payment Offers Service URL: %@ ", &v8, 0xCu);
    }

    paymentOffersServiceURL = v3;
  }

  else
  {
    paymentOffersServiceURL = self->_paymentOffersServiceURL;
  }

  v6 = paymentOffersServiceURL;

  return v6;
}

- (id)regionBySettingLastUpdatedTag:(id)tag
{
  tagCopy = tag;
  v5 = [(PKPaymentWebServiceRegion *)self copy];
  v6 = v5[24];
  v5[24] = tagCopy;

  return v5;
}

- (id)regionBySettingOutstandingCheckInAction:(int64_t)action lastDeviceCheckInBuildVersion:(id)version
{
  versionCopy = version;
  v7 = [(PKPaymentWebServiceRegion *)self copy];
  v7[27] = action;
  v8 = v7[25];
  v7[25] = versionCopy;

  return v7;
}

- (id)regionBySettingLastDeviceCheckInBuildVersion:(id)version
{
  versionCopy = version;
  v5 = [(PKPaymentWebServiceRegion *)self copy];
  v6 = v5[25];
  v5[25] = versionCopy;

  return v5;
}

- (id)regionBySettingLastDeviceUpgradeTaskBuildVersion:(id)version
{
  versionCopy = version;
  v5 = [(PKPaymentWebServiceRegion *)self copy];
  v6 = v5[26];
  v5[26] = versionCopy;

  return v5;
}

- (id)regionBySettingConsistencyCheckBackoffLevel:(int64_t)level
{
  v4 = [(PKPaymentWebServiceRegion *)self copy];
  v4[28] = level;

  return v4;
}

@end