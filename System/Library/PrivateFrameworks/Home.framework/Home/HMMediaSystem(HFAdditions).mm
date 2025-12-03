@interface HMMediaSystem(HFAdditions)
- (id)hf_fakeDebugSymptoms;
- (uint64_t)hf_fake8021xNetworkSymptom;
- (uint64_t)hf_fakeStereoPairGeneralSymptom;
- (uint64_t)hf_fakeStereoPairNotFoundSymptom;
- (uint64_t)hf_fakeStereoPairVersionMismatchSymptom;
@end

@implementation HMMediaSystem(HFAdditions)

- (uint64_t)hf_fakeStereoPairNotFoundSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeStereoPairNotFoundSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeStereoPairGeneralSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeStereoPairGeneralSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeStereoPairVersionMismatchSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeStereoPairVersionMismatchSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fake8021xNetworkSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fake8021xNetworkSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)hf_fakeDebugSymptoms
{
  v2 = objc_opt_new();
  if ([self hf_fakeStereoPairVersionMismatchSymptom])
  {
    v3 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:8];
    [v2 addObject:v3];
  }

  if ([self hf_fakeStereoPairGeneralSymptom])
  {
    v4 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:10];
    [v2 addObject:v4];
  }

  if ([self hf_fakeStereoPairNotFoundSymptom])
  {
    v5 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:9];
    [v2 addObject:v5];
  }

  if ([self hf_fake8021xNetworkSymptom])
  {
    v6 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:14];
    [v2 addObject:v6];
  }

  accessories = [self accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMMediaSystem_HFAdditions__hf_fakeDebugSymptoms__block_invoke;
  v10[3] = &unk_277DF5200;
  v8 = v2;
  v11 = v8;
  [accessories na_each:v10];

  return v8;
}

@end