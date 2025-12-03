@interface DRSDampeningManager
+ (BOOL)passesAcceptanceRate:(double)rate;
+ (BOOL)removeExistingDampeningManagerStateFromManagedObjectContext:(id)context errorOut:(id *)out;
+ (id)_ON_MOC_QUEUE_existingMOFromContext:(id)context errorOut:(id *)out;
+ (id)_RMETeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_abcTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_appIntentsServicesTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_backlightServicesTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_coreAnimationTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_coreAudioTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_coreDuetPeopleSuggesterTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_defaultTailspinConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_drmTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_healthkitTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_libtraceTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_mailTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_memoryToolsTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_mssTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_nandGBBTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_newsTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_nonWatchOShangTracerTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed;
+ (id)_pearlTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_ppsTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_rapidTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_sentryTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_skylightTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_softwareUpdateTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_spotlightTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_watchOS_hangTracerTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed;
+ (id)_watchdogdTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform;
+ (id)_workflowResponsivenessDampeningConfiguration:(BOOL)configuration;
+ (id)dampeningManagerFromPersistentContainer:(id)container deleteBadState:(BOOL)state errorOut:(id *)out;
+ (id)defaultResourceConfigurationsForCurrentDevice;
+ (id)defaultTeamConfigurationForTeamForCurrentDevice:(id)device teamConfigurationDirectory:(id)directory;
+ (id)defaultTeamConfigurationsForCurrentDevice:(id)device;
+ (unint64_t)defaultTotalCapForCurrentDevice;
+ (unint64_t)defaultTotalCapForIsInternal:(BOOL)internal isSeed:(BOOL)seed isCarrier:(BOOL)carrier;
- (BOOL)_hasRequestsRecordCountGreaterThanOrEqualToThreshold:(unint64_t)threshold matchingPredicate:(id)predicate inContext:(id)context filterToObjectsMatchingClassOfRequest:(id)request;
- (BOOL)_passesResourceCap:(id)cap config:(id)config managedObjectContext:(id)context;
- (BOOL)_passesResourceHysteresis:(id)hysteresis config:(id)config managedObjectContext:(id)context;
- (BOOL)_passesResourceRandomDownsampling:(id)downsampling config:(id)config;
- (BOOL)_passesSignatureCap:(id)cap config:(id)config managedObjectContext:(id)context;
- (BOOL)_passesSignatureHysteresis:(id)hysteresis config:(id)config managedObjectContext:(id)context;
- (BOOL)_passesSignatureRandomDownsampling:(id)downsampling config:(id)config;
- (BOOL)_passesTotalCap:(id)cap managedObjectContext:(id)context;
- (BOOL)_request:(id)_request passesHysteresis:(double)hysteresis countCap:(unint64_t)cap usesSignature:(BOOL)signature usesRequestClass:(BOOL)class managedObjectContext:(id)context;
- (BOOL)isEqualToDampeningManager:(id)manager;
- (BOOL)saveToPersistentContainerWithErrorOut:(id *)out;
- (BOOL)writeConfigurationPlistsToDirectory:(id)directory createDirIfMissing:(BOOL)missing errorOut:(id *)out;
- (DRSDampeningManager)initWithPersistentContainer:(id)container enforcementSettings:(id)settings defaultSignatureConfiguration:(id)configuration totalCap:(unint64_t)cap teamDampeningConfigDict:(id)dict resourceDampeningConfigDict:(id)configDict;
- (DRSDampeningManager)initWithPersistentContainer:(id)container teamConfigurationDirectory:(id)directory;
- (id)_ON_MOC_QUEUE_initWith:(id)with persistentContainer:(id)container;
- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)context;
- (id)_predicateForUndampenedRequestsMatchingSignatureOfRequest:(id)request afterDate:(id)date;
- (id)_resourceConfigurationForRequest:(id)request;
- (id)dampeningConfigurationForRequestSignature:(id)signature;
- (id)dampeningConfigurationForResource:(id)resource;
- (id)dampeningConfigurationForTeamID:(id)d issueCategory:(id)category;
- (id)debugDescription;
- (id)jsonCompatibleDictRepresentation;
- (unint64_t)dampeningOutcomeForRequest:(id)request;
@end

@implementation DRSDampeningManager

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  v5 = [enforcementSettings debugDescription];
  v6 = [v3 stringWithFormat:@"Enforcement settings:\n%@\n", v5];

  defaultSignatureConfiguration = [(DRSDampeningManager *)self defaultSignatureConfiguration];

  if (defaultSignatureConfiguration)
  {
    defaultSignatureConfiguration2 = [(DRSDampeningManager *)self defaultSignatureConfiguration];
    v9 = [defaultSignatureConfiguration2 debugDescription];
    [v6 appendFormat:@"Default signature configuration:\n--------------------------\n%@\n", v9];
  }

  teamDampeningConfigDict = [(DRSDampeningManager *)self teamDampeningConfigDict];
  v11 = [teamDampeningConfigDict count];

  if (v11)
  {
    [v6 appendString:@"Team Dampening Configuration(s):\n**************************\n\n"];
    teamDampeningConfigDict2 = [(DRSDampeningManager *)self teamDampeningConfigDict];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__DRSDampeningManager_debugDescription__block_invoke;
    v20[3] = &unk_27899FE48;
    v21 = v6;
    [teamDampeningConfigDict2 enumerateKeysAndObjectsUsingBlock:v20];
  }

  resourceDampeningConfigDict = [(DRSDampeningManager *)self resourceDampeningConfigDict];
  v14 = [resourceDampeningConfigDict count];

  if (v14)
  {
    [v6 appendString:@"Resource Dampening Configuration(s):\n**************************\n\n"];
    resourceDampeningConfigDict2 = [(DRSDampeningManager *)self resourceDampeningConfigDict];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__DRSDampeningManager_debugDescription__block_invoke_2;
    v18[3] = &unk_27899FDD0;
    v19 = v6;
    [resourceDampeningConfigDict2 enumerateKeysAndObjectsUsingBlock:v18];
  }

  if ([(DRSDampeningManager *)self totalCap]== 0x7FFFFFFF)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Total request cap: %@\n", @"<No cap>"];
    [v6 appendString:v16];
  }

  else
  {
    [v6 appendFormat:@"Total request cap: %lu\n", -[DRSDampeningManager totalCap](self, "totalCap")];
  }

  return v6;
}

void __39__DRSDampeningManager_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 debugDescription];
  [v4 appendFormat:@"%@:\n--------------------------\n%@", v5, v6];
}

void __39__DRSDampeningManager_debugDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 debugDescription];
  [v4 appendFormat:@"%@:\n--------------------------\n%@", v5, v6];
}

- (id)jsonCompatibleDictRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  jsonCompatibleDictRepresentation = [enforcementSettings jsonCompatibleDictRepresentation];
  [v3 setObject:jsonCompatibleDictRepresentation forKeyedSubscript:@"EnforcementSettings"];

  defaultSignatureConfiguration = [(DRSDampeningManager *)self defaultSignatureConfiguration];
  jsonCompatibleDictRepresentation2 = [defaultSignatureConfiguration jsonCompatibleDictRepresentation];
  [v3 setObject:jsonCompatibleDictRepresentation2 forKeyedSubscript:@"DefaultSignatureConfig"];

  if ([(DRSDampeningManager *)self totalCap]== 0x7FFFFFFF)
  {
    [v3 setObject:@"<No cap>" forKeyedSubscript:@"TotalCap"];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DRSDampeningManager totalCap](self, "totalCap")}];
    [v3 setObject:v8 forKeyedSubscript:@"TotalCap"];
  }

  teamDampeningConfigDict = [(DRSDampeningManager *)self teamDampeningConfigDict];

  if (teamDampeningConfigDict)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    teamDampeningConfigDict2 = [(DRSDampeningManager *)self teamDampeningConfigDict];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__DRSDampeningManager_jsonCompatibleDictRepresentation__block_invoke;
    v23[3] = &unk_27899FE48;
    v24 = v10;
    v12 = v10;
    [teamDampeningConfigDict2 enumerateKeysAndObjectsUsingBlock:v23];

    [v3 setObject:v12 forKeyedSubscript:@"TeamDampeningConfigurations"];
  }

  resourceDampeningConfigDict = [(DRSDampeningManager *)self resourceDampeningConfigDict];

  if (resourceDampeningConfigDict)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceDampeningConfigDict2 = [(DRSDampeningManager *)self resourceDampeningConfigDict];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __55__DRSDampeningManager_jsonCompatibleDictRepresentation__block_invoke_2;
    v21 = &unk_27899FDD0;
    v22 = v14;
    v16 = v14;
    [resourceDampeningConfigDict2 enumerateKeysAndObjectsUsingBlock:&v18];

    [v3 setObject:v16 forKeyedSubscript:{@"ResourceDampeningConfigurations", v18, v19, v20, v21}];
  }

  return v3;
}

void __55__DRSDampeningManager_jsonCompatibleDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonCompatibleDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __55__DRSDampeningManager_jsonCompatibleDictRepresentation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonCompatibleDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isEqualToDampeningManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (!managerCopy)
  {
    goto LABEL_20;
  }

  if (self != managerCopy)
  {
    totalCap = [(DRSDampeningManager *)self totalCap];
    if (totalCap != [(DRSDampeningManager *)v5 totalCap])
    {
      goto LABEL_20;
    }

    enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
    enforcementSettings2 = [(DRSDampeningManager *)v5 enforcementSettings];
    v9 = [enforcementSettings isEqual:enforcementSettings2];

    if (!v9)
    {
      goto LABEL_20;
    }

    defaultSignatureConfiguration = [(DRSDampeningManager *)self defaultSignatureConfiguration];
    if (defaultSignatureConfiguration && (v11 = defaultSignatureConfiguration, [(DRSDampeningManager *)v5 defaultSignatureConfiguration], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      defaultSignatureConfiguration2 = [(DRSDampeningManager *)self defaultSignatureConfiguration];
      defaultSignatureConfiguration3 = [(DRSDampeningManager *)v5 defaultSignatureConfiguration];
      v15 = [defaultSignatureConfiguration2 isEqualToDampeningConfiguration:defaultSignatureConfiguration3];

      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      defaultSignatureConfiguration4 = [(DRSDampeningManager *)self defaultSignatureConfiguration];
      if (defaultSignatureConfiguration4)
      {
        goto LABEL_17;
      }

      defaultSignatureConfiguration5 = [(DRSDampeningManager *)v5 defaultSignatureConfiguration];

      if (defaultSignatureConfiguration5)
      {
        goto LABEL_20;
      }
    }

    teamDampeningConfigDict = [(DRSDampeningManager *)self teamDampeningConfigDict];
    if (teamDampeningConfigDict)
    {
      v20 = teamDampeningConfigDict;
      teamDampeningConfigDict2 = [(DRSDampeningManager *)v5 teamDampeningConfigDict];

      if (teamDampeningConfigDict2)
      {
        teamDampeningConfigDict3 = [(DRSDampeningManager *)self teamDampeningConfigDict];
        teamDampeningConfigDict4 = [(DRSDampeningManager *)v5 teamDampeningConfigDict];
        v24 = [teamDampeningConfigDict3 isEqualToDictionary:teamDampeningConfigDict4];

        if (v24)
        {
LABEL_15:
          resourceDampeningConfigDict = [(DRSDampeningManager *)self resourceDampeningConfigDict];
          resourceDampeningConfigDict2 = [(DRSDampeningManager *)v5 resourceDampeningConfigDict];
          v16 = [resourceDampeningConfigDict isEqualToDictionary:resourceDampeningConfigDict2];

LABEL_18:
          goto LABEL_21;
        }

LABEL_20:
        v16 = 0;
        goto LABEL_21;
      }
    }

    defaultSignatureConfiguration4 = [(DRSDampeningManager *)self teamDampeningConfigDict];
    if (!defaultSignatureConfiguration4)
    {
      teamDampeningConfigDict5 = [(DRSDampeningManager *)v5 teamDampeningConfigDict];

      if (!teamDampeningConfigDict5)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_17:
    resourceDampeningConfigDict = defaultSignatureConfiguration4;
    v16 = 0;
    goto LABEL_18;
  }

  v16 = 1;
LABEL_21:

  return v16;
}

- (BOOL)_hasRequestsRecordCountGreaterThanOrEqualToThreshold:(unint64_t)threshold matchingPredicate:(id)predicate inContext:(id)context filterToObjectsMatchingClassOfRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  requestCopy = request;
  if (requestCopy)
  {
    v12 = objc_opt_class();
    v26 = 0;
    v13 = &v26;
    v14 = threshold + 1;
    v15 = &v26;
  }

  else
  {
    v12 = DRSRequest;
    v25 = 0;
    v13 = &v25;
    v14 = threshold + 1;
    v15 = &v25;
  }

  v16 = [(__objc2_class *)v12 requestCountForFilterPredicate:predicateCopy context:contextCopy fetchLimit:v14 errorOut:v15, v25, v26];
  v17 = *v13;
  if (v17)
  {
    v18 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v18))
    {
      localizedDescription = [v17 localizedDescription];
      v20 = localizedDescription;
      v21 = @"Unknown";
      if (localizedDescription)
      {
        v21 = localizedDescription;
      }

      *buf = 138543362;
      v28 = v21;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ThresholdCheckError", "Encountered error while trying to check threshold count: %{public}@", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v22 = v16 >= threshold;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (DRSDampeningManager)initWithPersistentContainer:(id)container enforcementSettings:(id)settings defaultSignatureConfiguration:(id)configuration totalCap:(unint64_t)cap teamDampeningConfigDict:(id)dict resourceDampeningConfigDict:(id)configDict
{
  containerCopy = container;
  settingsCopy = settings;
  configurationCopy = configuration;
  dictCopy = dict;
  configDictCopy = configDict;
  v20 = configDictCopy;
  if (configurationCopy)
  {
    v36 = settingsCopy;
    v21 = containerCopy;
    if (configDictCopy && ([configDictCopy objectForKeyedSubscript:kDRSRequestResourceTailspin], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      if (cap != 0x7FFFFFFF && cap)
      {
        v37.receiver = self;
        v37.super_class = DRSDampeningManager;
        v28 = [(DRSDampeningManager *)&v37 init];
        v29 = v28;
        containerCopy = v21;
        if (v28)
        {
          objc_storeStrong(&v28->_persistentContainer, container);
          objc_storeStrong(&v29->_enforcementSettings, settings);
          objc_storeStrong(&v29->_defaultSignatureConfiguration, configuration);
          v29->_totalCap = cap;
          v30 = [dictCopy mutableCopy];
          teamDampeningConfigDict = v29->_teamDampeningConfigDict;
          v29->_teamDampeningConfigDict = v30;

          v32 = [v20 mutableCopy];
          resourceDampeningConfigDict = v29->_resourceDampeningConfigDict;
          v29->_resourceDampeningConfigDict = v32;

          v34 = dispatch_queue_create("DRSDampeningManager work queue", 0);
          workQueue = v29->_workQueue;
          v29->_workQueue = v34;
        }

        self = v29;
        selfCopy = self;
      }

      else
      {
        v23 = DPLogHandle_DampeningManagerError();
        containerCopy = v21;
        if (os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidDampeningManagerInit", "Invalid total cap", buf, 2u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v25 = DPLogHandle_DampeningManagerError();
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidDampeningManagerInit", "Invalid resource dampening configuration", buf, 2u);
      }

      selfCopy = 0;
      containerCopy = v21;
    }

    settingsCopy = v36;
  }

  else
  {
    v26 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidDampeningManagerInit", "Invalid default signature configuration", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_predicateForUndampenedRequestsMatchingSignatureOfRequest:(id)request afterDate:(id)date
{
  requestCopy = request;
  v6 = MEMORY[0x277CCAC30];
  dateCopy = date;
  v8 = dateCopy;
  if (requestCopy)
  {
    teamID = [requestCopy teamID];
    issueCategory = [requestCopy issueCategory];
    4103 = [v6 predicateWithFormat:@"(requestDate >= %@) AND (requestState < %llu OR requestState > %llu) AND (teamID == %@) AND (issueCategory == %@)", v8, 4096, 4103, teamID, issueCategory];

    v8 = teamID;
  }

  else
  {
    4103 = [v6 predicateWithFormat:@"(requestDate >= %@) AND (requestState < %llu OR requestState > %llu)", dateCopy, 4096, 4103];
  }

  return 4103;
}

- (BOOL)_request:(id)_request passesHysteresis:(double)hysteresis countCap:(unint64_t)cap usesSignature:(BOOL)signature usesRequestClass:(BOOL)class managedObjectContext:(id)context
{
  classCopy = class;
  signatureCopy = signature;
  _requestCopy = _request;
  contextCopy = context;
  if (hysteresis == 0.0)
  {
    LOBYTE(cap) = 1;
  }

  else if (cap)
  {
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-hysteresis];
    if (signatureCopy)
    {
      v17 = _requestCopy;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(DRSDampeningManager *)self _predicateForUndampenedRequestsMatchingSignatureOfRequest:v17 afterDate:v16];
    if (classCopy)
    {
      v19 = _requestCopy;
    }

    else
    {
      v19 = 0;
    }

    LODWORD(cap) = ![(DRSDampeningManager *)self _hasRequestsRecordCountGreaterThanOrEqualToThreshold:cap matchingPredicate:v18 inContext:contextCopy filterToObjectsMatchingClassOfRequest:v19];
  }

  return cap;
}

- (BOOL)_passesResourceHysteresis:(id)hysteresis config:(id)config managedObjectContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  configCopy = config;
  contextCopy = context;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesResourceHysteresis = [enforcementSettings enforcesResourceHysteresis];

  if ((enforcesResourceHysteresis & 1) == 0)
  {
    v14 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v14))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceHysteresisSkipped", "Resource hysteresis is disabled", &v20, 2u);
    }

    goto LABEL_8;
  }

  if (!configCopy)
  {
    v13 = 1;
    goto LABEL_10;
  }

  [configCopy hysteresis];
  v13 = 1;
  if (![(DRSDampeningManager *)self _request:hysteresisCopy passesHysteresis:1 countCap:0 usesSignature:1 usesRequestClass:contextCopy managedObjectContext:?])
  {
    v14 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v14))
    {
      v15 = [hysteresisCopy debugDescription];
      requiredSystemResourceName = [objc_opt_class() requiredSystemResourceName];
      [configCopy hysteresis];
      v20 = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = requiredSystemResourceName;
      v24 = 2048;
      v25 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestResourceRejection", "Rejecting %{public}@ due to falling within resource (%{public}@) window of %.1f seconds", &v20, 0x20u);
    }

LABEL_8:
    v13 = enforcesResourceHysteresis ^ 1;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_passesSignatureHysteresis:(id)hysteresis config:(id)config managedObjectContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  configCopy = config;
  contextCopy = context;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesSignatureHysteresis = [enforcementSettings enforcesSignatureHysteresis];

  if ((enforcesSignatureHysteresis & 1) == 0)
  {
    v15 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v15))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureHysteresisSkipped", "Signature hysteresis is disabled", &v20, 2u);
    }

LABEL_6:
    v14 = enforcesSignatureHysteresis ^ 1;

    goto LABEL_7;
  }

  [configCopy hysteresis];
  if (v13 != 0.0)
  {
    [configCopy hysteresis];
    v14 = 1;
    if ([(DRSDampeningManager *)self _request:hysteresisCopy passesHysteresis:1 countCap:1 usesSignature:0 usesRequestClass:contextCopy managedObjectContext:?])
    {
      goto LABEL_7;
    }

    v15 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v15))
    {
      v18 = [hysteresisCopy debugDescription];
      [configCopy hysteresis];
      v20 = 138543618;
      v21 = v18;
      v22 = 2048;
      v23 = v19;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureHysteresisRejection", "Rejecting %{public}@ due to falling within signature hysteresis window of %.1f seconds", &v20, 0x16u);
    }

    goto LABEL_6;
  }

  v14 = 1;
LABEL_7:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_passesSignatureCap:(id)cap config:(id)config managedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  capCopy = cap;
  configCopy = config;
  contextCopy = context;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesSignatureCap = [enforcementSettings enforcesSignatureCap];

  if ((enforcesSignatureCap & 1) == 0)
  {
    v14 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v14))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureCapSkipped", "Signature cap is disabled", &v19, 2u);
    }

LABEL_6:
    v13 = enforcesSignatureCap ^ 1;

    goto LABEL_7;
  }

  if ([configCopy countCap] != 0x7FFFFFFF)
  {
    [(DRSDampeningManager *)self _24HoursHysteresis];
    v13 = 1;
    if (-[DRSDampeningManager _request:passesHysteresis:countCap:usesSignature:usesRequestClass:managedObjectContext:](self, "_request:passesHysteresis:countCap:usesSignature:usesRequestClass:managedObjectContext:", capCopy, [configCopy countCap], 1, 0, contextCopy, v17))
    {
      goto LABEL_7;
    }

    v14 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v14))
    {
      v18 = [capCopy debugDescription];
      v19 = 138543618;
      v20 = v18;
      v21 = 2048;
      countCap = [configCopy countCap];
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureCapRejection", "Rejecting %{public}@ due to reaching signature cap of %llu within the last 24 hours.", &v19, 0x16u);
    }

    goto LABEL_6;
  }

  v13 = 1;
LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_passesResourceCap:(id)cap config:(id)config managedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  capCopy = cap;
  configCopy = config;
  contextCopy = context;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesResourceCap = [enforcementSettings enforcesResourceCap];

  if ((enforcesResourceCap & 1) == 0)
  {
    v14 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v14))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceCapSkipped", "Signature cap is disabled", &v19, 2u);
    }

LABEL_6:
    v13 = enforcesResourceCap ^ 1;

    goto LABEL_7;
  }

  if ([configCopy countCap] != 0x7FFFFFFF)
  {
    [(DRSDampeningManager *)self _24HoursHysteresis];
    v13 = 1;
    if (-[DRSDampeningManager _request:passesHysteresis:countCap:usesSignature:usesRequestClass:managedObjectContext:](self, "_request:passesHysteresis:countCap:usesSignature:usesRequestClass:managedObjectContext:", capCopy, [configCopy countCap], 0, 1, contextCopy, v17))
    {
      goto LABEL_7;
    }

    v14 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v14))
    {
      v18 = [capCopy debugDescription];
      v19 = 138543618;
      v20 = v18;
      v21 = 2048;
      countCap = [configCopy countCap];
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceCapRejection", "Rejecting %{public}@ due to reaching resource cap of %llu within the last 24 hours.", &v19, 0x16u);
    }

    goto LABEL_6;
  }

  v13 = 1;
LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_passesTotalCap:(id)cap managedObjectContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  capCopy = cap;
  contextCopy = context;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesTotalCap = [enforcementSettings enforcesTotalCap];

  if ((enforcesTotalCap & 1) == 0)
  {
    v12 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v12))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TotalCapSkipped", "Total cap is disabled", &v16, 2u);
    }

    goto LABEL_8;
  }

  [(DRSDampeningManager *)self _24HoursHysteresis];
  if (![(DRSDampeningManager *)self _request:0 passesHysteresis:[(DRSDampeningManager *)self totalCap] countCap:0 usesSignature:0 usesRequestClass:contextCopy managedObjectContext:v10])
  {
    v12 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v12))
    {
      v13 = [capCopy debugDescription];
      v16 = 138543618;
      v17 = v13;
      v18 = 2048;
      totalCap = [(DRSDampeningManager *)self totalCap];
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TotalCapRejection", "Rejecting %{public}@ due to reaching cap of %llu within the last 24 hours.", &v16, 0x16u);
    }

LABEL_8:
    v11 = enforcesTotalCap ^ 1;

    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)passesAcceptanceRate:(double)rate
{
  if (rate >= 1.0)
  {
    return 1;
  }

  if (rate <= 0.0)
  {
    return 0;
  }

  return rate * 1000.0 >= arc4random_uniform(0x3E8u);
}

- (BOOL)_passesSignatureRandomDownsampling:(id)downsampling config:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  downsamplingCopy = downsampling;
  configCopy = config;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesSignatureDownsampling = [enforcementSettings enforcesSignatureDownsampling];

  if ((enforcesSignatureDownsampling & 1) == 0)
  {
    v12 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v12))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureDownsamplingSkipped", "Downsampling is disabled", &v17, 2u);
    }

    goto LABEL_8;
  }

  v10 = objc_opt_class();
  [configCopy acceptanceRate];
  if (([v10 passesAcceptanceRate:?] & 1) == 0)
  {
    v12 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v12))
    {
      v13 = [downsamplingCopy debugDescription];
      [configCopy acceptanceRate];
      v17 = 138543618;
      v18 = v13;
      v19 = 2048;
      v20 = v14 * 100.0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureDownsamplingRejection", "Rejecting %{public}@ due failing to pass the acceptance threshold of %.1f%%", &v17, 0x16u);
    }

LABEL_8:
    v11 = enforcesSignatureDownsampling ^ 1;

    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_passesResourceRandomDownsampling:(id)downsampling config:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  downsamplingCopy = downsampling;
  configCopy = config;
  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  enforcesResourceDownsampling = [enforcementSettings enforcesResourceDownsampling];

  if ((enforcesResourceDownsampling & 1) == 0)
  {
    v12 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v12))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceDownsamplingSkipped", "Downsampling is disabled", &v17, 2u);
    }

    goto LABEL_8;
  }

  v10 = objc_opt_class();
  [configCopy acceptanceRate];
  if (([v10 passesAcceptanceRate:?] & 1) == 0)
  {
    v12 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v12))
    {
      v13 = [downsamplingCopy debugDescription];
      [configCopy acceptanceRate];
      v17 = 138543618;
      v18 = v13;
      v19 = 2048;
      v20 = v14 * 100.0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SignatureDownsamplingRejection", "Rejecting %{public}@ due failing to pass the acceptance threshold of %.1f%%", &v17, 0x16u);
    }

LABEL_8:
    v11 = enforcesResourceDownsampling ^ 1;

    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)dampeningConfigurationForResource:(id)resource
{
  if (resource)
  {
    resourceCopy = resource;
    resourceDampeningConfigDict = [(DRSDampeningManager *)self resourceDampeningConfigDict];
    v6 = [resourceDampeningConfigDict objectForKeyedSubscript:resourceCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_resourceConfigurationForRequest:(id)request
{
  requiredSystemResourceName = [objc_opt_class() requiredSystemResourceName];
  v5 = [(DRSDampeningManager *)self dampeningConfigurationForResource:requiredSystemResourceName];

  return v5;
}

- (unint64_t)dampeningOutcomeForRequest:(id)request
{
  requestCopy = request;
  persistentContainer = [(DRSDampeningManager *)self persistentContainer];

  if (persistentContainer)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    persistentContainer2 = [(DRSDampeningManager *)self persistentContainer];
    newBackgroundContext = [persistentContainer2 newBackgroundContext];

    v8 = objc_autoreleasePoolPush();
    workQueue = [(DRSDampeningManager *)self workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__DRSDampeningManager_dampeningOutcomeForRequest___block_invoke;
    v13[3] = &unk_27899FE70;
    v13[4] = self;
    v14 = requestCopy;
    v10 = newBackgroundContext;
    v15 = v10;
    v16 = &v17;
    dispatch_sync(workQueue, v13);

    objc_autoreleasePoolPop(v8);
    v11 = v18[3];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 8;
  }

  return v11;
}

void __50__DRSDampeningManager_dampeningOutcomeForRequest___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _resourceConfigurationForRequest:*(a1 + 40)];
  if (!v2)
  {
    goto LABEL_5;
  }

  v13 = v2;
  if (![*(a1 + 32) _passesResourceHysteresis:*(a1 + 40) config:v2 managedObjectContext:*(a1 + 48)])
  {
    v8 = 1;
LABEL_15:
    v2 = v13;
LABEL_16:
    *(*(*(a1 + 56) + 8) + 24) = v8;
    v10 = *MEMORY[0x277D85DE8];

    return;
  }

  if (![*(a1 + 32) _passesResourceCap:*(a1 + 40) config:v13 managedObjectContext:*(a1 + 48)])
  {
    v8 = 2;
    goto LABEL_15;
  }

  v3 = [*(a1 + 32) _passesResourceRandomDownsampling:*(a1 + 40) config:v13];
  v2 = v13;
  if ((v3 & 1) == 0)
  {
    v8 = 3;
    goto LABEL_16;
  }

LABEL_5:

  v4 = [*(a1 + 32) dampeningConfigurationForRequestSignature:*(a1 + 40)];
  v5 = *(a1 + 48);
  v14 = v4;
  if ([*(a1 + 32) _passesSignatureHysteresis:*(a1 + 40) config:? managedObjectContext:?])
  {
    if ([*(a1 + 32) _passesSignatureCap:*(a1 + 40) config:v14 managedObjectContext:*(a1 + 48)])
    {
      if ([*(a1 + 32) _passesSignatureRandomDownsampling:*(a1 + 40) config:v14])
      {

        if ([*(a1 + 32) _passesTotalCap:*(a1 + 40) managedObjectContext:*(a1 + 48)])
        {
          v6 = DPLogHandle_DampeningManager();
          if (os_signpost_enabled(v6))
          {
            v7 = [*(a1 + 40) debugDescription];
            *buf = 138543362;
            v16 = v7;
            _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptingRequest", "Accepted %{public}@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = 7;
        }

        v12 = *MEMORY[0x277D85DE8];
        return;
      }

      v9 = 6;
    }

    else
    {
      v9 = 5;
    }
  }

  else
  {
    v9 = 4;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9;
  v11 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)defaultTotalCapForIsInternal:(BOOL)internal isSeed:(BOOL)seed isCarrier:(BOOL)carrier
{
  v5 = 20;
  if (seed || carrier)
  {
    v5 = 50;
  }

  if (internal)
  {
    return 100;
  }

  else
  {
    return v5;
  }
}

+ (unint64_t)defaultTotalCapForCurrentDevice
{
  v3 = +[DRSSystemProfile sharedInstance];
  v4 = [self defaultTotalCapForIsInternal:objc_msgSend(v3 isSeed:"isInternal") isCarrier:{objc_msgSend(v3, "isSeed"), objc_msgSend(v3, "isCarrier")}];

  return v4;
}

+ (id)defaultTeamConfigurationForTeamForCurrentDevice:(id)device teamConfigurationDirectory:(id)directory
{
  deviceCopy = device;
  v7 = [self defaultTeamConfigurationsForCurrentDevice:directory];
  v8 = [v7 objectForKeyedSubscript:deviceCopy];

  return v8;
}

+ (id)_memoryToolsTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  configurationCopy = configuration;
  if (configuration || seed)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = +[DRSDampeningConfiguration memoryToolsDefaultConfiguration];
    [v8 setObject:v9 forKeyedSubscript:kDRSDMMemoryToolsMemgraphDmonThresholdCategory];

    if (configurationCopy)
    {
      +[DRSDampeningConfiguration memoryToolsInternalMemgraphOverTimeConfiguration];
    }

    else
    {
      +[DRSDampeningConfiguration memoryToolsDefaultConfiguration];
    }
    v10 = ;
    [v8 setObject:v10 forKeyedSubscript:kDRSDMMemoryToolsMemgraphOverTimeCategory];

    v7 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_nonWatchOShangTracerTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed
{
  seedCopy = seed;
  configurationCopy = configuration;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (configurationCopy)
  {
    v7 = +[DRSDampeningConfiguration hangTracerNonWatchOSInternalDownsamplingConfiguration];
    v8 = +[DRSDampeningConfiguration hangTracerNonWatchOSInternalNoDownsamplingConfiguration];
    [v6 setObject:v8 forKeyedSubscript:kDRSDMHangTracerFirstPartyMicroHangIssueCategory];
    [v6 setObject:v7 forKeyedSubscript:kDRSDMHangTracerFirstPartyNormalHangIssueCategory];
    [v6 setObject:v8 forKeyedSubscript:kDRSDMHangTracerFirstPartyLongHangIssueCategory];
    [v6 setObject:v7 forKeyedSubscript:kDRSDMHangTracerThirdPartyNormalHangIssueCategory];
    [v6 setObject:v8 forKeyedSubscript:kDRSDMHangTracerThirdPartyLongHangIssueCategory];
    v9 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v6];
  }

  else
  {
    if (seedCopy)
    {
      +[DRSDampeningConfiguration hangTracerNonWatchOSSeedConfiguration];
    }

    else
    {
      +[DRSDampeningConfiguration hangTracerNonWatchOSCustomerConfiguration];
    }
    v10 = ;
    [v6 setObject:v10 forKeyedSubscript:kDRSDMHangTracerFirstPartyLongHangIssueCategory];

    v9 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v6];
  }

  return v9;
}

+ (id)_watchOS_hangTracerTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed
{
  if (configuration || seed)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = +[DRSDampeningConfiguration hangTracerWatchOSInternalOrSeedDownsamplingConfiguration];
    v7 = +[DRSDampeningConfiguration hangTracerWatchOSInternalOrSeedNoDownsamplingConfiguration];
    [v5 setObject:v6 forKeyedSubscript:kDRSDMHangTracerFirstPartyNormalHangIssueCategory];
    [v5 setObject:v7 forKeyedSubscript:kDRSDMHangTracerFirstPartyLongHangIssueCategory];
    v4 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_sentryTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  if (!carrier && (platform == 2 || platform == 1 && configuration))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = +[DRSDampeningConfiguration sentryAppLaunchConfiguration];
    [v6 setObject:v7 forKeyedSubscript:kDRSDMSentryAppLaunchIssueCategory];

    v8 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_coreAudioTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = (platform - 1) < 4 || platform == 6;
  if (v6 && configuration)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = +[DRSDampeningConfiguration coreAudioOverloadConfiguration];
    [v7 setObject:v8 forKeyedSubscript:kDRSDMCoreAudioOverloadIssueCategory];

    v9 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_drmTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  if (!carrier)
  {
    platformCopy = platform;
    configurationCopy = configuration;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ((platformCopy - 1) < 3)
    {
      goto LABEL_6;
    }

    if (platformCopy == 4)
    {
      goto LABEL_8;
    }

    if (platformCopy == 6)
    {
LABEL_6:
      v10 = +[DRSDampeningConfiguration drmResourceUsageConfiguration];
      [v9 setObject:v10 forKeyedSubscript:kDRSDMDRMResourceUsageIssueCategory];

      if ((platformCopy - 1) < 4 || platformCopy == 6)
      {
LABEL_8:
        if (configurationCopy)
        {
          v11 = +[DRSDampeningConfiguration drmRogueTaskConfiguration];
          [v9 setObject:v11 forKeyedSubscript:kDRSDMDRMRogueTaskIssueCategory];
        }
      }
    }

    if ([v9 count])
    {
      v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v9];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)_coreAnimationTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  if (platform <= 6u && ((1 << platform) & 0x5C) != 0)
  {
    if (carrier)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_11;
    }

    if (platform == 2)
    {
      if (!configuration && !seed)
      {
        goto LABEL_4;
      }
    }

    else if (!configuration)
    {
      goto LABEL_4;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = +[DRSDampeningConfiguration caHitchesConfiguration];
    [v7 setObject:v8 forKeyedSubscript:kDRSDMCoreAnimationHitchesCategory];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v7];
  }

LABEL_11:

  return v6;
}

+ (id)_skylightTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  if ((configuration || seed) && platform == 1 && !carrier)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = +[DRSDampeningConfiguration skylightHitchesConfiguration];
    [v9 setObject:v10 forKeyedSubscript:kDRSDMSkylightHitchesCategory];

    v8 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_rapidTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = (platform - 1) < 4 || platform == 6;
  if (v6 && !carrier)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = +[DRSDampeningConfiguration rapidMicroDiagnosticsConfiguration];
    [v8 setObject:v9 forKeyedSubscript:kDRSDMRapidMicroDiagnosticIssueCategory[0]];

    v7 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_nandGBBTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  if (platform <= 6u && ((1 << platform) & 0x46) != 0)
  {
    v6 = 0;
    if (configuration && !carrier)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = +[DRSDampeningConfiguration nandAutoGBBSweepConfiguration];
      [v7 setObject:v8 forKeyedSubscript:kDRSDMNandAutoGBBSweepIssueCategory];

      v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v7];
    }
  }

  return v6;
}

+ (id)_workflowResponsivenessDampeningConfiguration:(BOOL)configuration
{
  if (configuration)
  {
    +[DRSDampeningConfiguration spindumpWorkflowResponsivenessConfiguration_Internal];
  }

  else
  {
    +[DRSDampeningConfiguration spindumpWorkflowResponsivenessConfiguration_External];
  }
  v3 = ;

  return v3;
}

+ (id)_ppsTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = (platform - 1) < 4 || platform == 6;
  if (v6 && !carrier)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = +[DRSDampeningConfiguration ppsArchiveConfiguration];
    [v8 setObject:v9 forKeyedSubscript:kDRSDMPPSArchiveIssueCategory];

    v10 = +[DRSDampeningConfiguration ppsCEArchiveConfiguration];
    [v8 setObject:v10 forKeyedSubscript:kDRSDMPPSCEArchiveIssueCategory];

    v11 = +[DRSDampeningConfiguration ppsXCArchiveConfiguration];
    [v8 setObject:v11 forKeyedSubscript:kDRSDMPPSXCArchiveIssueCategory[0]];

    v12 = +[DRSDampeningConfiguration ppsSafeguardArchiveConfiguration];
    [v8 setObject:v12 forKeyedSubscript:kDRSDMPPSSafeguardArchiveIssueCategory[0]];

    v13 = +[DRSDampeningConfiguration ppsBGArchiveConfiguration];
    [v8 setObject:v13 forKeyedSubscript:kDRSDMPPSBGArchiveIssueCategory];

    v14 = +[DRSDampeningConfiguration ppsUpgradeArchiveConfiguration];
    [v8 setObject:v14 forKeyedSubscript:kDRSDMPPSUpgradeArchiveIssueCategory];

    v7 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_watchdogdTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v7 = (platform - 1) < 4 || platform == 6;
  if (v7 && configuration && !carrier)
  {
    v8 = +[DRSDampeningConfiguration watchdogdDefaultConfiguration];
    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:v8 issueCategoryToConfigurationDict:0];
  }

  return v6;
}

+ (id)_mailTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v16[1] = *MEMORY[0x277D85DE8];
  if (platform <= 6u && ((1 << platform) & 0x46) != 0)
  {
    if (carrier)
    {
      v6 = 0;
    }

    else
    {
      seedCopy = seed;
      v15 = kDRSDMMailSQLQueryPerformanceIssueCategory;
      v9 = +[DRSDampeningConfiguration sqlQueryPerformanceConfiguration];
      v16[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11 = [v10 mutableCopy];

      if (configuration || seedCopy)
      {
        v12 = +[DRSDampeningConfiguration mailIssueCategoryConfiguration];
        [v11 setObject:v12 forKeyedSubscript:kDRSDMMailMessageListIssueCategory];
        [v11 setObject:v12 forKeyedSubscript:kDRSDMMailConversationViewIssueCategory];
        [v11 setObject:v12 forKeyedSubscript:kDRSDMMailMiscResponsivenessIssueCategory];
      }

      v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_RMETeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ((configuration || seed) && platform == 6 && !carrier)
  {
    v9 = +[DRSDampeningConfiguration RMEIssueCategoryConfiguration];
    v13 = kDRSDMRMEMemoryExceptionIssueCategory;
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v10];
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_abcTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = (platform - 1) < 4 || platform == 6;
  if (v6 && (configuration || seed || carrier))
  {
    v8 = +[DRSDampeningConfiguration abcDefaultConfiguration];
    v7 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:v8 issueCategoryToConfigurationDict:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_newsTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (configuration && !carrier && (platform - 3) >= 0xFFFFFFFE)
  {
    v11 = kDRSDMNewsSlowFeedIssueCategory;
    v7 = +[DRSDampeningConfiguration newsConfiguration];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_libtraceTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v13[2] = *MEMORY[0x277D85DE8];
  if (configuration && !carrier)
  {
    v12[0] = kDRSDMLibtraceQuarantineIssueCategory;
    v7 = +[DRSDampeningConfiguration libtraceQuarantineConfiguration];
    v12[1] = kDRSDMLibtraceLoggingSampleIssueCategory;
    v13[0] = v7;
    v8 = +[DRSDampeningConfiguration libtraceLoggingSampleConfiguration];
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_spotlightTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (configuration && !carrier)
  {
    v6 = 0;
    if (platform <= 6u && ((1 << platform) & 0x46) != 0)
    {
      v11 = kDRSDMSpotlightInternalWatchdogIssueCategory;
      v7 = +[DRSDampeningConfiguration spotlightInternalWatchdogConfiguration];
      v12[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

      v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_softwareUpdateTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (!carrier && configuration && platform == 1)
  {
    v11 = kDRSDMSoftwareUpdateLogoutInterruptedIssueCategory;
    v7 = +[DRSDampeningConfiguration softwareUpdateLogoutInterruptedConfiguration];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_appIntentsServicesTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (configuration && !carrier)
  {
    if (platform == 4 || platform == 2)
    {
      v11 = kDRSDMAppIntentsServicesSlowActivityCategory;
      v7 = +[DRSDampeningConfiguration appIntentsServicesSlowActivityConfiguration];
      v12[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

      v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_coreDuetPeopleSuggesterTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v13[2] = *MEMORY[0x277D85DE8];
  if (!carrier && configuration && platform == 2)
  {
    v12[0] = kDRSDMCoreDuetPeopleSuggesterShareSheetTimeoutCategory;
    v7 = +[DRSDampeningConfiguration shareSheetTimeoutConfiguration];
    v12[1] = kDRSDMCoreDuetPeopleSuggesterShareSheetMadRequestTimeoutCategory;
    v13[0] = v7;
    v8 = +[DRSDampeningConfiguration shareSheetMadRequestTimeoutConfiguration];
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_pearlTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (!carrier && configuration && platform == 2)
  {
    v11 = kDRSDMPearlAFileBundleCategory;
    v7 = +[DRSDampeningConfiguration pearlAFileBundleConfiguration];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_mssTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = (configuration || seed) && !carrier;
  if (v7 && platform && platform != 5)
  {
    v13[0] = kDRSDMMicrostackLostMSSInThisDrain;
    v8 = +[DRSDampeningConfiguration mssLostThisDrainConfiguration];
    v13[1] = kDRSDMMicrostackLostMSSBeforeThisDrain;
    v14[0] = v8;
    v9 = +[DRSDampeningConfiguration mssLostBeforeThisDrainConfiguration];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_backlightServicesTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (configuration && !carrier && (platform - 4) >= 0xFFFFFFFE)
  {
    v11 = kDRSDMBacklightServicesFlipbookHangIssueCategory;
    v7 = +[DRSDampeningConfiguration backlightServicesFlipboookHangConfiguration];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_healthkitTeamConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = 0;
  v13[2] = *MEMORY[0x277D85DE8];
  if (configuration && !carrier && (platform - 4) >= 0xFFFFFFFE)
  {
    v12[0] = kDRSDMHealthKitSlowWorkoutStartIssueCategory;
    v7 = +[DRSDampeningConfiguration healthKitSlowWorkoutConfiguration];
    v12[1] = kDRSDMHealthKitSlowWorkoutEndIssueCategory;
    v13[0] = v7;
    v8 = +[DRSDampeningConfiguration healthKitSlowWorkoutConfiguration];
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v6 = [[DRSTeamDampeningConfiguration alloc] initWithDefaultConfiguration:0 issueCategoryToConfigurationDict:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)defaultTeamConfigurationsForCurrentDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = +[DRSSystemProfile sharedInstance];
  v11 = 0;
  v6 = [self defaultTeamConfigurations:objc_msgSend(v5 isSeed:"isInternal") isCarrier:objc_msgSend(v5 platform:"isSeed") plistDirectoryPath:objc_msgSend(v5 errorOut:{"isCarrier"), objc_msgSend(v5, "platform"), deviceCopy, &v11}];

  v7 = v11;
  if (v7)
  {
    v8 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v8))
    {
      *buf = 138543362;
      v13 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamConfigFetchFailed", "Failed due to error %{public}@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_defaultTailspinConfiguration:(BOOL)configuration isSeed:(BOOL)seed isCarrier:(BOOL)carrier platform:(unsigned __int8)platform
{
  v6 = [[DRSDampeningConfiguration alloc] initWithHysteresis:0x7FFFFFFFLL cap:300.0 acceptanceRate:1.0];

  return v6;
}

- (BOOL)writeConfigurationPlistsToDirectory:(id)directory createDirIfMissing:(BOOL)missing errorOut:(id *)out
{
  v51 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v44 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager fileExistsAtPath:directoryCopy isDirectory:&v44];

  if (v10)
  {
    if ((v44 & 1) == 0)
    {
      if (out)
      {
        directoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' already exists but it's a file", directoryCopy];
        *out = _dampeningManagerError(directoryCopy);
      }

      jsonCompatibleDictRepresentation = DPLogHandle_DampeningManagerError();
      if (!os_signpost_enabled(jsonCompatibleDictRepresentation))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      *&buf[4] = directoryCopy;
      v13 = "'%{public}@' exists and is not a directory";
LABEL_25:
      _os_signpost_emit_with_name_impl(&dword_232906000, jsonCompatibleDictRepresentation, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigurationPlistDirWritingError", v13, buf, 0xCu);
LABEL_26:
      v23 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if (!missing)
    {
      if (out)
      {
        directoryCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' doesn't exist and we have not been told to create it", directoryCopy];
        *out = _dampeningManagerError(directoryCopy2);
      }

      jsonCompatibleDictRepresentation = DPLogHandle_DampeningManagerError();
      if (!os_signpost_enabled(jsonCompatibleDictRepresentation))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      *&buf[4] = directoryCopy;
      v13 = "'%{public}@' does not exist and we have not been told to create it";
      goto LABEL_25;
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v43 = 0;
    v15 = [defaultManager2 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v43];
    jsonCompatibleDictRepresentation = v43;

    if (!v15)
    {
      v28 = DPLogHandle_DampeningManagerError();
      if (os_signpost_enabled(v28))
      {
        *buf = 138543618;
        *&buf[4] = directoryCopy;
        *&buf[12] = 2114;
        *&buf[14] = jsonCompatibleDictRepresentation;
        _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigurationPlistDirCreationError", "Failed to create '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      if (out)
      {
        v29 = jsonCompatibleDictRepresentation;
        v23 = 0;
        *out = jsonCompatibleDictRepresentation;
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    v16 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v16))
    {
      *buf = 138543362;
      *&buf[4] = directoryCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigurationPlistDirCreation", "Created '%{public}@'", buf, 0xCu);
    }
  }

  jsonCompatibleDictRepresentation = [(DRSDampeningManager *)self jsonCompatibleDictRepresentation];
  v17 = [jsonCompatibleDictRepresentation objectForKeyedSubscript:@"TeamDampeningConfigurations"];
  if (v17)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__8;
    v49 = __Block_byref_object_dispose__8;
    v50 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __87__DRSDampeningManager_writeConfigurationPlistsToDirectory_createDirIfMissing_errorOut___block_invoke;
    v30[3] = &unk_27899FE98;
    v31 = directoryCopy;
    v32 = &v35;
    v33 = &v39;
    v34 = buf;
    [v17 enumerateKeysAndObjectsUsingBlock:v30];
    v18 = *(v40 + 24);
    if (v18 == 1)
    {
      v19 = DPLogHandle_DampeningManagerError();
      if (os_signpost_enabled(v19))
      {
        v20 = *(v36 + 6);
        *v45 = 67240192;
        v46 = v20;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerPlistWriteFailure", "Failed after writing %{public}u plists", v45, 8u);
      }

      if (!*(*&buf[8] + 40))
      {
        v21 = _dampeningManagerError(@"Unknown error");
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;
      }

      if (out)
      {
        *out = *(*&buf[8] + 40);
      }
    }

    _Block_object_dispose(buf, 8);
    v23 = v18 ^ 1;
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v25 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NoTeamConfigurationsToWrite", &unk_232980861, buf, 2u);
    }

    v23 = 1;
  }

LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

void __87__DRSDampeningManager_writeConfigurationPlistsToDirectory_createDirIfMissing_errorOut___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 stringByAppendingPathExtension:@"plist"];
  v10 = [*(a1 + 32) stringByAppendingPathComponent:v9];
  v22 = 0;
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:&v22];

  v12 = v22;
  v13 = v22;
  if (v11)
  {
    if ([v11 writeToFile:v10 atomically:1])
    {
      v14 = DPLogHandle_DampeningManager();
      if (os_signpost_enabled(v14))
      {
        *buf = 138543362;
        v24 = v10;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamPlistWriteSuccess", "Wrote %{public}@", buf, 0xCu);
      }

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
      v16 = DPLogHandle_DampeningManagerError();
      if (os_signpost_enabled(v16))
      {
        *buf = 138543618;
        v24 = v7;
        v25 = 2114;
        v26 = v10;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamPlistWriteFailure", "Failed to write plist for %{public}@ to path %{public}@", buf, 0x16u);
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write plist to path '%@'", v10];
      v18 = _dampeningManagerError(v17);
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v15 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v15))
    {
      *buf = 138543362;
      v24 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamPlistSerializationFailure", "Failed to serialize config for %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)defaultResourceConfigurationsForCurrentDevice
{
  v3 = +[DRSSystemProfile sharedInstance];
  v4 = [self defaultResourceConfigurations:objc_msgSend(v3 isSeed:"isInternal") isCarrier:objc_msgSend(v3 platform:{"isSeed"), objc_msgSend(v3, "isCarrier"), objc_msgSend(v3, "platform")}];

  return v4;
}

- (DRSDampeningManager)initWithPersistentContainer:(id)container teamConfigurationDirectory:(id)directory
{
  directoryCopy = directory;
  containerCopy = container;
  v8 = objc_alloc_init(DRSDampeningEnforcementSettings);
  defaultResourceConfigurationsForCurrentDevice = [objc_opt_class() defaultResourceConfigurationsForCurrentDevice];
  v10 = +[DRSDampeningConfiguration defaultSignatureDampeningConfiguration];
  defaultTotalCapForCurrentDevice = [objc_opt_class() defaultTotalCapForCurrentDevice];
  v12 = [objc_opt_class() defaultTeamConfigurationsForCurrentDevice:directoryCopy];

  v13 = [(DRSDampeningManager *)self initWithPersistentContainer:containerCopy enforcementSettings:v8 defaultSignatureConfiguration:v10 totalCap:defaultTotalCapForCurrentDevice teamDampeningConfigDict:v12 resourceDampeningConfigDict:defaultResourceConfigurationsForCurrentDevice];
  return v13;
}

- (id)dampeningConfigurationForTeamID:(id)d issueCategory:(id)category
{
  categoryCopy = category;
  dCopy = d;
  teamDampeningConfigDict = [(DRSDampeningManager *)self teamDampeningConfigDict];
  v9 = [teamDampeningConfigDict objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v10 = [v9 configurationForIssueCategory:categoryCopy];
    v11 = v10;
    if (v10)
    {
      defaultSignatureConfiguration = v10;
    }

    else
    {
      defaultSignatureConfiguration = [(DRSDampeningManager *)self defaultSignatureConfiguration];
    }

    defaultSignatureConfiguration2 = defaultSignatureConfiguration;
  }

  else
  {
    defaultSignatureConfiguration2 = [(DRSDampeningManager *)self defaultSignatureConfiguration];
  }

  return defaultSignatureConfiguration2;
}

- (id)dampeningConfigurationForRequestSignature:(id)signature
{
  signatureCopy = signature;
  teamID = [signatureCopy teamID];
  issueCategory = [signatureCopy issueCategory];

  v7 = [(DRSDampeningManager *)self dampeningConfigurationForTeamID:teamID issueCategory:issueCategory];

  return v7;
}

+ (id)_ON_MOC_QUEUE_existingMOFromContext:(id)context errorOut:(id *)out
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBE428];
  contextCopy = context;
  _entityName = [self _entityName];
  v9 = [v6 fetchRequestWithEntityName:_entityName];

  v10 = [contextCopy executeFetchRequest:v9 error:out];

  if (*out)
  {
    v11 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v11))
    {
      localizedDescription = [*out localizedDescription];
      v13 = localizedDescription;
      v14 = @"Unknown";
      if (localizedDescription)
      {
        v14 = localizedDescription;
      }

      v18 = 138543362;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerRemoveFailure", "Encountered error when fetching dampening manager from store: %{public}@", &v18, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)removeExistingDampeningManagerStateFromManagedObjectContext:(id)context errorOut:(id *)out
{
  contextCopy = context;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__8;
  v14[4] = __Block_byref_object_dispose__8;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__DRSDampeningManager_removeExistingDampeningManagerStateFromManagedObjectContext_errorOut___block_invoke;
  v9[3] = &unk_27899F4A0;
  selfCopy = self;
  v6 = contextCopy;
  v10 = v6;
  v11 = v14;
  v12 = &v16;
  [v6 performBlockAndWait:v9];
  v7 = *(v17 + 24);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);

  return v7;
}

void __92__DRSDampeningManager_removeExistingDampeningManagerStateFromManagedObjectContext_errorOut___block_invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = a1[4];
  v18 = 0;
  v4 = [v2 _ON_MOC_QUEUE_existingMOFromContext:v3 errorOut:&v18];
  v5 = v18;
  v6 = v18;
  objc_storeStrong((*(a1[5] + 8) + 40), v5);
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [a1[4] deleteObject:{*(*(&v14 + 1) + 8 * v11++), v14}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    v12 = *(a1[6] + 8);
  }

  else
  {
    v12 = *(a1[6] + 8);
    if (*(*(a1[5] + 8) + 40))
    {
      *(v12 + 24) = 0;
      goto LABEL_13;
    }
  }

  *(v12 + 24) = 1;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)dampeningManagerFromPersistentContainer:(id)container deleteBadState:(BOOL)state errorOut:(id *)out
{
  stateCopy = state;
  containerCopy = container;
  newBackgroundContext = [containerCopy newBackgroundContext];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__8;
  v35 = __Block_byref_object_dispose__8;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8;
  v29 = __Block_byref_object_dispose__8;
  v30 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__DRSDampeningManager_dampeningManagerFromPersistentContainer_deleteBadState_errorOut___block_invoke;
  v18[3] = &unk_27899FEC0;
  v21 = &v31;
  selfCopy = self;
  v10 = newBackgroundContext;
  v19 = v10;
  v22 = &v25;
  v23 = &v37;
  v11 = containerCopy;
  v20 = v11;
  [v10 performBlockAndWait:v18];
  if (stateCopy && v26[5] && [v32[5] count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__DRSDampeningManager_dampeningManagerFromPersistentContainer_deleteBadState_errorOut___block_invoke_555;
    v14[3] = &unk_27899FEE8;
    v16 = &v31;
    v15 = v10;
    v17 = &v25;
    [v15 performBlockAndWait:v14];
  }

  if (out)
  {
    *out = v26[5];
  }

  v12 = v38[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v12;
}

void __87__DRSDampeningManager_dampeningManagerFromPersistentContainer_deleteBadState_errorOut___block_invoke(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a1[9];
  v3 = a1[4];
  v28 = 0;
  v4 = [v2 _ON_MOC_QUEUE_existingMOFromContext:v3 errorOut:&v28];
  v5 = v28;
  v6 = v28;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  objc_storeStrong((*(a1[7] + 8) + 40), v5);
  if (*(*(a1[7] + 8) + 40))
  {
    v9 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v9))
    {
      v10 = [*(*(a1[7] + 8) + 40) localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138543362;
      v34 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerFetchFailure", "Encountered error when fetching dampening manager from store: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (![*(*(a1[6] + 8) + 40) count])
  {
    v9 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerFetchMiss", "No persisted dampening manager", buf, 2u);
    }

    goto LABEL_18;
  }

  if ([*(*(a1[6] + 8) + 40) count] >= 2)
  {
    v13 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerFetchMultiples", "Found more than one manager", buf, 2u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Found more than one persisted dampening manager";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v32;
    v17 = &v31;
LABEL_17:
    v9 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v24 = [v14 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v9];
    v25 = *(a1[7] + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

LABEL_18:
    goto LABEL_19;
  }

  v18 = [DRSDampeningManager alloc];
  v19 = [*(*(a1[6] + 8) + 40) firstObject];
  v20 = [(DRSDampeningManager *)v18 _ON_MOC_QUEUE_initWith:v19 persistentContainer:a1[5]];
  v21 = *(a1[8] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  if (!*(*(a1[8] + 8) + 40))
  {
    v23 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerFetchInitFailure", "Failed to initialize dampening manager", buf, 2u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"Failed to create MO for dampening manager";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v30;
    v17 = &v29;
    goto LABEL_17;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
}

void __87__DRSDampeningManager_dampeningManagerFromPersistentContainer_deleteBadState_errorOut___block_invoke_555(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerBadStateClean", "Cleaning bad persisted state and starting over.", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) deleteObject:*(*(&v18 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 32);
  v17 = 0;
  v9 = [v8 save:&v17];
  v10 = v17;
  v11 = v17;
  if ((v9 & 1) == 0)
  {
    v12 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v12))
    {
      v13 = [v11 localizedDescription];
      v14 = v13;
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138543362;
      v23 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerDeleteFailure", "Failed to save deletion of multiple dampening managers due to error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ON_MOC_QUEUE_initWith:(id)with persistentContainer:(id)container
{
  selfCopy = self;
  v47 = *MEMORY[0x277D85DE8];
  withCopy = with;
  containerCopy = container;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  teamConfigurations = [withCopy teamConfigurations];
  v8 = [teamConfigurations countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(teamConfigurations);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        selfCopy = [[DRSTeamDampeningConfiguration alloc] _initWithTeamDampeningConfigMO_ON_MOC_QUEUE:v12, selfCopy];
        if (!selfCopy)
        {
          resourceConfigurations = DPLogHandle_DampeningManagerError();
          if (os_signpost_enabled(resourceConfigurations))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, resourceConfigurations, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerMORestoreFailure", "Failed to initialize dampening manager from persistence", buf, 2u);
          }

          v31 = 0;
          v25 = containerCopy;
          goto LABEL_29;
        }

        v14 = selfCopy;
        teamID = [v12 teamID];
        [v6 setObject:v14 forKeyedSubscript:teamID];
      }

      v9 = [teamConfigurations countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (![v6 count])
  {

    v6 = 0;
  }

  teamConfigurations = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  resourceConfigurations = [withCopy resourceConfigurations];
  v17 = [resourceConfigurations countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(resourceConfigurations);
        }

        v21 = *(*(&v36 + 1) + 8 * j);
        v22 = [[DRSDampeningConfiguration alloc] _initWithMO_ON_MOC_QUEUE:v21];
        if (!v22)
        {
          v30 = DPLogHandle_DampeningManagerError();
          if (os_signpost_enabled(v30))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerMORestoreFailure", "Failed to initialize resource dampening configurations from persistence", buf, 2u);
          }

          v31 = 0;
          v25 = containerCopy;
          goto LABEL_28;
        }

        v23 = v22;
        identifier = [v21 identifier];
        [teamConfigurations setObject:v23 forKeyedSubscript:identifier];
      }

      v18 = [resourceConfigurations countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (![teamConfigurations count])
  {

    teamConfigurations = 0;
  }

  v25 = containerCopy;
  v26 = [DRSDampeningConfiguration alloc];
  defaultSignatureConfiguration = [withCopy defaultSignatureConfiguration];
  resourceConfigurations = [(DRSDampeningConfiguration *)v26 _initWithMO_ON_MOC_QUEUE:defaultSignatureConfiguration];

  v28 = [DRSDampeningEnforcementSettings alloc];
  enforcementSettings = [withCopy enforcementSettings];
  v30 = [(DRSDampeningEnforcementSettings *)v28 initWithMO:enforcementSettings];

  v31 = -[DRSDampeningManager initWithPersistentContainer:enforcementSettings:defaultSignatureConfiguration:totalCap:teamDampeningConfigDict:resourceDampeningConfigDict:](selfCopy, "initWithPersistentContainer:enforcementSettings:defaultSignatureConfiguration:totalCap:teamDampeningConfigDict:resourceDampeningConfigDict:", containerCopy, v30, resourceConfigurations, [withCopy totalCap], v6, teamConfigurations);
LABEL_28:

LABEL_29:
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)context
{
  contextCopy = context;
  v5 = [[DRSDampeningManagerMO alloc] initWithContext:contextCopy];
  defaultSignatureConfiguration = [(DRSDampeningManager *)self defaultSignatureConfiguration];
  v7 = [defaultSignatureConfiguration _ON_MOC_QUEUE_moRepresentationInContext:contextCopy identifier:@"DEFAULT_CONFIGURATION"];
  [(DRSDampeningManagerMO *)v5 setDefaultSignatureConfiguration:v7];

  enforcementSettings = [(DRSDampeningManager *)self enforcementSettings];
  v9 = [enforcementSettings _moRepresentation:contextCopy];
  [(DRSDampeningManagerMO *)v5 setEnforcementSettings:v9];

  [(DRSDampeningManagerMO *)v5 setTotalCap:[(DRSDampeningManager *)self totalCap]];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  teamDampeningConfigDict = [(DRSDampeningManager *)self teamDampeningConfigDict];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__DRSDampeningManager__ON_MOC_QUEUE_moRepresentationInContext___block_invoke;
  v21[3] = &unk_27899FF10;
  v11 = contextCopy;
  v22 = v11;
  v24 = &v25;
  v12 = v5;
  v23 = v12;
  [teamDampeningConfigDict enumerateKeysAndObjectsUsingBlock:v21];

  if (v26[3])
  {
    v13 = 0;
  }

  else
  {
    resourceDampeningConfigDict = [(DRSDampeningManager *)self resourceDampeningConfigDict];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__DRSDampeningManager__ON_MOC_QUEUE_moRepresentationInContext___block_invoke_560;
    v17[3] = &unk_27899FE20;
    v18 = v11;
    v20 = &v25;
    v15 = v12;
    v19 = v15;
    [resourceDampeningConfigDict enumerateKeysAndObjectsUsingBlock:v17];

    if (v26[3])
    {
      v13 = 0;
    }

    else
    {
      v13 = v15;
    }
  }

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __63__DRSDampeningManager__ON_MOC_QUEUE_moRepresentationInContext___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 _ON_MOC_QUEUE_moRepresentationInContext:*(a1 + 32) teamID:a2];
  v7 = v6;
  if (v6)
  {
    [*(a1 + 40) addTeamConfigurationsObject:v6];
  }

  else
  {
    DPLogHandle_DampeningManagerError();

    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __63__DRSDampeningManager__ON_MOC_QUEUE_moRepresentationInContext___block_invoke_560(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 _ON_MOC_QUEUE_moRepresentationInContext:*(a1 + 32) identifier:a2];
  v7 = v6;
  if (v6)
  {
    [*(a1 + 40) addResourceConfigurationsObject:v6];
  }

  else
  {
    DPLogHandle_DampeningManagerError();

    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)saveToPersistentContainerWithErrorOut:(id *)out
{
  v27[1] = *MEMORY[0x277D85DE8];
  persistentContainer = [(DRSDampeningManager *)self persistentContainer];

  if (persistentContainer)
  {
    persistentContainer2 = [(DRSDampeningManager *)self persistentContainer];
    newBackgroundContext = [persistentContainer2 newBackgroundContext];

    if ([objc_opt_class() removeExistingDampeningManagerStateFromManagedObjectContext:newBackgroundContext errorOut:out])
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__8;
      v20 = __Block_byref_object_dispose__8;
      v21 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__DRSDampeningManager_saveToPersistentContainerWithErrorOut___block_invoke;
      v12[3] = &unk_27899ED80;
      v12[4] = self;
      newBackgroundContext = newBackgroundContext;
      v13 = newBackgroundContext;
      v14 = &v16;
      v15 = &v22;
      [newBackgroundContext performBlockAndWait:v12];
      v8 = *(v23 + 24);
      if (v8)
      {
        DPLogHandle_CoreData();
      }

      else
      {
        DPLogHandle_CoreDataError();

        if (out)
        {
          *out = v17[5];
        }
      }

      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!out)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v9 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"Tried to save a dampening manager with no persistent containter";
    newBackgroundContext = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v9 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:newBackgroundContext];
    *out = v8 = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __61__DRSDampeningManager_saveToPersistentContainerWithErrorOut___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _ON_MOC_QUEUE_moRepresentationInContext:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 48) + 8);
    obj = *(v4 + 40);
    v5 = [v3 save:&obj];
    objc_storeStrong((v4 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Failed to create MO for dampening manager";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v6 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end