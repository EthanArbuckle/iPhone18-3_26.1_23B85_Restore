@interface PhotosGridViewController
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)canBecomeFirstResponder;
- (BOOL)photosContentController:(id)a3 presentViewController:(id)a4;
- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4;
- (BOOL)photosViewController:(id)a3 didPickAssetReference:(id)a4;
- (NSArray)keyCommands;
- (UIEdgeInsets)maskPaddingForContentController:(id)a3;
- (_TtC20CommunicationDetails24PhotosGridViewController)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails24PhotosGridViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissPresentedViewControllerForContentController:(id)a3;
- (void)previewControllerDidDismiss:(id)a3;
- (void)scrollViewControllerDidLayoutSubviews:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
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
  v4 = self;
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
  v4 = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001DLL, 0x80000001901FCA60, closure #1 in PhotosGridViewController.viewSafeAreaInsetsDidChange()partial apply);
}

- (void)scrollViewControllerDidLayoutSubviews:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x1F0);
  v6 = a3;
  v9 = self;
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

- (void)scrollViewControllerDidScroll:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x1F0);
  v6 = a3;
  v9 = self;
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

- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = self;
  specialized PhotosGridViewController.scrollViewControllerWillEndScrolling(_:withVelocity:targetContentOffset:currentContentOffset:)(a5);
}

- (void)previewControllerDidDismiss:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  specialized PhotosGridViewController.previewControllerDidDismiss(_:)();
}

- (_TtC20CommunicationDetails24PhotosGridViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
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

- (void)viewDidAppear:(BOOL)a3
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
  v5 = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000011, 0x80000001902002D0, closure #1 in PhotosGridViewController.viewDidAppear(_:)partial apply);
}

- (void)viewDidDisappear:(BOOL)a3
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
  v5 = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000014, 0x80000001902002F0, closure #1 in PhotosGridViewController.viewDidDisappear(_:)partial apply);
}

- (void)viewIsAppearing:(BOOL)a3
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
  v5 = self;
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000013, 0x8000000190200310, closure #1 in PhotosGridViewController.viewIsAppearing(_:)partial apply);
}

- (_TtC20CommunicationDetails24PhotosGridViewController)initWithNibName:(id)a3 bundle:(id)a4
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

- (BOOL)photosViewController:(id)a3 didPickAssetReference:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE0);
  v8 = a4;
  v9 = self;
  v10 = a3;
  v11 = v7();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewModel];

    v14 = [v13 currentDataSource];
    PhotosGridViewController.presentQuickLook(for:dataSource:from:)(v8, v14, v10);

    LOBYTE(v11) = 1;
  }

  else
  {
    __break(1u);
  }

  return v11;
}

- (BOOL)photosContentController:(id)a3 presentViewController:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(PhotosGridViewController *)self presentViewController:a4 animated:1 completion:0];

  return 1;
}

- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a4;
  v7 = self;
  v8 = [(PhotosGridViewController *)v7 navigationController];
  v9 = v8;
  if (v8)
  {
    [v8 pushViewController:v6 animated:1];
  }

  else
  {
  }

  return v9 != 0;
}

- (void)dismissPresentedViewControllerForContentController:(id)a3
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

- (UIEdgeInsets)maskPaddingForContentController:(id)a3
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

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = specialized PhotosGridViewController.actionPerformer(_:transitionTo:transitionType:)(v10, a5);

  return v12;
}

@end