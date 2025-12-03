@interface HMIncomingHomeInvitation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMIncomingHomeInvitation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v12.receiver = self;
  v12.super_class = &off_28258FF08;
  v2 = objc_msgSendSuper2(&v12, sel_hf_stateDumpBuilderWithContext_);
  inviter = [self inviter];
  [v2 setObject:inviter forKeyedSubscript:@"inviter"];

  homeName = [self homeName];
  [v2 setObject:homeName forKeyedSubscript:@"homeName"];

  homeUUID = [self homeUUID];
  [v2 setObject:homeUUID forKeyedSubscript:@"homeUUID"];

  [self isInviteeRestrictedGuest];
  v6 = NSStringFromBOOL();
  [v2 setObject:v6 forKeyedSubscript:@"isInviteeRestrictedGuest"];

  if ([self isInviteeRestrictedGuest])
  {
    restrictedGuestSchedule = [self restrictedGuestSchedule];
    v8 = [restrictedGuestSchedule description];
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