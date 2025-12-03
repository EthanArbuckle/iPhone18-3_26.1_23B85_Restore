@interface NFStateMachineEvent
- (BOOL)isEqual:(id)equal;
- (NFStateMachineEvent)initWithName:(id)name transitionFromStates:(id)states toState:(id)state;
- (id)description;
- (id)fired:(id)fired withOwner:(id)owner;
- (unint64_t)hash;
@end

@implementation NFStateMachineEvent

- (NFStateMachineEvent)initWithName:(id)name transitionFromStates:(id)states toState:(id)state
{
  nameCopy = name;
  statesCopy = states;
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = NFStateMachineEvent;
  v12 = [(NFStateMachineEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_states, states);
    objc_storeStrong(&v13->_destinationState, state);
  }

  return v13;
}

- (unint64_t)hash
{
  name = [(NFStateMachineEvent *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(NFStateMachineEvent *)self name];
      name2 = [(NFStateMachineEvent *)v5 name];

      v8 = [name isEqualToString:name2];
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
  name = [(NFStateMachineEvent *)self name];
  states = [(NFStateMachineEvent *)self states];
  destinationState = [(NFStateMachineEvent *)self destinationState];
  v7 = [v3 stringWithFormat:@"{%p name=%@, from=%@, to=%@}", self, name, states, destinationState];

  return v7;
}

- (id)fired:(id)fired withOwner:(id)owner
{
  firedCopy = fired;
  ownerCopy = owner;
  fireBlock = [(NFStateMachineEvent *)self fireBlock];

  if (fireBlock)
  {
    fireBlock2 = [(NFStateMachineEvent *)self fireBlock];
    v10 = (fireBlock2)[2](fireBlock2, firedCopy, ownerCopy);
  }

  else
  {
    v10 = +[NFPromise asVoid];
  }

  return v10;
}

@end