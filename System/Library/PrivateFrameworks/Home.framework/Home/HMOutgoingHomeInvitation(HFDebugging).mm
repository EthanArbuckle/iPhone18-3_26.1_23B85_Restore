@interface HMOutgoingHomeInvitation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMOutgoingHomeInvitation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = a1;
  v6.super_class = &off_282590110;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  v3 = [a1 invitee];
  [v2 setObject:v3 forKeyedSubscript:@"invitee"];

  v4 = [a1 accessoryInvitations];
  [v2 appendObject:v4 withName:@"accessoryInvitations" options:1];

  return v2;
}

@end