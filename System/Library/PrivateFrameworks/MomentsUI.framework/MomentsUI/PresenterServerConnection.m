@interface PresenterServerConnection
- (_TtC9MomentsUI25PresenterServerConnection)init;
- (_TtP9MomentsUI11ViewService_)remoteTarget;
- (_TtP9MomentsUI23PresenterServerDelegate_)presenterDelegate;
- (id)retrieveUrlForToken:(id)a3 type:(id)a4;
- (void)dealloc;
- (void)didReceiveNotificationScheduleChange:(id)a3;
- (void)didReceiveSandboxExtensionToken:(id)a3;
- (void)didReceiveStateUpdateRequest:(id)a3;
- (void)didReceiveUserSelectionWithSuggestion:(id)a3;
- (void)requestPresentationFor:(id)a3 with:(id)a4;
- (void)retrieveNotificationConfigurationWithCompletionHandler:(id)a3;
- (void)retrieveOnboardingStateLocalWithCompletionHandler:(id)a3;
- (void)retrieveOnboardingStateWithCompletionHandler:(id)a3;
- (void)setPresenterDelegate:(id)a3;
- (void)updatePickerWith:(int64_t)a3 animated:(id)a4;
- (void)willReceiveUserSelection;
@end

@implementation PresenterServerConnection

- (_TtP9MomentsUI23PresenterServerDelegate_)presenterDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPresenterDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xD0);
  v3 = self;
  v2();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for PresenterServerConnection();
  [(ServerConnection *)&v4 dealloc];
}

- (_TtC9MomentsUI25PresenterServerConnection)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate) = 0;
  v3 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for PresenterServerConnection();
  return [(ServerConnection *)&v6 init];
}

- (_TtP9MomentsUI11ViewService_)remoteTarget
{
  v2 = self;
  v3 = PresenterServerConnection.remoteTarget.getter();

  return v3;
}

- (void)updatePickerWith:(int64_t)a3 animated:(id)a4
{
  v6 = a4;
  v7 = self;
  PresenterServerConnection.updatePicker(with:animated:)(a3, v6);
}

- (void)requestPresentationFor:(id)a3 with:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  PresenterServerConnection.requestPresentation(for:with:)(a3, v8);
}

- (void)retrieveOnboardingStateWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in PresenterServerConnection.retrieveOnboardingState();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_50Tu;
  v12[5] = v11;
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_55Tu, v12);
}

- (void)retrieveOnboardingStateLocalWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_35Tu;
  v12[5] = v11;
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_40Tu, v12);
}

- (void)retrieveNotificationConfigurationWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (id)retrieveUrlForToken:(id)a3 type:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = self;
  PresenterServerConnection.retrieveUrlForToken(_:type:)(v8, v10, v11, v13, v7);

  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v7, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v20 = v19;
    (*(v16 + 8))(v7, v15);
    v18 = v20;
  }

  return v18;
}

- (void)didReceiveSandboxExtensionToken:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xC0);
  v5 = a3;
  v6 = self;
  v4(v5);
}

- (void)willReceiveUserSelection
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xF0);
  v4 = self;
  v3 = v2();
  if (v3)
  {
    [v3 willReceiveUserSelection];
    swift_unknownObjectRelease();
  }
}

- (void)didReceiveUserSelectionWithSuggestion:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xF0);
  v5 = a3;
  v7 = self;
  v6 = v4();
  if (v6)
  {
    [v6 didReceiveUserSelectionWithSuggestion_];
    swift_unknownObjectRelease();
  }
}

- (void)didReceiveStateUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  PresenterServerConnection.didReceiveStateUpdateRequest(_:)(v4);
}

- (void)didReceiveNotificationScheduleChange:(id)a3
{
  v4 = a3;
  v5 = self;
  PresenterServerConnection.didReceiveNotificationScheduleChange(_:)(v4);
}

@end