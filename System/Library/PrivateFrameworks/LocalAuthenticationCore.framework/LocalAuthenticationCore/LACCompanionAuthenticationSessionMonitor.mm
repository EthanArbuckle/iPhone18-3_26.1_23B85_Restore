@interface LACCompanionAuthenticationSessionMonitor
- (BOOL)isAvailable;
- (BOOL)isSessionActive;
- (LACCompanionAuthenticationSessionMonitor)init;
- (NSString)description;
- (id)initForCompanion:(int64_t)companion environmentProvider:(id)provider replyQueue:(id)queue;
- (void)refreshWithCompletion:(id)completion;
- (void)setIsUnderlyingSessionActive:(BOOL)active;
- (void)setObservers:(id)observers;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation LACCompanionAuthenticationSessionMonitor

- (BOOL)isSessionActive
{
  selfCopy = self;
  v3 = LACCompanionAuthenticationSessionMonitor.isSessionActive.getter();

  return v3 & 1;
}

- (void)setObservers:(id)observers
{
  v4 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_observers);
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_observers) = observers;
  observersCopy = observers;
}

- (void)setIsUnderlyingSessionActive:(BOOL)active
{
  v4 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_isUnderlyingSessionActive);
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_isUnderlyingSessionActive) = active;
  if (v4 != active)
  {
    selfCopy = self;
    LACCompanionAuthenticationSessionMonitor.handleSessionUpdate()();
  }
}

- (id)initForCompanion:(int64_t)companion environmentProvider:(id)provider replyQueue:(id)queue
{
  swift_unknownObjectRetain();
  v8 = specialized LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(companion, provider, queue);
  swift_unknownObjectRelease();
  return v8;
}

- (NSString)description
{
  selfCopy = self;
  v3 = LACCompanionAuthenticationSessionMonitor.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (BOOL)isAvailable
{
  selfCopy = self;
  LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  v5 = (*(v4 + 8))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5 & 1;
}

- (void)refreshWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v9);
  v7 = v10;
  v8 = v11;
  __swift_project_boxed_opaque_existential_0(v9, v10);
  (*(v8 + 32))(v4, v5, v7, v8);

  _sxRi_zRi0_zlyytIsegHr_SgWOe(v4);
  __swift_destroy_boxed_opaque_existential_0(v9);
}

- (void)startMonitoring
{
  selfCopy = self;
  LACCompanionAuthenticationSessionMonitor.start()();
}

- (void)stopMonitoring
{
  selfCopy = self;
  LACCompanionAuthenticationSessionMonitor.stop()();
}

- (LACCompanionAuthenticationSessionMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end