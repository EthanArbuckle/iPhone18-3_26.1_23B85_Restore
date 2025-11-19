@interface TwoFingerDragRepresentable.Coordinator
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator)init;
@end

@implementation TwoFingerDragRepresentable.Coordinator

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1C1DF6F18(v7);

  return v9 & 1;
}

- (_TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end