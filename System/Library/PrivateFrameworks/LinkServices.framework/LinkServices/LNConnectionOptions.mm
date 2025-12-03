@interface LNConnectionOptions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newConnectionAction;
@end

@implementation LNConnectionOptions

- (id)newConnectionAction
{
  v2 = [LNConnectionAction alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(LNConnectionAction *)v2 initWithIdentifier:uUID];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      authenticationPolicy = [(LNConnectionOptions *)self authenticationPolicy];
      v8 = authenticationPolicy == [(LNConnectionOptions *)v6 authenticationPolicy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  authenticationPolicy = [(LNConnectionOptions *)self authenticationPolicy];
  v7 = @"Force Unlock";
  if (!authenticationPolicy)
  {
    v7 = @"Default";
  }

  v8 = v7;
  initiatesAudioSession = [(LNConnectionOptions *)self initiatesAudioSession];
  v10 = @"NO";
  if (initiatesAudioSession)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p, authenticationPolicy: %@, initiatesAudioSession: %@>", v5, self, v8, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAuthenticationPolicy:{-[LNConnectionOptions authenticationPolicy](self, "authenticationPolicy")}];
  return v4;
}

@end