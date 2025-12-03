@interface HMOutgoingHomeInvitation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMOutgoingHomeInvitation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v6.receiver = self;
  v6.super_class = &off_282590110;
  v2 = objc_msgSendSuper2(&v6, sel_hf_stateDumpBuilderWithContext_);
  invitee = [self invitee];
  [v2 setObject:invitee forKeyedSubscript:@"invitee"];

  accessoryInvitations = [self accessoryInvitations];
  [v2 appendObject:accessoryInvitations withName:@"accessoryInvitations" options:1];

  return v2;
}

@end