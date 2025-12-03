@interface HMDSiriCommandEvent
+ (id)commandEventWithDuration:(unint64_t)duration actionType:(id)type outcome:(id)outcome numberOfEntities:(unint64_t)entities numberOfFailures:(unint64_t)failures numberOfIncompletions:(unint64_t)incompletions serverConfigurationVersion:(unint64_t)version configurationVersion:(unint64_t)self0 lastSyncedConfigurationVersion:(unint64_t)self1;
+ (unint64_t)generateErrorCodeWithNumberOfFailures:(unint64_t)failures numberOfIncompletions:(unint64_t)incompletions commandOutcome:(id)outcome;
- (HMDSiriCommandEvent)initWithDuration:(unint64_t)duration actionType:(id)type outcome:(id)outcome numberOfEntities:(unint64_t)entities numberOfFailures:(unint64_t)failures numberOfIncompletions:(unint64_t)incompletions serverConfigurationVersion:(unint64_t)version configurationVersion:(unint64_t)self0 lastSyncedConfigurationVersion:(unint64_t)self1;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDSiriCommandEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  actionType = [(HMDSiriCommandEvent *)self actionType];
  [v3 setObject:actionType forKeyedSubscript:@"actionType"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriCommandEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v5 forKeyedSubscript:@"duration"];

  outcome = [(HMDSiriCommandEvent *)self outcome];
  [v3 setObject:outcome forKeyedSubscript:@"outcome"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriCommandEvent numberOfEntities](self, "numberOfEntities")}];
  [v3 setObject:v7 forKeyedSubscript:@"numTargetedEntities"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriCommandEvent numberOfFailures](self, "numberOfFailures")}];
  [v3 setObject:v8 forKeyedSubscript:@"numFailures"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriCommandEvent numberOfIncompletions](self, "numberOfIncompletions")}];
  [v3 setObject:v9 forKeyedSubscript:@"numIncompleteOperations"];

  if ([(HMDSiriCommandEvent *)self numberOfEntities])
  {
    numberOfFailures = [(HMDSiriCommandEvent *)self numberOfFailures];
    v11 = ([(HMDSiriCommandEvent *)self numberOfIncompletions]+ numberOfFailures) * 100.0;
    v12 = (v11 / [(HMDSiriCommandEvent *)self numberOfEntities]+ 0.5);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v3 setObject:v13 forKeyedSubscript:@"failurePercentage"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100 - v12];
    [v3 setObject:v14 forKeyedSubscript:@"successPercentage"];
  }

  configurationVersion = [(HMDSiriCommandEvent *)self configurationVersion];
  lastSyncedConfigurationVersion = [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion];
  v17 = MEMORY[0x277CBEC28];
  v18 = MEMORY[0x277CBEC38];
  if (configurationVersion == lastSyncedConfigurationVersion)
  {
    v19 = MEMORY[0x277CBEC38];
  }

  else
  {
    v19 = MEMORY[0x277CBEC28];
  }

  [v3 setObject:v19 forKeyedSubscript:@"currentConfigMatchesLastSynced"];
  configurationVersion2 = [(HMDSiriCommandEvent *)self configurationVersion];
  if (configurationVersion2 == [(HMDSiriCommandEvent *)self serverConfigurationVersion])
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  [v3 setObject:v21 forKeyedSubscript:@"currentConfigMatchesServer"];
  lastSyncedConfigurationVersion2 = [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion];
  if (lastSyncedConfigurationVersion2 == [(HMDSiriCommandEvent *)self serverConfigurationVersion])
  {
    v23 = v18;
  }

  else
  {
    v23 = v17;
  }

  [v3 setObject:v23 forKeyedSubscript:@"lastSyncedConfigMatchesServer"];
  configurationVersion3 = [(HMDSiriCommandEvent *)self configurationVersion];
  if (configurationVersion3 == [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion])
  {
    lastSyncedConfigurationVersion3 = [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion];
    if (lastSyncedConfigurationVersion3 == [(HMDSiriCommandEvent *)self serverConfigurationVersion])
    {
      v17 = v18;
    }
  }

  [v3 setObject:v17 forKeyedSubscript:@"allConfigsMatch"];
  if (isInternalBuild())
  {
    clientMetricIdentifier = [(HMDSiriCommandEvent *)self clientMetricIdentifier];
    [v3 setObject:clientMetricIdentifier forKeyedSubscript:@"clientMetricIdentifier"];
  }

  v27 = [v3 copy];

  return v27;
}

- (HMDSiriCommandEvent)initWithDuration:(unint64_t)duration actionType:(id)type outcome:(id)outcome numberOfEntities:(unint64_t)entities numberOfFailures:(unint64_t)failures numberOfIncompletions:(unint64_t)incompletions serverConfigurationVersion:(unint64_t)version configurationVersion:(unint64_t)self0 lastSyncedConfigurationVersion:(unint64_t)self1
{
  v38 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  outcomeCopy = outcome;
  v20 = outcomeCopy;
  if (!typeCopy)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v30;
      v31 = "%{public}@Can't init HMDSiriCommandEvent: actionType is nil";
LABEL_12:
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v28);
    v27 = 0;
    goto LABEL_14;
  }

  if (!outcomeCopy)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v30;
      v31 = "%{public}@Can't init HMDSiriCommandEvent: outcome is nil";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v35.receiver = self;
  v35.super_class = HMDSiriCommandEvent;
  v21 = [(HMMLogEvent *)&v35 init];
  if (v21)
  {
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    clientMetricIdentifier = [currentActivity clientMetricIdentifier];
    clientMetricIdentifier = v21->_clientMetricIdentifier;
    v21->_clientMetricIdentifier = clientMetricIdentifier;

    v21->_durationMilliseconds = duration;
    objc_storeStrong(&v21->_actionType, type);
    objc_storeStrong(&v21->_outcome, outcome);
    v21->_configurationVersion = configurationVersion;
    v21->_lastSyncedConfigurationVersion = syncedConfigurationVersion;
    v21->_serverConfigurationVersion = version;
    v21->_numberOfEntities = entities;
    v21->_numberOfFailures = failures;
    v21->_numberOfIncompletions = incompletions;
    v24 = [objc_opt_class() generateErrorCodeWithNumberOfFailures:failures numberOfIncompletions:incompletions commandOutcome:v20];
    if (v24)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDSiriCommandEventErrorDomain" code:v24 userInfo:0];
      [(HMMLogEvent *)v21 setError:v25];
    }
  }

  selfCopy2 = v21;
  v27 = selfCopy2;
LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (id)commandEventWithDuration:(unint64_t)duration actionType:(id)type outcome:(id)outcome numberOfEntities:(unint64_t)entities numberOfFailures:(unint64_t)failures numberOfIncompletions:(unint64_t)incompletions serverConfigurationVersion:(unint64_t)version configurationVersion:(unint64_t)self0 lastSyncedConfigurationVersion:(unint64_t)self1
{
  outcomeCopy = outcome;
  typeCopy = type;
  v18 = [[HMDSiriCommandEvent alloc] initWithDuration:duration actionType:typeCopy outcome:outcomeCopy numberOfEntities:entities numberOfFailures:failures numberOfIncompletions:incompletions serverConfigurationVersion:version configurationVersion:configurationVersion lastSyncedConfigurationVersion:syncedConfigurationVersion];

  return v18;
}

+ (unint64_t)generateErrorCodeWithNumberOfFailures:(unint64_t)failures numberOfIncompletions:(unint64_t)incompletions commandOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v8 = outcomeCopy;
  if (incompletions || ([outcomeCopy isEqualToString:*MEMORY[0x277D48100]] & 1) != 0)
  {
    v9 = 2;
  }

  else if (failures)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 isEqualToString:*MEMORY[0x277D480D0]] ^ 1;
  }

  return v9;
}

@end