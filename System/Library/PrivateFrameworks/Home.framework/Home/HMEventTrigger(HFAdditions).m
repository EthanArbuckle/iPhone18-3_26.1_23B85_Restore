@interface HMEventTrigger(HFAdditions)
- (uint64_t)hf_affectsCharacteristics:()HFAdditions;
- (uint64_t)hf_requiresConfirmationToRun;
@end

@implementation HMEventTrigger(HFAdditions)

- (uint64_t)hf_requiresConfirmationToRun
{
  v2 = [a1 events];
  v3 = [v2 na_any:&__block_literal_global_359_0];

  v4 = [a1 actionSets];
  LODWORD(v2) = [v4 na_any:&__block_literal_global_361];

  return v3 & v2;
}

- (uint64_t)hf_affectsCharacteristics:()HFAdditions
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &off_28258C5B8;
  if (objc_msgSendSuper2(&v8, sel_hf_affectsCharacteristics_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [a1 hf_characteristicsInEvents];
    v5 = [v4 intersectsSet:v6];
  }

  return v5;
}

@end