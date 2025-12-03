@interface FCPingBasedOnlineNetworkTransitionMonitor
- (FCPingBasedOnlineNetworkTransitionMonitor)init;
- (FCPingBasedOnlineNetworkTransitionMonitor)initWithConfigurationManager:(id)manager hostName:(id)name port:(unsigned __int16)port;
- (NSDate)dateOfLastTransition;
- (id)notifyWhenTransitionOccursOnQueue:(id)queue withBlock:(id)block;
@end

@implementation FCPingBasedOnlineNetworkTransitionMonitor

- (FCPingBasedOnlineNetworkTransitionMonitor)initWithConfigurationManager:(id)manager hostName:(id)name port:(unsigned __int16)port
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = swift_unknownObjectRetain();
  return PingBasedOnlineNetworkTransitionMonitor.init(configurationManager:hostName:port:)(v9, v6, v8, port);
}

- (NSDate)dateOfLastTransition
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v7 + v9));
  sub_1B6403FD4(v7 + v8, v6);
  os_unfair_lock_unlock((v7 + v9));

  v11 = sub_1B67D877C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1B67D86DC();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (id)notifyWhenTransitionOccursOnQueue:(id)queue withBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  v10 = sub_1B64B007C(queueCopy, sub_1B64B2724, v7);

  return v10;
}

- (FCPingBasedOnlineNetworkTransitionMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end