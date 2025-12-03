@interface DetailsPageViewController
- (_TtC20CommunicationDetails25DetailsPageViewController)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails25DetailsPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DetailsPageViewController

- (_TtC20CommunicationDetails25DetailsPageViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex) = 0;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isBetweenPages) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  DetailsPageViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for DetailsPageViewController();
  selfCopy = self;
  [(DetailsPageViewController *)&v6 viewWillAppear:appearCopy];
  [(DetailsPageViewController *)selfCopy setDataSource:0, v6.receiver, v6.super_class];
  [(DetailsPageViewController *)selfCopy setDataSource:selfCopy];
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for UIViewController);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized DetailsPageViewController.pageViewController(_:willTransitionTo:)(v6);
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  selfCopy = self;
  specialized DetailsPageViewController.pageViewController(_:didFinishAnimating:previousViewControllers:transitionCompleted:)(controllerCopy, animating, completed);
}

- (_TtC20CommunicationDetails25DetailsPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
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

@end