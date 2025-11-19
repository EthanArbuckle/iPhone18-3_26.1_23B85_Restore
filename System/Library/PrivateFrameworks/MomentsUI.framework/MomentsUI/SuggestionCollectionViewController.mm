@interface SuggestionCollectionViewController
- (_TtC9MomentsUI34SuggestionCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)cancelSheet;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)pressedSegmentControl;
- (void)scrollViewDidScroll:(id)a3;
- (void)shieldViewUnlockButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SuggestionCollectionViewController

- (void)shieldViewUnlockButtonPressed:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x1D0);
  v4 = self;
  v5 = v3();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();

  specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(v7, closure #1 in ProtectedAppsManager.authenticate()partial apply, v6);
}

- (void)viewDidLoad
{
  v2 = self;
  SuggestionCollectionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sessionUUID;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, self + v12, v5);
  type metadata accessor for MainActor();
  v14 = self;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  (*(v6 + 32))(v17 + v16, v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)partial apply, v17);

  v19 = type metadata accessor for SuggestionCollectionViewController(0);
  v20.receiver = v14;
  v20.super_class = v19;
  [(SuggestionCollectionViewController *)&v20 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for SuggestionCollectionViewController(0);
  v20.receiver = self;
  v20.super_class = v12;
  v13 = self;
  [(SuggestionCollectionViewController *)&v20 viewDidDisappear:v3];
  v14 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sessionUUID;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  (*(v6 + 16))(v8, v13 + v14, v5);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  (*(v6 + 32))(v18 + v17, v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)partial apply, v18);
}

- (void)cancelSheet
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x170);
  v3 = self;
  v2(v9);
  if (v9[3])
  {
    outlined init with copy of DBObject(v9, v6);
    outlined destroy of UTType?(v9, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 8))(v4, v5);

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {

    outlined destroy of UTType?(v9, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd);
  }
}

- (void)pressedSegmentControl
{
  v2 = self;
  SuggestionCollectionViewController.pressedSegmentControl()();
}

- (_TtC9MomentsUI34SuggestionCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  specialized SuggestionCollectionViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled) = 1;
  v3 = self;
  SuggestionCollectionViewController.checkIfNearBottom()();
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v7 + 32))(v16 + v14, v10, v6);
  *(v16 + v15) = self;
  v17 = self;

  v18 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in SuggestionCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)partial apply, v16);
  (*(v7 + 8))(v12, v6);

  return v18;
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  SuggestionCollectionViewController.updateContentUnavailableConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

@end