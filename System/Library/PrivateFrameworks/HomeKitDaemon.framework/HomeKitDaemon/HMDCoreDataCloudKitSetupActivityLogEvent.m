@interface HMDCoreDataCloudKitSetupActivityLogEvent
- (HMDCoreDataCloudKitSetupActivityLogEvent)initWithActivityIdentifier:(id)a3 setupSessionIdentifier:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
- (void)setDurationForPhase:(id)a3 duration:(double)a4;
- (void)setErrorForPhase:(id)a3 error:(id)a4;
@end

@implementation HMDCoreDataCloudKitSetupActivityLogEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self checkAccountDurationMS];
  v5 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self checkUserIdentityDurationMS];
  v6 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeAssetStorageDurationMS];
  v7 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeDatabaseSubscriptionDurationMS];
  v8 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeMetadataDurationMS];
  v9 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeZoneDurationMS];
  v10 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self scheduledDurationMS];
  v11 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self totalSetupDurationMS];
  v12 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self errorPhaseName];
  v13 = [v3 stringWithFormat:@"HMDCoreDataCloudKitSetupActivityLogEvent:\ncheck account: %ld\ncheck account identity: %ld\ninitialize asset storage: %ld\ninitialize database subscription: %ld\ninitialize metadata: %ld\ninitialize zone: %ld\nscheduled: %ld\ntotal: %ld, error phase: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent checkAccountDurationMS](self, "checkAccountDurationMS")}];
  [v3 setObject:v4 forKeyedSubscript:@"checkAccountDurationMS"];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent checkUserIdentityDurationMS](self, "checkUserIdentityDurationMS")}];
  [v3 setObject:v5 forKeyedSubscript:@"checkUserIdentityDurationMS"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeAssetStorageDurationMS](self, "initializeAssetStorageDurationMS")}];
  [v3 setObject:v6 forKeyedSubscript:@"initializeAssetStorageDurationMS"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeDatabaseSubscriptionDurationMS](self, "initializeDatabaseSubscriptionDurationMS")}];
  [v3 setObject:v7 forKeyedSubscript:@"initializeDatabaseSubscriptionDurationMS"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeMetadataDurationMS](self, "initializeMetadataDurationMS")}];
  [v3 setObject:v8 forKeyedSubscript:@"initializeMetadataDurationMS"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeZoneDurationMS](self, "initializeZoneDurationMS")}];
  [v3 setObject:v9 forKeyedSubscript:@"initializeZoneDurationMS"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent scheduledDurationMS](self, "scheduledDurationMS")}];
  [v3 setObject:v10 forKeyedSubscript:@"scheduledDurationMS"];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent totalSetupDurationMS](self, "totalSetupDurationMS")}];
  [v3 setObject:v11 forKeyedSubscript:@"totalSetupDurationMS"];

  v12 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setupSessionIdentifier];

  if (v12)
  {
    v13 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setupSessionIdentifier];
    [v3 setObject:v13 forKeyedSubscript:@"setupSessionIdentifier"];

    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isSetupSession"];
  }

  v14 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self phaseErrorDomain];

  if (v14)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCoreDataCloudKitSetupActivityLogEvent phaseErrorCode](self, "phaseErrorCode")}];
    [v3 setObject:v15 forKeyedSubscript:@"phaseErrorCode"];

    v16 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self phaseErrorDomain];
    [v3 setObject:v16 forKeyedSubscript:@"phaseErrorDomain"];

    v17 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self errorPhaseName];
    [v3 setObject:v17 forKeyedSubscript:@"errorPhaseName"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)setErrorForPhase:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[HMDCoreDataCloudKitSetupActivityLogEvent setPhaseErrorCode:](self, "setPhaseErrorCode:", [v6 code]);
  v8 = [v6 domain];

  v9 = [v8 copy];
  [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setPhaseErrorDomain:v9];

  v10 = [v7 copy];
  [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setErrorPhaseName:v10];
}

- (void)setDurationForPhase:(id)a3 duration:(double)a4
{
  v9 = a3;
  if ([v9 isEqual:@"check-account"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__checkAccountDurationMS;
LABEL_15:
    v7 = v9;
LABEL_16:
    *(&self->super.super.isa + *v6) = vcvtpd_s64_f64(a4 * 1000.0);
    goto LABEL_17;
  }

  if ([v9 isEqual:@"check-user-identity"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__checkUserIdentityDurationMS;
    goto LABEL_15;
  }

  if ([v9 isEqual:@"initialize-asset-storage"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeAssetStorageDurationMS;
    goto LABEL_15;
  }

  if ([v9 isEqual:@"initialize-database-subscription"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeDatabaseSubscriptionDurationMS;
    goto LABEL_15;
  }

  if ([v9 isEqual:@"initialize-metadata"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeMetadataDurationMS;
    goto LABEL_15;
  }

  if ([v9 isEqual:@"initialize-zone"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeZoneDurationMS;
    goto LABEL_15;
  }

  if ([v9 isEqual:@"scheduled"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__scheduledDurationMS;
    goto LABEL_15;
  }

  v8 = [v9 isEqual:@"event"];
  v7 = v9;
  if (v8)
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__totalSetupDurationMS;
    goto LABEL_16;
  }

LABEL_17:
}

- (HMDCoreDataCloudKitSetupActivityLogEvent)initWithActivityIdentifier:(id)a3 setupSessionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDCoreDataCloudKitSetupActivityLogEvent;
  v9 = [(HMMLogEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityIdentifier, a3);
    objc_storeStrong(&v10->_setupSessionIdentifier, a4);
    v10->_checkAccountDurationMS = 0;
    v10->_checkUserIdentityDurationMS = 0;
    v10->_initializeAssetStorageDurationMS = 0;
    v10->_initializeDatabaseSubscriptionDurationMS = 0;
    v10->_initializeMetadataDurationMS = 0;
    v10->_initializeZoneDurationMS = 0;
    v10->_scheduledDurationMS = 0;
    v10->_totalSetupDurationMS = 0;
    phaseErrorDomain = v10->_phaseErrorDomain;
    v10->_phaseErrorDomain = 0;
  }

  return v10;
}

@end