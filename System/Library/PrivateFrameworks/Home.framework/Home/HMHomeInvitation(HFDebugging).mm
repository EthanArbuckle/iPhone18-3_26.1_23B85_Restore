@interface HMHomeInvitation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMHomeInvitation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  identifier = [self identifier];
  [v4 appendObject:identifier withName:@"UUID" options:2];

  v6 = NSStringFromHMHomeInvitationState([self invitationState]);
  [v4 setObject:v6 forKeyedSubscript:@"state"];

  return v4;
}

@end