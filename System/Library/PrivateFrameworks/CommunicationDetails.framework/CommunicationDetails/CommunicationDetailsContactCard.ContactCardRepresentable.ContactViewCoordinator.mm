@interface CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator
- (_TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator)init;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
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

- (_TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end