@interface ICLiveLinkIdentity(BehaviorMusicSharePlayAdditions)
- (void)msp_mpcParticipant;
@end

@implementation ICLiveLinkIdentity(BehaviorMusicSharePlayAdditions)

- (void)msp_mpcParticipant
{
  v2 = [MPCSharedSessionParticipant alloc];
  if (v2)
  {
    v12.receiver = v2;
    v12.super_class = MPCSharedSessionParticipant;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    v4 = v3;
    if (v3)
    {
      v3[2] = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  externalIdentifier = [self externalIdentifier];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, externalIdentifier, 24);
  }

  identifier = [self identifier];
  uUIDString = [identifier UUIDString];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v8, uUIDString, 32);
  }

  serverID = [self serverID];
  if (v4)
  {
    v4[5] = serverID;
  }

  return v4;
}

@end