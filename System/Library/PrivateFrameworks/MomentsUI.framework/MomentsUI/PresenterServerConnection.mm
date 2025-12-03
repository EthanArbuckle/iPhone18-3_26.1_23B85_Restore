@interface PresenterServerConnection
- (_TtC9MomentsUI25PresenterServerConnection)init;
- (_TtP9MomentsUI11ViewService_)remoteTarget;
- (_TtP9MomentsUI23PresenterServerDelegate_)presenterDelegate;
- (id)retrieveUrlForToken:(id)token type:(id)type;
- (void)dealloc;
- (void)didReceiveNotificationScheduleChange:(id)change;
- (void)didReceiveSandboxExtensionToken:(id)token;
- (void)didReceiveStateUpdateRequest:(id)request;
- (void)didReceiveUserSelectionWithSuggestion:(id)suggestion;
- (void)requestPresentationFor:(id)for with:(id)with;
- (void)retrieveNotificationConfigurationWithCompletionHandler:(id)handler;
- (void)retrieveOnboardingStateLocalWithCompletionHandler:(id)handler;
- (void)retrieveOnboardingStateWithCompletionHandler:(id)handler;
- (void)setPresenterDelegate:(id)delegate;
- (void)updatePickerWith:(int64_t)with animated:(id)animated;
- (void)willReceiveUserSelection;
@end

@implementation PresenterServerConnection

- (_TtP9MomentsUI23PresenterServerDelegate_)presenterDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPresenterDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xD0);
  selfCopy = self;
  v2();

  v4.receiver = selfCopy;
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
  selfCopy = self;
  v3 = PresenterServerConnection.remoteTarget.getter();

  return v3;
}

- (void)updatePickerWith:(int64_t)with animated:(id)animated
{
  animatedCopy = animated;
  selfCopy = self;
  PresenterServerConnection.updatePicker(with:animated:)(with, animatedCopy);
}

- (void)requestPresentationFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  PresenterServerConnection.requestPresentation(for:with:)(for, withCopy);
}

- (void)retrieveOnboardingStateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_55Tu, v12);
}

- (void)retrieveOnboardingStateLocalWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_40Tu, v12);
}

- (void)retrieveNotificationConfigurationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (id)retrieveUrlForToken:(id)token type:(id)type
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  selfCopy = self;
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

- (void)didReceiveSandboxExtensionToken:(id)token
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xC0);
  tokenCopy = token;
  selfCopy = self;
  v4(tokenCopy);
}

- (void)willReceiveUserSelection
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xF0);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    [v3 willReceiveUserSelection];
    swift_unknownObjectRelease();
  }
}

- (void)didReceiveUserSelectionWithSuggestion:(id)suggestion
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xF0);
  suggestionCopy = suggestion;
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    [v6 didReceiveUserSelectionWithSuggestion_];
    swift_unknownObjectRelease();
  }
}

- (void)didReceiveStateUpdateRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  PresenterServerConnection.didReceiveStateUpdateRequest(_:)(requestCopy);
}

- (void)didReceiveNotificationScheduleChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PresenterServerConnection.didReceiveNotificationScheduleChange(_:)(changeCopy);
}

@end