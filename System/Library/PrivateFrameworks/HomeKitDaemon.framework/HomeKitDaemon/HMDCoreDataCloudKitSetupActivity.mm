@interface HMDCoreDataCloudKitSetupActivity
- (HMDCoreDataCloudKitSetupActivity)initWithDictionary:(id)dictionary;
- (id)description;
- (void)dealloc;
@end

@implementation HMDCoreDataCloudKitSetupActivity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  activityType = [(HMDCoreDataCloudKitSetupActivity *)self activityType];
  phase = [(HMDCoreDataCloudKitSetupActivity *)self phase];
  v6 = [v3 stringWithFormat:@"activityType: %@ phase: %@ succeeded: %{BOOL}d", activityType, phase, -[HMDCoreDataCloudKitSetupActivity succeeded](self, "succeeded")];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = HMDCoreDataCloudKitSetupActivity;
  [(HMDCoreDataCloudKitSetupActivity *)&v2 dealloc];
}

- (HMDCoreDataCloudKitSetupActivity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = dictionaryCopy;
    v27.receiver = self;
    v27.super_class = HMDCoreDataCloudKitSetupActivity;
    v6 = [(HMDCoreDataCloudKitSetupActivity *)&v27 init];
    if (v6)
    {
      v7 = [v5 hmf_stringForKey:@"activityType"];
      activityType = v6->_activityType;
      v6->_activityType = v7;

      v9 = [v5 hmf_numberForKey:@"eventType"];
      v6->_eventType = [v9 integerValue];

      v10 = [v5 hmf_UUIDForKey:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v10;

      v12 = [v5 hmf_UUIDForKey:@"storeIdentifier"];
      storeIdentifier = v6->_storeIdentifier;
      v6->_storeIdentifier = v12;

      v14 = [v5 hmf_UUIDForKey:@"parentActivityIdentifier"];
      parentActivityIdentifier = v6->_parentActivityIdentifier;
      v6->_parentActivityIdentifier = v14;

      v16 = [v5 hmf_dateForKey:@"startDate"];
      startDate = v6->_startDate;
      v6->_startDate = v16;

      v18 = [v5 hmf_dateForKey:@"endDate"];
      endDate = v6->_endDate;
      v6->_endDate = v18;

      v20 = [v5 hmf_stringForKey:@"phase"];
      phase = v6->_phase;
      v6->_phase = v20;

      v6->_succeeded = [v5 hmf_BOOLForKey:@"succeeded"];
      v22 = [v5 hmf_errorForKey:@"error"];
      error = v6->_error;
      v6->_error = v22;
    }

    return v6;
  }

  else
  {
    v25 = _HMFPreconditionFailure();
    [(HMDEventTriggerUserConfirmationSession *)v25 .cxx_destruct];
  }

  return result;
}

@end