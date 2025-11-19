@interface HMEventTrigger(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMEventTrigger(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v15.receiver = a1;
  v15.super_class = &off_28258C5B8;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v15, sel_hf_stateDumpBuilderWithContext_, v4);
  v6 = [a1 events];
  [v5 setObject:v6 forKeyedSubscript:@"events"];

  v7 = [v4 detailLevel];
  if (v7 == 2)
  {
    v8 = [a1 endEvents];
    [v5 appendObject:v8 withName:@"endEvents" options:1];

    v9 = [a1 predicate];
    [v5 setObject:v9 forKeyedSubscript:@"predicate"];

    v10 = [a1 hf_effectiveRecurrences];
    v11 = [v10 na_map:&__block_literal_global_375];
    v12 = [v11 componentsJoinedByString:{@", "}];
    [v5 setObject:v12 forKeyedSubscript:@"recurrences"];

    [v5 appendBool:objc_msgSend(a1 withName:"executeOnce") ifEqualTo:{@"executeOnce", 1}];
    if ([a1 triggerActivationState] != 4)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "triggerActivationState")}];
      [v5 setObject:v13 forKeyedSubscript:@"activationState"];
    }
  }

  return v5;
}

@end