@interface DetailsPageViewController
- (_TtC20CommunicationDetails25DetailsPageViewController)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails25DetailsPageViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DetailsPageViewController

- (_TtC20CommunicationDetails25DetailsPageViewController)initWithCoder:(id)a3
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

  v3 = self;
  DetailsPageViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for DetailsPageViewController();
  v5 = self;
  [(DetailsPageViewController *)&v6 viewWillAppear:v3];
  [(DetailsPageViewController *)v5 setDataSource:0, v6.receiver, v6.super_class];
  [(DetailsPageViewController *)v5 setDataSource:v5];
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
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
  v7 = a3;
  v8 = self;
  specialized DetailsPageViewController.pageViewController(_:willTransitionTo:)(v6);
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = self;
  specialized DetailsPageViewController.pageViewController(_:didFinishAnimating:previousViewControllers:transitionCompleted:)(v10, a4, a6);
}

- (_TtC20CommunicationDetails25DetailsPageViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
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