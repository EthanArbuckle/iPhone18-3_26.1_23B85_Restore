@interface EFSchedulerTrampoline
+ (id)trampolineWithScheduler:(id)a3 object:(id)a4;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)_initWithScheduler:(id)a3 object:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation EFSchedulerTrampoline

+ (id)trampolineWithScheduler:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (trampolineWithScheduler_object__onceToken != -1)
  {
    +[EFSchedulerTrampoline trampolineWithScheduler:object:];
  }

  os_unfair_lock_lock(&trampolineWithScheduler_object__sTrampolineLock);
  v8 = [trampolineWithScheduler_object__schedulerTrampolines objectForKey:v6];
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    [trampolineWithScheduler_object__schedulerTrampolines setObject:? forKey:?];
  }

  v9 = [v8 objectForKey:v7];
  if (!v9)
  {
    v9 = [[a1 alloc] _initWithScheduler:v6 object:v7];
    [v8 setObject:v9 forKey:v7];
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

- (id)_initWithScheduler:(id)a3 object:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EFSchedulerTrampoline.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v14.receiver = self;
  v14.super_class = EFSchedulerTrampoline;
  v10 = [(EFSchedulerTrampoline *)&v14 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_scheduler, a3);
    objc_storeStrong(p_isa + 2, a4);
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

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EFSchedulerTrampoline;
  if ([(EFSchedulerTrampoline *)&v7 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self->_object conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
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
    v7 = [self->_object methodSignatureForSelector:a3];
  }

  v8 = v7;

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 setTarget:self->_object];
  [v4 retainArguments];
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EFSchedulerTrampoline_forwardInvocation___block_invoke;
  v7[3] = &unk_1E8248580;
  v6 = v4;
  v8 = v6;
  [(EFScheduler *)scheduler performBlock:v7];
}

@end