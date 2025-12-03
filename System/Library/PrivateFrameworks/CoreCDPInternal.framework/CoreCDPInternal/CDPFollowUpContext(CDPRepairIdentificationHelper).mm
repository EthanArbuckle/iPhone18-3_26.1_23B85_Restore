@interface CDPFollowUpContext(CDPRepairIdentificationHelper)
- (uint64_t)isDefaultRepairOrSOSCompatibilityFollowUp;
@end

@implementation CDPFollowUpContext(CDPRepairIdentificationHelper)

- (uint64_t)isDefaultRepairOrSOSCompatibilityFollowUp
{
  followUpType = [self followUpType];
  if ([followUpType isEqualToString:*MEMORY[0x277CFD470]] && !objc_msgSend(self, "repairType"))
  {
    v4 = 1;
  }

  else
  {
    followUpType2 = [self followUpType];
    v4 = [followUpType2 isEqualToString:*MEMORY[0x277CFD468]];
  }

  return v4;
}

@end