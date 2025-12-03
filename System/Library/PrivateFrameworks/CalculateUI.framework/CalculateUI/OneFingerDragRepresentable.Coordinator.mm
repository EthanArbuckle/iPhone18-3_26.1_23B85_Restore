@interface OneFingerDragRepresentable.Coordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator)init;
@end

@implementation OneFingerDragRepresentable.Coordinator

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1C1E144BC(touchCopy);

  return v9;
}

- (_TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end