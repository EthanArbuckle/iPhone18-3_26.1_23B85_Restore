@interface NFStateMachineEvent
- (BOOL)isEqual:(id)a3;
- (NFStateMachineEvent)initWithName:(id)a3 transitionFromStates:(id)a4 toState:(id)a5;
- (id)description;
- (id)fired:(id)a3 withOwner:(id)a4;
- (unint64_t)hash;
@end

@implementation NFStateMachineEvent

- (NFStateMachineEvent)initWithName:(id)a3 transitionFromStates:(id)a4 toState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NFStateMachineEvent;
  v12 = [(NFStateMachineEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_states, a4);
    objc_storeStrong(&v13->_destinationState, a5);
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(NFStateMachineEvent *)self name];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NFStateMachineEvent *)self name];
      v7 = [(NFStateMachineEvent *)v5 name];

      v8 = [v6 isEqualToString:v7];
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
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NFStateMachineEvent *)self name];
  v5 = [(NFStateMachineEvent *)self states];
  v6 = [(NFStateMachineEvent *)self destinationState];
  v7 = [v3 stringWithFormat:@"{%p name=%@, from=%@, to=%@}", self, v4, v5, v6];

  return v7;
}

- (id)fired:(id)a3 withOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NFStateMachineEvent *)self fireBlock];

  if (v8)
  {
    v9 = [(NFStateMachineEvent *)self fireBlock];
    v10 = (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = +[NFPromise asVoid];
  }

  return v10;
}

@end