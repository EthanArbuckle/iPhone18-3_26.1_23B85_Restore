@interface HMDCoreDataCloudKitSetupActivityLogEvent
- (HMDCoreDataCloudKitSetupActivityLogEvent)initWithActivityIdentifier:(id)identifier setupSessionIdentifier:(id)sessionIdentifier;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
- (void)setDurationForPhase:(id)phase duration:(double)duration;
- (void)setErrorForPhase:(id)phase error:(id)error;
@end

@implementation HMDCoreDataCloudKitSetupActivityLogEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  checkAccountDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self checkAccountDurationMS];
  checkUserIdentityDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self checkUserIdentityDurationMS];
  initializeAssetStorageDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeAssetStorageDurationMS];
  initializeDatabaseSubscriptionDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeDatabaseSubscriptionDurationMS];
  initializeMetadataDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeMetadataDurationMS];
  initializeZoneDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self initializeZoneDurationMS];
  scheduledDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self scheduledDurationMS];
  totalSetupDurationMS = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self totalSetupDurationMS];
  errorPhaseName = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self errorPhaseName];
  v13 = [v3 stringWithFormat:@"HMDCoreDataCloudKitSetupActivityLogEvent:\ncheck account: %ld\ncheck account identity: %ld\ninitialize asset storage: %ld\ninitialize database subscription: %ld\ninitialize metadata: %ld\ninitialize zone: %ld\nscheduled: %ld\ntotal: %ld, error phase: %@", checkAccountDurationMS, checkUserIdentityDurationMS, initializeAssetStorageDurationMS, initializeDatabaseSubscriptionDurationMS, initializeMetadataDurationMS, initializeZoneDurationMS, scheduledDurationMS, totalSetupDurationMS, errorPhaseName];

  return v13;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent checkAccountDurationMS](self, "checkAccountDurationMS")}];
  [dictionary setObject:v4 forKeyedSubscript:@"checkAccountDurationMS"];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent checkUserIdentityDurationMS](self, "checkUserIdentityDurationMS")}];
  [dictionary setObject:v5 forKeyedSubscript:@"checkUserIdentityDurationMS"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeAssetStorageDurationMS](self, "initializeAssetStorageDurationMS")}];
  [dictionary setObject:v6 forKeyedSubscript:@"initializeAssetStorageDurationMS"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeDatabaseSubscriptionDurationMS](self, "initializeDatabaseSubscriptionDurationMS")}];
  [dictionary setObject:v7 forKeyedSubscript:@"initializeDatabaseSubscriptionDurationMS"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeMetadataDurationMS](self, "initializeMetadataDurationMS")}];
  [dictionary setObject:v8 forKeyedSubscript:@"initializeMetadataDurationMS"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent initializeZoneDurationMS](self, "initializeZoneDurationMS")}];
  [dictionary setObject:v9 forKeyedSubscript:@"initializeZoneDurationMS"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent scheduledDurationMS](self, "scheduledDurationMS")}];
  [dictionary setObject:v10 forKeyedSubscript:@"scheduledDurationMS"];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDCoreDataCloudKitSetupActivityLogEvent totalSetupDurationMS](self, "totalSetupDurationMS")}];
  [dictionary setObject:v11 forKeyedSubscript:@"totalSetupDurationMS"];

  setupSessionIdentifier = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setupSessionIdentifier];

  if (setupSessionIdentifier)
  {
    setupSessionIdentifier2 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setupSessionIdentifier];
    [dictionary setObject:setupSessionIdentifier2 forKeyedSubscript:@"setupSessionIdentifier"];

    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isSetupSession"];
  }

  phaseErrorDomain = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self phaseErrorDomain];

  if (phaseErrorDomain)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCoreDataCloudKitSetupActivityLogEvent phaseErrorCode](self, "phaseErrorCode")}];
    [dictionary setObject:v15 forKeyedSubscript:@"phaseErrorCode"];

    phaseErrorDomain2 = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self phaseErrorDomain];
    [dictionary setObject:phaseErrorDomain2 forKeyedSubscript:@"phaseErrorDomain"];

    errorPhaseName = [(HMDCoreDataCloudKitSetupActivityLogEvent *)self errorPhaseName];
    [dictionary setObject:errorPhaseName forKeyedSubscript:@"errorPhaseName"];
  }

  v18 = [dictionary copy];

  return v18;
}

- (void)setErrorForPhase:(id)phase error:(id)error
{
  errorCopy = error;
  phaseCopy = phase;
  -[HMDCoreDataCloudKitSetupActivityLogEvent setPhaseErrorCode:](self, "setPhaseErrorCode:", [errorCopy code]);
  domain = [errorCopy domain];

  v9 = [domain copy];
  [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setPhaseErrorDomain:v9];

  v10 = [phaseCopy copy];
  [(HMDCoreDataCloudKitSetupActivityLogEvent *)self setErrorPhaseName:v10];
}

- (void)setDurationForPhase:(id)phase duration:(double)duration
{
  phaseCopy = phase;
  if ([phaseCopy isEqual:@"check-account"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__checkAccountDurationMS;
LABEL_15:
    v7 = phaseCopy;
LABEL_16:
    *(&self->super.super.isa + *v6) = vcvtpd_s64_f64(duration * 1000.0);
    goto LABEL_17;
  }

  if ([phaseCopy isEqual:@"check-user-identity"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__checkUserIdentityDurationMS;
    goto LABEL_15;
  }

  if ([phaseCopy isEqual:@"initialize-asset-storage"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeAssetStorageDurationMS;
    goto LABEL_15;
  }

  if ([phaseCopy isEqual:@"initialize-database-subscription"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeDatabaseSubscriptionDurationMS;
    goto LABEL_15;
  }

  if ([phaseCopy isEqual:@"initialize-metadata"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeMetadataDurationMS;
    goto LABEL_15;
  }

  if ([phaseCopy isEqual:@"initialize-zone"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__initializeZoneDurationMS;
    goto LABEL_15;
  }

  if ([phaseCopy isEqual:@"scheduled"])
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__scheduledDurationMS;
    goto LABEL_15;
  }

  v8 = [phaseCopy isEqual:@"event"];
  v7 = phaseCopy;
  if (v8)
  {
    v6 = &OBJC_IVAR___HMDCoreDataCloudKitSetupActivityLogEvent__totalSetupDurationMS;
    goto LABEL_16;
  }

LABEL_17:
}

- (HMDCoreDataCloudKitSetupActivityLogEvent)initWithActivityIdentifier:(id)identifier setupSessionIdentifier:(id)sessionIdentifier
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  v13.receiver = self;
  v13.super_class = HMDCoreDataCloudKitSetupActivityLogEvent;
  v9 = [(HMMLogEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityIdentifier, identifier);
    objc_storeStrong(&v10->_setupSessionIdentifier, sessionIdentifier);
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