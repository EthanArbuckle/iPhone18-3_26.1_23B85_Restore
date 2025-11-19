@interface DetailsViewController
- (_TtC20CommunicationDetails21DetailsViewController)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails21DetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)dismissDetails;
- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5;
- (void)visualIdentityPickerDidCancel:(id)a3;
@end

@implementation DetailsViewController

- (void)dismissDetails
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(DetailsViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized DetailsViewController.contactViewController(_:didCompleteWith:)(v7, a4);
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a3 dismissViewControllerAnimated:1 completion:0];
}

- (void)visualIdentityPickerDidCancel:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a3 dismissViewControllerAnimated:1 completion:0];
}

- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(**(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration) + 248);
  v9 = a3;
  v10 = a4;
  v13 = self;
  v11 = v8();
  if (v11)
  {
    v12 = v11;
    v11(v10);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CNVisualIdentity) -> ())?(v12);
  }

  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (_TtC20CommunicationDetails21DetailsViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  specialized DetailsViewController.init(coder:)();
}

- (_TtC20CommunicationDetails21DetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
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