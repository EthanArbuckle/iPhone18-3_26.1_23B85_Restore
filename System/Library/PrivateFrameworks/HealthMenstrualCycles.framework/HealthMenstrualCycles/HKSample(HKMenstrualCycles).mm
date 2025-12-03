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
  metadata = [self metadata];
  v2 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE148]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hkmc_isNotPresentSymptom
{
  sampleType = [self sampleType];
  code = [sampleType code];

  if ((code - 157) <= 0xE)
  {
    if (((1 << (code + 99)) & 0x4F7F) == 0)
    {
      selfCopy2 = self;
      goto LABEL_6;
    }

LABEL_5:
    selfCopy2 = self;
LABEL_6:
    result = [selfCopy2 value];
    if (result == 1)
    {
      return result;
    }

    return 0;
  }

  if ((code - 229) < 7)
  {
    goto LABEL_5;
  }

  return 0;
}

- (uint64_t)hkmc_isCycleFactorSample
{
  sampleType = [self sampleType];
  identifier = [sampleType identifier];
  if ([identifier isEqualToString:*MEMORY[0x277CCB9F0]])
  {
    v4 = 1;
  }

  else
  {
    sampleType2 = [self sampleType];
    identifier2 = [sampleType2 identifier];
    if ([identifier2 isEqualToString:*MEMORY[0x277CCBA68]])
    {
      v4 = 1;
    }

    else
    {
      sampleType3 = [self sampleType];
      identifier3 = [sampleType3 identifier];
      v4 = [identifier3 isEqualToString:*MEMORY[0x277CCB938]];
    }
  }

  return v4;
}

- (uint64_t)hkmc_isSleepDependentSample
{
  sampleType = [self sampleType];
  identifier = [sampleType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x277CCC938]];

  return v3;
}

@end