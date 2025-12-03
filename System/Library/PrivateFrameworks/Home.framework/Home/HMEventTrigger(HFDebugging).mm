@interface HMEventTrigger(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMEventTrigger(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v15.receiver = self;
  v15.super_class = &off_28258C5B8;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v15, sel_hf_stateDumpBuilderWithContext_, v4);
  events = [self events];
  [v5 setObject:events forKeyedSubscript:@"events"];

  detailLevel = [v4 detailLevel];
  if (detailLevel == 2)
  {
    endEvents = [self endEvents];
    [v5 appendObject:endEvents withName:@"endEvents" options:1];

    predicate = [self predicate];
    [v5 setObject:predicate forKeyedSubscript:@"predicate"];

    hf_effectiveRecurrences = [self hf_effectiveRecurrences];
    v11 = [hf_effectiveRecurrences na_map:&__block_literal_global_375];
    v12 = [v11 componentsJoinedByString:{@", "}];
    [v5 setObject:v12 forKeyedSubscript:@"recurrences"];

    [v5 appendBool:objc_msgSend(self withName:"executeOnce") ifEqualTo:{@"executeOnce", 1}];
    if ([self triggerActivationState] != 4)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "triggerActivationState")}];
      [v5 setObject:v13 forKeyedSubscript:@"activationState"];
    }
  }

  return v5;
}

@end