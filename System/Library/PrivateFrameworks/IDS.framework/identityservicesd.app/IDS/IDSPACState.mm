@interface IDSPACState
- (IDSPACState)init;
- (id)description;
@end

@implementation IDSPACState

- (IDSPACState)init
{
  v7.receiver = self;
  v7.super_class = IDSPACState;
  v2 = [(IDSPACState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isAnySIMInserted = 0;
    v2->_isDualSIM = 0;
    v2->_simCount = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    simStates = v3->_simStates;
    v3->_simStates = v4;

    v3->_isAuthenticationInFlight = 0;
    *&v3->_isAnySIMPNRCapable = 0;
  }

  return v3;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isAnySIMInserted)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isAnySIMUsable)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_isDualSIM)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_isAnySIMPNRCapable)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_isAnySIMPNRReady)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_isAnyPNRInFlight)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_isAwaitingAuthentication)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isAuthenticationInFlight)
  {
    v2 = @"YES";
  }

  return [NSString stringWithFormat:@"isAnySIMInserted: %@, isAnySIMUsable: %@, isDualSIM: %@, simCount: %ld, isAnySIMPNRCapable: %@, isAnySIMPNRReady: %@, isAnyPNRInFlight: %@, isAwaitingAuthentication: %@, isAuthenticationInFlight: %@", v3, v4, v5, self->_simCount, v6, v7, v8, v9, v2];
}

@end