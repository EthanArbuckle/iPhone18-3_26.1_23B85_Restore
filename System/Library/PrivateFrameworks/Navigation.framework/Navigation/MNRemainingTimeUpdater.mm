@interface MNRemainingTimeUpdater
- (NSDate)dateOverride;
- (_TtC10Navigation22MNRemainingTimeUpdater)init;
- (_TtP10Navigation30MNRemainingTimeUpdaterDelegate_)delegate;
- (void)dealloc;
- (void)setDateOverride:(id)a3;
- (void)setNavigationSessionState:(id)a3;
- (void)updateForNewETAUResponse;
@end

@implementation MNRemainingTimeUpdater

- (void)setNavigationSessionState:(id)a3
{
  v4 = a3;
  v5 = self;
  MNRemainingTimeUpdater.navigationSessionState.setter(v4);
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for MNRemainingTimeUpdater(0);
  [(MNRemainingTimeUpdater *)&v4 dealloc];
}

- (void)updateForNewETAUResponse
{
  v2 = self;
  sub_1D3131CE0();
}

- (_TtP10Navigation30MNRemainingTimeUpdaterDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSDate)dateOverride
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  sub_1D312601C(self + v7, v6, &qword_1EC75C4F0, &qword_1D328B580);
  v8 = sub_1D3276D30();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1D3276CD0();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setDateOverride:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_1D3276D00();
    v9 = sub_1D3276D30();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1D3276D30();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  v12 = self;
  sub_1D3128E74(v8, self + v11);
  swift_endAccess();
}

- (_TtC10Navigation22MNRemainingTimeUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end