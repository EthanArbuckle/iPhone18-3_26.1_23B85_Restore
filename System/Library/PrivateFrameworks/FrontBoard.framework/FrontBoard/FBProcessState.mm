@interface FBProcessState
- (BOOL)isEqual:(id)equal;
- (FBProcessState)init;
- (FBProcessState)initWithPid:(int)pid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setTaskState:(int64_t)state;
- (void)setVisibility:(int64_t)visibility;
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

- (FBProcessState)initWithPid:(int)pid
{
  result = [(FBProcessState *)self init];
  if (result)
  {
    result->_pid = pid;
    result->_visibility = 0;
    if (pid < 1)
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

- (void)setTaskState:(int64_t)state
{
  if (self->_taskState != state)
  {
    self->_taskState = state;
    self->_running = (state & 0xFFFFFFFFFFFFFFFELL) == 2;
  }
}

- (void)setVisibility:(int64_t)visibility
{
  if (self->_visibility != visibility)
  {
    self->_visibility = visibility;
    self->_foreground = (visibility & 0xFFFFFFFFFFFFFFFELL) == 2;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_pid == equalCopy->_pid && self->_taskState == equalCopy->_taskState && self->_visibility == equalCopy->_visibility && self->_debugging == equalCopy->_debugging;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FBProcessState alloc] initWithPid:[(FBProcessState *)self pid]];
  [(FBProcessState *)v4 setTaskState:[(FBProcessState *)self taskState]];
  [(FBProcessState *)v4 setVisibility:[(FBProcessState *)self visibility]];
  [(FBProcessState *)v4 setDebugging:[(FBProcessState *)self isDebugging]];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBProcessState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBProcessState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end