@interface CCUIGameModeActivityDataProvider
- (BOOL)gameModeAAA;
- (NSSet)activityData;
- (int64_t)stateForBundleIdentifier:(id)a3;
- (unint64_t)gameModeState;
- (void)setActivityData:(id)a3;
- (void)setGameModeAAA:(BOOL)a3;
- (void)setGameModeState:(unint64_t)a3;
- (void)setWithState:(int64_t)a3 forBundleIdentifier:(id)a4 callback:(id)a5;
@end

@implementation CCUIGameModeActivityDataProvider

- (NSSet)activityData
{
  swift_beginAccess();
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();

  v2 = sub_21EAA8F50();

  return v2;
}

- (unint64_t)gameModeState
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActivityData:(id)a3
{
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();
  v4 = sub_21EAA8F60();
  v5 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setGameModeState:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)gameModeAAA
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGameModeAAA:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)stateForBundleIdentifier:(id)a3
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  v7 = self;
  v8 = sub_21EA4FA90(v4, v6);

  return v8;
}

- (void)setWithState:(int64_t)a3 forBundleIdentifier:(id)a4 callback:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_21EAA8E00();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_21EA51EE8(a3, v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end