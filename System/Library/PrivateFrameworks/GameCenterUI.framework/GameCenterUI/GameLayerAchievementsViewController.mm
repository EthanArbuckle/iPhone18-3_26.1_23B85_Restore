@interface GameLayerAchievementsViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC12GameCenterUI35GameLayerAchievementsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didReceiveMemoryWarning;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GameLayerAchievementsViewController

- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = GameLayerAchievementsViewController.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(viewCopy, configurationCopy);

  return v9;
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  GameLayerAchievementsViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFF70);
  v3 = sub_24E347EE8();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  GameLayerAchievementsViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  GameLayerAchievementsViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  GameLayerAchievementsViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  GameLayerAchievementsViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  GameLayerAchievementsViewController.viewDidDisappear(_:)(disappear);
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  GameLayerAchievementsViewController.didReceiveMemoryWarning()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  GameLayerAchievementsViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  GameLayerAchievementsViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  GameLayerAchievementsViewController.viewWillLayoutSubviews()();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  GameLayerAchievementsViewController.collectionView(_:willDisplay:forItemAt:)(viewCopy, cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  GameLayerAchievementsViewController.collectionView(_:didEndDisplaying:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  GameLayerAchievementsViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  GameLayerAchievementsViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  GameLayerAchievementsViewController.scrollViewDidScroll(_:)(scrollCopy);
}

- (_TtC12GameCenterUI35GameLayerAchievementsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  GameLayerAchievementsViewController.init(nibName:bundle:)();
}

@end