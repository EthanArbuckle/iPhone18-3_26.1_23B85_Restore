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
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeStereoPairNotFoundSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeStereoPairGeneralSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeStereoPairGeneralSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeStereoPairVersionMismatchSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeStereoPairVersionMismatchSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fake8021xNetworkSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fake8021xNetworkSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)hf_fakeDebugSymptoms
{
  v2 = objc_opt_new();
  if ([a1 hf_fakeStereoPairVersionMismatchSymptom])
  {
    v3 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:8];
    [v2 addObject:v3];
  }

  if ([a1 hf_fakeStereoPairGeneralSymptom])
  {
    v4 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:10];
    [v2 addObject:v4];
  }

  if ([a1 hf_fakeStereoPairNotFoundSymptom])
  {
    v5 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:9];
    [v2 addObject:v5];
  }

  if ([a1 hf_fake8021xNetworkSymptom])
  {
    v6 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:14];
    [v2 addObject:v6];
  }

  v7 = [a1 accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMMediaSystem_HFAdditions__hf_fakeDebugSymptoms__block_invoke;
  v10[3] = &unk_277DF5200;
  v8 = v2;
  v11 = v8;
  [v7 na_each:v10];

  return v8;
}

@end