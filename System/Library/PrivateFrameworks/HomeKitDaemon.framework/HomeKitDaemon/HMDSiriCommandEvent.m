@interface HMDSiriCommandEvent
+ (id)commandEventWithDuration:(unint64_t)a3 actionType:(id)a4 outcome:(id)a5 numberOfEntities:(unint64_t)a6 numberOfFailures:(unint64_t)a7 numberOfIncompletions:(unint64_t)a8 serverConfigurationVersion:(unint64_t)a9 configurationVersion:(unint64_t)a10 lastSyncedConfigurationVersion:(unint64_t)a11;
+ (unint64_t)generateErrorCodeWithNumberOfFailures:(unint64_t)a3 numberOfIncompletions:(unint64_t)a4 commandOutcome:(id)a5;
- (HMDSiriCommandEvent)initWithDuration:(unint64_t)a3 actionType:(id)a4 outcome:(id)a5 numberOfEntities:(unint64_t)a6 numberOfFailures:(unint64_t)a7 numberOfIncompletions:(unint64_t)a8 serverConfigurationVersion:(unint64_t)a9 configurationVersion:(unint64_t)a10 lastSyncedConfigurationVersion:(unint64_t)a11;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDSiriCommandEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDSiriCommandEvent *)self actionType];
  [v3 setObject:v4 forKeyedSubscript:@"actionType"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriCommandEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v5 forKeyedSubscript:@"duration"];

  v6 = [(HMDSiriCommandEvent *)self outcome];
  [v3 setObject:v6 forKeyedSubscript:@"outcome"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriCommandEvent numberOfEntities](self, "numberOfEntities")}];
  [v3 setObject:v7 forKeyedSubscript:@"numTargetedEntities"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriCommandEvent numberOfFailures](self, "numberOfFailures")}];
  [v3 setObject:v8 forKeyedSubscript:@"numFailures"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriCommandEvent numberOfIncompletions](self, "numberOfIncompletions")}];
  [v3 setObject:v9 forKeyedSubscript:@"numIncompleteOperations"];

  if ([(HMDSiriCommandEvent *)self numberOfEntities])
  {
    v10 = [(HMDSiriCommandEvent *)self numberOfFailures];
    v11 = ([(HMDSiriCommandEvent *)self numberOfIncompletions]+ v10) * 100.0;
    v12 = (v11 / [(HMDSiriCommandEvent *)self numberOfEntities]+ 0.5);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v3 setObject:v13 forKeyedSubscript:@"failurePercentage"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100 - v12];
    [v3 setObject:v14 forKeyedSubscript:@"successPercentage"];
  }

  v15 = [(HMDSiriCommandEvent *)self configurationVersion];
  v16 = [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion];
  v17 = MEMORY[0x277CBEC28];
  v18 = MEMORY[0x277CBEC38];
  if (v15 == v16)
  {
    v19 = MEMORY[0x277CBEC38];
  }

  else
  {
    v19 = MEMORY[0x277CBEC28];
  }

  [v3 setObject:v19 forKeyedSubscript:@"currentConfigMatchesLastSynced"];
  v20 = [(HMDSiriCommandEvent *)self configurationVersion];
  if (v20 == [(HMDSiriCommandEvent *)self serverConfigurationVersion])
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  [v3 setObject:v21 forKeyedSubscript:@"currentConfigMatchesServer"];
  v22 = [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion];
  if (v22 == [(HMDSiriCommandEvent *)self serverConfigurationVersion])
  {
    v23 = v18;
  }

  else
  {
    v23 = v17;
  }

  [v3 setObject:v23 forKeyedSubscript:@"lastSyncedConfigMatchesServer"];
  v24 = [(HMDSiriCommandEvent *)self configurationVersion];
  if (v24 == [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion])
  {
    v25 = [(HMDSiriCommandEvent *)self lastSyncedConfigurationVersion];
    if (v25 == [(HMDSiriCommandEvent *)self serverConfigurationVersion])
    {
      v17 = v18;
    }
  }

  [v3 setObject:v17 forKeyedSubscript:@"allConfigsMatch"];
  if (isInternalBuild())
  {
    v26 = [(HMDSiriCommandEvent *)self clientMetricIdentifier];
    [v3 setObject:v26 forKeyedSubscript:@"clientMetricIdentifier"];
  }

  v27 = [v3 copy];

  return v27;
}

- (HMDSiriCommandEvent)initWithDuration:(unint64_t)a3 actionType:(id)a4 outcome:(id)a5 numberOfEntities:(unint64_t)a6 numberOfFailures:(unint64_t)a7 numberOfIncompletions:(unint64_t)a8 serverConfigurationVersion:(unint64_t)a9 configurationVersion:(unint64_t)a10 lastSyncedConfigurationVersion:(unint64_t)a11
{
  v38 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a5;
  v20 = v19;
  if (!v18)
  {
    v28 = objc_autoreleasePoolPush();
    v26 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v30;
      v31 = "%{public}@Can't init HMDSiriCommandEvent: actionType is nil";
LABEL_12:
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v28);
    v27 = 0;
    goto LABEL_14;
  }

  if (!v19)
  {
    v28 = objc_autoreleasePoolPush();
    v26 = self;
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
    v34 = [MEMORY[0x277D0F770] currentActivity];
    v22 = [v34 clientMetricIdentifier];
    clientMetricIdentifier = v21->_clientMetricIdentifier;
    v21->_clientMetricIdentifier = v22;

    v21->_durationMilliseconds = a3;
    objc_storeStrong(&v21->_actionType, a4);
    objc_storeStrong(&v21->_outcome, a5);
    v21->_configurationVersion = a10;
    v21->_lastSyncedConfigurationVersion = a11;
    v21->_serverConfigurationVersion = a9;
    v21->_numberOfEntities = a6;
    v21->_numberOfFailures = a7;
    v21->_numberOfIncompletions = a8;
    v24 = [objc_opt_class() generateErrorCodeWithNumberOfFailures:a7 numberOfIncompletions:a8 commandOutcome:v20];
    if (v24)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDSiriCommandEventErrorDomain" code:v24 userInfo:0];
      [(HMMLogEvent *)v21 setError:v25];
    }
  }

  v26 = v21;
  v27 = v26;
LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (id)commandEventWithDuration:(unint64_t)a3 actionType:(id)a4 outcome:(id)a5 numberOfEntities:(unint64_t)a6 numberOfFailures:(unint64_t)a7 numberOfIncompletions:(unint64_t)a8 serverConfigurationVersion:(unint64_t)a9 configurationVersion:(unint64_t)a10 lastSyncedConfigurationVersion:(unint64_t)a11
{
  v16 = a5;
  v17 = a4;
  v18 = [[HMDSiriCommandEvent alloc] initWithDuration:a3 actionType:v17 outcome:v16 numberOfEntities:a6 numberOfFailures:a7 numberOfIncompletions:a8 serverConfigurationVersion:a9 configurationVersion:a10 lastSyncedConfigurationVersion:a11];

  return v18;
}

+ (unint64_t)generateErrorCodeWithNumberOfFailures:(unint64_t)a3 numberOfIncompletions:(unint64_t)a4 commandOutcome:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 || ([v7 isEqualToString:*MEMORY[0x277D48100]] & 1) != 0)
  {
    v9 = 2;
  }

  else if (a3)
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