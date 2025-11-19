@interface NFStateMachineState
- (BOOL)canTry:(id)a3 withOwner:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NFStateMachineState)initWithName:(id)a3;
- (id)description;
- (id)didEnter:(id)a3 withOwner:(id)a4;
- (id)didExit:(id)a3 withOwner:(id)a4;
- (unint64_t)hash;
- (void)willEnter:(id)a3 withOwner:(id)a4;
- (void)willExit:(id)a3 withOwner:(id)a4;
@end

@implementation NFStateMachineState

- (unint64_t)hash
{
  v2 = [(NFStateMachineState *)self name];
  v3 = [v2 hash];

  return v3;
}

- (NFStateMachineState)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NFStateMachineState;
  v6 = [(NFStateMachineState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
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
      v6 = [(NFStateMachineState *)self name];
      v7 = [(NFStateMachineState *)v5 name];

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
  v4 = [(NFStateMachineState *)self name];
  v5 = [v3 stringWithFormat:@"{%p name=%@}", self, v4];

  return v5;
}

- (BOOL)canTry:(id)a3 withOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NFStateMachineState *)self canTryBlock];

  if (v8)
  {
    v9 = [(NFStateMachineState *)self canTryBlock];
    v10 = (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)willExit:(id)a3 withOwner:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NFStateMachineState *)self willExitBlock];

  if (v7)
  {
    v8 = [(NFStateMachineState *)self willExitBlock];
    (v8)[2](v8, v9, v6);
  }
}

- (void)willEnter:(id)a3 withOwner:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NFStateMachineState *)self willEnterBlock];

  if (v7)
  {
    v8 = [(NFStateMachineState *)self willEnterBlock];
    (v8)[2](v8, v9, v6);
  }
}

- (id)didExit:(id)a3 withOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NFStateMachineState *)self didExitBlock];

  if (v8)
  {
    v9 = [(NFStateMachineState *)self didExitBlock];
    v10 = (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = +[NFPromise asVoid];
  }

  return v10;
}

- (id)didEnter:(id)a3 withOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NFStateMachineState *)self didEnterBlock];

  if (v8)
  {
    v9 = [(NFStateMachineState *)self didEnterBlock];
    v10 = (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = +[NFPromise asVoid];
  }

  return v10;
}

@end