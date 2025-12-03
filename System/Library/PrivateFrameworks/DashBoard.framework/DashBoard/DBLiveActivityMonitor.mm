@interface DBLiveActivityMonitor
- (void)activityAlertClient:(id)client dismissAlertProvider:(id)provider;
- (void)activityAlertClient:(id)client presentAlertProvider:(id)provider completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)clearLiveActivityWith:(id)with;
- (void)dealloc;
@end

@implementation DBLiveActivityMonitor

- (void)activityAlertClient:(id)client presentAlertProvider:(id)provider completion:(id)completion
{
  v8 = _Block_copy(completion);
  clientCopy = client;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2481630A8(provider);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)activityAlertClient:(id)client dismissAlertProvider:(id)provider
{
  clientCopy = client;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_248163A60(provider);

  swift_unknownObjectRelease();
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DBLiveActivityMonitor.addObserver(_:)(observer);
  swift_unknownObjectRelease();
}

- (void)clearLiveActivityWith:(id)with
{
  v3 = sub_2483812C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24830B210(&qword_27EE91780, MEMORY[0x277CB92E0]);
  sub_2483813C0();
  sub_248381360();
  sub_248381350();
  sub_2483812A0();
  sub_248381330();

  (*(v4 + 8))(v6, v3);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DBLiveActivityMonitor();
  [(DBLiveActivityMonitor *)&v4 dealloc];
}

@end