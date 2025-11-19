@interface HMHomeInvitation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMHomeInvitation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 identifier];
  [v4 appendObject:v5 withName:@"UUID" options:2];

  v6 = NSStringFromHMHomeInvitationState([a1 invitationState]);
  [v4 setObject:v6 forKeyedSubscript:@"state"];

  return v4;
}

@end