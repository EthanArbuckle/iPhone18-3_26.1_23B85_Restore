@interface ELSSnapshot
+ (id)consentToString:(unint64_t)a3;
+ (id)statusToString:(unint64_t)a3;
- (BOOL)needsFollowup;
- (ELSSnapshot)init;
- (NSArray)encodedQueue;
- (double)durationRemaining;
- (double)totalDuration;
- (id)JSONObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodeQueue:(id)a3;
- (id)dedSessionIdentifier;
- (id)dedSessionIdentifierForRemoteDeviceIdentifier:(id)a3;
- (id)description;
- (id)dictionaryRepresentationPretty:(BOOL)a3;
- (id)sessionDevice;
- (void)JSONObject;
- (void)refreshConsent;
- (void)refreshConsentData;
- (void)refreshConsentHandles;
- (void)refreshDates;
- (void)refreshDeviceSelectionMap;
- (void)refreshFollowUpOptions;
- (void)refreshIdentifiersToRetry;
- (void)refreshKeyPaths:(id)a3;
- (void)refreshMetadata;
- (void)refreshQueue;
- (void)refreshRetriesRemaining;
- (void)refreshSessionDevice;
- (void)refreshSessionID;
- (void)refreshStatus;
- (void)refreshTopLevelPrivacyDescription;
- (void)refreshUploadCompletedPercentage;
@end

@implementation ELSSnapshot

- (ELSSnapshot)init
{
  if (init_onceToken != -1)
  {
    [ELSSnapshot init];
  }

  v8.receiver = self;
  v8.super_class = ELSSnapshot;
  v3 = [(ELSSnapshot *)&v8 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.enhanced-logging-state"];
    defaults = v3->_defaults;
    v3->_defaults = v4;

    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"sessionID", @"status", @"consent", @"dates", @"queue", @"consentHandles", @"retriesRemaining", @"identifiersToRetry", @"metadata", @"uploadCompletedPercentage", @"followUpOptions", @"targetDevices", @"consentData", @"topLevelPrivacyPolicy", @"deviceSelection", 0}];
    [(ELSSnapshot *)v3 refreshKeyPaths:v6];
  }

  return v3;
}

- (void)refreshKeyPaths:(id)a3
{
  v4 = a3;
  if ([v4 containsObject:@"sessionID"])
  {
    [(ELSSnapshot *)self refreshSessionID];
  }

  if ([v4 containsObject:@"status"])
  {
    [(ELSSnapshot *)self refreshStatus];
  }

  if ([v4 containsObject:@"consent"])
  {
    [(ELSSnapshot *)self refreshConsent];
  }

  if ([v4 containsObject:@"dates"])
  {
    [(ELSSnapshot *)self refreshDates];
  }

  if ([v4 containsObject:@"queue"])
  {
    [(ELSSnapshot *)self refreshQueue];
  }

  if ([v4 containsObject:@"consentHandles"])
  {
    [(ELSSnapshot *)self refreshConsentHandles];
  }

  if ([v4 containsObject:@"retriesRemaining"])
  {
    [(ELSSnapshot *)self refreshRetriesRemaining];
  }

  if ([v4 containsObject:@"identifiersToRetry"])
  {
    [(ELSSnapshot *)self refreshIdentifiersToRetry];
  }

  if ([v4 containsObject:@"metadata"])
  {
    [(ELSSnapshot *)self refreshMetadata];
  }

  if ([v4 containsObject:@"uploadCompletedPercentage"])
  {
    [(ELSSnapshot *)self refreshUploadCompletedPercentage];
  }

  if ([v4 containsObject:@"followUpOptions"])
  {
    [(ELSSnapshot *)self refreshFollowUpOptions];
  }

  if ([v4 containsObject:@"targetDevices"])
  {
    [(ELSSnapshot *)self refreshSessionDevice];
  }

  if ([v4 containsObject:@"consentData"])
  {
    [(ELSSnapshot *)self refreshConsentData];
  }

  if ([v4 containsObject:@"topLevelPrivacyPolicy"])
  {
    [(ELSSnapshot *)self refreshTopLevelPrivacyDescription];
  }

  if ([v4 containsObject:@"deviceSelection"])
  {
    [(ELSSnapshot *)self refreshDeviceSelectionMap];
  }
}

- (void)refreshSessionID
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"sessionID"];
  [(ELSSnapshot *)self setSessionID:v3];
}

- (void)refreshStatus
{
  v3 = [(ELSSnapshot *)self defaults];
  v5 = [v3 objectForKey:@"status"];

  if (v5)
  {
    v4 = [v5 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  [(ELSSnapshot *)self setStatus:v4];
}

- (void)refreshConsent
{
  v3 = [(ELSSnapshot *)self defaults];
  v5 = [v3 objectForKey:@"consent"];

  if (v5)
  {
    v4 = [v5 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  [(ELSSnapshot *)self setConsent:v4];
}

- (void)refreshDates
{
  v3 = [(ELSSnapshot *)self defaults];
  v6 = [v3 objectForKey:@"dates"];

  if (v6)
  {
    v4 = [v6 objectForKeyedSubscript:@"startDate"];
    [(ELSSnapshot *)self setStartDate:v4];

    v5 = [v6 objectForKeyedSubscript:@"endDate"];
    [(ELSSnapshot *)self setEndDate:v5];
  }

  else
  {
    [(ELSSnapshot *)self setStartDate:0];
    [(ELSSnapshot *)self setEndDate:0];
  }
}

- (void)refreshQueue
{
  v3 = [(ELSSnapshot *)self defaults];
  v5 = [v3 objectForKey:@"queue"];

  if (v5)
  {
    v4 = [(ELSSnapshot *)self decodeQueue:v5];
    [(ELSSnapshot *)self setQueue:v4];
  }

  else
  {
    [(ELSSnapshot *)self setQueue:0];
  }
}

- (void)refreshConsentHandles
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"consentHandles"];
  [(ELSSnapshot *)self setConsentHandles:v3];
}

- (void)refreshSessionDevice
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A07C000, a2, OS_LOG_TYPE_ERROR, "Could not decode enhanced logging state session device: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)refreshConsentData
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"consentData"];
  [(ELSSnapshot *)self setConsentData:v3];
}

- (void)refreshRetriesRemaining
{
  v3 = [(ELSSnapshot *)self defaults];
  v5 = [v3 objectForKey:@"retriesRemaining"];

  if (v5)
  {
    v4 = [v5 integerValue];
  }

  else
  {
    v4 = 0;
  }

  [(ELSSnapshot *)self setRetriesRemaining:v4];
}

- (void)refreshIdentifiersToRetry
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"identifiersToRetry"];
  [(ELSSnapshot *)self setIdentifiersToRetry:v3];
}

- (void)refreshMetadata
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"metadata"];
  [(ELSSnapshot *)self setMetadata:v3];
}

- (void)refreshUploadCompletedPercentage
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"uploadCompletedPercentage"];
  [(ELSSnapshot *)self setUploadCompletedPercentage:v3];
}

- (void)refreshFollowUpOptions
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"followUpOptions"];
  [(ELSSnapshot *)self setFollowUpOptions:v3];
}

- (void)refreshTopLevelPrivacyDescription
{
  v3 = [(ELSSnapshot *)self defaults];
  v8 = [v3 objectForKey:@"topLevelPrivacyPolicy"];

  if (v8)
  {
    v4 = [v8 objectForKey:@"policyKey"];
    v5 = [v8 objectForKey:@"suiteNameKey"];
    v6 = [v8 objectForKey:@"sensitiveInfoKey"];
    v7 = [[ELSPrivacyPolicyDescription alloc] initWithPolicyKey:v4 andSuiteNameKey:v5 andSensitiveInformationKey:v6];
    [(ELSSnapshot *)self setTopLevelPrivacyPolicy:v7];
  }

  else
  {
    [(ELSSnapshot *)self setTopLevelPrivacyPolicy:0];
  }
}

- (void)refreshDeviceSelectionMap
{
  v4 = [(ELSSnapshot *)self defaults];
  v3 = [v4 objectForKey:@"deviceSelection"];
  [(ELSSnapshot *)self setDeviceSelection:v3];
}

- (double)durationRemaining
{
  v3 = [(ELSSnapshot *)self endDate];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(ELSSnapshot *)self endDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  return v6;
}

- (double)totalDuration
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(ELSSnapshot *)self queue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 executeAfterDuration];
        if (v9 > v6)
        {
          [v8 executeAfterDuration];
          v6 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)needsFollowup
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ELSSnapshot *)self queue];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) type];
        v7 = [ELSWhitelist findEntryForBundleIdentifier:v6];

        if (v7 && [v7 requiresFollowup])
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NSArray)encodedQueue
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ELSSnapshot *)self queue];

  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(ELSSnapshot *)self queue];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = *v22;
      *&v7 = 138412290;
      v19 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          v12 = v9;
          if (*v22 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v20 = v9;
          v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:{&v20, v19}];
          v9 = v20;

          if (v14)
          {
            [v3 addObject:v14];
          }

          else if (v9)
          {
            v15 = ELSLogHandleForCategory(11);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v26 = v9;
              _os_log_error_impl(&dword_24A07C000, v15, OS_LOG_TYPE_ERROR, "Could not encode enhanced logging state queue entry: %@", buf, 0xCu);
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)decodeQueue:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v24)
  {
    v4 = 0;
    v23 = *v27;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        v6 = v4;
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
        v25 = v6;
        v16 = [v8 unarchivedObjectOfClasses:v15 fromData:v7 error:&v25];
        v4 = v25;

        if (v16)
        {
          [v22 addObject:v16];
        }

        else if (v4)
        {
          v17 = ELSLogHandleForCategory(11);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v4;
            _os_log_error_impl(&dword_24A07C000, v17, OS_LOG_TYPE_ERROR, "Could not decode enhanced logging state queue entry: %@", buf, 0xCu);
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v24);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v22];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v5 + 8), self->_sessionID);
  *(v5 + 16) = self->_status;
  *(v5 + 24) = self->_consent;
  v6 = [(NSDate *)self->_startDate copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSArray *)self->_queue copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 56) = self->_retriesRemaining;
  v12 = [(NSArray *)self->_identifiersToRetry copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSDictionary *)self->_metadata copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSNumber *)self->_uploadCompletedPercentage copyWithZone:a3];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v18 = [(NSData *)self->_consentData copyWithZone:a3];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  v20 = [(ELSPrivacyPolicyDescription *)self->_topLevelPrivacyPolicy copyWithZone:a3];
  v21 = *(v5 + 128);
  *(v5 + 128) = v20;

  v22 = [(NSDictionary *)self->_deviceSelection copyWithZone:a3];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  return v5;
}

+ (id)statusToString:(unint64_t)a3
{
  if (a3 > 9)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FC4D00[a3];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu (%@)", a3, v5, v3, v4];
}

+ (id)consentToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FC4D50[a3];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu (%@)", a3, v5, v3, v4];
}

- (id)dictionaryRepresentationPretty:(BOOL)a3
{
  v3 = a3;
  v114 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  [v5 setFormatterBehavior:1040];
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v7 = [(ELSSnapshot *)self queue];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v9 = [(ELSSnapshot *)self queue];
    v10 = [v9 countByEnumeratingWithState:&v77 objects:v113 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v78;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v78 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v77 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v77 objects:v113 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = [(ELSSnapshot *)self consentData];

  if (v15)
  {
    v16 = [(ELSSnapshot *)self consentData];
    v72 = [v16 base64EncodedStringWithOptions:0];
  }

  else
  {
    v72 = 0;
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v18 = [(ELSSnapshot *)self targetDevices];
  v19 = [v18 countByEnumeratingWithState:&v73 objects:v112 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v74;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v73 + 1) + 8 * j);
        if (v23)
        {
          v24 = [v23 description];
          [v17 addObject:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v73 objects:v112 count:16];
    }

    while (v20);
  }

  v81[0] = @"sessionID";
  v25 = [(ELSSnapshot *)self sessionID];
  v70 = v25;
  if (!v25)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v57 = v25;
  v96 = v25;
  v81[1] = @"status";
  if (v3)
  {
    v69 = [ELSSnapshot statusToString:[(ELSSnapshot *)self status]];
    v97 = v69;
    v82 = @"consent";
    [ELSSnapshot consentToString:[(ELSSnapshot *)self consent]];
  }

  else
  {
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ELSSnapshot status](self, "status")}];
    v97 = v69;
    v82 = @"consent";
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ELSSnapshot consent](self, "consent")}];
  }
  v68 = ;
  v98 = v68;
  v83 = @"startDate";
  v67 = [(ELSSnapshot *)self startDate];
  v26 = [v5 stringFromDate:?];
  v66 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v56 = v26;
  v99 = v26;
  v84 = @"endDate";
  v65 = [(ELSSnapshot *)self endDate];
  v27 = [v5 stringFromDate:?];
  v64 = v27;
  if (!v27)
  {
    v27 = [MEMORY[0x277CBEB68] null];
  }

  v55 = v27;
  v100 = v27;
  v85 = @"queue";
  v28 = v8;
  if (!v8)
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v54 = v28;
  v101 = v28;
  v86 = @"consentHandles";
  v29 = [(ELSSnapshot *)self consentHandles];
  v30 = v29;
  if (!v29)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v53 = v29;
  v102 = v29;
  v87 = @"retriesRemaining";
  v62 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ELSSnapshot retriesRemaining](self, "retriesRemaining")}];
  v103 = v62;
  v88 = @"identifiersToRetry";
  v31 = [(ELSSnapshot *)self identifiersToRetry];
  v32 = v31;
  if (!v31)
  {
    v31 = [MEMORY[0x277CBEB68] null];
  }

  v52 = v31;
  v104 = v31;
  v89 = @"metadata";
  v33 = [(ELSSnapshot *)self metadata];
  v60 = v33;
  if (!v33)
  {
    v33 = [MEMORY[0x277CBEB68] null];
  }

  v63 = v30;
  v51 = v33;
  v105 = v33;
  v90 = @"uploadCompletedPercentage";
  v34 = [(ELSSnapshot *)self uploadCompletedPercentage];
  v35 = v34;
  if (!v34)
  {
    v34 = [MEMORY[0x277CBEB68] null];
  }

  v50 = v34;
  v106 = v34;
  v91 = @"followUpOptions";
  v36 = [(ELSSnapshot *)self followUpOptions];
  v37 = v36;
  if (!v36)
  {
    v36 = [MEMORY[0x277CBEB68] null];
  }

  v61 = v32;
  v49 = v36;
  v107 = v36;
  v92 = @"targetDevices";
  v38 = [v17 count];
  v39 = v17;
  v59 = v38;
  if (!v38)
  {
    v39 = [MEMORY[0x277CBEB68] null];
  }

  v71 = v5;
  v48 = v39;
  v108 = v39;
  v93 = @"consentData";
  v40 = v72;
  if (!v72)
  {
    v40 = [MEMORY[0x277CBEB68] null];
  }

  v109 = v40;
  v94 = @"topLevelPrivacyPolicy";
  v41 = [(ELSSnapshot *)self topLevelPrivacyPolicy];
  if (v41)
  {
    v42 = [(ELSSnapshot *)self topLevelPrivacyPolicy];
    v43 = [v42 dictionaryRepresentation];
  }

  else
  {
    v43 = [MEMORY[0x277CBEB68] null];
    v42 = v43;
  }

  v110 = v43;
  v95 = @"deviceSelection";
  v44 = [(ELSSnapshot *)self deviceSelection];
  v45 = v44;
  if (!v44)
  {
    v45 = [MEMORY[0x277CBEB68] null];
  }

  v111 = v45;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:v81 count:16];
  if (!v44)
  {
  }

  if (v41)
  {
  }

  if (!v72)
  {
  }

  if (!v59)
  {
  }

  if (!v37)
  {
  }

  if (!v35)
  {
  }

  if (!v60)
  {
  }

  if (!v61)
  {
  }

  if (!v63)
  {
  }

  if (v8)
  {
    if (v64)
    {
      goto LABEL_73;
    }
  }

  else
  {

    if (v64)
    {
      goto LABEL_73;
    }
  }

LABEL_73:
  if (!v66)
  {
  }

  if (!v70)
  {
  }

  v46 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)dedSessionIdentifier
{
  v2 = [(ELSSnapshot *)self metadata];
  v3 = [v2 objectForKey:@"enrollmentTicketNumber"];

  if ([v3 length])
  {
    v4 = [@"els" stringByAppendingFormat:@"-%@", v3];
  }

  else
  {
    v4 = @"els";
  }

  v5 = v4;

  return v5;
}

- (id)dedSessionIdentifierForRemoteDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ELSSnapshot *)self dedSessionIdentifier];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, v4];

  return v6;
}

- (id)JSONObject
{
  v2 = [(ELSSnapshot *)self dictionaryRepresentationPretty:1];
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ELSSnapshot *)v4 JSONObject];
    }
  }

  return v3;
}

- (id)sessionDevice
{
  v2 = [(ELSSnapshot *)self targetDevices];
  v3 = [v2 firstObject];

  return v3;
}

- (id)description
{
  v3 = [(ELSSnapshot *)self JSONObject];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  }

  else
  {
    v5 = [(ELSSnapshot *)self dictionaryRepresentationPretty:1];
    v4 = [v5 description];
  }

  return v4;
}

- (void)JSONObject
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A07C000, a2, OS_LOG_TYPE_ERROR, "Error JSON serializing ELS Snapshot = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end