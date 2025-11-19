@interface CDPFollowUpContext(CDPRepairIdentificationHelper)
- (uint64_t)isDefaultRepairOrSOSCompatibilityFollowUp;
@end

@implementation CDPFollowUpContext(CDPRepairIdentificationHelper)

- (uint64_t)isDefaultRepairOrSOSCompatibilityFollowUp
{
  v2 = [a1 followUpType];
  if ([v2 isEqualToString:*MEMORY[0x277CFD470]] && !objc_msgSend(a1, "repairType"))
  {
    v4 = 1;
  }

  else
  {
    v3 = [a1 followUpType];
    v4 = [v3 isEqualToString:*MEMORY[0x277CFD468]];
  }

  return v4;
}

@end