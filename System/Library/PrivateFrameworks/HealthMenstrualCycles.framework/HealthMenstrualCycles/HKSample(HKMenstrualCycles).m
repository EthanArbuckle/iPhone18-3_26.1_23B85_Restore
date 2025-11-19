@interface HKSample(HKMenstrualCycles)
+ (id)hkmc_defaultMetadata;
- (uint64_t)hkmc_isCycleFactorSample;
- (uint64_t)hkmc_isNotPresentSymptom;
- (uint64_t)hkmc_isSleepDependentSample;
- (uint64_t)hkmc_wasEnteredFromCycleTracking;
@end

@implementation HKSample(HKMenstrualCycles)

+ (id)hkmc_defaultMetadata
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE148];
  v4[0] = *MEMORY[0x277CCC548];
  v4[1] = v0;
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = MEMORY[0x277CBEC38];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (uint64_t)hkmc_wasEnteredFromCycleTracking
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCE148]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)hkmc_isNotPresentSymptom
{
  v2 = [a1 sampleType];
  v3 = [v2 code];

  if ((v3 - 157) <= 0xE)
  {
    if (((1 << (v3 + 99)) & 0x4F7F) == 0)
    {
      v4 = a1;
      goto LABEL_6;
    }

LABEL_5:
    v4 = a1;
LABEL_6:
    result = [v4 value];
    if (result == 1)
    {
      return result;
    }

    return 0;
  }

  if ((v3 - 229) < 7)
  {
    goto LABEL_5;
  }

  return 0;
}

- (uint64_t)hkmc_isCycleFactorSample
{
  v2 = [a1 sampleType];
  v3 = [v2 identifier];
  if ([v3 isEqualToString:*MEMORY[0x277CCB9F0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 sampleType];
    v6 = [v5 identifier];
    if ([v6 isEqualToString:*MEMORY[0x277CCBA68]])
    {
      v4 = 1;
    }

    else
    {
      v7 = [a1 sampleType];
      v8 = [v7 identifier];
      v4 = [v8 isEqualToString:*MEMORY[0x277CCB938]];
    }
  }

  return v4;
}

- (uint64_t)hkmc_isSleepDependentSample
{
  v1 = [a1 sampleType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCC938]];

  return v3;
}

@end