@interface MapsSuggestionsDOoM
- (MapsSuggestionsFullResourceDepot)_resourceDepot;
- (NSDateInterval)_commuteWindow;
- (NSString)uniqueName;
- (_TtC15MapsSuggestions19MapsSuggestionsDOoM)init;
- (_TtC15MapsSuggestions19MapsSuggestionsDOoM)initWithResourceDepot:(id)a3 triggers:(id)a4 conditions:(id)a5 engine:(id)a6;
- (_TtP15MapsSuggestions39MapsSuggestionsDOoMNotificationDelegate_)notificationDelegate;
- (id)_notificationDetailsWithTitle:(id)a3 message:(id)a4 destination:(id)a5;
- (id)_windowOverrideListernerBlock;
- (void)_captureState;
- (void)_clearEntryExitTimeKeys;
- (void)_scheduleBackupTimer;
- (void)_scheduleBackupTimer:(double)a3;
- (void)_scheduleBackupTimerBasedOnEntryTime:(id)a3 :(double)a4;
- (void)_scheduleBackupTimerForCommuteWindowWakeup;
- (void)_setupKeyListeners;
- (void)_startStateCapture;
- (void)commuteWindowChangedWithWindow:(id)a3 nextDestination:(id)a4 travelTime:(double)a5 haveBudgetForCommuteRequest:(BOOL)a6 exitTime:(id)a7 routeSet:(id)a8;
- (void)setUniqueName:(id)a3;
- (void)set_commuteWindow:(id)a3;
- (void)set_doomDestination:(id)a3;
- (void)set_wakeupTimer:(id)a3;
- (void)set_windowOverrideListernerBlock:(id)a3;
@end

@implementation MapsSuggestionsDOoM

- (NSString)uniqueName
{
  v2 = self + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1C529D71C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUniqueName:(id)a3
{
  if (a3)
  {
    v4 = sub_1C529D72C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (MapsSuggestionsFullResourceDepot)_resourceDepot
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)set_wakeupTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer);
  *(self + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer) = a3;
  v3 = a3;
}

- (void)set_doomDestination:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomDestination);
  *(self + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomDestination) = a3;
  v3 = a3;
}

- (id)_windowOverrideListernerBlock
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__windowOverrideListernerBlock;
  swift_beginAccess();
  sub_1C525F29C(self + v3, v12, &qword_1EC156128);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v6 + 16))(v8);
    v9 = sub_1C529DB4C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)set_windowOverrideListernerBlock:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C529D9BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__windowOverrideListernerBlock;
  swift_beginAccess();
  sub_1C526F7D8(v7, self + v6, &qword_1EC156128);
  swift_endAccess();
}

- (NSDateInterval)_commuteWindow
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindow;
  swift_beginAccess();
  sub_1C525F29C(self + v6, v5, &qword_1EC1566A0);
  v7 = sub_1C529D24C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C529D1EC();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)set_commuteWindow:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_1C529D1FC();
    v8 = sub_1C529D24C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1C529D24C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindow;
  swift_beginAccess();
  v11 = self;
  sub_1C526F7D8(v7, self + v10, &qword_1EC1566A0);
  swift_endAccess();
}

- (_TtP15MapsSuggestions39MapsSuggestionsDOoMNotificationDelegate_)notificationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC15MapsSuggestions19MapsSuggestionsDOoM)initWithResourceDepot:(id)a3 triggers:(id)a4 conditions:(id)a5 engine:(id)a6
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156368);
  v8 = sub_1C529D7DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  v9 = sub_1C529D7DC();
  swift_unknownObjectRetain();
  return MapsSuggestionsDOoM.init(resourceDepot:triggers:conditions:engine:)(a3, v8, v9, a6);
}

- (void)_setupKeyListeners
{
  v2 = self;
  sub_1C526ACA4();
}

- (void)_captureState
{
  v2 = self;
  sub_1C526AF70();
}

- (void)_startStateCapture
{
  v2 = self;
  sub_1C526B2F0();
}

- (void)_scheduleBackupTimer
{
  v2 = self;
  sub_1C526B674();
}

- (void)_scheduleBackupTimer:(double)a3
{
  v4 = self;
  sub_1C526B9EC(a3);
}

- (void)_scheduleBackupTimerForCommuteWindowWakeup
{
  v2 = self;
  sub_1C526C0D8();
}

- (void)_scheduleBackupTimerBasedOnEntryTime:(id)a3 :(double)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    sub_1C529D37C();
    v10 = sub_1C529D3AC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1C529D3AC();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = self;
  sub_1C526C390(v9, a4);

  sub_1C5259230(v9, &unk_1EC156760);
}

- (void)_clearEntryExitTimeKeys
{
  _GEOConfigRemoveValue();

  _GEOConfigRemoveValue();
}

- (void)commuteWindowChangedWithWindow:(id)a3 nextDestination:(id)a4 travelTime:(double)a5 haveBudgetForCommuteRequest:(BOOL)a6 exitTime:(id)a7 routeSet:(id)a8
{
  v10 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - v19;
  if (a3)
  {
    sub_1C529D1FC();
    v21 = sub_1C529D24C();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = sub_1C529D24C();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  if (a7)
  {
    sub_1C529D37C();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_1C529D3AC();
  (*(*(v24 - 8) + 56))(v17, v23, 1, v24);
  v25 = a4;
  v26 = a8;
  v27 = self;
  sub_1C526CB90(v20, a4, v10, v17, a8, a5);

  sub_1C5259230(v17, &unk_1EC156760);
  sub_1C5259230(v20, &qword_1EC1566A0);
}

- (id)_notificationDetailsWithTitle:(id)a3 message:(id)a4 destination:(id)a5
{
  v7 = sub_1C529D72C();
  v9 = v8;
  v10 = sub_1C529D72C();
  v12 = v11;
  v13 = a5;
  v14 = self;
  v15 = sub_1C526E544(v7, v9, v10, v12, v13);

  return v15;
}

- (_TtC15MapsSuggestions19MapsSuggestionsDOoM)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end