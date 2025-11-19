@interface CKDServerConfiguration
- (BOOL)allowCloudMediaProcessingOffloadForGM:(id)a3;
- (BOOL)allowCloudMediaProcessingOffloadForSeed:(id)a3;
- (BOOL)allowExpiredDNSBehavior:(id)a3;
- (BOOL)allowsDeviceCapabilitiesCheckingForContainerID:(id)a3;
- (BOOL)allowsDeviceCapabilitiesReportingForContainerID:(id)a3;
- (BOOL)applicationWithBundleID:(id)a3 canSyncUsingVersion:(id)a4 forContainerID:(id)a5;
- (BOOL)isExpired;
- (CKDServerConfiguration)initWithPropertyDictionary:(id)a3;
- (CKDServerConfiguration)initWithValues:(id)a3;
- (NSDictionary)shouldCheckDeviceCapabilitiesContainerOverrides;
- (NSDictionary)shouldReportDeviceCapabilitiesContainerOverrides;
- (NSString)description;
- (double)publicIdentitiesExpirationTimeout:(id)a3;
- (id)_getValueForKey:(id)a3 ofType:(Class)a4 fromDictionary:(id)a5;
- (id)chunkProfileConfigurationFileExtensionToProfileMap:(id)a3;
- (id)dictionaryPropertyEncoding;
- (id)iCloudAppSiteAssociationData;
- (id)valueForKeyPath:(id)a3 forContainerID:(id)a4;
- (id)valuesForContainerID:(id)a3;
- (int64_t)defaultShouldCheckDeviceCapabilities;
- (int64_t)defaultShouldReportDeviceCapabilities;
- (int64_t)tokenRegisterDays:(id)a3;
- (unint64_t)c2AllOperationGroupMetricsReportFrequency:(id)a3;
- (unint64_t)c2AllOperationGroupMetricsReportFrequencyBase:(id)a3;
- (unint64_t)c2AllOperationMetricsReportFrequency:(id)a3;
- (unint64_t)c2AllOperationMetricsReportFrequencyBase:(id)a3;
- (unint64_t)c2ClientApplicationMetricsReportFrequency:(id)a3;
- (unint64_t)c2ClientApplicationMetricsReportFrequencyBase:(id)a3;
- (unint64_t)c2ClientOperationMetricsReportFrequency:(id)a3;
- (unint64_t)c2ClientOperationMetricsReportFrequencyBase:(id)a3;
- (unint64_t)c2NetworkMetricsReportFrequency:(id)a3;
- (unint64_t)c2NetworkMetricsReportFrequencyBase:(id)a3;
- (unint64_t)maxBatchSize:(id)a3;
- (unint64_t)maxInlineMergeableDeltaSize:(id)a3;
- (void)_parseDeviceCapabilitiesIfNecessary;
@end

@implementation CKDServerConfiguration

- (BOOL)isExpired
{
  v3 = objc_msgSend_expiry(self, a2, v2);
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5);
  v8 = objc_msgSend_compare_(v3, v7, v6) == -1;

  return v8;
}

- (CKDServerConfiguration)initWithValues:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CKDServerConfiguration;
  v7 = [(CKDServerConfiguration *)&v21 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    values = v7->_values;
    v7->_values = v8;

    v11 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"expiresAfterSeconds");
    v14 = v11;
    if (v11)
    {
      v15 = MEMORY[0x277CBEAA8];
      objc_msgSend_doubleValue(v11, v12, v13);
      v18 = objc_msgSend_dateWithTimeIntervalSinceNow_(v15, v16, v17);
      expiry = v7->_expiry;
      v7->_expiry = v18;
    }

    v7->_defaultShouldReportDeviceCapabilities = -1;
    v7->_defaultShouldCheckDeviceCapabilities = -1;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_expiry(self, v6, v7);
  v11 = objc_msgSend_values(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"<%@ %p> (Expires %@, Values %@)", v5, self, v8, v11);

  return v13;
}

- (id)valuesForContainerID:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v4)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(self->_values, v5, @"containerOverrides");
    v11 = objc_msgSend_containerIdentifier(v4, v9, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(v8, v12, v11);

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_addObject_(v7, v14, v13);
      }
    }
  }

  if (objc_msgSend_isAppleInternal(v4, v5, v6))
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(self->_values, v15, @"appleOverrides");
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_addObject_(v7, v17, v16);
      }
    }
  }

  values = self->_values;
  if (values)
  {
    objc_msgSend_addObject_(v7, v15, values);
  }

  return v7;
}

- (id)valueForKeyPath:(id)a3 forContainerID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_msgSend_valuesForContainerID_(self, v7, a4);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v22 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_valueForKeyPath_(*(*(&v19 + 1) + 8 * i), v11, v6, v19);
        if (v15)
        {
          v16 = v15;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)applicationWithBundleID:(id)a3 canSyncUsingVersion:(id)a4 forContainerID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_msgSend_length(v9, v11, v12))
  {
    v14 = objc_msgSend_stringByAppendingString_(v8, v13, v9);
    v15 = self;
    objc_sync_enter(v15);
    v18 = objc_msgSend_allowedAppVersionsCache(v15, v16, v17);

    if (!v18)
    {
      v21 = objc_opt_new();
      objc_msgSend_setAllowedAppVersionsCache_(v15, v22, v21);
    }

    v23 = objc_msgSend_allowedAppVersionsCache(v15, v19, v20);
    v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v14);

    if (!v25)
    {
      v28 = objc_msgSend_values(v15, v26, v27);
      v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"bundleIds");

      v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, v8);
      if ((compareVersionStrings(v32, v9) + 1) < 2 || v32 == 0)
      {
        v25 = MEMORY[0x277CBEC38];
      }

      else
      {
        v25 = MEMORY[0x277CBEC28];
      }

      v36 = objc_msgSend_allowedAppVersionsCache(v15, v33, v34);
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v25, v14);
    }

    objc_sync_exit(v15);

    v40 = objc_msgSend_BOOLValue(v25, v38, v39);
  }

  else
  {
    v40 = 1;
  }

  return v40;
}

- (int64_t)tokenRegisterDays:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"pushTokenRegisterDays", a3);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = objc_msgSend_integerValue(v3, v4, v5);
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (BOOL)allowCloudMediaProcessingOffloadForSeed:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"allowCmpOffloadForSeed", a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_BOOLValue(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)allowCloudMediaProcessingOffloadForGM:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"allowCmpOffloadForGM", a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_BOOLValue(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)maxBatchSize:(id)a3
{
  v4 = MEMORY[0x277CBC1D8];
  v5 = a3;
  v8 = objc_msgSend_sharedOptions(v4, v6, v7);
  v11 = objc_msgSend_maxBatchSize(v8, v9, v10);

  v13 = objc_msgSend_valueForKeyPath_forContainerID_(self, v12, @"maxBatchSize", v5);

  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = objc_msgSend_unsignedIntegerValue(v13, v14, v15);
  }

  return v11;
}

- (double)publicIdentitiesExpirationTimeout:(id)a3
{
  v4 = MEMORY[0x277CBC1D8];
  v5 = a3;
  v8 = objc_msgSend_sharedOptions(v4, v6, v7);
  objc_msgSend_publicIdentitiesExpirationTimeout(v8, v9, v10);
  v12 = v11;

  v14 = objc_msgSend_valueForKeyPath_forContainerID_(self, v13, @"expirationTimeout", v5);

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_doubleValue(v14, v15, v16);
    v12 = v17;
  }

  return v12;
}

- (BOOL)allowExpiredDNSBehavior:(id)a3
{
  v4 = MEMORY[0x277CBC1D8];
  v5 = a3;
  v8 = objc_msgSend_sharedOptions(v4, v6, v7);
  v11 = objc_msgSend_allowExpiredDNSBehavior(v8, v9, v10);

  v13 = objc_msgSend_valueForKeyPath_forContainerID_(self, v12, @"allowExpiredDNSBehavior", v5);

  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = objc_msgSend_BOOLValue(v13, v14, v15);
  }

  return v11;
}

- (unint64_t)c2NetworkMetricsReportFrequency:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.reportFrequency", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2NetworkMetricsReportFrequencyBase:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.reportFrequencyBase", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2ClientOperationMetricsReportFrequency:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.clientOperationMetrics.reportFrequency", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2ClientOperationMetricsReportFrequencyBase:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.clientOperationMetrics.reportFrequencyBase", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2ClientApplicationMetricsReportFrequency:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.applicationMetrics.reportFrequency", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2ClientApplicationMetricsReportFrequencyBase:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.applicationMetrics.reportFrequencyBase", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2AllOperationMetricsReportFrequency:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.allOperationMetrics.reportFrequency", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2AllOperationMetricsReportFrequencyBase:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.allOperationMetrics.reportFrequencyBase", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2AllOperationGroupMetricsReportFrequency:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.allOperationGroupMetrics.reportFrequency", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (unint64_t)c2AllOperationGroupMetricsReportFrequencyBase:(id)a3
{
  v3 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"c2MetricsLegacy.allOperationGroupMetrics.reportFrequencyBase", a3);
  v6 = objc_msgSend_unsignedIntegerValue(v3, v4, v5);

  return v6;
}

- (id)chunkProfileConfigurationFileExtensionToProfileMap:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_msgSend_valuesForContainerID_(self, v6, v4);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = objc_msgSend_reverseObjectEnumerator(v7, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_valueForKeyPath_(*(*(&v21 + 1) + 8 * i), v13, @"chunkProfileConfiguration.fileExtensionToProfileMap");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addEntriesFromDictionary_(v5, v18, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v21, v25, 16);
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)iCloudAppSiteAssociationData
{
  v2 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"iCloudAppSiteAssociationData", 0);
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v6 = objc_msgSend_allKeys(v3, v4, v5);
    v9 = objc_msgSend_firstObject(v6, v7, v8);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_objectForKeyedSubscript_(v3, v10, v9), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) == 0))
    {

      v9 = v3;
      v3 = 0;
    }
  }

  return v3;
}

- (NSDictionary)shouldReportDeviceCapabilitiesContainerOverrides
{
  objc_msgSend__parseDeviceCapabilitiesIfNecessary(self, a2, v2);
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_shouldReportDeviceCapabilitiesContainerOverrides;
  objc_sync_exit(v4);

  return v5;
}

- (NSDictionary)shouldCheckDeviceCapabilitiesContainerOverrides
{
  objc_msgSend__parseDeviceCapabilitiesIfNecessary(self, a2, v2);
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_shouldCheckDeviceCapabilitiesContainerOverrides;
  objc_sync_exit(v4);

  return v5;
}

- (int64_t)defaultShouldReportDeviceCapabilities
{
  objc_msgSend__parseDeviceCapabilitiesIfNecessary(self, a2, v2);
  v4 = self;
  objc_sync_enter(v4);
  defaultShouldReportDeviceCapabilities = v4->_defaultShouldReportDeviceCapabilities;
  objc_sync_exit(v4);

  return defaultShouldReportDeviceCapabilities;
}

- (int64_t)defaultShouldCheckDeviceCapabilities
{
  objc_msgSend__parseDeviceCapabilitiesIfNecessary(self, a2, v2);
  v4 = self;
  objc_sync_enter(v4);
  defaultShouldCheckDeviceCapabilities = v4->_defaultShouldCheckDeviceCapabilities;
  objc_sync_exit(v4);

  return defaultShouldCheckDeviceCapabilities;
}

- (void)_parseDeviceCapabilitiesIfNecessary
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_shouldReportDeviceCapabilitiesContainerOverrides || !v2->_shouldCheckDeviceCapabilitiesContainerOverrides)
  {
    v56 = objc_opt_new();
    v55 = objc_opt_new();
    v3 = objc_opt_class();
    v5 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v4, @"adopterCapabilitiesAndCryptoAgility", v3, v2->_values);
    v6 = MEMORY[0x277CBC880];
    if (v5)
    {
      v7 = objc_opt_class();
      v9 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v8, @"default", v7, v5);
      if (v9)
      {
        v2->_defaultShouldReportDeviceCapabilities = 0;
        v2->_defaultShouldCheckDeviceCapabilities = 0;
        v10 = objc_opt_class();
        v12 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v11, @"enableAdopterCapabilityReport", v10, v9);
        if (objc_opt_respondsToSelector())
        {
          v2->_defaultShouldReportDeviceCapabilities = objc_msgSend_BOOLValue(v12, v13, v14);
        }

        v15 = objc_opt_class();
        v17 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v16, @"enableCheckingAdopterCapability", v15, v9);
        if (objc_opt_respondsToSelector())
        {
          v2->_defaultShouldCheckDeviceCapabilities = objc_msgSend_BOOLValue(v17, v18, v19);
        }
      }

      else
      {
        if (*v6 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v21 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Server Configuration plist does not contain the default section.", buf, 2u);
        }
      }

      v22 = objc_opt_class();
      v24 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v23, @"container", v22, v5);
      if (v24)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = v24;
        v27 = objc_msgSend_allKeys(v24, v25, v26);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v60, v72, 16);
        if (v29)
        {
          v57 = *v61;
          obj = v27;
          do
          {
            v59 = v29;
            for (i = 0; i != v59; ++i)
            {
              if (*v61 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v60 + 1) + 8 * i);
              v32 = objc_opt_class();
              v34 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v33, v31, v32, v58);
              v35 = objc_opt_class();
              v38 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v36, @"enableAdopterCapabilityReport", v35, v34);
              if (v38)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v56, v37, v38, v31);
              }

              else
              {
                if (*v6 != -1)
                {
                  dispatch_once(v6, *MEMORY[0x277CBC878]);
                }

                v39 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v31;
                  _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Server Configuration plist contains override for container %@, but it does not have a enableAdopterCapabilityReport key", buf, 0xCu);
                }
              }

              v40 = objc_opt_class();
              v43 = objc_msgSend__getValueForKey_ofType_fromDictionary_(v2, v41, @"enableCheckingAdopterCapability", v40, v34);
              if (v43)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v55, v42, v43, v31);
              }

              else
              {
                if (*v6 != -1)
                {
                  dispatch_once(v6, *MEMORY[0x277CBC878]);
                }

                log = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v31;
                  _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Server Configuration plist contains override for container %@, but it does not have a enableCheckingAdopterCapability key", buf, 0xCu);
                }
              }
            }

            v27 = obj;
            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v60, v72, 16);
          }

          while (v29);
        }

        v24 = v58;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Server Configuration plist does not contain device capabilities section", buf, 2u);
      }
    }

    objc_storeStrong(&v2->_shouldReportDeviceCapabilitiesContainerOverrides, v56);
    objc_storeStrong(&v2->_shouldCheckDeviceCapabilitiesContainerOverrides, v55);
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v45 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      shouldReportDeviceCapabilitiesContainerOverrides = v2->_shouldReportDeviceCapabilitiesContainerOverrides;
      shouldCheckDeviceCapabilitiesContainerOverrides = v2->_shouldCheckDeviceCapabilitiesContainerOverrides;
      defaultShouldReportDeviceCapabilities = v2->_defaultShouldReportDeviceCapabilities;
      v49 = CKTernaryDescription();
      defaultShouldCheckDeviceCapabilities = v2->_defaultShouldCheckDeviceCapabilities;
      v51 = CKTernaryDescription();
      *buf = 138413058;
      v65 = shouldReportDeviceCapabilitiesContainerOverrides;
      v66 = 2112;
      v67 = shouldCheckDeviceCapabilitiesContainerOverrides;
      v68 = 2112;
      v69 = v49;
      v70 = 2112;
      v71 = v51;
      _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Finished parsing server configuration plist for Device Capabilities Reporting / Checking. Container overrides for reporting device capabilities: %@ \nContainer overrides for checking device capabilities: %@. \nDefault should report: %@ Default should check: %@", buf, 0x2Au);
    }
  }

  objc_sync_exit(v2);

  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowsDeviceCapabilitiesReportingForContainerID:(id)a3
{
  v4 = objc_msgSend_containerIdentifier(a3, a2, a3);
  v7 = v4;
  if (!v4 || !objc_msgSend_length(v4, v5, v6))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Unexpected nil container identifier", v25, 2u);
    }

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v10 = objc_msgSend_shouldReportDeviceCapabilitiesContainerOverrides(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v7);

  if (!v12)
  {
    if (objc_msgSend_defaultShouldReportDeviceCapabilities(self, v13, v14) != -1)
    {
      v20 = objc_msgSend_defaultShouldReportDeviceCapabilities(self, v23, v24) == 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = objc_msgSend_shouldReportDeviceCapabilitiesContainerOverrides(self, v13, v14);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v7);
  v20 = objc_msgSend_BOOLValue(v17, v18, v19);

LABEL_10:
  return v20;
}

- (BOOL)allowsDeviceCapabilitiesCheckingForContainerID:(id)a3
{
  v4 = objc_msgSend_containerIdentifier(a3, a2, a3);
  v7 = v4;
  if (!v4 || !objc_msgSend_length(v4, v5, v6))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Unexpected nil container identifier", v25, 2u);
    }

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v10 = objc_msgSend_shouldCheckDeviceCapabilitiesContainerOverrides(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v7);

  if (!v12)
  {
    if (objc_msgSend_defaultShouldCheckDeviceCapabilities(self, v13, v14) != -1)
    {
      v20 = objc_msgSend_defaultShouldCheckDeviceCapabilities(self, v23, v24) == 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = objc_msgSend_shouldCheckDeviceCapabilitiesContainerOverrides(self, v13, v14);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v7);
  v20 = objc_msgSend_BOOLValue(v17, v18, v19);

LABEL_10:
  return v20;
}

- (unint64_t)maxInlineMergeableDeltaSize:(id)a3
{
  v3 = 92160;
  v4 = objc_msgSend_valueForKeyPath_forContainerID_(self, a2, @"maxInlineMergeableDeltaSize", a3);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_msgSend_unsignedIntegerValue(v4, v5, v6);
  }

  return v3;
}

- (CKDServerConfiguration)initWithPropertyDictionary:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_init(self, v5, v6);
  if (v8)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v4, v7, @"valuesData");
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CBEB98]);
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v19 = objc_msgSend_initWithObjects_(v11, v18, v12, v13, v14, v15, v16, v17, 0);
      v21 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v20, v19, v10, 0);
      v24 = objc_msgSend_mutableCopy(v21, v22, v23);
      values = v8->_values;
      v8->_values = v24;
    }

    v26 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"expiry");
    expiry = v8->_expiry;
    v8->_expiry = v26;
  }

  return v8;
}

- (id)dictionaryPropertyEncoding
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  values = self->_values;
  if (values)
  {
    v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], a2, values, 1, 0);
  }

  else
  {
    v8 = objc_opt_new();
    v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v3, v9, v8, 1, 0);
  }

  v15[0] = @"valuesData";
  v15[1] = @"expiry";
  v16[0] = v7;
  expiry = self->_expiry;
  v11 = expiry;
  if (!expiry)
  {
    v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  }

  v16[1] = v11;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v16, v15, 2);
  if (!expiry)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_getValueForKey:(id)a3 ofType:(Class)a4 fromDictionary:(id)a5
{
  if (a5)
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(a5, a2, a3);
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
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

@end