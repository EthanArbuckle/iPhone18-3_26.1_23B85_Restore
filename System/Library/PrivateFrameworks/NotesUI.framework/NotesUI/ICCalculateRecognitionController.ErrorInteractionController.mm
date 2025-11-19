@interface ICCalculateRecognitionController.ErrorInteractionController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (_TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController)init;
- (void)didTapTextView:(id)a3;
- (void)textViewDidChangeText:(id)a3;
@end

@implementation ICCalculateRecognitionController.ErrorInteractionController

- (void)didTapTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D440744C(v4);
}

- (void)textViewDidChangeText:(id)a3
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  v8 = self;
  sub_1D44076D8();

  (*(v5 + 8))(v7, v4);
}

- (_TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D4407B18(v7);

  return v9 & 1;
}

@end