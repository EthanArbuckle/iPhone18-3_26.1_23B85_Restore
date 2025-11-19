@interface CPUIWindow
- (CGRect)frame;
- (_TtC9CarPlayUI10CPUIWindow)initWithFrame:(CGRect)a3;
- (_TtC9CarPlayUI10CPUIWindow)initWithWindowScene:(id)a3;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation CPUIWindow

- (_TtC9CarPlayUI10CPUIWindow)initWithWindowScene:(id)a3
{
  v3 = one-time initialization token for carSessionStatus;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static CPUIWindow.carSessionStatus;
  v6 = type metadata accessor for CPUIWindow();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC9CarPlayUI10CPUIWindow_carSessionStatusObserver] = 0;
  *&v7[OBJC_IVAR____TtC9CarPlayUI10CPUIWindow_carSessionStatus] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v8 = v5;
  v9 = [(CPUIWindow *)&v12 initWithWindowScene:v4];
  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9CarPlayUI10CPUIWindowC7Trigger33_926051836C91B1B4932D40F61C9AB2A5LLO_SayAIGTt0g5Tf4g_n(&outlined read-only object #0 of CPUIWindow.init(windowScene:carSessionStatus:));
  CPUIWindow.updateTraitOverrides(triggeredBy:)(v10);

  CPUIWindow.setupObservers()();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CPUIWindow();
  [(CPUIWindow *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CPUIWindow();
  v7 = v9.receiver;
  [(CPUIWindow *)&v9 setFrame:x, y, width, height];
  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9CarPlayUI10CPUIWindowC7Trigger33_926051836C91B1B4932D40F61C9AB2A5LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of @objc CPUIWindow.frame.setter);
  CPUIWindow.updateTraitOverrides(triggeredBy:)(v8);
}

- (void)sessionDidConnect:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in CPUIWindow.sessionDidConnect(_:)partial apply, v10);
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in CPUIWindow.session(_:didUpdate:)partial apply, v11);
}

- (_TtC9CarPlayUI10CPUIWindow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end