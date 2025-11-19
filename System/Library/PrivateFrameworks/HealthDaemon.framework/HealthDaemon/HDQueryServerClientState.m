@interface HDQueryServerClientState
- (HDQueryServerClientState)init;
- (HDQueryServerClientState)initWithApplicationState:(unsigned int)a3;
- (id)description;
@end

@implementation HDQueryServerClientState

- (HDQueryServerClientState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDQueryServerClientState)initWithApplicationState:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = HDQueryServerClientState;
  result = [(HDQueryServerClientState *)&v5 init];
  if (result)
  {
    result->_applicationState = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HDBKSApplicationStateString(self->_applicationState);
  if ([(HDQueryServerClientState *)self isForeground])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(HDQueryServerClientState *)self isSuspended])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"<%@: foreground=%@, suspended=%@>", v4, v5, v6];

  return v7;
}

@end