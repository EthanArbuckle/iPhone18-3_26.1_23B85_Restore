@interface FBMainDisplayLayoutPublisher
+ (id)sharedInstance;
- (FBMainDisplayLayoutPublisher)init;
- (id)_initWithPublisher:(id)publisher;
- (void)_updateWithBacklightState:(int64_t)state;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)backlightHost:(id)host willTransitionToState:(int64_t)state forEvent:(id)event;
- (void)dealloc;
- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration;
- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition;
@end

@implementation FBMainDisplayLayoutPublisher

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FBMainDisplayLayoutPublisher sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

- (FBMainDisplayLayoutPublisher)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBMainDisplayLayoutPublisher"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBMainDisplayLayoutPublisher.m";
    v17 = 1024;
    v18 = 43;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithPublisher:(id)publisher
{
  publisherCopy = publisher;
  if (!publisherCopy)
  {
    [(FBMainDisplayLayoutPublisher *)a2 _initWithPublisher:?];
  }

  v7 = publisherCopy;
  v21.receiver = self;
  v21.super_class = FBMainDisplayLayoutPublisher;
  v8 = [(FBMainDisplayLayoutPublisher *)&v21 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_publisher, publisher);
    v10 = [p_isa[1] transitionAssertionWithReason:0];
    v11 = +[FBDisplayManager sharedInstance];
    [v11 addObserver:p_isa];
    v12 = p_isa[1];
    mainConfiguration = [v11 mainConfiguration];
    [v12 setDisplayConfiguration:mainConfiguration];

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v14 = getBLSBacklightClass_softClass;
    v30 = getBLSBacklightClass_softClass;
    if (!getBLSBacklightClass_softClass)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getBLSBacklightClass_block_invoke;
      v25 = &unk_1E783B178;
      v26 = &v27;
      __getBLSBacklightClass_block_invoke(&v22);
      v14 = v28[3];
    }

    v15 = v14;
    _Block_object_dispose(&v27, 8);
    sharedBacklight = [v14 sharedBacklight];
    if (sharedBacklight)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v17 = getBLSRuntimeClass_softClass;
      v30 = getBLSRuntimeClass_softClass;
      if (!getBLSRuntimeClass_softClass)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __getBLSRuntimeClass_block_invoke;
        v25 = &unk_1E783B178;
        v26 = &v27;
        __getBLSRuntimeClass_block_invoke(&v22);
        v17 = v28[3];
      }

      v18 = v17;
      _Block_object_dispose(&v27, 8);
      if ([v17 isHostProcess])
      {
        [sharedBacklight addObserver:p_isa];
        [p_isa _updateWithBacklightState:{objc_msgSend(sharedBacklight, "backlightState")}];
LABEL_15:
        [p_isa[1] addObserver:p_isa];
        [p_isa[1] activate];
        [v10 invalidate];

        goto LABEL_16;
      }

      v19 = FBLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [FBMainDisplayLayoutPublisher _initWithPublisher:v19];
      }
    }

    else
    {
      v19 = FBLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [FBMainDisplayLayoutPublisher _initWithPublisher:v19];
      }
    }

    [p_isa[1] setBacklightLevel:100];
    goto LABEL_15;
  }

LABEL_16:

  return p_isa;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBMainDisplayLayoutPublisher is a singleton"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBMainDisplayLayoutPublisher.m";
    v16 = 1024;
    v17 = 85;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __46__FBMainDisplayLayoutPublisher_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x1E698F508] bootstrapConfiguration];
  v1 = [MEMORY[0x1E698E6D0] environmentAliases];
  v2 = [MEMORY[0x1E698F498] defaultShellMachName];
  v3 = [v1 resolveMachService:v2];
  v4 = [v0 domainForMachName:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E699FAE0] serviceIdentifier];
    v6 = [v4 serviceForIdentifier:v5];

    if (v6)
    {
      v7 = objc_opt_new();
      v8 = [v4 identifier];
      [v7 setDomainIdentifier:v8];

      v9 = [MEMORY[0x1E699FAE0] mainDisplayInstanceIdentifier];
      [v7 setInstanceIdentifier:v9];

      v10 = [FBMainDisplayLayoutPublisher alloc];
      v11 = [MEMORY[0x1E699FB00] publisherWithConfiguration:v7];
      v12 = [(FBMainDisplayLayoutPublisher *)v10 _initWithPublisher:v11];
      v13 = sharedInstance___sharedInstance;
      sharedInstance___sharedInstance = v12;
    }

    else
    {
      v7 = FBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "No layout monitor service specified. This process will not publish layout for the main display.", v14, 2u);
      }
    }
  }
}

- (void)_updateWithBacklightState:(int64_t)state
{
  if (state <= 3)
  {
    [(FBSDisplayLayoutPublisher *)self->_publisher setBacklightLevel:qword_1A8A71E48[state]];
  }

  publisher = self->_publisher;

  [(FBSDisplayLayoutPublisher *)publisher setBacklightState:state];
}

- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identityCopy = identity;
  mainIdentity = [monitor mainIdentity];

  if (mainIdentity == identityCopy)
  {
    [(FBSDisplayLayoutPublisher *)self->_publisher setDisplayConfiguration:configurationCopy];
  }
}

- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"FBDisplayLayoutDidUpdateNotification" object:&unk_1F1C10930];
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents
{
  v9 = self->_backlightTransition;
  backlightTransition = self->_backlightTransition;
  self->_backlightTransition = 0;

  if (!v9)
  {
    v9 = [(FBSDisplayLayoutPublisher *)self->_publisher transitionAssertionWithReason:@"BLSBacklight"];
  }

  [(FBMainDisplayLayoutPublisher *)self _updateWithBacklightState:state];
  [(BSInvalidatable *)v9 invalidate];
}

- (void)backlightHost:(id)host willTransitionToState:(int64_t)state forEvent:(id)event
{
  publisher = self->_publisher;
  v10 = self->_backlightTransition;
  v8 = [(FBSDisplayLayoutPublisher *)publisher transitionAssertionWithReason:@"BLSBacklight"];
  backlightTransition = self->_backlightTransition;
  self->_backlightTransition = v8;

  [(FBMainDisplayLayoutPublisher *)self _updateWithBacklightState:state];
  [(BSInvalidatable *)v10 invalidate];
}

- (void)_initWithPublisher:(const char *)a1 .cold.3(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"publisher"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBMainDisplayLayoutPublisher.m";
    v17 = 1024;
    v18 = 48;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end