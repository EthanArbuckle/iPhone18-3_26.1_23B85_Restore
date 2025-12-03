@interface HMHome(AutomationBuilderMocking)
- (id)hdm_newEventTriggerBuilderWithName:()AutomationBuilderMocking events:;
- (void)hdm_addEventTriggerFromBuilder:()AutomationBuilderMocking completionHandler:;
@end

@implementation HMHome(AutomationBuilderMocking)

- (id)hdm_newEventTriggerBuilderWithName:()AutomationBuilderMocking events:
{
  v4 = [self newEventTriggerBuilderWithName:a3 events:a4 predicate:0];

  return v4;
}

- (void)hdm_addEventTriggerFromBuilder:()AutomationBuilderMocking completionHandler:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__HMHome_AutomationBuilderMocking__hdm_addEventTriggerFromBuilder_completionHandler___block_invoke;
  v8[3] = &unk_1E83EFC48;
  v9 = v6;
  v7 = v6;
  [self addEventTriggerFromBuilder:a3 completionHandler:v8];
}

@end