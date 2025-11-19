@interface FBProcessState
- (BOOL)isEqual:(id)a3;
- (FBProcessState)init;
- (FBProcessState)initWithPid:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setTaskState:(int64_t)a3;
- (void)setVisibility:(int64_t)a3;
@end

@implementation FBProcessState

- (FBProcessState)init
{
  v3.receiver = self;
  v3.super_class = FBProcessState;
  result = [(FBProcessState *)&v3 init];
  if (result)
  {
    result->_pid = -1;
  }

  return result;
}

- (FBProcessState)initWithPid:(int)a3
{
  result = [(FBProcessState *)self init];
  if (result)
  {
    result->_pid = a3;
    result->_visibility = 0;
    if (a3 < 1)
    {
      v5 = 0;
    }

    else
    {
      result->_running = 1;
      v5 = 2;
    }

    result->_taskState = v5;
  }

  return result;
}

- (void)setTaskState:(int64_t)a3
{
  if (self->_taskState != a3)
  {
    self->_taskState = a3;
    self->_running = (a3 & 0xFFFFFFFFFFFFFFFELL) == 2;
  }
}

- (void)setVisibility:(int64_t)a3
{
  if (self->_visibility != a3)
  {
    self->_visibility = a3;
    self->_foreground = (a3 & 0xFFFFFFFFFFFFFFFELL) == 2;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_pid == v4->_pid && self->_taskState == v4->_taskState && self->_visibility == v4->_visibility && self->_debugging == v4->_debugging;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FBProcessState alloc] initWithPid:[(FBProcessState *)self pid]];
  [(FBProcessState *)v4 setTaskState:[(FBProcessState *)self taskState]];
  [(FBProcessState *)v4 setVisibility:[(FBProcessState *)self visibility]];
  [(FBProcessState *)v4 setDebugging:[(FBProcessState *)self isDebugging]];
  return v4;
}

- (id)succinctDescription
{
  v2 = [(FBProcessState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInt:self->_pid withName:@"pid"];
  taskState = self->_taskState;
  if (taskState > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E783D170[taskState];
  }

  v7 = [v3 appendObject:v6 withName:@"taskState"];
  visibility = self->_visibility;
  if (visibility > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E783D190[visibility];
  }

  v10 = [v3 appendObject:v9 withName:@"visibility"];
  v11 = [v3 appendBool:self->_debugging withName:@"debugging" ifEqualTo:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBProcessState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end