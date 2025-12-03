@interface TwoFingerDragRepresentable.Coordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator)init;
@end

@implementation TwoFingerDragRepresentable.Coordinator

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1C1DF6F18(gestureRecognizerCopy);

  return v9 & 1;
}

- (_TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end