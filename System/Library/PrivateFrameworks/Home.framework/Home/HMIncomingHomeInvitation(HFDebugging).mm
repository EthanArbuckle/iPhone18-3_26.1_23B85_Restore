@interface HMIncomingHomeInvitation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMIncomingHomeInvitation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v12.receiver = a1;
  v12.super_class = &off_28258FF08;
  v2 = objc_msgSendSuper2(&v12, sel_hf_stateDumpBuilderWithContext_);
  v3 = [a1 inviter];
  [v2 setObject:v3 forKeyedSubscript:@"inviter"];

  v4 = [a1 homeName];
  [v2 setObject:v4 forKeyedSubscript:@"homeName"];

  v5 = [a1 homeUUID];
  [v2 setObject:v5 forKeyedSubscript:@"homeUUID"];

  [a1 isInviteeRestrictedGuest];
  v6 = NSStringFromBOOL();
  [v2 setObject:v6 forKeyedSubscript:@"isInviteeRestrictedGuest"];

  if ([a1 isInviteeRestrictedGuest])
  {
    v7 = [a1 restrictedGuestSchedule];
    v8 = [v7 description];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"Always Allowed (aka nil)";
    }

    [v2 setObject:v10 forKeyedSubscript:@"restrictedGuestSchedule"];
  }

  return v2;
}

@end