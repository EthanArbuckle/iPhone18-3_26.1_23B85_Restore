@interface LNConnectionOptions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newConnectionAction;
@end

@implementation LNConnectionOptions

- (id)newConnectionAction
{
  v2 = [LNConnectionAction alloc];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(LNConnectionAction *)v2 initWithIdentifier:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNConnectionOptions *)self authenticationPolicy];
      v8 = v7 == [(LNConnectionOptions *)v6 authenticationPolicy];
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
  v6 = [(LNConnectionOptions *)self authenticationPolicy];
  v7 = @"Force Unlock";
  if (!v6)
  {
    v7 = @"Default";
  }

  v8 = v7;
  v9 = [(LNConnectionOptions *)self initiatesAudioSession];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p, authenticationPolicy: %@, initiatesAudioSession: %@>", v5, self, v8, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAuthenticationPolicy:{-[LNConnectionOptions authenticationPolicy](self, "authenticationPolicy")}];
  return v4;
}

@end