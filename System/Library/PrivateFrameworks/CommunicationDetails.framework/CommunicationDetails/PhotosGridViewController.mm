@interface PhotosGridViewController
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)canBecomeFirstResponder;
- (BOOL)photosContentController:(id)controller presentViewController:(id)viewController;
- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController;
- (BOOL)photosViewController:(id)controller didPickAssetReference:(id)reference;
- (NSArray)keyCommands;
- (UIEdgeInsets)maskPaddingForContentController:(id)controller;
- (_TtC20CommunicationDetails24PhotosGridViewController)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails24PhotosGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissPresentedViewControllerForContentController:(id)controller;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)scrollViewControllerDidLayoutSubviews:(id)subviews;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation PhotosGridViewController

- (void)viewDidLayoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  selfCopy = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000017, 0x80000001901FCA10, closure #1 in PhotosGridViewController.viewDidLayoutSubviews()partial apply);
}

- (void)viewSafeAreaInsetsDidChange
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  selfCopy = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001DLL, 0x80000001901FCA60, closure #1 in PhotosGridViewController.viewSafeAreaInsetsDidChange()partial apply);
}

- (void)scrollViewControllerDidLayoutSubviews:(id)subviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x1F0);
  subviewsCopy = subviews;
  selfCopy = self;
  v7 = v5();
  if (v7)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000029, v8 | 0x8000000000000000, closure #1 in PhotosGridViewController.scrollViewControllerDidLayoutSubviews(_:)partial apply);
  }
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x1F0);
  scrollCopy = scroll;
  selfCopy = self;
  v7 = v5();
  if (v7)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v8 | 0x8000000000000000, closure #1 in PhotosGridViewController.scrollViewControllerDidScroll(_:)partial apply);
  }
}

- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  scrollingCopy = scrolling;
  selfCopy = self;
  specialized PhotosGridViewController.scrollViewControllerWillEndScrolling(_:withVelocity:targetContentOffset:currentContentOffset:)(offset);
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  dismissCopy = dismiss;
  selfCopy = self;
  specialized PhotosGridViewController.previewControllerDidDismiss(_:)();
}

- (_TtC20CommunicationDetails24PhotosGridViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  specialized PhotosGridViewController.init(coder:)();
}

- (NSArray)keyCommands
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1901E6230;
  v3 = MEMORY[0x193AEA8E0](32, 0xE100000000000000);
  v4 = [objc_opt_self() keyCommandWithInput:v3 modifierFlags:0 action:sel_didPressSpacebar];

  *(v2 + 32) = v4;
  type metadata accessor for PXContentFilterState(0, &lazy cache variable for type metadata for UIKeyCommand);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (BOOL)canBecomeFirstResponder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  selfCopy = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000011, 0x80000001902002D0, closure #1 in PhotosGridViewController.viewDidAppear(_:)partial apply);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  selfCopy = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000014, 0x80000001902002F0, closure #1 in PhotosGridViewController.viewDidDisappear(_:)partial apply);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  selfCopy = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000013, 0x8000000190200310, closure #1 in PhotosGridViewController.viewIsAppearing(_:)partial apply);
}

- (_TtC20CommunicationDetails24PhotosGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)photosViewController:(id)controller didPickAssetReference:(id)reference
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE0);
  referenceCopy = reference;
  selfCopy = self;
  controllerCopy = controller;
  v11 = v7();
  if (v11)
  {
    v12 = v11;
    viewModel = [v11 viewModel];

    currentDataSource = [viewModel currentDataSource];
    PhotosGridViewController.presentQuickLook(for:dataSource:from:)(referenceCopy, currentDataSource, controllerCopy);

    LOBYTE(v11) = 1;
  }

  else
  {
    __break(1u);
  }

  return v11;
}

- (BOOL)photosContentController:(id)controller presentViewController:(id)viewController
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(PhotosGridViewController *)self presentViewController:viewController animated:1 completion:0];

  return 1;
}

- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewControllerCopy = viewController;
  selfCopy = self;
  navigationController = [(PhotosGridViewController *)selfCopy navigationController];
  v9 = navigationController;
  if (navigationController)
  {
    [navigationController pushViewController:viewControllerCopy animated:1];
  }

  else
  {
  }

  return v9 != 0;
}

- (void)dismissPresentedViewControllerForContentController:(id)controller
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(PhotosGridViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (UIEdgeInsets)maskPaddingForContentController:(id)controller
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);

  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  performerCopy = performer;
  controllerCopy = controller;
  selfCopy = self;
  v12 = specialized PhotosGridViewController.actionPerformer(_:transitionTo:transitionType:)(controllerCopy, type);

  return v12;
}

@end