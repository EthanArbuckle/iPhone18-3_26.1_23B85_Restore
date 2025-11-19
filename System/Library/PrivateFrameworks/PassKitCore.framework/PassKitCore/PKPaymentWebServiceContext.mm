@interface PKPaymentWebServiceContext
+ (PKPaymentWebServiceContext)contextWithArchive:(id)a3;
+ (void)_migrateContext:(id)a3;
+ (void)_migrateFrom0To1:(id)a3;
- (BOOL)contextMeetsDeviceUpgradeTasksEnablementThresholdForRegion:(id)a3;
- (BOOL)contextMeetsMarketGeoNotificationThresholdForRegion:(id)a3 paymentNetwork:(int64_t)a4;
- (BOOL)contextMeetsProvisioningEnablementPercentageThresholdForRegion:(id)a3;
- (BOOL)hasPeerPaymentAccount;
- (BOOL)isRegisteredForBrokerURL:(id)a3;
- (NSDictionary)regions;
- (NSURL)peerPaymentServiceURL;
- (PKPaymentWebServiceConfiguration)configuration;
- (PKPaymentWebServiceContext)init;
- (PKPaymentWebServiceContext)initWithCoder:(id)a3;
- (PKPaymentWebServiceRegion)primaryRegion;
- (double)_contextProvisioningEnablementValue;
- (id)TSMPushTopics;
- (id)TSMURLStringByPushTopic;
- (id)_regionWithPeerPaymentServiceURL;
- (id)accountServicePushTopics;
- (id)applyServiceFeaturesForRegionMeetingEnablementThreshold:(id)a3;
- (id)applyServiceLocalizationBundleForFeatureIdentifier:(unint64_t)a3 mainLanguageBundle:(id)a4;
- (id)applyServicePreferredLanguageForFeatureIdentifier:(unint64_t)a3 mainLanguageBundle:(id)a4;
- (id)applyServicePushTopics;
- (id)betaPaymentNetworksForRegion:(id)a3;
- (id)debugDescription;
- (id)notificationPushTopics;
- (id)paymentOffersServicePushTopics;
- (id)regionForIdentifier:(id)a3;
- (id)verificationRequestRecordForUniqueID:(id)a3;
- (void)_localizationUpdated;
- (void)addVerificationRequestRecord:(id)a3 forUniqueID:(id)a4;
- (void)archiveAtPath:(id)a3;
- (void)atomicallyUpdateEveryRegion:(id)a3;
- (void)atomicallyUpdatePrimaryRegion:(id)a3;
- (void)atomicallyUpdateRegionWithIdentifier:(id)a3 updateBlock:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeVerificationRequestRecordForUniqueID:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setRegions:(id)a3;
@end

@implementation PKPaymentWebServiceContext

- (PKPaymentWebServiceConfiguration)configuration
{
  os_unfair_lock_lock(&self->_lock_context);
  v3 = self->_configuration;
  os_unfair_lock_unlock(&self->_lock_context);

  return v3;
}

- (PKPaymentWebServiceContext)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentWebServiceContext;
  v2 = [(PKPaymentWebServiceContext *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock_context._os_unfair_lock_opaque = 0;
    v2->_version = 1;
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v2->_registrationType = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    featureSupportedLanguageCache = v3->_featureSupportedLanguageCache;
    v3->_featureSupportedLanguageCache = v4;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel__localizationUpdated name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v3;
}

- (PKPaymentWebServiceContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebServiceContext *)self init];
  if (v5)
  {
    -[PKPaymentWebServiceContext setVersion:](v5, "setVersion:", [v4 decodeIntegerForKey:@"version"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    [(PKPaymentWebServiceContext *)v5 setDeviceID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementID"];
    [(PKPaymentWebServiceContext *)v5 setSecureElementID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationDate"];
    [(PKPaymentWebServiceContext *)v5 setRegistrationDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedDate"];
    [(PKPaymentWebServiceContext *)v5 setArchivedDate:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(PKPaymentWebServiceContext *)v5 setPushToken:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionSerialNumber"];
    [(PKPaymentWebServiceContext *)v5 setCompanionSerialNumber:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"verificationRequestsByPassUniqueID"];
    v17 = [v16 mutableCopy];
    verificationRequestsByPassUniqueID = v5->_verificationRequestsByPassUniqueID;
    v5->_verificationRequestsByPassUniqueID = v17;

    -[PKPaymentWebServiceContext setDevSigned:](v5, "setDevSigned:", [v4 decodeBoolForKey:@"devSigned"]);
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationDate"];
    [(PKPaymentWebServiceContext *)v5 setConfigurationDate:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    [(PKPaymentWebServiceContext *)v5 setConfiguration:v20];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"regions"];
    regions = v5->_regions;
    v5->_regions = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryRegionIdentifier"];
    [(PKPaymentWebServiceContext *)v5 setPrimaryRegionIdentifier:v27];

    -[PKPaymentWebServiceContext setTransactionServiceDisabled:](v5, "setTransactionServiceDisabled:", [v4 decodeBoolForKey:@"transactionServiceDisabled"]);
    -[PKPaymentWebServiceContext setMessageServiceDisabled:](v5, "setMessageServiceDisabled:", [v4 decodeBoolForKey:@"messageServiceDisabled"]);
    -[PKPaymentWebServiceContext setIgnoreProvisioningEnablementPercentage:](v5, "setIgnoreProvisioningEnablementPercentage:", [v4 decodeBoolForKey:@"ignoreProvisioningEnablementPercentage"]);
    v28 = [v4 decodePropertyListForKey:@"certificates"];
    [(PKPaymentWebServiceContext *)v5 setCertificates:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedTag"];
    [(PKPaymentWebServiceContext *)v5 setLastUpdatedTag:v29];

    -[PKPaymentWebServiceContext setConsistencyCheckBackoffLevel:](v5, "setConsistencyCheckBackoffLevel:", [v4 decodeIntegerForKey:@"consistencyCheckBackoff"]);
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationType"];
    v31 = v30;
    if (v30)
    {
      v35 = 0;
      v32 = PKPaymentWebServiceRegistrationTypeFromString(v30, &v35);
      deviceID = v35;
      if (!v32)
      {
        deviceID = 3;
      }
    }

    else
    {
      deviceID = v5->_deviceID;
      if (deviceID)
      {
        deviceID = v5->_registrationDate != 0;
      }
    }

    v5->_registrationType = deviceID;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = PKPaymentWebServiceContext;
  [(PKPaymentWebServiceContext *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock_context);
  [v4 encodeInteger:-[PKPaymentWebServiceContext version](self forKey:{"version"), @"version"}];
  v5 = [(PKPaymentWebServiceContext *)self deviceID];
  [v4 encodeObject:v5 forKey:@"deviceID"];

  v6 = [(PKPaymentWebServiceContext *)self secureElementID];
  [v4 encodeObject:v6 forKey:@"secureElementID"];

  v7 = [(PKPaymentWebServiceContext *)self registrationDate];
  [v4 encodeObject:v7 forKey:@"registrationDate"];

  v8 = [(PKPaymentWebServiceContext *)self archivedDate];
  [v4 encodeObject:v8 forKey:@"archivedDate"];

  v9 = [(PKPaymentWebServiceContext *)self pushToken];
  [v4 encodeObject:v9 forKey:@"pushToken"];

  v10 = [(PKPaymentWebServiceContext *)self companionSerialNumber];
  [v4 encodeObject:v10 forKey:@"companionSerialNumber"];

  [v4 encodeObject:self->_verificationRequestsByPassUniqueID forKey:@"verificationRequestsByPassUniqueID"];
  [v4 encodeBool:-[PKPaymentWebServiceContext devSigned](self forKey:{"devSigned"), @"devSigned"}];
  v11 = [(PKPaymentWebServiceContext *)self configurationDate];
  [v4 encodeObject:v11 forKey:@"configurationDate"];

  [v4 encodeObject:self->_configuration forKey:@"configuration"];
  v12 = [(PKPaymentWebServiceContext *)self primaryRegionIdentifier];
  [v4 encodeObject:v12 forKey:@"primaryRegionIdentifier"];

  [v4 encodeObject:self->_regions forKey:@"regions"];
  [v4 encodeBool:-[PKPaymentWebServiceContext transactionServiceDisabled](self forKey:{"transactionServiceDisabled"), @"transactionServiceDisabled"}];
  [v4 encodeBool:-[PKPaymentWebServiceContext messageServiceDisabled](self forKey:{"messageServiceDisabled"), @"messageServiceDisabled"}];
  [v4 encodeBool:-[PKPaymentWebServiceContext ignoreProvisioningEnablementPercentage](self forKey:{"ignoreProvisioningEnablementPercentage"), @"ignoreProvisioningEnablementPercentage"}];
  [v4 encodeInteger:-[PKPaymentWebServiceContext consistencyCheckBackoffLevel](self forKey:{"consistencyCheckBackoffLevel"), @"consistencyCheckBackoff"}];
  v13 = [(PKPaymentWebServiceContext *)self lastUpdatedTag];
  [v4 encodeObject:v13 forKey:@"lastUpdatedTag"];

  v14 = [(PKPaymentWebServiceContext *)self certificates];
  [v4 encodeObject:v14 forKey:@"certificates"];

  registrationType = self->_registrationType;
  if (registrationType > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E79D89B8[registrationType];
  }

  [v4 encodeObject:v16 forKey:@"registrationType"];

  os_unfair_lock_unlock(&self->_lock_context);
}

+ (PKPaymentWebServiceContext)contextWithArchive:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PKPaymentWebServiceContext;
  v5 = objc_msgSendSuper2(&v8, sel_contextWithArchive_, v4);
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(PKPaymentWebServiceContext);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if ([(PKPaymentWebServiceContext *)v6 version]<= 0)
  {
    [objc_opt_class() _migrateContext:v6];
    [v5 archiveAtPath:v4];
  }

LABEL_7:

  return v6;
}

- (void)archiveAtPath:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [(PKPaymentWebServiceContext *)self setArchivedDate:v6];

  v7.receiver = self;
  v7.super_class = PKPaymentWebServiceContext;
  [(PKWebServiceContext *)&v7 archiveAtPath:v5];
}

- (BOOL)isRegisteredForBrokerURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PKPaymentWebServiceContext *)self isRegistered])
  {
    if (v4)
    {
      os_unfair_lock_lock(&self->_lock_context);
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_regions;
      v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = *v15;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [(NSDictionary *)self->_regions objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
            v10 = [v9 brokerURL];
            if (v10)
            {
              v11 = v10;
              v12 = [v4 isEqual:v10];

              if (v12)
              {
                LOBYTE(v6) = 1;
                goto LABEL_17;
              }
            }

            else
            {
            }
          }

          v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }

LABEL_17:

      os_unfair_lock_unlock(&self->_lock_context);
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (NSDictionary)regions
{
  os_unfair_lock_lock(&self->_lock_context);
  v3 = self->_regions;
  os_unfair_lock_unlock(&self->_lock_context);

  return v3;
}

- (void)setRegions:(id)a3
{
  v4 = [a3 copy];
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  self->_regions = v4;

  os_unfair_lock_unlock(&self->_lock_context);
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock_context);
  configuration = self->_configuration;
  self->_configuration = v4;

  os_unfair_lock_unlock(&self->_lock_context);
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p \n", objc_opt_class(), self];;
  [v3 appendFormat:@"version: '%ld';\n", self->_version];
  [v3 appendFormat:@"DeviceID: '%@';\n", self->_deviceID];
  [v3 appendFormat:@"secureElementID: '%@';\n", self->_secureElementID];
  [v3 appendFormat:@"registrationDate: '%@';\n", self->_registrationDate];
  [v3 appendFormat:@"archivedDate: '%@';\n", self->_archivedDate];
  [v3 appendFormat:@"pushToken: '%@';\n", self->_pushToken];
  [v3 appendFormat:@"nextPushToken: '%@';\n", self->_nextPushToken];
  [v3 appendFormat:@"companionSerialNumber: '%@';\n", self->_companionSerialNumber];
  [v3 appendFormat:@"verificationRequestsByPassUniqueID: '%@';\n", self->_verificationRequestsByPassUniqueID];
  if (self->_devSigned)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"devSigned: '%@';\n", v4];
  [v3 appendFormat:@"configurationDate: '%@';\n", self->_configurationDate];
  v5 = [(PKPaymentWebServiceContext *)self configuration];
  v6 = [v5 description];
  [v3 appendFormat:@"configuration: '%@';\n", v6];

  [v3 appendFormat:@"primaryRegionIdentifier: '%@';\n", self->_primaryRegionIdentifier];
  v7 = [(NSDictionary *)self->_regions description];
  [v3 appendFormat:@"regions: '%@';\n", v7];

  if (self->_transactionServiceDisabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"transactionServiceDisabled: '%@';\n", v8];
  if (self->_messageServiceDisabled)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"messageServiceDisabled: '%@';\n", v9];
  if (self->_ignoreProvisioningEnablementPercentage)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"ignoreProvisioningEnablementPercentage: '%@';\n", v10];
  [v3 appendFormat:@"consistencyCheckBackoff: '%ld';\n", self->_consistencyCheckBackoffLevel];
  [v3 appendFormat:@"lastUpdatedTag: '%@';\n", self->_lastUpdatedTag];
  [v3 appendFormat:@"certificates: '%@';\n", self->_certificates];

  return v3;
}

- (void)_localizationUpdated
{
  os_unfair_lock_lock(&self->_cacheLock);
  [(NSMutableDictionary *)self->_featureSupportedLanguageCache removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)addVerificationRequestRecord:(id)a3 forUniqueID:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0x26uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Adding verification request record for %@", &v12, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock_context);
  verificationRequestsByPassUniqueID = self->_verificationRequestsByPassUniqueID;
  if (!verificationRequestsByPassUniqueID)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v11 = self->_verificationRequestsByPassUniqueID;
    self->_verificationRequestsByPassUniqueID = v10;

    verificationRequestsByPassUniqueID = self->_verificationRequestsByPassUniqueID;
  }

  [(NSMutableDictionary *)verificationRequestsByPassUniqueID setObject:v6 forKey:v7];
  os_unfair_lock_unlock(&self->_lock_context);
}

- (id)verificationRequestRecordForUniqueID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock_context);
  v5 = [(NSMutableDictionary *)self->_verificationRequestsByPassUniqueID objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock_context);

  return v5;
}

- (void)removeVerificationRequestRecordForUniqueID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(0x26uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Removing verification request record for %@", &v7, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock_context);
  [(NSMutableDictionary *)self->_verificationRequestsByPassUniqueID removeObjectForKey:v4];
  if (![(NSMutableDictionary *)self->_verificationRequestsByPassUniqueID count])
  {
    verificationRequestsByPassUniqueID = self->_verificationRequestsByPassUniqueID;
    self->_verificationRequestsByPassUniqueID = 0;
  }

  os_unfair_lock_unlock(&self->_lock_context);
}

- (id)regionForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock_context);
  v5 = [(NSDictionary *)self->_regions objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock_context);

  return v5;
}

- (PKPaymentWebServiceRegion)primaryRegion
{
  os_unfair_lock_lock(&self->_lock_context);
  v3 = [(NSDictionary *)self->_regions objectForKey:self->_primaryRegionIdentifier];
  os_unfair_lock_unlock(&self->_lock_context);

  return v3;
}

- (void)atomicallyUpdatePrimaryRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    os_unfair_lock_lock(&self->_lock_context);
    if (self->_primaryRegionIdentifier)
    {
      v5 = [(NSDictionary *)self->_regions mutableCopy];
      v6 = [(NSDictionary *)self->_regions objectForKeyedSubscript:self->_primaryRegionIdentifier];
      v7 = v10[2](v10, v6);
      [v5 setObject:v7 forKeyedSubscript:self->_primaryRegionIdentifier];

      v8 = [v5 copy];
      regions = self->_regions;
      self->_regions = v8;
    }

    os_unfair_lock_unlock(&self->_lock_context);
    v4 = v10;
  }
}

- (void)atomicallyUpdateRegionWithIdentifier:(id)a3 updateBlock:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    os_unfair_lock_lock(&self->_lock_context);
    v12 = [(NSDictionary *)self->_regions mutableCopy];
    v8 = [(NSDictionary *)self->_regions objectForKeyedSubscript:v7];
    v9 = v6[2](v6, v8);

    [v12 setObject:v9 forKeyedSubscript:v7];
    v10 = [v12 copy];
    regions = self->_regions;
    self->_regions = v10;

    os_unfair_lock_unlock(&self->_lock_context);
  }
}

- (void)atomicallyUpdateEveryRegion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock_context);
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self->_regions;
    v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [(NSDictionary *)self->_regions objectForKeyedSubscript:v9];
          v11 = v4[2](v4, v10);
          [v15 setObject:v11 forKeyedSubscript:v9];
        }

        v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v12 = [v15 copy];
    regions = self->_regions;
    self->_regions = v12;

    os_unfair_lock_unlock(&self->_lock_context);
  }
}

- (id)TSMPushTopics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PKPaymentWebServiceContext_TSMPushTopics__block_invoke;
  v8[3] = &unk_1E79D8950;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock_context);
  v6 = [v5 copy];

  return v6;
}

void __43__PKPaymentWebServiceContext_TSMPushTopics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 trustedServiceManagerPushTopic];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) addObject:v4];
    v4 = v5;
  }
}

- (id)TSMURLStringByPushTopic
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKPaymentWebServiceContext_TSMURLStringByPushTopic__block_invoke;
  v8[3] = &unk_1E79D8950;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock_context);
  v6 = [v5 copy];

  return v6;
}

void __53__PKPaymentWebServiceContext_TSMURLStringByPushTopic__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 trustedServiceManagerURL];
  v7 = [v5 absoluteString];

  v6 = [v4 trustedServiceManagerPushTopic];

  if (v7 && v6)
  {
    [*(a1 + 32) setObject:v7 forKey:v6];
  }
}

- (id)notificationPushTopics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PKPaymentWebServiceContext_notificationPushTopics__block_invoke;
  v8[3] = &unk_1E79D8950;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock_context);
  v6 = [v5 copy];

  return v6;
}

void __52__PKPaymentWebServiceContext_notificationPushTopics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 pk_safelyAddObject:a2];
  v7 = *(a1 + 32);
  v8 = [v6 userNotificationPushTopic];
  [v7 pk_safelyAddObject:v8];

  v9 = *(a1 + 32);
  v10 = [v6 deviceCheckInPushTopic];
  [v9 pk_safelyAddObject:v10];

  v11 = *(a1 + 32);
  v12 = [v6 productsPushTopic];
  [v11 pk_safelyAddObject:v12];

  v13 = *(a1 + 32);
  v14 = [v6 transactionZonePushTopic];
  [v13 pk_safelyAddObject:v14];

  v15 = *(a1 + 32);
  v16 = [v6 provisioningTargetsPushTopic];
  [v15 pk_safelyAddObject:v16];

  [*(a1 + 32) pk_safelyAddObject:@"com.apple.pay.provision"];
  v17 = *(a1 + 32);
  v18 = [v6 ownershipTokensPushTopic];
  [v17 pk_safelyAddObject:v18];

  v19 = *(a1 + 32);
  v20 = [v6 auxiliaryRegistrationRequirementPushTopic];

  [v19 pk_safelyAddObject:v20];
}

- (id)applyServicePushTopics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PKPaymentWebServiceContext_applyServicePushTopics__block_invoke;
  v8[3] = &unk_1E79D8950;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock_context);
  v6 = [v5 copy];

  return v6;
}

void __52__PKPaymentWebServiceContext_applyServicePushTopics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 applyServicePushTopic];
  [v3 pk_safelyAddObject:v4];
}

- (id)accountServicePushTopics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PKPaymentWebServiceContext_accountServicePushTopics__block_invoke;
  v8[3] = &unk_1E79D8950;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock_context);
  v6 = [v5 copy];

  return v6;
}

void __54__PKPaymentWebServiceContext_accountServicePushTopics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 accountServicePushTopic];
  [v3 pk_safelyAddObject:v4];
}

- (id)paymentOffersServicePushTopics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_lock_context);
  regions = self->_regions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PKPaymentWebServiceContext_paymentOffersServicePushTopics__block_invoke;
  v8[3] = &unk_1E79D8950;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock_context);
  v6 = [v5 copy];

  return v6;
}

void __60__PKPaymentWebServiceContext_paymentOffersServicePushTopics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 paymentOffersServicePushTopic];
  [v3 pk_safelyAddObject:v4];
}

- (NSURL)peerPaymentServiceURL
{
  v2 = [(PKPaymentWebServiceContext *)self _regionWithPeerPaymentServiceURL];
  v3 = [v2 peerPaymentServiceURL];

  return v3;
}

- (BOOL)hasPeerPaymentAccount
{
  v2 = [(PKPaymentWebServiceContext *)self _regionWithPeerPaymentServiceURL];
  v3 = [v2 hasPeerPaymentAccount];

  return v3;
}

- (id)_regionWithPeerPaymentServiceURL
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentWebServiceContext *)self primaryRegion];
  v4 = [v3 peerPaymentServiceURL];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(PKPaymentWebServiceContext *)self regions];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        v11 = v3;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v3 = [(PKPaymentWebServiceContext *)self regionForIdentifier:*(*(&v14 + 1) + 8 * v10)];

          v12 = [v3 peerPaymentServiceURL];
          if (v12)
          {
            v5 = v12;
            goto LABEL_13;
          }

          ++v10;
          v11 = v3;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
    v6 = v3;
    v3 = 0;
LABEL_13:
  }

  return v3;
}

- (BOOL)contextMeetsProvisioningEnablementPercentageThresholdForRegion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[PKPaymentWebServiceContext ignoreProvisioningEnablementPercentage](self, "ignoreProvisioningEnablementPercentage") || (-[PKPaymentWebServiceContext configuration](self, "configuration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 regionHasProvisioningEnablementPercentage:v4], v5, !v6))
  {
    v12 = 1;
  }

  else
  {
    [(PKPaymentWebServiceContext *)self _contextProvisioningEnablementValue];
    v8 = v7;
    v9 = [(PKPaymentWebServiceContext *)self configuration];
    [v9 provisioningEnablementPercentageForRegion:v4];
    v11 = v10;

    v12 = v8 < v11;
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"does not meet";
      v16 = 138413058;
      v17 = v4;
      if (v8 < v11)
      {
        v14 = @"meets";
      }

      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Region: %@ has a defined ProvisioningEnablementPercentage threshold of %f. This device has context value %f. Context %@ the required threshold.", &v16, 0x2Au);
    }
  }

  return v12;
}

- (BOOL)contextMeetsMarketGeoNotificationThresholdForRegion:(id)a3 paymentNetwork:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentWebServiceContext *)self configuration];
  v8 = [v7 marketGeoRegionNotificationNetworkThresholdsForRegion:v6];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    [v10 doubleValue];
    v12 = v11;
    [(PKPaymentWebServiceContext *)self _contextProvisioningEnablementValue];
    v14 = v13;
    v15 = v13 < v12;
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"does not meet";
      *buf = 138413314;
      v20 = v6;
      if (v14 < v12)
      {
        v17 = @"meets";
      }

      v21 = 2048;
      v22 = v12;
      v23 = 2048;
      v24 = a4;
      v25 = 2048;
      v26 = v14;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Region: %@ has a defined GeoRegionNotificationNetwork threshold of %f for network %ld. This device has context value %f. Context %@ the required threshold.", buf, 0x34u);
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)contextMeetsDeviceUpgradeTasksEnablementThresholdForRegion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PKPaymentWebServiceContext *)self _contextProvisioningEnablementValue];
  v6 = v5;
  v7 = [(PKPaymentWebServiceContext *)self configuration];
  [v7 deviceUpgradeTaskEnablementPercentageForRegion:v4];
  v9 = v8;

  if (v9 < 1.0)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"does not meet";
      v13 = 138413058;
      v14 = v4;
      if (v6 < v9)
      {
        v11 = @"meets";
      }

      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = v6;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Region: %@ has a defined deviceUpgradeTasksEnablementPercentage threshold of %f. This device has context value %f. Context %@ meets the required threshold.", &v13, 0x2Au);
    }
  }

  return v6 < v9;
}

- (id)betaPaymentNetworksForRegion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentWebServiceContext *)self configuration];
  v6 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7 = [v5 betaPaymentNetworksForRegion:v4];
  v25 = [v6 initWithArray:v7];

  v20 = v5;
  v21 = v4;
  v8 = [v5 betaPaymentNetworkVersionsForRegion:v4];
  v24 = +[PKOSVersionRequirement fromDeviceVersion];
  v23 = PKDeviceClass();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "PKIntegerForKey:", @"cardType"}];
        v15 = [PKOSVersionRequirementRange alloc];
        v16 = [v13 PKDictionaryForKey:@"version"];
        v17 = [(PKOSVersionRequirementRange *)v15 initWithDictionary:v16];

        if (v17)
        {
          if ([(PKOSVersionRequirementRange *)v17 versionMeetsRequirements:v24 deviceClass:v23])
          {
            [v25 addObject:v14];
          }

          else
          {
            [v25 removeObject:v14];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v18 = [v25 copy];

  return v18;
}

- (double)_contextProvisioningEnablementValue
{
  v2 = [(PKPaymentWebServiceContext *)self secureElementID];
  v3 = [v2 UTF8String];

  if (!v3)
  {
    return 0.0;
  }

  v4 = strlen(v3);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v5 = 33 * v5 + v6;
      --v4;
    }

    while (v4);
    v7 = (v5 % 0x64);
  }

  else
  {
    v7 = 0.0;
  }

  return v7 / 100.0;
}

- (id)applyServiceFeaturesForRegionMeetingEnablementThreshold:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(PKPaymentWebServiceContext *)self configuration];
  [(PKPaymentWebServiceContext *)self _contextProvisioningEnablementValue];
  v9 = v8;
  v10 = [v7 applyServiceFeaturesForRegion:v5];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKPaymentWebServiceContext_applyServiceFeaturesForRegionMeetingEnablementThreshold___block_invoke;
  v15[3] = &unk_1E79D8978;
  v16 = @"enablementThreshold";
  v18 = v9;
  v11 = v6;
  v17 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v17;
  v13 = v11;

  return v11;
}

void __86__PKPaymentWebServiceContext_applyServiceFeaturesForRegionMeetingEnablementThreshold___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 PKNumberForKey:*(a1 + 32)];
  [v7 doubleValue];
  v9 = v8;
  if (v7 && *(a1 + 48) < v8)
  {
    [*(a1 + 40) setObject:v6 forKey:v5];
  }

  v10 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v12 = 138412802;
    v13 = v5;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "%@ has a defined threshold of %f. This device has context value %f.", &v12, 0x20u);
  }
}

- (id)applyServiceLocalizationBundleForFeatureIdentifier:(unint64_t)a3 mainLanguageBundle:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v6 = PKPassKitBundle();
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [v6 bundleIdentifier];
  v10 = [v7 stringWithFormat:@"%@-%@", v8, v9];

  os_unfair_lock_lock(&self->_cacheLock);
  v11 = [(NSMutableDictionary *)self->_featureSupportedLanguageCache objectForKey:v10];
  os_unfair_lock_unlock(&self->_cacheLock);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6;
    os_unfair_lock_lock(&self->_cacheLock);
    [(NSMutableDictionary *)self->_featureSupportedLanguageCache setObject:v12 forKey:v10];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v12;
}

- (id)applyServicePreferredLanguageForFeatureIdentifier:(unint64_t)a3 mainLanguageBundle:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    v6 = PKPassKitBundle();
  }

  v7 = [(PKPaymentWebServiceContext *)self configuration];
  v8 = [(PKPaymentWebServiceContext *)self primaryRegionIdentifier];
  v9 = [v7 applyServiceFeaturesForRegion:v8];

  v10 = PKFeatureIdentifierToString(a3);
  v11 = [v9 objectForKey:v10];

  v12 = [v11 PKArrayForKey:@"applySupportedLanguages"];
  if (v12)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [v6 preferredLocalizations];
    v27 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v27)
    {
      v14 = *v34;
      v25 = *v34;
      v26 = v9;
      v28 = v13;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = v12;
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            while (2)
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                if ([v16 isEqualToString:{*(*(&v29 + 1) + 8 * j), v25}])
                {
                  v23 = v16;

                  v9 = v26;
                  goto LABEL_27;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v13 = v28;
          v14 = v25;
        }

        v9 = v26;
        v27 = [v28 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }
  }

  if (a3 == 2 || a3 == 5)
  {
    v23 = @"en";
  }

  else
  {
    v23 = 0;
  }

LABEL_27:

  return v23;
}

+ (void)_migrateContext:(id)a3
{
  v4 = a3;
  if (![v4 version])
  {
    [a1 _migrateFrom0To1:v4];
  }
}

+ (void)_migrateFrom0To1:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Migrating PKPaymentWebServiceContext from 0 to 1… ", buf, 2u);
  }

  v5 = +[PKSecureElement sharedSecureElement];
  v6 = [PKPaymentWebServiceRegion alloc];
  v7 = [v3 certificates];
  v8 = PKLocalBrokerURL([v3 devSigned]);
  v9 = PKTrustedServiceManagerURL();
  v10 = PKPaymentServicesURL();
  v11 = PKPaymentServicesURL();
  v12 = [v3 consistencyCheckBackoffLevel];
  v13 = [v3 lastUpdatedTag];
  v14 = [(PKPaymentWebServiceRegion *)v6 initWithCeritficates:v7 brokerURL:v8 trustedServiceManagerURL:v9 trustedServiceManagerPushTopic:@"com.apple.seld" paymentServicesURL:v10 inAppPaymentServicesURL:v11 consistencyCheckBackoffLevel:v12 lastUpdatedTag:v13];

  v15 = [v5 isProductionSigned];
  v16 = @"paymentpass.com.apple.dev1";
  if (v15)
  {
    v16 = @"paymentpass.com.apple";
  }

  v21 = v16;
  v22[0] = v14;
  v17 = MEMORY[0x1E695DF20];
  v18 = v16;
  v19 = [v17 dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v3 setRegions:v19];
  [v3 setPrimaryRegionIdentifier:v18];

  [v3 setCertificates:0];
  [v3 setLastUpdatedTag:0];
  [v3 setConsistencyCheckBackoffLevel:0];
  [v3 setVersion:1];
}

@end