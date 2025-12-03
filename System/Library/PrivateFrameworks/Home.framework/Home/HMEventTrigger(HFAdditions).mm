@interface HMEventTrigger(HFAdditions)
- (uint64_t)hf_affectsCharacteristics:()HFAdditions;
- (uint64_t)hf_requiresConfirmationToRun;
@end

@implementation HMEventTrigger(HFAdditions)

- (uint64_t)hf_requiresConfirmationToRun
{
  events = [self events];
  v3 = [events na_any:&__block_literal_global_359_0];

  actionSets = [self actionSets];
  LODWORD(events) = [actionSets na_any:&__block_literal_global_361];

  return v3 & events;
}

- (uint64_t)hf_affectsCharacteristics:()HFAdditions
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = &off_28258C5B8;
  if (objc_msgSendSuper2(&v8, sel_hf_affectsCharacteristics_, v4))
  {
    v5 = 1;
  }

  else
  {
    hf_characteristicsInEvents = [self hf_characteristicsInEvents];
    v5 = [v4 intersectsSet:hf_characteristicsInEvents];
  }

  return v5;
}

@end