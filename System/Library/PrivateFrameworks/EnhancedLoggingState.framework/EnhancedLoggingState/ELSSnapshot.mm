@interface ELSSnapshot
+ (id)consentToString:(unint64_t)string;
+ (id)statusToString:(unint64_t)string;
- (BOOL)needsFollowup;
- (ELSSnapshot)init;
- (NSArray)encodedQueue;
- (double)durationRemaining;
- (double)totalDuration;
- (id)JSONObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodeQueue:(id)queue;
- (id)dedSessionIdentifier;
- (id)dedSessionIdentifierForRemoteDeviceIdentifier:(id)identifier;
- (id)description;
- (id)dictionaryRepresentationPretty:(BOOL)pretty;
- (id)sessionDevice;
- (void)JSONObject;
- (void)refreshConsent;
- (void)refreshConsentData;
- (void)refreshConsentHandles;
- (void)refreshDates;
- (void)refreshDeviceSelectionMap;
- (void)refreshFollowUpOptions;
- (void)refreshIdentifiersToRetry;
- (void)refreshKeyPaths:(id)paths;
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

- (void)refreshKeyPaths:(id)paths
{
  pathsCopy = paths;
  if ([pathsCopy containsObject:@"sessionID"])
  {
    [(ELSSnapshot *)self refreshSessionID];
  }

  if ([pathsCopy containsObject:@"status"])
  {
    [(ELSSnapshot *)self refreshStatus];
  }

  if ([pathsCopy containsObject:@"consent"])
  {
    [(ELSSnapshot *)self refreshConsent];
  }

  if ([pathsCopy containsObject:@"dates"])
  {
    [(ELSSnapshot *)self refreshDates];
  }

  if ([pathsCopy containsObject:@"queue"])
  {
    [(ELSSnapshot *)self refreshQueue];
  }

  if ([pathsCopy containsObject:@"consentHandles"])
  {
    [(ELSSnapshot *)self refreshConsentHandles];
  }

  if ([pathsCopy containsObject:@"retriesRemaining"])
  {
    [(ELSSnapshot *)self refreshRetriesRemaining];
  }

  if ([pathsCopy containsObject:@"identifiersToRetry"])
  {
    [(ELSSnapshot *)self refreshIdentifiersToRetry];
  }

  if ([pathsCopy containsObject:@"metadata"])
  {
    [(ELSSnapshot *)self refreshMetadata];
  }

  if ([pathsCopy containsObject:@"uploadCompletedPercentage"])
  {
    [(ELSSnapshot *)self refreshUploadCompletedPercentage];
  }

  if ([pathsCopy containsObject:@"followUpOptions"])
  {
    [(ELSSnapshot *)self refreshFollowUpOptions];
  }

  if ([pathsCopy containsObject:@"targetDevices"])
  {
    [(ELSSnapshot *)self refreshSessionDevice];
  }

  if ([pathsCopy containsObject:@"consentData"])
  {
    [(ELSSnapshot *)self refreshConsentData];
  }

  if ([pathsCopy containsObject:@"topLevelPrivacyPolicy"])
  {
    [(ELSSnapshot *)self refreshTopLevelPrivacyDescription];
  }

  if ([pathsCopy containsObject:@"deviceSelection"])
  {
    [(ELSSnapshot *)self refreshDeviceSelectionMap];
  }
}

- (void)refreshSessionID
{
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"sessionID"];
  [(ELSSnapshot *)self setSessionID:v3];
}

- (void)refreshStatus
{
  defaults = [(ELSSnapshot *)self defaults];
  v5 = [defaults objectForKey:@"status"];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  [(ELSSnapshot *)self setStatus:unsignedIntegerValue];
}

- (void)refreshConsent
{
  defaults = [(ELSSnapshot *)self defaults];
  v5 = [defaults objectForKey:@"consent"];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  [(ELSSnapshot *)self setConsent:unsignedIntegerValue];
}

- (void)refreshDates
{
  defaults = [(ELSSnapshot *)self defaults];
  v6 = [defaults objectForKey:@"dates"];

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
  defaults = [(ELSSnapshot *)self defaults];
  v5 = [defaults objectForKey:@"queue"];

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
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"consentHandles"];
  [(ELSSnapshot *)self setConsentHandles:v3];
}

- (void)refreshSessionDevice
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24A07C000, a2, OS_LOG_TYPE_ERROR, "Could not decode enhanced logging state session device: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)refreshConsentData
{
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"consentData"];
  [(ELSSnapshot *)self setConsentData:v3];
}

- (void)refreshRetriesRemaining
{
  defaults = [(ELSSnapshot *)self defaults];
  v5 = [defaults objectForKey:@"retriesRemaining"];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  [(ELSSnapshot *)self setRetriesRemaining:integerValue];
}

- (void)refreshIdentifiersToRetry
{
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"identifiersToRetry"];
  [(ELSSnapshot *)self setIdentifiersToRetry:v3];
}

- (void)refreshMetadata
{
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"metadata"];
  [(ELSSnapshot *)self setMetadata:v3];
}

- (void)refreshUploadCompletedPercentage
{
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"uploadCompletedPercentage"];
  [(ELSSnapshot *)self setUploadCompletedPercentage:v3];
}

- (void)refreshFollowUpOptions
{
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"followUpOptions"];
  [(ELSSnapshot *)self setFollowUpOptions:v3];
}

- (void)refreshTopLevelPrivacyDescription
{
  defaults = [(ELSSnapshot *)self defaults];
  v8 = [defaults objectForKey:@"topLevelPrivacyPolicy"];

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
  defaults = [(ELSSnapshot *)self defaults];
  v3 = [defaults objectForKey:@"deviceSelection"];
  [(ELSSnapshot *)self setDeviceSelection:v3];
}

- (double)durationRemaining
{
  endDate = [(ELSSnapshot *)self endDate];

  if (!endDate)
  {
    return 0.0;
  }

  endDate2 = [(ELSSnapshot *)self endDate];
  [endDate2 timeIntervalSinceNow];
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
  queue = [(ELSSnapshot *)self queue];
  v3 = [queue countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(queue);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 executeAfterDuration];
        if (v9 > v6)
        {
          [v8 executeAfterDuration];
          v6 = v10;
        }
      }

      v4 = [queue countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  queue = [(ELSSnapshot *)self queue];
  v3 = [queue countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(queue);
        }

        type = [*(*(&v10 + 1) + 8 * i) type];
        v7 = [ELSWhitelist findEntryForBundleIdentifier:type];

        if (v7 && [v7 requiresFollowup])
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [queue countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  array = [MEMORY[0x277CBEB18] array];
  queue = [(ELSSnapshot *)self queue];

  if (queue)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    queue2 = [(ELSSnapshot *)self queue];
    v6 = [queue2 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
            objc_enumerationMutation(queue2);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v20 = v9;
          v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:{&v20, v19}];
          v9 = v20;

          if (v14)
          {
            [array addObject:v14];
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

        v8 = [queue2 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)decodeQueue:(id)queue
{
  v33 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = queueCopy;
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
          [array addObject:v16];
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

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v5 + 8), self->_sessionID);
  *(v5 + 16) = self->_status;
  *(v5 + 24) = self->_consent;
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSArray *)self->_queue copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 56) = self->_retriesRemaining;
  v12 = [(NSArray *)self->_identifiersToRetry copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSDictionary *)self->_metadata copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSNumber *)self->_uploadCompletedPercentage copyWithZone:zone];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v18 = [(NSData *)self->_consentData copyWithZone:zone];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  v20 = [(ELSPrivacyPolicyDescription *)self->_topLevelPrivacyPolicy copyWithZone:zone];
  v21 = *(v5 + 128);
  *(v5 + 128) = v20;

  v22 = [(NSDictionary *)self->_deviceSelection copyWithZone:zone];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  return v5;
}

+ (id)statusToString:(unint64_t)string
{
  if (string > 9)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FC4D00[string];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu (%@)", string, v5, v3, v4];
}

+ (id)consentToString:(unint64_t)string
{
  if (string > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FC4D50[string];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu (%@)", string, v5, v3, v4];
}

- (id)dictionaryRepresentationPretty:(BOOL)pretty
{
  prettyCopy = pretty;
  v114 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  [v5 setFormatterBehavior:1040];
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  queue = [(ELSSnapshot *)self queue];

  if (queue)
  {
    array = [MEMORY[0x277CBEB18] array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    queue2 = [(ELSSnapshot *)self queue];
    v10 = [queue2 countByEnumeratingWithState:&v77 objects:v113 count:16];
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
            objc_enumerationMutation(queue2);
          }

          dictionaryRepresentation = [*(*(&v77 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v11 = [queue2 countByEnumeratingWithState:&v77 objects:v113 count:16];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  consentData = [(ELSSnapshot *)self consentData];

  if (consentData)
  {
    consentData2 = [(ELSSnapshot *)self consentData];
    v72 = [consentData2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v72 = 0;
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  targetDevices = [(ELSSnapshot *)self targetDevices];
  v19 = [targetDevices countByEnumeratingWithState:&v73 objects:v112 count:16];
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
          objc_enumerationMutation(targetDevices);
        }

        v23 = *(*(&v73 + 1) + 8 * j);
        if (v23)
        {
          v24 = [v23 description];
          [array2 addObject:v24];
        }
      }

      v20 = [targetDevices countByEnumeratingWithState:&v73 objects:v112 count:16];
    }

    while (v20);
  }

  v81[0] = @"sessionID";
  sessionID = [(ELSSnapshot *)self sessionID];
  v70 = sessionID;
  if (!sessionID)
  {
    sessionID = [MEMORY[0x277CBEB68] null];
  }

  v57 = sessionID;
  v96 = sessionID;
  v81[1] = @"status";
  if (prettyCopy)
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
  startDate = [(ELSSnapshot *)self startDate];
  null = [v5 stringFromDate:?];
  v66 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v56 = null;
  v99 = null;
  v84 = @"endDate";
  endDate = [(ELSSnapshot *)self endDate];
  null2 = [v5 stringFromDate:?];
  v64 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v55 = null2;
  v100 = null2;
  v85 = @"queue";
  null3 = array;
  if (!array)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v54 = null3;
  v101 = null3;
  v86 = @"consentHandles";
  consentHandles = [(ELSSnapshot *)self consentHandles];
  v30 = consentHandles;
  if (!consentHandles)
  {
    consentHandles = [MEMORY[0x277CBEB68] null];
  }

  v53 = consentHandles;
  v102 = consentHandles;
  v87 = @"retriesRemaining";
  v62 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ELSSnapshot retriesRemaining](self, "retriesRemaining")}];
  v103 = v62;
  v88 = @"identifiersToRetry";
  identifiersToRetry = [(ELSSnapshot *)self identifiersToRetry];
  v32 = identifiersToRetry;
  if (!identifiersToRetry)
  {
    identifiersToRetry = [MEMORY[0x277CBEB68] null];
  }

  v52 = identifiersToRetry;
  v104 = identifiersToRetry;
  v89 = @"metadata";
  metadata = [(ELSSnapshot *)self metadata];
  v60 = metadata;
  if (!metadata)
  {
    metadata = [MEMORY[0x277CBEB68] null];
  }

  v63 = v30;
  v51 = metadata;
  v105 = metadata;
  v90 = @"uploadCompletedPercentage";
  uploadCompletedPercentage = [(ELSSnapshot *)self uploadCompletedPercentage];
  v35 = uploadCompletedPercentage;
  if (!uploadCompletedPercentage)
  {
    uploadCompletedPercentage = [MEMORY[0x277CBEB68] null];
  }

  v50 = uploadCompletedPercentage;
  v106 = uploadCompletedPercentage;
  v91 = @"followUpOptions";
  followUpOptions = [(ELSSnapshot *)self followUpOptions];
  v37 = followUpOptions;
  if (!followUpOptions)
  {
    followUpOptions = [MEMORY[0x277CBEB68] null];
  }

  v61 = v32;
  v49 = followUpOptions;
  v107 = followUpOptions;
  v92 = @"targetDevices";
  v38 = [array2 count];
  null4 = array2;
  v59 = v38;
  if (!v38)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v71 = v5;
  v48 = null4;
  v108 = null4;
  v93 = @"consentData";
  null5 = v72;
  if (!v72)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v109 = null5;
  v94 = @"topLevelPrivacyPolicy";
  topLevelPrivacyPolicy = [(ELSSnapshot *)self topLevelPrivacyPolicy];
  if (topLevelPrivacyPolicy)
  {
    topLevelPrivacyPolicy2 = [(ELSSnapshot *)self topLevelPrivacyPolicy];
    dictionaryRepresentation2 = [topLevelPrivacyPolicy2 dictionaryRepresentation];
  }

  else
  {
    dictionaryRepresentation2 = [MEMORY[0x277CBEB68] null];
    topLevelPrivacyPolicy2 = dictionaryRepresentation2;
  }

  v110 = dictionaryRepresentation2;
  v95 = @"deviceSelection";
  deviceSelection = [(ELSSnapshot *)self deviceSelection];
  null6 = deviceSelection;
  if (!deviceSelection)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v111 = null6;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:v81 count:16];
  if (!deviceSelection)
  {
  }

  if (topLevelPrivacyPolicy)
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

  if (array)
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
  metadata = [(ELSSnapshot *)self metadata];
  v3 = [metadata objectForKey:@"enrollmentTicketNumber"];

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

- (id)dedSessionIdentifierForRemoteDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dedSessionIdentifier = [(ELSSnapshot *)self dedSessionIdentifier];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", dedSessionIdentifier, identifierCopy];

  return identifierCopy;
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
  targetDevices = [(ELSSnapshot *)self targetDevices];
  firstObject = [targetDevices firstObject];

  return firstObject;
}

- (id)description
{
  jSONObject = [(ELSSnapshot *)self JSONObject];
  if (jSONObject)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:jSONObject encoding:4];
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
  selfCopy = self;
  _os_log_error_impl(&dword_24A07C000, a2, OS_LOG_TYPE_ERROR, "Error JSON serializing ELS Snapshot = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end