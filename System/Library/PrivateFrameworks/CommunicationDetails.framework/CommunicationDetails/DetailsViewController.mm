@interface DetailsViewController
- (_TtC20CommunicationDetails21DetailsViewController)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails21DetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)dismissDetails;
- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image;
- (void)visualIdentityPickerDidCancel:(id)cancel;
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

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  specialized DetailsViewController.contactViewController(_:didCompleteWith:)(controllerCopy, contact);
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [controller dismissViewControllerAnimated:1 completion:0];
}

- (void)visualIdentityPickerDidCancel:(id)cancel
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [cancel dismissViewControllerAnimated:1 completion:0];
}

- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(**(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration) + 248);
  pickerCopy = picker;
  identityCopy = identity;
  selfCopy = self;
  v11 = v8();
  if (v11)
  {
    v12 = v11;
    v11(identityCopy);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CNVisualIdentity) -> ())?(v12);
  }

  [pickerCopy dismissViewControllerAnimated:1 completion:0];
}

- (_TtC20CommunicationDetails21DetailsViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  specialized DetailsViewController.init(coder:)();
}

- (_TtC20CommunicationDetails21DetailsViewController)initWithNibName:(id)name bundle:(id)bundle
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