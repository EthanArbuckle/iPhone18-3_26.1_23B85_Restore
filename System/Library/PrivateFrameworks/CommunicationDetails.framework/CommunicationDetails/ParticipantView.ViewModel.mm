@interface ParticipantView.ViewModel
- (_TtCV20CommunicationDetails15ParticipantView9ViewModel)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation ParticipantView.ViewModel

- (_TtCV20CommunicationDetails15ParticipantView9ViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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

  [controller dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPickerDidCancel:(id)cancel
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

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  ParticipantView.ViewModel.contactPicker(_:didSelect:)(pickerCopy, contactCopy);
}

@end