@interface MFMonitoredInvocation
+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)a3;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)a3 target:(id)a4 object1:(id)a5 object2:(id)a6 taskName:(id)a7 priority:(unint64_t)a8 canBeCancelled:(BOOL)a9;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation MFMonitoredInvocation

- (void)invoke
{
  v10[26] = *MEMORY[0x1E69E9840];
  if (self->_powerAssertionId)
  {
    v3 = +[MFPowerController sharedInstance];
    [v3 retainAssertionWithIdentifier:self->_powerAssertionId];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__MFMonitoredInvocation_invoke__block_invoke;
    v10[3] = &unk_1E7AA7B98;
    v10[4] = self;
    v5 = [v4 addObserverForName:@"MFPowerAssertionDidExpire" object:0 queue:0 usingBlock:v10];
  }

  else
  {
    v5 = 0;
  }

  [(MFActivityMonitor *)self->_monitor startActivity];
  if (![(MFActivityMonitor *)self->_monitor shouldCancel])
  {
    v9.receiver = self;
    v9.super_class = MFMonitoredInvocation;
    [(MFMonitoredInvocation *)&v9 invoke];
    _MFFlushCurrentInvocation();
  }

  [(MFActivityMonitor *)self->_monitor finishedActivity:self];
  if (self->_powerAssertionId)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:v5];

    v7 = +[MFPowerController sharedInstance];
    [v7 releaseAssertionWithIdentifier:self->_powerAssertionId];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_shouldLogInvocation)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v7 = self;
      v8 = 2112;
      v9 = self;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "deallocating %p %@", buf, 0x16u);
    }
  }

  v5.receiver = self;
  v5.super_class = MFMonitoredInvocation;
  [(MFMonitoredInvocation *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___MFMonitoredInvocation;
  v3 = objc_msgSendSuper2(&v7, sel_invocationWithMethodSignature_, a3);
  v4 = objc_alloc_init(MFActivityMonitor);
  v5 = v3[8];
  v3[8] = v4;

  return v3;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)a3 target:(id)a4 object1:(id)a5 object2:(id)a6 taskName:(id)a7 priority:(unint64_t)a8 canBeCancelled:(BOOL)a9
{
  v19 = a6;
  v15 = [a1 invocationWithSelector:a3 target:a4 object:a5 taskName:a7 priority:a8 canBeCancelled:a9];
  v16 = [v15 methodSignature];
  v17 = [v16 numberOfArguments];

  if (v17 >= 4)
  {
    [v15 setArgument:&v19 atIndex:3];
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EFPriorityDesignator *)self->_monitor priority];
  v7 = [(MFMonitoredInvocation *)self target];
  v8 = [v3 stringWithFormat:@"<%@: %p priority: %lu target: %@ selector: %s>", v5, self, v6, v7, sel_getName(-[MFMonitoredInvocation selector](self, "selector"))];

  return v8;
}

@end