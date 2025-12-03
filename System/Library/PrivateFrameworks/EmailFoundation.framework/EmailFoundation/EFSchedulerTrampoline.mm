@interface EFSchedulerTrampoline
+ (id)trampolineWithScheduler:(id)scheduler object:(id)object;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)_initWithScheduler:(id)scheduler object:(id)object;
- (id)debugDescription;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation EFSchedulerTrampoline

+ (id)trampolineWithScheduler:(id)scheduler object:(id)object
{
  schedulerCopy = scheduler;
  objectCopy = object;
  if (trampolineWithScheduler_object__onceToken != -1)
  {
    +[EFSchedulerTrampoline trampolineWithScheduler:object:];
  }

  os_unfair_lock_lock(&trampolineWithScheduler_object__sTrampolineLock);
  weakToWeakObjectsMapTable = [trampolineWithScheduler_object__schedulerTrampolines objectForKey:schedulerCopy];
  if (!weakToWeakObjectsMapTable)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    [trampolineWithScheduler_object__schedulerTrampolines setObject:? forKey:?];
  }

  v9 = [weakToWeakObjectsMapTable objectForKey:objectCopy];
  if (!v9)
  {
    v9 = [[self alloc] _initWithScheduler:schedulerCopy object:objectCopy];
    [weakToWeakObjectsMapTable setObject:v9 forKey:objectCopy];
  }

  os_unfair_lock_unlock(&trampolineWithScheduler_object__sTrampolineLock);

  return v9;
}

void __56__EFSchedulerTrampoline_trampolineWithScheduler_object___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v1 = trampolineWithScheduler_object__schedulerTrampolines;
  trampolineWithScheduler_object__schedulerTrampolines = v0;
}

- (id)_initWithScheduler:(id)scheduler object:(id)object
{
  schedulerCopy = scheduler;
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSchedulerTrampoline.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v14.receiver = self;
  v14.super_class = EFSchedulerTrampoline;
  v10 = [(EFSchedulerTrampoline *)&v14 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_scheduler, scheduler);
    objc_storeStrong(p_isa + 2, object);
  }

  return p_isa;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  scheduler = self->_scheduler;
  v6 = [self->_object debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p> scheduler=%@ object=%@", v4, self, scheduler, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [self->_object description];
  v6 = [v3 stringWithFormat:@"<%@: %p> object=%@", v4, self, v5];

  return v6;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7.receiver = self;
  v7.super_class = EFSchedulerTrampoline;
  if ([(EFSchedulerTrampoline *)&v7 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self->_object conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = EFSchedulerTrampoline;
  if ([(EFSchedulerTrampoline *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    object = self->_object;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = EFSchedulerTrampoline;
  v5 = [(EFSchedulerTrampoline *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [self->_object methodSignatureForSelector:selector];
  }

  v8 = v7;

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy setTarget:self->_object];
  [invocationCopy retainArguments];
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EFSchedulerTrampoline_forwardInvocation___block_invoke;
  v7[3] = &unk_1E8248580;
  v6 = invocationCopy;
  v8 = v6;
  [(EFScheduler *)scheduler performBlock:v7];
}

@end