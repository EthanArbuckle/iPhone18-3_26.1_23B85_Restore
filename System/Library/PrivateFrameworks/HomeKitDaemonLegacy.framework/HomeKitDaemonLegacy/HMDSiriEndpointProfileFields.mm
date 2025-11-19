@interface HMDSiriEndpointProfileFields
- (HMDSiriEndpointProfileFields)initWithNeedsOnboardingField:(id)a3 supportsOnboardingField:(id)a4 siriEnableField:(id)a5 siriListeningField:(id)a6 siriTouchToUseField:(id)a7 siriLightOnUseField:(id)a8 siriSoundOnUseField:(id)a9;
- (id)attributeDescriptions;
- (id)serializeFields;
@end

@implementation HMDSiriEndpointProfileFields

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [(HMDSiriEndpointProfileFields *)self needsOnboardingField];
  v25 = [v3 initWithName:@"needsOnboarding" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMDSiriEndpointProfileFields *)self supportsOnboardingField];
  v23 = [v4 initWithName:@"supportsOnboarding" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMDSiriEndpointProfileFields *)self isSiriEnableField];
  v6 = [v5 initWithName:@"isSiriEnable" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDSiriEndpointProfileFields *)self isSiriListeningField];
  v9 = [v7 initWithName:@"isSiriListening" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDSiriEndpointProfileFields *)self siriTouchToUseField];
  v12 = [v10 initWithName:@"siriTouchToUse" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDSiriEndpointProfileFields *)self siriLightOnUseField];
  v15 = [v13 initWithName:@"siriLightOnUse" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v17 = [(HMDSiriEndpointProfileFields *)self siriSoundOnUseField];
  v18 = [v16 initWithName:@"siriSoundOnUse" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)serializeFields
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"needsOnboarding";
  v3 = [(HMDSiriEndpointProfileFields *)self needsOnboardingField];
  v14[0] = v3;
  v13[1] = @"supportsOnboarding";
  v4 = [(HMDSiriEndpointProfileFields *)self supportsOnboardingField];
  v14[1] = v4;
  v13[2] = @"isSiriEnable";
  v5 = [(HMDSiriEndpointProfileFields *)self isSiriEnableField];
  v14[2] = v5;
  v13[3] = @"isSiriListening";
  v6 = [(HMDSiriEndpointProfileFields *)self isSiriListeningField];
  v14[3] = v6;
  v13[4] = @"siriTouchToUse";
  v7 = [(HMDSiriEndpointProfileFields *)self siriTouchToUseField];
  v14[4] = v7;
  v13[5] = @"siriLightOnUse";
  v8 = [(HMDSiriEndpointProfileFields *)self siriLightOnUseField];
  v14[5] = v8;
  v13[6] = @"siriSoundOnUse";
  v9 = [(HMDSiriEndpointProfileFields *)self siriSoundOnUseField];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDSiriEndpointProfileFields)initWithNeedsOnboardingField:(id)a3 supportsOnboardingField:(id)a4 siriEnableField:(id)a5 siriListeningField:(id)a6 siriTouchToUseField:(id)a7 siriLightOnUseField:(id)a8 siriSoundOnUseField:(id)a9
{
  v16 = a3;
  obj = a4;
  v17 = a4;
  v30 = a5;
  v18 = a5;
  v31 = a6;
  v19 = a6;
  v32 = a7;
  v20 = a7;
  v33 = a8;
  v21 = a8;
  v22 = a9;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v20)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v21)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = v22;
  if (!v22)
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
    objc_storeStrong(&v24->_needsOnboardingField, a3);
    objc_storeStrong(&v25->_supportsOnboardingField, obj);
    objc_storeStrong(&v25->_isSiriEnableField, v30);
    objc_storeStrong(&v25->_isSiriListeningField, v31);
    objc_storeStrong(&v25->_siriTouchToUseField, v32);
    objc_storeStrong(&v25->_siriLightOnUseField, v33);
    objc_storeStrong(&v25->_siriSoundOnUseField, a9);
  }

  return v25;
}

@end