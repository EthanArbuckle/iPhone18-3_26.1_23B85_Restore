@interface DBLiveActivityMonitor
- (void)activityAlertClient:(id)a3 dismissAlertProvider:(id)a4;
- (void)activityAlertClient:(id)a3 presentAlertProvider:(id)a4 completion:(id)a5;
- (void)addObserver:(id)a3;
- (void)clearLiveActivityWith:(id)a3;
- (void)dealloc;
@end

@implementation DBLiveActivityMonitor

- (void)activityAlertClient:(id)a3 presentAlertProvider:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_2481630A8(a4);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)activityAlertClient:(id)a3 dismissAlertProvider:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_248163A60(a4);

  swift_unknownObjectRelease();
}

- (void)addObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  DBLiveActivityMonitor.addObserver(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)clearLiveActivityWith:(id)a3
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
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DBLiveActivityMonitor();
  [(DBLiveActivityMonitor *)&v4 dealloc];
}

@end