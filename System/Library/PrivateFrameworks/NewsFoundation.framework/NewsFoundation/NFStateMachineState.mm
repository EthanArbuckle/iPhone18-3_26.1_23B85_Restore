@interface NFStateMachineState
- (BOOL)canTry:(id)try withOwner:(id)owner;
- (BOOL)isEqual:(id)equal;
- (NFStateMachineState)initWithName:(id)name;
- (id)description;
- (id)didEnter:(id)enter withOwner:(id)owner;
- (id)didExit:(id)exit withOwner:(id)owner;
- (unint64_t)hash;
- (void)willEnter:(id)enter withOwner:(id)owner;
- (void)willExit:(id)exit withOwner:(id)owner;
@end

@implementation NFStateMachineState

- (unint64_t)hash
{
  name = [(NFStateMachineState *)self name];
  v3 = [name hash];

  return v3;
}

- (NFStateMachineState)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = NFStateMachineState;
  v6 = [(NFStateMachineState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
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
      name = [(NFStateMachineState *)self name];
      name2 = [(NFStateMachineState *)v5 name];

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
  name = [(NFStateMachineState *)self name];
  v5 = [v3 stringWithFormat:@"{%p name=%@}", self, name];

  return v5;
}

- (BOOL)canTry:(id)try withOwner:(id)owner
{
  tryCopy = try;
  ownerCopy = owner;
  canTryBlock = [(NFStateMachineState *)self canTryBlock];

  if (canTryBlock)
  {
    canTryBlock2 = [(NFStateMachineState *)self canTryBlock];
    v10 = (canTryBlock2)[2](canTryBlock2, tryCopy, ownerCopy);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)willExit:(id)exit withOwner:(id)owner
{
  exitCopy = exit;
  ownerCopy = owner;
  willExitBlock = [(NFStateMachineState *)self willExitBlock];

  if (willExitBlock)
  {
    willExitBlock2 = [(NFStateMachineState *)self willExitBlock];
    (willExitBlock2)[2](willExitBlock2, exitCopy, ownerCopy);
  }
}

- (void)willEnter:(id)enter withOwner:(id)owner
{
  enterCopy = enter;
  ownerCopy = owner;
  willEnterBlock = [(NFStateMachineState *)self willEnterBlock];

  if (willEnterBlock)
  {
    willEnterBlock2 = [(NFStateMachineState *)self willEnterBlock];
    (willEnterBlock2)[2](willEnterBlock2, enterCopy, ownerCopy);
  }
}

- (id)didExit:(id)exit withOwner:(id)owner
{
  exitCopy = exit;
  ownerCopy = owner;
  didExitBlock = [(NFStateMachineState *)self didExitBlock];

  if (didExitBlock)
  {
    didExitBlock2 = [(NFStateMachineState *)self didExitBlock];
    v10 = (didExitBlock2)[2](didExitBlock2, exitCopy, ownerCopy);
  }

  else
  {
    v10 = +[NFPromise asVoid];
  }

  return v10;
}

- (id)didEnter:(id)enter withOwner:(id)owner
{
  enterCopy = enter;
  ownerCopy = owner;
  didEnterBlock = [(NFStateMachineState *)self didEnterBlock];

  if (didEnterBlock)
  {
    didEnterBlock2 = [(NFStateMachineState *)self didEnterBlock];
    v10 = (didEnterBlock2)[2](didEnterBlock2, enterCopy, ownerCopy);
  }

  else
  {
    v10 = +[NFPromise asVoid];
  }

  return v10;
}

@end