@interface SuggestionsOnboardingViewController
- (void)customizeSuggestionsButtonTapped;
- (void)notNowButtonTapped;
- (void)onboardButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SuggestionsOnboardingViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_sessionUUID;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(v9, self + v13, v6);
  type metadata accessor for MainActor();
  v15 = self;
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  (*(v7 + 32))(v18 + v17, v9, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)partial apply, v18);

  v20.receiver = v15;
  v20.super_class = ObjectType;
  [(OBBaseWelcomeController *)&v20 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v20.receiver = self;
  v20.super_class = ObjectType;
  v13 = self;
  [(OBBaseWelcomeController *)&v20 viewDidDisappear:v3];
  v14 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_sessionUUID;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  (*(v7 + 16))(v9, v13 + v14, v6);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  (*(v7 + 32))(v18 + v17, v9, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:)partial apply, v18);
}

- (void)customizeSuggestionsButtonTapped
{
  v2 = self;
  SuggestionsOnboardingViewController.customizeSuggestionsButtonTapped()();
}

- (void)onboardButtonTapped
{
  v2 = self;
  SuggestionsOnboardingViewController.onboardButtonTapped()();
}

- (void)notNowButtonTapped
{
  v2 = self;
  SuggestionsOnboardingViewController.notNowButtonTapped()();
}

@end