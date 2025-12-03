@interface HMDSiriEndpointProfileFields
- (HMDSiriEndpointProfileFields)initWithNeedsOnboardingField:(id)field supportsOnboardingField:(id)onboardingField siriEnableField:(id)enableField siriListeningField:(id)listeningField siriTouchToUseField:(id)useField siriLightOnUseField:(id)onUseField siriSoundOnUseField:(id)soundOnUseField;
- (id)attributeDescriptions;
- (id)serializeFields;
@end

@implementation HMDSiriEndpointProfileFields

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  needsOnboardingField = [(HMDSiriEndpointProfileFields *)self needsOnboardingField];
  v25 = [v3 initWithName:@"needsOnboarding" value:needsOnboardingField];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  supportsOnboardingField = [(HMDSiriEndpointProfileFields *)self supportsOnboardingField];
  v23 = [v4 initWithName:@"supportsOnboarding" value:supportsOnboardingField];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  isSiriEnableField = [(HMDSiriEndpointProfileFields *)self isSiriEnableField];
  v6 = [v5 initWithName:@"isSiriEnable" value:isSiriEnableField];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  isSiriListeningField = [(HMDSiriEndpointProfileFields *)self isSiriListeningField];
  v9 = [v7 initWithName:@"isSiriListening" value:isSiriListeningField];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  siriTouchToUseField = [(HMDSiriEndpointProfileFields *)self siriTouchToUseField];
  v12 = [v10 initWithName:@"siriTouchToUse" value:siriTouchToUseField];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  siriLightOnUseField = [(HMDSiriEndpointProfileFields *)self siriLightOnUseField];
  v15 = [v13 initWithName:@"siriLightOnUse" value:siriLightOnUseField];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  siriSoundOnUseField = [(HMDSiriEndpointProfileFields *)self siriSoundOnUseField];
  v18 = [v16 initWithName:@"siriSoundOnUse" value:siriSoundOnUseField];
  v27[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)serializeFields
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"needsOnboarding";
  needsOnboardingField = [(HMDSiriEndpointProfileFields *)self needsOnboardingField];
  v14[0] = needsOnboardingField;
  v13[1] = @"supportsOnboarding";
  supportsOnboardingField = [(HMDSiriEndpointProfileFields *)self supportsOnboardingField];
  v14[1] = supportsOnboardingField;
  v13[2] = @"isSiriEnable";
  isSiriEnableField = [(HMDSiriEndpointProfileFields *)self isSiriEnableField];
  v14[2] = isSiriEnableField;
  v13[3] = @"isSiriListening";
  isSiriListeningField = [(HMDSiriEndpointProfileFields *)self isSiriListeningField];
  v14[3] = isSiriListeningField;
  v13[4] = @"siriTouchToUse";
  siriTouchToUseField = [(HMDSiriEndpointProfileFields *)self siriTouchToUseField];
  v14[4] = siriTouchToUseField;
  v13[5] = @"siriLightOnUse";
  siriLightOnUseField = [(HMDSiriEndpointProfileFields *)self siriLightOnUseField];
  v14[5] = siriLightOnUseField;
  v13[6] = @"siriSoundOnUse";
  siriSoundOnUseField = [(HMDSiriEndpointProfileFields *)self siriSoundOnUseField];
  v14[6] = siriSoundOnUseField;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDSiriEndpointProfileFields)initWithNeedsOnboardingField:(id)field supportsOnboardingField:(id)onboardingField siriEnableField:(id)enableField siriListeningField:(id)listeningField siriTouchToUseField:(id)useField siriLightOnUseField:(id)onUseField siriSoundOnUseField:(id)soundOnUseField
{
  fieldCopy = field;
  obj = onboardingField;
  onboardingFieldCopy = onboardingField;
  enableFieldCopy = enableField;
  enableFieldCopy2 = enableField;
  listeningFieldCopy = listeningField;
  listeningFieldCopy2 = listeningField;
  useFieldCopy = useField;
  useFieldCopy2 = useField;
  onUseFieldCopy = onUseField;
  onUseFieldCopy2 = onUseField;
  soundOnUseFieldCopy = soundOnUseField;
  if (!fieldCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!onboardingFieldCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!enableFieldCopy2)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!listeningFieldCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!useFieldCopy2)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!onUseFieldCopy2)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = soundOnUseFieldCopy;
  if (!soundOnUseFieldCopy)
  {
LABEL_17:
    v27 = _HMFPreconditionFailure();
    [(HMDHomeAssistantOperation *)v27 .cxx_destruct];
    return result;
  }

  v34.receiver = self;
  v34.super_class = HMDSiriEndpointProfileFields;
  v24 = [(HMDSiriEndpointProfileFields *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_needsOnboardingField, field);
    objc_storeStrong(&v25->_supportsOnboardingField, obj);
    objc_storeStrong(&v25->_isSiriEnableField, enableFieldCopy);
    objc_storeStrong(&v25->_isSiriListeningField, listeningFieldCopy);
    objc_storeStrong(&v25->_siriTouchToUseField, useFieldCopy);
    objc_storeStrong(&v25->_siriLightOnUseField, onUseFieldCopy);
    objc_storeStrong(&v25->_siriSoundOnUseField, soundOnUseField);
  }

  return v25;
}

@end