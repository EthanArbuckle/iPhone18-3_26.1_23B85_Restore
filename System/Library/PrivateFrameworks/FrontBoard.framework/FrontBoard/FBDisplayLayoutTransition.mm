@interface FBDisplayLayoutTransition
+ (id)layoutForDisplayType:(int64_t)a3;
+ (void)flushLayoutForDisplayType:(int64_t)a3;
- (FBDisplayLayoutTransition)initWithDisplayType:(int64_t)a3 name:(id)a4;
- (id)description;
- (void)beginTransition;
- (void)dealloc;
- (void)endTransition;
@end

@implementation FBDisplayLayoutTransition

+ (id)layoutForDisplayType:(int64_t)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[FBMainDisplayLayoutPublisher sharedInstance];
    v3 = [v4 currentLayout];
  }

  return v3;
}

+ (void)flushLayoutForDisplayType:(int64_t)a3
{
  if (!a3)
  {
    v4 = +[FBMainDisplayLayoutPublisher sharedInstance];
    [v4 flush];
  }
}

- (FBDisplayLayoutTransition)initWithDisplayType:(int64_t)a3 name:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = FBDisplayLayoutTransition;
  v7 = [(FBDisplayLayoutTransition *)&v14 init];
  if (v7)
  {
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = +[FBMainDisplayLayoutPublisher sharedInstance];
    }

    publisher = v7->_publisher;
    v7->_publisher = v8;

    v10 = [v6 copy];
    name = v7->_name;
    v7->_name = v10;

    transitionReason = v7->_transitionReason;
    v7->_transitionReason = 0;
    v7->_displayType = a3;

    *&v7->_interfaceOrientation = xmmword_1A8A71F30;
  }

  return v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"object deallocated while in a transition"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBDisplayLayoutTransition.m";
    v16 = 1024;
    v17 = 61;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name" skipIfNil:1];
  v5 = [v3 appendObject:self->_transitionReason withName:@"transitionReason" skipIfNil:1];
  v6 = [v3 appendBool:-[FBDisplayLayoutTransition isTransitioning](self withName:{"isTransitioning"), @"transitioning"}];
  if (self->_interfaceOrientation)
  {
    v7 = BSInterfaceOrientationDescription();
    v8 = [v3 appendObject:v7 withName:@"interfaceOrientation"];
  }

  backlightLevel = self->_backlightLevel;
  if (backlightLevel != -1)
  {
    v10 = [v3 appendInteger:backlightLevel withName:@"backlightLevel"];
  }

  v11 = [v3 build];

  return v11;
}

- (void)beginTransition
{
  publisher = self->_publisher;
  if (publisher && !self->_transition)
  {
    v4 = [(FBMainDisplayLayoutPublisher *)publisher transitionAssertionWithReason:self->_transitionReason];
    transition = self->_transition;
    self->_transition = v4;

    if (self->_interfaceOrientation)
    {
      [(FBMainDisplayLayoutPublisher *)self->_publisher setInterfaceOrientation:?];
    }

    if (self->_backlightLevel != -1)
    {
      v6 = self->_publisher;

      [(FBMainDisplayLayoutPublisher *)v6 setBacklightLevel:?];
    }
  }
}

- (void)endTransition
{
  publisher = self->_publisher;
  if (publisher && self->_transition)
  {
    if (self->_interfaceOrientation)
    {
      [(FBMainDisplayLayoutPublisher *)publisher setInterfaceOrientation:?];
    }

    if (self->_backlightLevel != -1)
    {
      [(FBMainDisplayLayoutPublisher *)self->_publisher setBacklightLevel:?];
    }

    [(BSInvalidatable *)self->_transition invalidate];
    transition = self->_transition;
    self->_transition = 0;
  }
}

@end