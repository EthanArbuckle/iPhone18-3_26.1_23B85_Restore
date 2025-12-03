@interface ICCalculateRecognitionController.ErrorInteractionController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (_TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController)init;
- (void)didTapTextView:(id)view;
- (void)textViewDidChangeText:(id)text;
@end

@implementation ICCalculateRecognitionController.ErrorInteractionController

- (void)didTapTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1D440744C(viewCopy);
}

- (void)textViewDidChangeText:(id)text
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  selfCopy = self;
  sub_1D44076D8();

  (*(v5 + 8))(v7, v4);
}

- (_TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_1D4407B18(eventCopy);

  return v9 & 1;
}

@end