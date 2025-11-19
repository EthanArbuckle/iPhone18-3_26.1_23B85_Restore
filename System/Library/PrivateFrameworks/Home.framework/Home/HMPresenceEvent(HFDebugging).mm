@interface HMPresenceEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMPresenceEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = a1;
  v6.super_class = &off_282586800;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "presenceEventType")}];
  [v2 setObject:v3 forKeyedSubscript:@"eventType"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "presenceUserType")}];
  [v2 setObject:v4 forKeyedSubscript:@"userType"];

  return v2;
}

@end